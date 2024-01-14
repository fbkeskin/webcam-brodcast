# Webcam Broadcast

This project is a system used for broadcasting webcam images.

## Getting Started

Follow the steps below to run this project on your local machine.

### Prerequisites

The following software must be installed to run the project:

- Docker and Docker Compose
- Python (version 3 or above)
- Pip
- Make (optional, but can help with some features of the project)
- asyncio
- websockets
- opencv-python
- numpy
- python-dotenv

### Installation

#### MacOS

1. Install Docker Compose, Python3, Pip, and Make:

   ```sh
   brew install docker-compose
   brew install python3
   brew install pip
   brew install make
   ```

2. Clone the project:

   ```sh
   git clone https://github.com/makbulut1/webcam-broadcast.git
   ```

3. Navigate to the project directory:

   ```sh
   cd webcam-broadcast
   ```

4. Make sure Docker Desktop or OrbStack is running.

5. Start the Docker container:

   ```sh
   make
   ```

   or

   ```sh
   pip install -r requirements.txt
   make
   ```

#### Linux

1. Install Docker Compose, Python3, Pip, and Make:

   ```sh
   apt install docker-compose
   apt install python3 python3-pip
   apt install make
   ```

2. Clone the project:

   ```sh
   git clone https://github.com/makbulut1/webcam-brodcast.git
   ```

3. Navigate to the project directory:

   ```sh
   cd webcam-broadcast
   ```

4. Start the Docker container:

   ```sh
   make
   ```

   or

   ```sh
   pip install -r requirements.txt
   make
   ```

### Shutting Down the Project

To shut down the project:

```sh
make rm
```

## Contributing

To contribute, please check out the [CONTRIBUTING.md](https://github.com/makbulut1/webcam-brodcast/blob/main/CONTRIBUTING.md) file.

## License

This project is licensed under the MIT License - see the [LICENSE](https://github.com/makbulut1/webcam-brodcast/blob/main/LICENSE) file for details.