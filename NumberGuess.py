print ('Welcome to the guessing game, guess a number between 1 and 100')
num = 0
import random
rn = random.randint(1,100)
W = 0
while (W == 0):
  test = input("Enter input:")
  if (int(test) > rn):
    print('Sorry, you guessed', test,', which is too high, try again')
    num = num + 1
  if (int(test) < rn):
    print('Sorry, you guessed', test,', which is too low, try again')
    num = num + 1
  if (int(test) == rn):
    num = num + 1
    print('Congrats, You guessed it, it was', rn,' it took you ',num,' attempts to guess it')
    W = W + 1

