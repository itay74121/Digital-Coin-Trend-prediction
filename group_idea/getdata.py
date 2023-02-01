from time import time, sleep
from pandas import read_csv
from requests import Session
import datetime
from json import loads,dump,load
import numpy as np

#start time is 13 characters for some reason. Any other size yields incorrect results.  

url = "https://www.binance.com/api/v3/klines?symbol={}&interval={}&startTime={}&limit={}"


def gethistoricaldata(symbol,interval,starttime,limit):
    u = url.format(symbol,interval,starttime,limit)
    s = Session()
    text = s.get(u).text
    return loads(text) # candle stick history. 

def extracthighs(history):
    return [float(i[2]) for i in history]
def extractlows (history):
    return [float(i[3]) for i in history]

def collect4(symbol,interval,starttime,endtime=None,limit=1000):
    if endtime == None:
        now = int(time())*1000
    else:
        now = endtime
    lasttime = starttime
    t = {'1m':60,'3m':3*60,'5m':5*60,'1h':60*60,'1d':60*60*24}
    res = []
    while lasttime <= now - 1000*t[interval]:
        data = gethistoricaldata(symbol,interval,lasttime,limit)
        res += data
        lasttime = data[-1][0]
        # sleep(0.01)
    return res


# coins2 = ['BTCUSDT', 'ETHUSDT', 'BNBUSDT', 'BCCUSDT', 'NEOUSDT', 'LTCUSDT', 'QTUMUSDT', 'ADAUSDT', 'XRPUSDT', 'EOSUSDT', 'TUSDUSDT',
#           'IOTAUSDT', 'XLMUSDT', 'ONTUSDT', 'TRXUSDT', 'ETCUSDT', 'ICXUSDT', 'VENUSDT', 'NULSUSDT', 'VETUSDT', 'PAXUSDT', 'BCHABCUSDT',
#           'BCHSVUSDT', 'USDCUSDT', 'LINKUSDT', 'WAVESUSDT', 'BTTUSDT', 'USDSUSDT', 'ONGUSDT', 'HOTUSDT', 'ZILUSDT', 'ZRXUSDT', 'FETUSDT',
#           'BATUSDT', 'XMRUSDT', 'ZECUSDT', 'IOSTUSDT', 'CELRUSDT', 'DASHUSDT', 'NANOUSDT', 'OMGUSDT', 'THETAUSDT', 'ENJUSDT', 'MITHUSDT',
#           'MATICUSDT', 'ATOMUSDT', 'TFUELUSDT', 'ONEUSDT', 'FTMUSDT', 'ALGOUSDT', 'USDSBUSDT', 'GTOUSDT', 'ERDUSDT', 'DOGEUSDT', 'DUSKUSDT',
#           'ANKRUSDT', 'WINUSDT', 'COSUSDT', 'NPXSUSDT', 'COCOSUSDT', 'MTLUSDT', 'TOMOUSDT', 'PERLUSDT', 'DENTUSDT', 'MFTUSDT', 'KEYUSDT',
#           'STORMUSDT', 'DOCKUSDT', 'WANUSDT', 'FUNUSDT', 'CVCUSDT', 'CHZUSDT', 'BANDUSDT', 'BUSDUSDT', 'BEAMUSDT', 'XTZUSDT', 'RENUSDT', 
#           'RVNUSDT', 'HCUSDT', 'HBARUSDT', 'NKNUSDT', 'STXUSDT', 'KAVAUSDT', 'ARPAUSDT', 'IOTXUSDT', 'RLCUSDT', 'MCOUSDT', 'CTXCUSDT',
#           'BCHUSDT', 'TROYUSDT', 'VITEUSDT', 'FTTUSDT', 'BUSDTRY', 'USDTTRY', 'USDTRUB', 'EURUSDT', 'OGNUSDT', 'DREPUSDT', 'BULLUSDT', 
#           'BEARUSDT', 'ETHBULLUSDT', 'ETHBEARUSDT', 'TCTUSDT', 'WRXUSDT', 'BTSUSDT', 'LSKUSDT', 'BNTUSDT', 'LTOUSDT', 'EOSBULLUSDT', 
#           'EOSBEARUSDT', 'XRPBULLUSDT', 'XRPBEARUSDT', 'STRATUSDT', 'AIONUSDT', 'MBLUSDT', 'COTIUSDT', 'BNBBULLUSDT', 'BNBBEARUSDT',
#           'STPTUSDT', 'USDTZAR', 'WTCUSDT', 'DATAUSDT', 'XZCUSDT', 'SOLUSDT', 'USDTIDRT', 'CTSIUSDT', 'HIVEUSDT', 'CHRUSDT', 'BTCUPUSDT', 
#           'BTCDOWNUSDT', 'GXSUSDT', 'ARDRUSDT', 'LENDUSDT', 'MDTUSDT', 'STMXUSDT', 'KNCUSDT', 'REPUSDT', 'LRCUSDT', 'PNTUSDT', 'USDTUAH', 
#           'COMPUSDT', 'USDTBIDR', 'BKRWUSDT', 'SCUSDT', 'ZENUSDT', 'SNXUSDT', 'ETHUPUSDT', 'ETHDOWNUSDT', 'ADAUPUSDT', 'ADADOWNUSDT', 
#           'LINKUPUSDT', 'LINKDOWNUSDT', 'VTHOUSDT', 'DGBUSDT', 'GBPUSDT', 'SXPUSDT', 'MKRUSDT', 'DAIUSDT', 'DCRUSDT', 'STORJUSDT', 
#           'BNBUPUSDT', 'BNBDOWNUSDT', 'XTZUPUSDT', 'XTZDOWNUSDT', 'USDTBKRW', 'MANAUSDT', 'AUDUSDT', 'YFIUSDT', 'BALUSDT', 'BLZUSDT', 
#           'IRISUSDT', 'KMDUSDT', 'USDTDAI', 'JSTUSDT', 'SRMUSDT', 'ANTUSDT', 'CRVUSDT', 'SANDUSDT', 'OCEANUSDT', 'NMRUSDT', 'DOTUSDT', 
#           'LUNAUSDT', 'RSRUSDT', 'PAXGUSDT', 'WNXMUSDT', 'TRBUSDT', 'BZRXUSDT', 'SUSHIUSDT', 'YFIIUSDT', 'KSMUSDT', 'EGLDUSDT', 'DIAUSDT', 
#           'RUNEUSDT', 'FIOUSDT', 'UMAUSDT', 'EOSUPUSDT', 'EOSDOWNUSDT', 'TRXUPUSDT', 'TRXDOWNUSDT', 'XRPUPUSDT', 'XRPDOWNUSDT', 'DOTUPUSDT', 
#           'DOTDOWNUSDT', 'USDTNGN', 'BELUSDT', 'WINGUSDT', 'LTCUPUSDT', 'LTCDOWNUSDT', 'UNIUSDT', 'NBSUSDT', 'OXTUSDT', 'SUNUSDT', 'AVAXUSDT', 
#           'HNTUSDT', 'FLMUSDT', 'UNIUPUSDT', 'UNIDOWNUSDT', 'ORNUSDT', 'UTKUSDT', 'XVSUSDT', 'ALPHAUSDT', 'USDTBRL', 'AAVEUSDT', 'NEARUSDT', 
#           'SXPUPUSDT', 'SXPDOWNUSDT', 'FILUSDT', 'FILUPUSDT', 'FILDOWNUSDT', 'YFIUPUSDT', 'YFIDOWNUSDT', 'INJUSDT', 'AUDIOUSDT', 'CTKUSDT', 
#           'BCHUPUSDT', 'BCHDOWNUSDT', 'AKROUSDT', 'AXSUSDT', 'HARDUSDT', 'DNTUSDT', 'STRAXUSDT', 'UNFIUSDT', 'ROSEUSDT', 'AVAUSDT', 'XEMUSDT', 
#           'AAVEUPUSDT', 'AAVEDOWNUSDT', 'SKLUSDT', 'SUSDUSDT', 'SUSHIUPUSDT', 'SUSHIDOWNUSDT', 'XLMUPUSDT', 'XLMDOWNUSDT', 'GRTUSDT', 'JUVUSDT',
#           'PSGUSDT', 'USDTBVND', '1INCHUSDT', 'REEFUSDT', 'OGUSDT', 'ATMUSDT', 'ASRUSDT', 'CELOUSDT', 'RIFUSDT', 'BTCSTUSDT', 'TRUUSDT',
#           'CKBUSDT', 'TWTUSDT', 'FIROUSDT', 'LITUSDT', 'SFPUSDT', 'DODOUSDT', 'CAKEUSDT', 'ACMUSDT', 'BADGERUSDT', 'FISUSDT', 'OMUSDT',
#           'PONDUSDT', 'DEGOUSDT', 'ALICEUSDT', 'LINAUSDT', 'PERPUSDT', 'RAMPUSDT', 'SUPERUSDT', 'CFXUSDT', 'EPSUSDT', 'AUTOUSDT', 'TKOUSDT',
#           'PUNDIXUSDT', 'TLMUSDT', '1INCHUPUSDT', '1INCHDOWNUSDT', 'BTGUSDT', 'MIRUSDT', 'BARUSDT', 'FORTHUSDT', 'BAKEUSDT', 'BURGERUSDT',
#           'SLPUSDT', 'SHIBUSDT', 'ICPUSDT', 'USDTGYEN', 'ARUSDT', 'POLSUSDT', 'MDXUSDT', 'MASKUSDT', 'LPTUSDT', 'NUUSDT', 'XVGUSDT', 'ATAUSDT',
#           'GTCUSDT', 'TORNUSDT', 'KEEPUSDT', 'ERNUSDT', 'KLAYUSDT', 'PHAUSDT', 'BONDUSDT', 'MLNUSDT', 'DEXEUSDT', 'C98USDT', 'CLVUSDT', 'QNTUSDT', 'FLOWUSDT',
#           'TVKUSDT', 'MINAUSDT', 'RAYUSDT', 'FARMUSDT', 'ALPACAUSDT', 'QUICKUSDT', 'MBOXUSDT', 'FORUSDT', 'REQUSDT', 'GHSTUSDT', 'WAXPUSDT',
#           'TRIBEUSDT', 'GNOUSDT', 'XECUSDT', 'ELFUSDT', 'DYDXUSDT', 'POLYUSDT', 'IDEXUSDT', 'VIDTUSDT', 'USDPUSDT', 'GALAUSDT', 'ILVUSDT', 
#           'YGGUSDT', 'SYSUSDT', 'DFUSDT', 'FIDAUSDT', 'FRONTUSDT', 'CVPUSDT', 'AGLDUSDT', 'RADUSDT', 'BETAUSDT', 'RAREUSDT', 'LAZIOUSDT', 
#           'CHESSUSDT', 'ADXUSDT', 'AUCTIONUSDT', 'DARUSDT', 'BNXUSDT', 'RGTUSDT', 'MOVRUSDT', 'CITYUSDT', 'ENSUSDT', 'KP3RUSDT', 'QIUSDT', 
#           'PORTOUSDT', 'POWRUSDT', 'VGXUSDT', 'JASMYUSDT', 'AMPUSDT', 'PLAUSDT', 'PYRUSDT', 'RNDRUSDT', 'ALCXUSDT', 'SANTOSUSDT', 'MCUSDT',
#           'ANYUSDT', 'BICOUSDT', 'FLUXUSDT', 'FXSUSDT', 'VOXELUSDT', 'HIGHUSDT', 'CVXUSDT', 'PEOPLEUSDT', 'OOKIUSDT', 'SPELLUSDT', 'USTUSDT',
#           'JOEUSDT', 'ACHUSDT', 'IMXUSDT', 'GLMRUSDT', 'LOKAUSDT', 'SCRTUSDT', 'API3USDT', 'BTTCUSDT', 'ACAUSDT', 'ANCUSDT', 'XNOUSDT', 
#           'WOOUSDT', 'ALPINEUSDT', 'TUSDT', 'ASTRUSDT', 'NBTUSDT', 'GMTUSDT', 'KDAUSDT', 'APEUSDT', 'BSWUSDT', 'BIFIUSDT', 'MULTIUSDT', 
#           'STEEMUSDT', 'MOBUSDT', 'NEXOUSDT', 'REIUSDT', 'GALUSDT', 'LDOUSDT', 'EPXUSDT', 'OPUSDT']
# coins2 = list(filter(lambda x: 'up' not in x and 'down' not in x,coins2))

coins2= ['CITY', 'PERL', 'LINKDOWN', 'DATA', 'OG', 'LTO', 'MDT', 'ALPACA', 'ETHDOWN', 'ASR', 'CTSI', 'ASTR', 'BAR', 'ENS', 'ZRX',
          'TRXDOWN', 'TORN', '1INCH', 'JUV', 'DNT', 'GTC', 'LAZIO', 'YFII', 'ALPINE', 'GMT', 'NMR', 'NEXO', 'FLUX', 'GLMR', 'AR', 
          'QNT', 'QUICK', 'DOTDOWN', 'PORTO', 'OGN', 'HOT', 'ACA', 'XRPUP', 'OOKI', 'ACM', 'FLM', 'BTCDOWN', 'NKN', 'SANTOS', 'FIL']
coins2 = [i+"USDT" for i in coins2]

def main():
    # print(len(coins2))
    # days = 30*12
    # now = int (time()*1000)
    # sub = 60*60*24*(days)*(1000)
    # print(now-sub)
    # data = {}
    # for coin in coins2:
    #     data[coin] = collect4(coin,'1d',now-sub,now)
    #     print(len(data[coin]))
    
    with open("./group_idea/data.json",'r') as f:
    #     dump(data,f)
        data = load(f)
    data_ = []
    for i in data:
        if len(data[i]) != 360:
            continue
        data[i] = extracthighs(data[i])
        t = [data[i][j]/data[i][j-1] for j in range(1,len(data[i]))]
        t = [i-1 for i in t]
        data_.append(t)
    data = np.array(data_)
    
    size = 10
    d = []
    l = []
    for i in range(360-10-1):
        d.append(data[:,i:i+10])
        l.append(data[:,i+10:i+11])
    d = np.stack(d)
    l = np.stack(l)
    np.save("./group_idea/data.npy",d)
    np.save("./group_idea/labels.npy",l)
    # print(data)
    
    print("done")
    
if __name__ == "__main__":
    main()

