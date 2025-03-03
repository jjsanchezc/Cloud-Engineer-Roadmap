#File i/o is used to read and write data to files.
f = open('loops.py', 'r') #open file and read
data = f.read()
#print(data)
f.close() #close file

# exception handling
try:
       f=open('data.txt')
       try:
              f.write('holaaaa')
       except:
              print('hubo un error al escribir')
              
except:
              print('huboi un error')
finally:
              f.close()