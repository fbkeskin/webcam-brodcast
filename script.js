// Create a WebSocket connection. Specify the server address and port.
const socket = new WebSocket('ws://${IP}:${WEBSOCK_PORT}');

// Select the img element on the HTML page to display the camera stream.
const imgElement = document.getElementById('camera-stream');

// This event listener is triggered when a message is received from the WebSocket.
socket.addEventListener('message', (event) => {
    // Receive the base64 encoded image data from the server.
    const imageData = event.data;

    // Set the received image as the source for the img element.
    imgElement.src = 'data:image/jpeg;base64,' + imageData;
});

// This event listener is triggered when the WebSocket connection is closed.
socket.addEventListener('close', () => {
    console.log('Connection closed');
});

// This event listener is triggered in case of a WebSocket error.
socket.addEventListener('error', (error) => {
    console.error('WebSocket Error:', error);
});

