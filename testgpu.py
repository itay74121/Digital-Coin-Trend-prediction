from turtle import shape
from requests import get
from json import loads
import numpy as np
from pandas import DataFrame,read_csv
from matplotlib import pyplot as plt
import tensorflow as tf





#######################
##   took a model 
#######################


i = tf.keras.layers.Input((1,))
out = tf.keras.layers.Dense(100,activation='relu')(i)
out = tf.keras.layers.Dense(100,activation='relu')(out)
# out = tf.keras.layers.Dense(32)(out)
out = tf.keras.layers.Dense(1)(out)
model = tf.keras.Model(inputs=i,outputs=out)


lr_schedule = tf.keras.optimizers.schedules.ExponentialDecay(
   1e-2,625, 0.9, name=None
)
adam = tf.keras.optimizers.Adam(
    learning_rate=lr_schedule,
    beta_1=0.9,
    beta_2=0.999,
    epsilon=1e-7,
    amsgrad=False,
    name='Adam'
)



model.compile(optimizer=adam, loss="mean_absolute_error", metrics=["mae"])
print(model.summary())


################################
###     create large data 7gb 
################################

print('started generating data')

x = np.array([0]*int(250000*1000))
x = tf.convert_to_tensor(x)
x = tf.reshape(x,(x.shape[0],1))
y = x


###########################
###   trying to fit that 
###########################

print('stated trying to fitting')

model.fit(x=x,y=y,epochs=32,batch_size=256)















