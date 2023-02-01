from pandas import read_csv
from requests import Session
import datetime
from json import loads
import numpy as np

#start time is 13 characters for some reason. Any other size yields incorrect results.  

url = "https://www.binance.com/api/v3/klines?symbol={}&interval={}&startTime={}&limit={}"


def gettimestamp(date:str):
    d = datetime.datetime.strptime(date,'%a %b %d %H:%M:%S %Y')
    return d.timestamp()



def gethistoricaldata(symbol,interval,starttime,limit):
    u = url.format(symbol,interval,starttime,limit)
    s = Session()
    text = s.get(u).text
    return loads(text) # candle stick history. 

def extracthighs(history):
    return [float(i[2]) for i in history]
def extractlows (history):
    return [float(i[3]) for i in history]

def main():
    for j in range(162,242):
        #load the dataset
        df = read_csv(f"./collection/LOBdata{j}.csv")
        print(df.head())
        print(df.coin.unique())
        # df = df.drop(['Unnamed: 0'],axis=1)
        # df.insert(4,'label',[None]*len(df))
        for coin in df.coin.unique():
            newdf = df[df['coin'] == coin].copy()
            stamp = newdf['starttime'].min()
            # print("pass",coin)
            # trial = df.iloc[i]
            # stamp = trial.endtime 
            stamp = str(int(stamp))
            stamp = stamp + '0'*(13-len(stamp))
            data = gethistoricaldata(coin+"USDT",'3m',stamp,93) # 3 hours check 
            arr = extracthighs(data)
            # l = list(filter(lambda x: x >= arr[0]*1.03 ,arr))
            if arr[0]*1.02 <= np.average(arr): #reached profit 
                print("YAY profit at",coin)
                df.loc[df['coin'] == coin,'label'] = 1
            elif arr[0]*0.98 >= np.average(arr):
                df.loc[df['coin'] == coin,'label'] = -1
            else:
                df.loc[df['coin'] == coin,'label'] = 0
                
        print(df[df['label'] == 1].coin.unique())
        print(df[df['label'] == -1].coin.unique())
        print(df[df['label'] == 0].coin.unique())
        df.to_csv(f"./data/LOBdata{j}.csv")
       
if __name__ == "__main__":
    main()

