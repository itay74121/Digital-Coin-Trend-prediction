from random import uniform as uni
from turtle import color 
from matplotlib import pyplot as plt
cycles = 300
money = 100
p1 = 0.8 # probability to be right 
lose = lambda : uni(0.97,1)
win = lambda : uni(1,1.03) 


#######################
##    simulation
#######################
def sim1():
    history = []
    money = 100
    for i in range(cycles):
        p = uni(0,1)
        if p > p1:
            money *= lose()*0.999
        else:
            money *= win()*0.999
        history.append(money)
    return history

histories = [sim1() for i in range(20)]
for h in histories:
    plt.plot(range(len(h)),h)


plt.show()



