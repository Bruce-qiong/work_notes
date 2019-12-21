#!/usr/bin/env python3

# WSS (WS over TLS) client example, with a self-signed certificate

import asyncio
import pathlib
import ssl
import websockets
import time
import json
import hashlib
import base64

def md5(str):
    hl = hashlib.md5()
    hl.update(str.encode(encoding='utf-8'))
    return hl.hexdigest()

def base64_str(str):
    return base64.b64encode(str.encode(encoding='utf-8')).decode("utf-8")

ssl_context = ssl.SSLContext(ssl.PROTOCOL_TLS_CLIENT)
ssl_context.check_hostname = False
ssl_context.verify_mode = ssl.CERT_NONE

user = 'itdir321@gmail.com'
api_pwd = 'XDCM00VCPR90AUHH'
ut = str(int(time.time()))
code = md5(base64_str((md5(api_pwd)[4:23]+user+ut)))
ws_url = 'wss://wsapi.17ce.com:8001/socket/?ut='+ut+'&code='+code+'&user='+user

print(ws_url)


async def hello():
    uri = ws_url
    async with websockets.connect(
        uri, ssl=ssl_context
    ) as websocket:
        j = { "txnid": 1,
        "nodetype": [ 1, 2 ],
        "num": 3,
        "Url": 'https://redcomesecurity.com/update/hotupdate/203.zip',
        "TestType": 'HTTP',
        "TimeOut": 20,
        "Request": 'CDN',
        "NoCache": True,
        "Speed": 0,
        "Cookie": '',
        "Trace": False,
        "UserAgent": 'curl/7.47.0',
        "FollowLocation": 2,
        "GetMD5": True,
        "GetResponseHeader": True,
        "MaxDown": 1048576,
        "AutoDecompress": True,
        "type": 1,
        "isps": [ 1, 2 ],
        "pro_ids": [ 221, 335 ],
        "areas": [ 1 ],
        "Host": 'redcomesecurity.com' }

        print("connect ok")
        send_str = json.dumps(j)
        await websocket.send(send_str)
        print(">" + send_str)

        try:
            while 1:
                rt = await websocket.recv()
                print("<" +rt)
        except Exception as e:
            print (e)


asyncio.get_event_loop().run_until_complete(hello())
