import pymongo
from pymongo import MongoClient

CARNUM=127
client=MongoClient("mongodb://localhost:29017/")
db=client['carDB']

carINFO=db['carINFO']

for i in range(CARNUM):
	rt = carINFO.find_one({"seq":i})
	if rt == None:
		print "no_seq:"+str(i)
	else:
		print rt['id']
