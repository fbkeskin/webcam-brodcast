import asyncio
import websockets
import cv2
import base64

async def send_camera_frames(websocket, path):
    camera = cv2.VideoCapture(0)
    while True:
        ret, frame = camera.read()

        # Frame'i bir JPEG formatına çevir
        _, buffer = cv2.imencode('.jpg', frame)

        # Buffer'ı base64 formatına çevir
        jpg_as_text = base64.b64encode(buffer).decode('utf-8')

        # Gelen veriyi istemciye gönder
        await websocket.send(jpg_as_text)

        # Kısa bir bekleme süresi ekleyebilirsiniz, gerekirse
        # await asyncio.sleep(0.1)

    # Kamera serbest bırakılıyor
    camera.release()

start_server = websockets.serve(send_camera_frames, "0.0.0.0", 8000)

asyncio.get_event_loop().run_until_complete(start_server)
asyncio.get_event_loop().run_forever()

