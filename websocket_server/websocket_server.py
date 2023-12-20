import asyncio
import websockets
import os

os.environ['DISABLE_IPV6'] = 'true'
async def handle_websocket(websocket, path):
    while True:
        message = await websocket.recv()
        print(f"Received message: {message}")
        await websocket.send(f"Received: {message}")

start_server = websockets.serve(handle_websocket, "0.0.0.0", 8000)

asyncio.get_event_loop().run_until_complete(start_server)
asyncio.get_event_loop().run_forever()

