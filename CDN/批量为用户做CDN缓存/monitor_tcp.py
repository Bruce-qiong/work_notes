import socket


# def tcpsend(ip, port, xmlbw):
#     address = (ip, port)
#     client = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
#     client.connect(address)
#     by = xmlbw.encode('utf8') # 转为字节数组
#     # print by
#     client.send(by)
#     print( "tcp发送成功")
#     data = client.recv(1024) # 接受响应信息
#     print("接受响应成功")
#     print(data)
#     # print(str)
#     client.close()

sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
sock.connect(('127.0.0.1',8001))
sock.send('hello world'.encode('utf-8'))
data = sock.recv(1024)
print(data)
sock.close()

