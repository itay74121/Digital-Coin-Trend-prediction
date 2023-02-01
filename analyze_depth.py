#!/usr/bin/env python
# coding: utf-8

# In[12]:


from requests import get
from json import loads
import numpy as np
from pandas import DataFrame


# In[2]:


currency = "BTCUSDT"
url = f"https://www.binance.com/api/v3/depth?symbol={currency}"


# In[3]:


book = loads(get(url).text)
book


# In[16]:


bids = np.array(book['bids'],dtype=np.float64)
asks= np.array(book['asks'],dtype=np.float64)
bids_df = DataFrame(bids,columns=['price','quantity'])
asks_df = DataFrame(asks,columns=['price','quantity'])
print(bids_df.head())
print(asks_df.head())
seller = asks_df
buyyer = bids_df


# In[17]:


print("supply:",seller['quantity'].sum())
print('demand:',buyyer['quantity'].sum())

