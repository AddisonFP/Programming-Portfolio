import datetime
y = int(input('year you were born: '))
m = int(input('month you were born: '))
d = int(input('day you were born: '))
t = datetime.date.today()
b = datetime.date(y, m, d)
diff = t-b
q = diff.days
print ('your age in:')
print ('days : ', q)
print ('years : ', q/365)
print ('centuries : ', (q/365)/100)
print ('decades : ', (q/365)/10)
print ('sidereal months : ', q/27.32166)
print ('milleniums : ', q/1000)
print ('hours : ', q*24)
print ('minutes : ', q*24*60)
print ('seconds : ', q*24*60*60)
