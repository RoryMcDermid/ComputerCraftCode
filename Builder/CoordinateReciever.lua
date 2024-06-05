peripheral.find("modem", rednet.open)

rednet.broadcast("Get Current Point", "Get Point")
print(rednet.receive())

os.sleep(1)

rednet.broadcast("Get Current Point", "Get Point")
print(rednet.receive())

os.sleep(1)


rednet.broadcast("Get and Remove Current Point", "Get Point")
print(rednet.receive())

os.sleep(1)

rednet.broadcast("Get and Remove Current Point", "Get Point")
print(rednet.receive())
