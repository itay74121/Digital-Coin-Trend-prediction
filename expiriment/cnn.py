from cProfile import label
from re import L
from turtle import color
import tensorflow as tf
import numpy as np
import requests
from json import loads
from datetime import datetime
from time import sleep,time
import matplotlib.pyplot as plt
from keras.preprocessing.sequence import TimeseriesGenerator

url = "https://www.binance.com/api/v3/klines?symbol={}&interval={}&startTime={}&limit={}"

def gethistoricaldata(symbol,interval,starttime,limit):
    u = url.format(symbol,interval,starttime,limit)
    s = requests.Session()
    text = s.get(u).text
    return loads(text) # candle stick history. 

def collect(symbol,interval,starttime,endtime=None,limit=5000):
    if endtime == None:
        now = int(time())*1000
    else:
        now = endtime
    lasttime = starttime
    t = {'1m':60,'3m':3*60,'5m':5*60,'1h':60*60}
    res = []
    while lasttime <= now - 1000*t[interval]:
        print(lasttime)
        data = gethistoricaldata(symbol,interval,lasttime,limit)
        res += data
        lasttime = data[-1][0]
        # sleep(0.01)
    return res



# data = collect("BTCUSDT",'1h',1514757600000)
# np.save("./expiriment/btc.npy",data)
data = np.load("./expiriment/btc.npy")
data = np.array(data,dtype=np.float64)
data = data[:,1]
# data = data[-24*7*4*3:]
maa = np.max(data)
data = data / maa
limit = int(len(data)*1)
train = data[:limit]
# test = data[limit:]

length  = 48
length_ = 10

generator_all = TimeseriesGenerator(data, data, length=length, batch_size=1)
generator = TimeseriesGenerator(train, train, length=length, batch_size=1)

data_train =  np.stack([i[0].reshape((length,1)) for i in generator])
data_train_x = data_train[:-1]
data_train_y = np.stack([i.flatten()[:length_] for i in data_train[1:]])




model = tf.keras.models.load_model('./expiriment/btc_model/') 

# model = tf.keras.Sequential()
# model.add(tf.keras.layers.LSTM(256, activation='gelu', input_shape=(length, 1)))
# model.add(tf.keras.layers.Dense(100,activation='gelu'))
# model.add(tf.keras.layers.Dense(100,activation='gelu'))
# model.add(tf.keras.layers.Dense(length_,activation='gelu'))

# model.compile(optimizer= tf.keras.optimizers.Adam(
#     learning_rate=1e-4,
#     beta_1=0.9,
#     beta_2=0.999,
#     epsilon=1e-07)
#     ,loss='mse')
# with tf.device('/device:GPU:0'):
#     model.fit(x=data_train_x,y=data_train_y,epochs=10,shuffle=True,batch_size=256)
# model.save("./expiriment/btc_model")

# # plt.plot(X,labels[:,0])
m = model
pred = m(np.stack([i[0].reshape((length,1)) for i in generator_all])[::length_]).numpy().flatten()

# print(pred.shape)

# data_t = data[length:]
# l1 = []
# l2 = []
# for i in range(0,len(data_t),length_):
#     d = data[i:i+length_]    
#     p = pred[i:i+length_]
#     l1.append((d[-1]-d[0])/d[-1])
#     l2.append((p[-1]-p[0])/p[-1])

# plt.plot(range(len(l1)),l1)
# plt.plot(range(len(l2)),l2)


# pred = m(X)
# print(pred)
# plt.plot(X,labels,color='b')
# plt.plot(X,pred[:,0],color='r')
# X = np.array([i/len(data) for i in range(len(data))],dtype=np.float64)
# pred_ = m(X)
# plt.plot(X,pred_,color='k')

X = [i for i in range(len(data))]
# print(len(X_)-limit,len(pred)-limit)
t = data_train[-1].reshape((1,length,1))
pred_ = m(t).numpy().flatten()
pred = np.concatenate([pred,pred_])
X_ = [i for i in range(length,len(pred)+length)]
plt.scatter(X,data,color='r')
plt.scatter(X_,pred,color='g')

# plt.scatter(X_[limit:],pred[limit:-9])



###########################################
###  THE FUTURE IS NOW THANKS TO SCIENCE
###########################################

# TOTHEFUTURE = abs(limit-len(data))# week
# l = []
# for i in range(100):
#     if i%100==0:
#         print(i)
#     if len(l)<length:
#         d = np.array(np.ndarray.tolist(data[limit-(length-len(l)):limit])+l)
#         d = d.flatten().reshape((1,length,1))
#         p = m(d)
#         l.extend(np.ndarray.tolist(p.numpy().flatten()))
#     else:
#         d = np.array(l[-length:],dtype=np.float64).reshape((1,length,1))
#         p = m(d)
#         l.extend(np.ndarray.tolist(p.numpy().flatten()))


# X__ = [i for i in range(limit,len(l)+limit)] 
# plt.scatter(X__,l)       

###########################################


plt.show()






# l = labels.flatten()
# p = m(X).numpy().flatten()
# plt.scatter(range(len(l)),l,c='r')
# plt.scatter(range(len(l)),p,c='b')
# plt.show()



