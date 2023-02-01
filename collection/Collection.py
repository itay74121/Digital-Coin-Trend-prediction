
from glob import glob
from time import sleep,time

import pandas

from threading import Thread
from json import dumps, loads
from pandas import DataFrame, read_csv
from requests import Session
from random import choice
import numpy as np
from zmq import proxy

url = "https://www.binance.com/api/v3/klines?symbol={}&interval={}&startTime={}&limit={}"

def collect1(symbol):
    mainsession = Session()
    if len(glob(f"./collection/{symbol}.csv")) > 0:
        df = read_csv(f"./collection/{symbol}.csv")
    else:
        df = DataFrame(columns=['time','matrix'])
    url = "https://www.binance.com/api/v3/depth?symbol={}&limit={}"
    limit = 1000
    i=0
    while True:
        print(i)
        i+=1
        turl = url.format(symbol,limit)
        d = loads(mainsession.get(turl).text)
        d:dict
        if d.get('msg'): # ERROR CASE. FIX 
            continue
        bids = [j[0]*j[1] for j in np.array(d['bids'],dtype=float)]
        asks = [j[0]*j[1] for j in np.array(d['asks'],dtype=float)]
        t = bids[::-1] + asks
        tdf = DataFrame([[time(),dumps(t)]],columns=['time','matrix'])
        df = pandas.concat([df,tdf],ignore_index=True)
        del tdf, t, bids,asks,d
        df.to_csv(f"./collection/{symbol}.csv")
        sleep(60)

def collect2(symbols):
    mainsession = Session()
    df = DataFrame(columns=['coin','starttime','endtime','label','matrix'])
    url = "https://www.binance.com/api/v3/depth?symbol={}&limit={}"
    limit = 1000
        
    for i in range(60):
        print(i)
        for symbol in symbols:
            turl = url.format(symbol,limit)
            starttime = time()
            d = loads(mainsession.get(turl).text)
            endtime = time() 
            if d.get('msg'): # ERROR CASE. FIX 
                continue
            bids = [j[0]*j[1] for j in np.array(d['bids'],dtype=float)]
            asks = [j[0]*j[1] for j in np.array(d['asks'],dtype=float)]
            t = bids[::-1] + asks
            tdf = DataFrame([[symbol,starttime,endtime,None,dumps(t)]],columns=['coin','starttime','endtime','label','matrix'])
            df = pandas.concat([df,tdf],ignore_index=True)
            del tdf, t, bids,asks,d
            sleep(1)
    m = max([ int(i[20:-4]) for i in glob('./collection/LOBdata*.csv')])+1
    df.to_csv(f"./collection/LOBdata{m}.csv")
def collect3(symbols):
    '''
    Collect data according to the DEEP LOB paper 
    '''
    with open('./collection/proxies.txt','r') as f:
        lines = f.read().split('\n')
    proxy = choice(lines)
    
    mainsession = Session()
    # mainsession.proxies.update({'http':proxy})
    df = DataFrame(columns=['coin','starttime','endtime','label','matrix'])
    url = "http://www.binance.com/api/v3/depth?symbol={}USDT&limit={}"
    limit = 10
    coinsdata = {}
    starttime = time()
    for i in range(100):
        print(i)
        for symbol in symbols:  
            ################
            # FETCH THE DATA
            ################
        
            turl = url.format(symbol,limit)
            
            d = loads(mainsession.get(turl).text)
            
            if d.get('msg'): # ERROR CASE. FIX 
                sleep(5)
                continue

            #######################
            # EXTRACT BIDS AND ASKS
            #######################
            
            bids = np.array(d['bids'],dtype=float)
            bids = np.transpose(bids)
            asks = np.array(d['asks'],dtype=float)
            asks = np.transpose(asks)
            t = np.stack([bids,asks])
            t = np.reshape(t,(4,limit))
            t = t.transpose()
            t = t.flatten()
            
            ########################
            ###  SAVE TO COIN DICT
            ########################
            coinsdata.setdefault(symbol,[])
            coinsdata[symbol].append(np.ndarray.tolist(t))
            
            ######################
            # CONCAT TO DATA-FRAME
            ######################
            # tdf = DataFrame([[symbol,starttime,endtime,None,dumps(t)]],columns=['coin','starttime','endtime','label','matrix'])
            # df = pandas.concat([df,tdf],ignore_index=True)
            # del tdf, t, bids,asks,d
            sleep(0.4)
            
    #########################
    # WRITE INTO FILE RESULTS
    #########################
    endtime = time()
    finaldata  = []  
    for symbol in symbols:
        finaldata.append([symbol,starttime,endtime, None, dumps(coinsdata[symbol])])
    df = DataFrame(finaldata,columns=['coin','starttime','endtime','label','matrix'])
    m = [ int(i[20:-4]) for i in glob('./collection/LOBdata*.csv')]
    m = max(m)+1 if len(m)>0 else 1
    df.to_csv(f"./collection/LOBdata{m}.csv")

def gethistoricaldata(symbol,interval,starttime,limit):
    u = url.format(symbol,interval,starttime,limit)
    s = Session()
    text = s.get(u).text
    return loads(text) # candle stick history. 


coins1 = ['CITY', 'PERL', 'LINKDOWN', 'DATA', 'OG', 'LTO', 'MDT', 'ALPACA', 'ETHDOWN', 'ASR', 'CTSI', 'ASTR', 'BAR', 'ENS', 'ZRX',
          'TRXDOWN', 'TORN', '1INCH', 'JUV', 'DNT', 'GTC', 'LAZIO', 'YFII', 'ALPINE', 'GMT', 'NMR', 'NEXO', 'FLUX', 'GLMR', 'AR', 
          'QNT', 'QUICK', 'DOTDOWN', 'PORTO', 'OGN', 'HOT', 'ACA', 'XRPUP', 'OOKI', 'ACM', 'FLM', 'BTCDOWN', 'NKN', 'SANTOS', 'FIL']

coins2 = ['BTCUSDT', 'ETHUSDT', 'BNBUSDT', 'BCCUSDT', 'NEOUSDT', 'LTCUSDT', 'QTUMUSDT', 'ADAUSDT', 'XRPUSDT', 'EOSUSDT', 'TUSDUSDT',
          'IOTAUSDT', 'XLMUSDT', 'ONTUSDT', 'TRXUSDT', 'ETCUSDT', 'ICXUSDT', 'VENUSDT', 'NULSUSDT', 'VETUSDT', 'PAXUSDT', 'BCHABCUSDT',
          'BCHSVUSDT', 'USDCUSDT', 'LINKUSDT', 'WAVESUSDT', 'BTTUSDT', 'USDSUSDT', 'ONGUSDT', 'HOTUSDT', 'ZILUSDT', 'ZRXUSDT', 'FETUSDT',
          'BATUSDT', 'XMRUSDT', 'ZECUSDT', 'IOSTUSDT', 'CELRUSDT', 'DASHUSDT', 'NANOUSDT', 'OMGUSDT', 'THETAUSDT', 'ENJUSDT', 'MITHUSDT',
          'MATICUSDT', 'ATOMUSDT', 'TFUELUSDT', 'ONEUSDT', 'FTMUSDT', 'ALGOUSDT', 'USDSBUSDT', 'GTOUSDT', 'ERDUSDT', 'DOGEUSDT', 'DUSKUSDT',
          'ANKRUSDT', 'WINUSDT', 'COSUSDT', 'NPXSUSDT', 'COCOSUSDT', 'MTLUSDT', 'TOMOUSDT', 'PERLUSDT', 'DENTUSDT', 'MFTUSDT', 'KEYUSDT',
          'STORMUSDT', 'DOCKUSDT', 'WANUSDT', 'FUNUSDT', 'CVCUSDT', 'CHZUSDT', 'BANDUSDT', 'BUSDUSDT', 'BEAMUSDT', 'XTZUSDT', 'RENUSDT', 
          'RVNUSDT', 'HCUSDT', 'HBARUSDT', 'NKNUSDT', 'STXUSDT', 'KAVAUSDT', 'ARPAUSDT', 'IOTXUSDT', 'RLCUSDT', 'MCOUSDT', 'CTXCUSDT',
          'BCHUSDT', 'TROYUSDT', 'VITEUSDT', 'FTTUSDT', 'BUSDTRY', 'USDTTRY', 'USDTRUB', 'EURUSDT', 'OGNUSDT', 'DREPUSDT', 'BULLUSDT', 
          'BEARUSDT', 'ETHBULLUSDT', 'ETHBEARUSDT', 'TCTUSDT', 'WRXUSDT', 'BTSUSDT', 'LSKUSDT', 'BNTUSDT', 'LTOUSDT', 'EOSBULLUSDT', 
          'EOSBEARUSDT', 'XRPBULLUSDT', 'XRPBEARUSDT', 'STRATUSDT', 'AIONUSDT', 'MBLUSDT', 'COTIUSDT', 'BNBBULLUSDT', 'BNBBEARUSDT',
          'STPTUSDT', 'USDTZAR', 'WTCUSDT', 'DATAUSDT', 'XZCUSDT', 'SOLUSDT', 'USDTIDRT', 'CTSIUSDT', 'HIVEUSDT', 'CHRUSDT', 'BTCUPUSDT', 
          'BTCDOWNUSDT', 'GXSUSDT', 'ARDRUSDT', 'LENDUSDT', 'MDTUSDT', 'STMXUSDT', 'KNCUSDT', 'REPUSDT', 'LRCUSDT', 'PNTUSDT', 'USDTUAH', 
          'COMPUSDT', 'USDTBIDR', 'BKRWUSDT', 'SCUSDT', 'ZENUSDT', 'SNXUSDT', 'ETHUPUSDT', 'ETHDOWNUSDT', 'ADAUPUSDT', 'ADADOWNUSDT', 
          'LINKUPUSDT', 'LINKDOWNUSDT', 'VTHOUSDT', 'DGBUSDT', 'GBPUSDT', 'SXPUSDT', 'MKRUSDT', 'DAIUSDT', 'DCRUSDT', 'STORJUSDT', 
          'BNBUPUSDT', 'BNBDOWNUSDT', 'XTZUPUSDT', 'XTZDOWNUSDT', 'USDTBKRW', 'MANAUSDT', 'AUDUSDT', 'YFIUSDT', 'BALUSDT', 'BLZUSDT', 
          'IRISUSDT', 'KMDUSDT', 'USDTDAI', 'JSTUSDT', 'SRMUSDT', 'ANTUSDT', 'CRVUSDT', 'SANDUSDT', 'OCEANUSDT', 'NMRUSDT', 'DOTUSDT', 
          'LUNAUSDT', 'RSRUSDT', 'PAXGUSDT', 'WNXMUSDT', 'TRBUSDT', 'BZRXUSDT', 'SUSHIUSDT', 'YFIIUSDT', 'KSMUSDT', 'EGLDUSDT', 'DIAUSDT', 
          'RUNEUSDT', 'FIOUSDT', 'UMAUSDT', 'EOSUPUSDT', 'EOSDOWNUSDT', 'TRXUPUSDT', 'TRXDOWNUSDT', 'XRPUPUSDT', 'XRPDOWNUSDT', 'DOTUPUSDT', 
          'DOTDOWNUSDT', 'USDTNGN', 'BELUSDT', 'WINGUSDT', 'LTCUPUSDT', 'LTCDOWNUSDT', 'UNIUSDT', 'NBSUSDT', 'OXTUSDT', 'SUNUSDT', 'AVAXUSDT', 
          'HNTUSDT', 'FLMUSDT', 'UNIUPUSDT', 'UNIDOWNUSDT', 'ORNUSDT', 'UTKUSDT', 'XVSUSDT', 'ALPHAUSDT', 'USDTBRL', 'AAVEUSDT', 'NEARUSDT', 
          'SXPUPUSDT', 'SXPDOWNUSDT', 'FILUSDT', 'FILUPUSDT', 'FILDOWNUSDT', 'YFIUPUSDT', 'YFIDOWNUSDT', 'INJUSDT', 'AUDIOUSDT', 'CTKUSDT', 
          'BCHUPUSDT', 'BCHDOWNUSDT', 'AKROUSDT', 'AXSUSDT', 'HARDUSDT', 'DNTUSDT', 'STRAXUSDT', 'UNFIUSDT', 'ROSEUSDT', 'AVAUSDT', 'XEMUSDT', 
          'AAVEUPUSDT', 'AAVEDOWNUSDT', 'SKLUSDT', 'SUSDUSDT', 'SUSHIUPUSDT', 'SUSHIDOWNUSDT', 'XLMUPUSDT', 'XLMDOWNUSDT', 'GRTUSDT', 'JUVUSDT',
          'PSGUSDT', 'USDTBVND', '1INCHUSDT', 'REEFUSDT', 'OGUSDT', 'ATMUSDT', 'ASRUSDT', 'CELOUSDT', 'RIFUSDT', 'BTCSTUSDT', 'TRUUSDT',
          'CKBUSDT', 'TWTUSDT', 'FIROUSDT', 'LITUSDT', 'SFPUSDT', 'DODOUSDT', 'CAKEUSDT', 'ACMUSDT', 'BADGERUSDT', 'FISUSDT', 'OMUSDT',
          'PONDUSDT', 'DEGOUSDT', 'ALICEUSDT', 'LINAUSDT', 'PERPUSDT', 'RAMPUSDT', 'SUPERUSDT', 'CFXUSDT', 'EPSUSDT', 'AUTOUSDT', 'TKOUSDT',
          'PUNDIXUSDT', 'TLMUSDT', '1INCHUPUSDT', '1INCHDOWNUSDT', 'BTGUSDT', 'MIRUSDT', 'BARUSDT', 'FORTHUSDT', 'BAKEUSDT', 'BURGERUSDT',
          'SLPUSDT', 'SHIBUSDT', 'ICPUSDT', 'USDTGYEN', 'ARUSDT', 'POLSUSDT', 'MDXUSDT', 'MASKUSDT', 'LPTUSDT', 'NUUSDT', 'XVGUSDT', 'ATAUSDT',
          'GTCUSDT', 'TORNUSDT', 'KEEPUSDT', 'ERNUSDT', 'KLAYUSDT', 'PHAUSDT', 'BONDUSDT', 'MLNUSDT', 'DEXEUSDT', 'C98USDT', 'CLVUSDT', 'QNTUSDT', 'FLOWUSDT',
          'TVKUSDT', 'MINAUSDT', 'RAYUSDT', 'FARMUSDT', 'ALPACAUSDT', 'QUICKUSDT', 'MBOXUSDT', 'FORUSDT', 'REQUSDT', 'GHSTUSDT', 'WAXPUSDT',
          'TRIBEUSDT', 'GNOUSDT', 'XECUSDT', 'ELFUSDT', 'DYDXUSDT', 'POLYUSDT', 'IDEXUSDT', 'VIDTUSDT', 'USDPUSDT', 'GALAUSDT', 'ILVUSDT', 
          'YGGUSDT', 'SYSUSDT', 'DFUSDT', 'FIDAUSDT', 'FRONTUSDT', 'CVPUSDT', 'AGLDUSDT', 'RADUSDT', 'BETAUSDT', 'RAREUSDT', 'LAZIOUSDT', 
          'CHESSUSDT', 'ADXUSDT', 'AUCTIONUSDT', 'DARUSDT', 'BNXUSDT', 'RGTUSDT', 'MOVRUSDT', 'CITYUSDT', 'ENSUSDT', 'KP3RUSDT', 'QIUSDT', 
          'PORTOUSDT', 'POWRUSDT', 'VGXUSDT', 'JASMYUSDT', 'AMPUSDT', 'PLAUSDT', 'PYRUSDT', 'RNDRUSDT', 'ALCXUSDT', 'SANTOSUSDT', 'MCUSDT',
          'ANYUSDT', 'BICOUSDT', 'FLUXUSDT', 'FXSUSDT', 'VOXELUSDT', 'HIGHUSDT', 'CVXUSDT', 'PEOPLEUSDT', 'OOKIUSDT', 'SPELLUSDT', 'USTUSDT',
          'JOEUSDT', 'ACHUSDT', 'IMXUSDT', 'GLMRUSDT', 'LOKAUSDT', 'SCRTUSDT', 'API3USDT', 'BTTCUSDT', 'ACAUSDT', 'ANCUSDT', 'XNOUSDT', 
          'WOOUSDT', 'ALPINEUSDT', 'TUSDT', 'ASTRUSDT', 'NBTUSDT', 'GMTUSDT', 'KDAUSDT', 'APEUSDT', 'BSWUSDT', 'BIFIUSDT', 'MULTIUSDT', 
          'STEEMUSDT', 'MOBUSDT', 'NEXOUSDT', 'REIUSDT', 'GALUSDT', 'LDOUSDT', 'EPXUSDT', 'OPUSDT']

coins2 = list(filter(lambda x: 'up' not in x and 'down' not in x,coins2))

coins3 = ["ADA","XRP","SOL","DOGE","DOT","TRX","SHIB","AVAX","LTC","FTT","MATIC","LINK",
"UNI",
 "XLM",
 "NEAR",
 "BCH",
 "ALGO",
 "XMR",
 "ETC",
 "ATOM",
 "VET",
 "MANA",
 "HBAR",
 "FLOW",
 "HNT",
 "ICP",
 "TUSD",
 "XTZ",
 "THETA",
 "FIL",
 "EGLD",
 "SAND",
 "APE",
 "USDP",
 "BTTC",
 "EOS",
 "ZEC",
 "AXS",
 "AAVE",
 "IOTA",
 "MKR",
 "XEC",
 "GRT"]

def collect4(symbol,interval,starttime,endtime=None,limit=1000):
    if endtime == None:
        now = int(time())*1000
    else:
        now = endtime
    lasttime = starttime
    t = {'1m':60,'3m':3*60,'5m':5*60,'1h':60*60}
    res = []
    while lasttime <= now - 1000*t[interval]:
        data = gethistoricaldata(symbol,interval,lasttime,limit)
        res += data
        lasttime = data[-1][0]
        sleep(0.5)
    return res



def main():
    # collect1("GLMRUSDT")
    # for j in range(48):
    #     collect3([i+"USDT" for i in coins1])
    # collected = collect4('BTCUSDT','1h',1636611630000)        
    # coloumns =['opentime','open','high','low','close','volume','closetime','quoteassetvolume','numberoftrades','taker_bbav','taker_bqav','ignore']
    # df = DataFrame(collected,columns=coloumns)
    # df.to_csv("./collection/BTCUSDT.csv")
    while True: 
        collect3(coins3)            
    # print(coins2)

if __name__ == "__main__":
    main()
