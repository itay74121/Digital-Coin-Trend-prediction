import tensorflow as tf
import pandas as pd 
import numpy as np 
import requests as rq




def buildmodel():
    y = tf.keras.Input(shape=(1,10,3))
    x = tf.keras.layers.LSTM(3)(y)
    model = tf.keras.Model(inputs=y, outputs=x)
    return model





def main():
    m = buildmodel()
    i = tf.random.normal((1,10,3))
    print(m(i))




if __name__ == "__main__":
    main()
