from ast import arg
from concurrent.futures import thread
from threading import Lock, Thread
import sys
import signal
from time import sleep,time,ctime
from requests import Session
from json import loads
import numpy as np
from pandas import DataFrame,read_csv,concat
import matplotlib.pyplot as plt
from math import e,log
from os import system,popen
from threading import Thread,current_thread
from select import select

global df,lock
df = DataFrame(columns=['coin','time','all','avgall','avg15','1','2','3','4','5','price','profit','loss'])
lock = Lock()
currency = "BNX"+"USDT"
limit = 1000
url = f"https://www.binance.com/api/v3/depth?symbol={currency}&limit={limit}"

def indexaverage(arr):
    s = 0
    for i in range(len(arr)):
        s += arr[i]*e**(-0.0001*abs(len(arr)-i))
    return s
    

mainsession = Session()

def getpercent(book,p):
    def dist(price,x):
        if x < price:
            return (price-x)**-1
        elif x > price:
            return (x-price)**-1
        else:
            return 0
    try:
        bids = np.array(book['bids'],dtype=np.float64) # people saying price will fall
        asks =  np.array(book['asks'],dtype=np.float64) # people saying the price will rise
        price = (bids[0][0] + asks[0][0])/2
        profit = price*(1+p)
        loss = price*(1-p)
        ask_index = None
        bid_index = None
        for i in range(len(asks)):
            if asks[i][0] >= profit:
                ask_index = i
                break
        for i in range(len(bids)):
            if bids[i][0] <= loss:
                bid_index = i
                break 
        if bid_index:
            # bid_prices = [dist(price,i[0])*i[1] for i in bids][:bid_index+1]
            bid_prices = [i[1] for i in bids][:bid_index+1]
        if ask_index:
            # ask_prices = [dist(price,i[0])*i[1] for i in  asks][:ask_index+1]
            ask_prices = [i[1] for i in  asks][:ask_index+1]

        
        supply = sum (ask_prices)
        demand = sum(bid_prices)
        return demand/supply
    except:
        return None

def indicator(currency,delta):
    '''
    5% trial
    '''
    limit = 800
    c= 0
    xs5 = []
    ys5 = []
    xs4 = []
    ys4 = []
    xs3 = []
    ys3 = []
    xs2 = []
    ys2 = []
    xs1 = []
    ys1 = []
    xs_ = []
    ys_ = []
    url = f"https://www.binance.com/api/v3/depth?symbol={currency}&limit={limit}"
    mainsession = Session()
    for i in range(delta):
        t = mainsession.get(url).text
        book = loads(t)
        try:     
            bids = np.array(book['bids'],dtype=np.float64) # people saying price will fall
            asks =  np.array(book['asks'],dtype=np.float64) # people saying the price will rise
            price = (bids[0][0] + asks[0][0])/2
            profit = price*(1.05)
            loss = price*(0.95)
            ans= getpercent(book,0.05)
            xs5.append(c/60)
            ys5.append(ans)
            ans = getpercent(book,0.04)
            xs4.append(c/60)
            ys4.append(ans)
            ans = getpercent(book,0.03)
            xs3.append(c/60)
            ys3.append(ans)
            ans = getpercent(book,0.02)
            xs2.append(c/60)
            ys2.append(ans)        
            ans = getpercent(book,0.01)
            xs1.append(c/60)
            ys1.append(ans)
             
            xs_.append(c/60)
            ys_.append(sum([i[0]*i[1] for i in bids])/sum([i[0]*i[1] for i in asks])) 
            ######## PLOT AVERAGES 
            sleep(1)
            c+=1
            
        except KeyError as f:
            print(t)
            return None
    return np.average(ys_),np.average(ys5),np.average(ys4),np.average(ys3),np.average(ys2),np.average(ys1)
    
def work3(currency):
    global df,lock
    '''
    5% trial
    '''
    mainsession = Session()
    limit = 500
    c= 0
    xs5 = []
    ys5 = []
    xs4 = []
    ys4 = []
    xs3 = []
    ys3 = []
    xs2 = []
    ys2 = []
    xs1 = []
    ys1 = []
    xs_ = []
    ys_ = []
    url = f"https://www.binance.com/api/v3/depth?symbol={currency}&limit={limit}"
    try:
        for i in range(60*5):
            t = mainsession.get(url).text
            book = loads(t)     
            bids = np.array(book['bids'],dtype=np.float64) # people saying price will fall
            asks =  np.array(book['asks'],dtype=np.float64) # people saying the price will rise
            price = (bids[0][0] + asks[0][0])/2
            profit = price*(1.05)
            loss = price*(0.95)
            # plt.figure(0)
            # plt.clf()
            ans= getpercent(book,0.05)
            if not ans:
                print("skip",current_thread().name)
                return 
            xs5.append(c/60)
            ys5.append(ans)
            # plt.plot(xs5,ys5,c=('k'))
                
            ans = getpercent(book,0.04)
            xs4.append(c/60)
            ys4.append(ans)
            # plt.plot(xs4,ys4,c='r')
            
            ans = getpercent(book,0.03)
            xs3.append(c/60)
            ys3.append(ans)
            # plt.plot(xs3,ys3,c='y')
                            
            ans = getpercent(book,0.02)
            xs2.append(c/60)
            ys2.append(ans)
            # plt.plot(xs2,ys2,c='g')
                            
            ans = getpercent(book,0.01)
            xs1.append(c/60)
            ys1.append(ans)
            # plt.plot(xs1,ys1,c='m')
            
                
            xs_.append(c/60)
            ys_.append(sum([i[0]*i[1] for i in bids])/sum([i[0]*i[1] for i in asks])) 
            
            # plt.plot(xs_,ys_,c = 'b')
            
            ######## PLOT AVERAGES 
            # plt.figure(1)
            # plt.clf()
            avg15 = (np.average(ys5) + np.average(ys4) + np.average(ys3) + np.average(ys2) + np.average(ys1))/5
            avgall = (np.average(ys_)+avg15)/2
        
            c+=1
            print(current_thread().name,'update',c/(60*5))
            sleep(1)
    except KeyError as f:
        print(t)
        return None
    else:
        tempdf = DataFrame([[currency,ctime(time()),np.average(ys_),avgall,avg15, np.average(ys1),np.average(ys2),np.average(ys3),np.average(ys4),np.average(ys5),price,profit,loss]],columns=['coin','time','all','avgall','avg15','1','2','3','4','5','price','profit','loss'])
        print(tempdf.head())
        with lock:
           df =  concat([df,tempdf],ignore_index=True)
        
def expDS(currency):
    '''
    5% trial
    '''
    limit = 5000
    c= 0
    xs_ = []
    ys_ = []
    prices = []
    url = f"https://www.binance.com/api/v3/depth?symbol={currency}&limit={limit}"
    while True:
        t = mainsession.get(url).text
        book = loads(t)
        try:     
            bids = np.array(book['bids'],dtype=np.float64) # people saying price will fall
            asks =  np.array(book['asks'],dtype=np.float64) # people saying the price will rise
            price = (bids[0][0] + asks[0][0])/2
            prices.append(e**price)
            profit = price*(1.05)
            loss = price*(0.95)
            xs_.append(c/60)
            ys_.append(e**(sum([i[1] for i in bids])/sum([i[1] for i in asks]))) 
            plt.clf()
            plt.plot(xs_,ys_,c = 'b')
            plt.plot(xs_,prices,c='r')
            # plt.plot(xs_,[np.average(ys_)]*len(xs_),c='r')
            plt.title(f"demand/supply of 5% {currency} while price is {str(price)[:8]} profit {str(profit)[:8]} loss {str(loss)[:8]}")
            # plt.legend([5,4,3,2,1,100],loc = 'upper left')
            plt.pause(2)
            c+=2
            
        except KeyError as f:
            print(t)
            return None

def work2(currency):
    '''
    5% trial
    '''
    limit = 5000
    c= 0
    xs5 = []
    ys5 = []
    xs4 = []
    ys4 = []
    xs3 = []
    ys3 = []
    xs2 = []
    ys2 = []
    xs1 = []
    ys1 = []
    xs_ = []
    ys_ = []
    url = f"https://www.binance.com/api/v3/depth?symbol={currency}&limit={limit}"
    while True:
        t = mainsession.get(url).text
        book = loads(t)
        try:     
            bids = np.array(book['bids'],dtype=np.float64) # people saying price will fall
            asks =  np.array(book['asks'],dtype=np.float64) # people saying the price will rise
            price = (bids[0][0] + asks[0][0])/2
            profit = price*(1.05)
            loss = price*(0.95)
            plt.figure(0)
            plt.clf()
            ans = getpercent(book,0.05)
            xs5.append(c/60)
            ys5.append(ans)
            plt.plot(xs5,ys5,c=('k'))
             
            ans = getpercent(book,0.04)
            xs4.append(c/60)
            ys4.append(ans)
            plt.plot(xs4,ys4,c='r')
            
            ans = getpercent(book,0.03)
            xs3.append(c/60)
            ys3.append(ans)
            plt.plot(xs3,ys3,c='y')
                         
            ans = getpercent(book,0.02)
            xs2.append(c/60)
            ys2.append(ans)
            plt.plot(xs2,ys2,c='g')
                         
            ans = getpercent(book,0.01)
            xs1.append(c/60)
            ys1.append(ans)
            plt.plot(xs1,ys1,c='m')
            
             
            xs_.append(c/60)
            ys_.append(sum([i[1] for i in bids])/sum([i[1] for i in asks])) 
           
            plt.plot(xs_,ys_,c = 'b')
            
            ######## PLOT AVERAGES 
            plt.figure(1)
            plt.clf()
            # avg15 = (np.average(ys5) + np.average(ys4) + np.average(ys3) + np.average(ys2) + np.average(ys1))/5
            # avgall = (np.average(ys_)+avg15)/2
            # plt.title(f"{currency} {str(avgall)[:5]} {str(avg15)[:5]}")
            plt.plot(xs5,[np.average(ys5)]*len(xs5),c=('k'))
            plt.plot(xs4,[np.average(ys4)]*len(xs4),c=('r'))
            plt.plot(xs3,[np.average(ys3)]*len(xs3),c=('y'))
            plt.plot(xs2,[np.average(ys2)]*len(xs2),c=('g'))
            plt.plot(xs1,[np.average(ys1)]*len(xs1),c=('m'))
            plt.plot(xs_,[np.average(ys_)]*len(xs_),c=('b'))
            
            plt.figure(0)
            # plt.plot(xs_,[np.average(ys_)]*len(xs_),c='r')
            plt.title(f"demand/supply of 5% {currency} while price is {str(price)[:8]} profit {str(profit)[:8]} loss {str(loss)[:8]}")
            plt.legend([5,4,3,2,1,100],loc = 'upper left')
            plt.pause(5)
            c+=1
            
        except KeyError as f:
            print(t)
            return None
    

def work(currency):
   
    limit = 500
    url = f"https://www.binance.com/api/v3/depth?symbol={currency}&limit={limit}"
    xs = []
    ys = []
    avereges = []
    t2 = 0
    while True:
        t = mainsession.get(url).text
        book = loads(t)
        try:
            c = 0
            s = 0
            
            decrease = np.array(book['bids'],dtype=np.float64) # people saying price will fall
            x1 = [i[0] for i in decrease]
            y1 = [i[1] for i in decrease] 
            a = min(x1)
            c += len(y1)
            s += sum(y1)
            
            increase=  np.array(book['asks'],dtype=np.float64) # people saying the price will rise
            x2 = [i[0] for i in increase]
            y2 = [i[1] for i in increase]
            price = np.average([x1[0],x2[0]])
            b = max(x2)
            c += len(y2)
            s += sum(y2)
            av = s/c
            g = lambda x: e**(-0.009*abs(price-x))
            y1 = [i*g(i) for i in y1] # red
            y2 = [i*g(i) for i in y2] # green
            # plt.figure(2)
            # plt.clf()
            # plt.title("bids against asks")
            # plt.plot(x2,y2,c='g')
            # plt.plot(x1,y1,c='r')
            # plt.plot([a,b],[s/c,s/c],c='b')
            # plt.plot([a,b],[(sum(y1)+sum(y2))/(len(y1)+len(y2)),(sum(y1)+sum(y2))/(len(y1)+len(y2))],c='k')
            # plt.pause(0.5)
            # plt.clf() 
            plt.figure(1)
            plt.clf()
            plt.title("demand/supply real time ratio")
            xs.append(t2/60)
            ys.append(sum(y1)/sum(y2))
            a = np.average(ys)
            avereges.append(a)
            t2+=1
            plt.plot(xs,ys,c='k')
            plt.plot(xs,[a]*len(xs))
            
            # dx = xs[:-1]
            # dy = [(ys[i+1]-ys[i])/(xs[i+1]-xs[i]) for i in range(len(ys)-1)]
            
            # plt.figure(2)
            # plt.clf()
            # plt.title("dy/dx ")
            # plt.plot(dx,dy,c='k')
            # plt.plot(xs,[0]*len(xs),c='r')
            plt.pause(0.5)
            
        except KeyError as f:
            print(t)
            return None
    
    # bids_df = DataFrame(bids,columns=['price','quantity'])
    # asks_df = DataFrame(asks,columns=['price','quantity'])
    # seller = asks_df
    # buyyer = bids_df
    # supply = sum(a)
    # demand = sum(b)
    # print("supply:",supply)
    # print('demand:',demand)
    # print("supply/demand:",supply/demand)
    # print('-----------------------------------------',end='\n\n')
    # return supply/demand


def main():
    # data = []
    # print('start',ctime(time()))
    # try:
    #     for i in range(2*60*60):
    #         print(i/(2*60*60),'%')
    #         y = work()
    #         # print(y)
    #         if y:
    #             t1 = time()
    #             st = ctime(t1)
    #             data.append([t1,st,y]) 
    #         sleep(0.5)
    # finally:
    #     print('finish',time())
  
    # df = DataFrame(data=data,columns=['timestamp','date','supply/demand'])
    # df.to_csv(f"{currency}_1.csv")
    # df = read_csv("CFXUSDT_1.csv")
    # y = df['supply/demand'] #.apply(lambda x:x**-1)
    # x = [i/60 for i in list(range(len(y)))]
    # plt.plot(x,y,c='k')
    # plt.plot(x,[y.sum()/len(y)]*len(x),c='r')
    # plt.show()
    symbols = loads(mainsession.get("https://www.binance.com/api/v3/ticker/bookTicker").text)
    symbols = list(filter(lambda x: "USDT" in x['symbol'],symbols))
    # pick = []
    # poplock = Lock()
    # def worker(symbols):
    #     while len(symbols) > 0:
    #         with poplock:
    #             try:
    #                 symbol = symbols.pop()['symbol']
    #             except:
    #                 break
    #         try:
    #             print("starts",symbol)
    #             ans = indicator(symbol,10)
    #         except:
    #             print(symbol,'IDK')
    #         else:
    #             flag = True
    #             for j in ans:
    #                 if j < 1:
    #                     flag = False
    #             if flag:
    #                 print(symbol,ans)
    #                 print("Added",symbol)
    #                     # pick.append(i['symbol'])
    #             sleep(1)
    # ts = []
    # for i in range(4):
    #     ts.append(Thread(target=worker,args=[symbols]))
    # for i in ts:
    #     i.start()
    # for i in ts:
    #     i.join()
    # print("program finished")
    # print("chose",pick)
    # while True:
    #     for i in pick:
    #         print(i,work(i))
    #         sleep(1)
    #     print("=============================")
    # while len(symbols) > 3:    
    #     s1 , s2, s3 = symbols.pop()['symbol'],symbols.pop()['symbol'],symbols.pop()['symbol']
    #     p1 = Thread(target=work3,args=(s1,),name=s1)
    #     p2 = Thread(target=work3,args=(s2,),name=s2)
    #     p3 = Thread(target=work3,args=(s3,),name=s3)
    #     p1.setDaemon(True)
    #     p2.setDaemon(True)
    #     p3.setDaemon(True)
    #     p1.start()
    #     p2.start()
    #     p3.start()
        
    #     p1.join()
    #     p2.join()
    #     p3.join()
    #     df.to_csv('data.csv')
    expDS('DOGEUSDT')
        
if __name__ == '__main__':
    main()