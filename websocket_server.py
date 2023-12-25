# Import required libraries
import asyncio
import websockets
import cv2
import base64
import os
from dotenv import load_dotenv

# Load environment variables from the .env file
load_dotenv()

# Retrieve the WebSocket port from the environment variables
port = os.environ['WEBSOCK_PORT']

# Define a coroutine to send camera frames to the client
async def send_camera_frames(websocket, path):
    # Open the camera for capturing video
    camera = cv2.VideoCapture(0)
    try:
        while True:
            # Read a frame from the camera
            ret, frame = camera.read()

            # Convert the frame to JPEG format
            _, buffer = cv2.imencode('.jpg', frame)

            # Convert the buffer to base64 format
            jpg_as_text = base64.b64encode(buffer).decode('utf-8')

            # Send the encoded image data to the client
            await websocket.send(jpg_as_text)

            # Add a short sleep delay if needed
            await asyncio.sleep(0.1)

    finally:
        # Release the camera when done
        camera.release()

# Define a coroutine to handle WebSocket connections
async def server_handler(websocket, path):
    print(f"New connection: {path}")
    await send_camera_frames(websocket, path)

# Set up the WebSocket server
start_server = websockets.serve(server_handler, "0.0.0.0", port)

# Start the event loop and run the WebSocket server indefinitely
asyncio.get_event_loop().run_until_complete(start_server)
asyncio.get_event_loop().run_forever()

