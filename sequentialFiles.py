import random
w = open('questions.txt', 'w')
r = random.randint(1,10)
if (r == 1):
    q1 = 'Is shredded cheese the best topping?'
    print(q1)
    a1 = input('answer: ')
    w.write(q1)
    w.write('  answer: ')
    w.write(a1)
if (r == 2):
    q2 = 'sprinkles dont even taste good (true or false?)'
    print(q2)
    a2 = input('answer: ')
    w.write(q2)
    w.write('  answer: ')
    w.write(a2)
if (r == 3):
    q3 = 'Should eating christmas eve dinner leftovers for the 4th day in a row be legal?'
    print(q3)
    a3 = input('answer: ')
    w.write(q3)
    w.write('  answer: ')
    w.write(a3)
if (r == 4):
    q4 = 'Why dont we call astronomers skyentists?'
    print(q4)
    a4 = input('answer: ')
    w.write(q4)
    w.write('  answer: ')
    w.write(a4)
if (r == 5):
    q5 = 'If you could shop for free at any one store which store would you choose?'
    print(q5)
    a5 = input('answer: ')
    w.write(q5)
    w.write('  answer: ')
    w.write(a5)
if (r == 6):
    q6 = 'Does america have an obesity epidemic or a fat acceptance movement?'
    print(q6)
    a6 = input('answer: ')
    w.write(q6)
    w.write('  answer: ')
    w.write(a6)
if (r == 7):
    q7 = 'What happened to split-screen gaming?'
    print(q7)
    a7 = input('answer: ')
    w.write(q7)
    w.write('  answer: ')
    w.write(a7)
if (r == 8):
    q8 = 'Why has it been Chevy Truck month for the past 7 years?'
    print(q8)
    a8 = input('answer: ')
    w.write(q8)
    w.write('  answer: ')
    w.write(a8)
if (r == 9):
    q9 = 'Is reading just guided thinking?'
    print(q9)
    a9 = input('answer: ')
    w.write(q9)
    w.write('  answer: ')
    w.write(a9)
if (r == 10):
    q10 = 'If you could stop time how long would you stop it for?'
    print(q10)
    a10 = input('answer: ')
    w.write(q10)
    w.write('  answer: ')
    w.write(a10)
w.close()
    
