# Webcam Broadcast

Bu proje, webcam görüntülerini yayınlamak için kullanılan bir sistemdir.

## Başlangıç

Bu projeyi yerel makinenizde çalıştırmak için aşağıdaki adımları izleyin.

### Önkoşullar

Projeyi çalıştırmak için şu yazılımların yüklü olması gereklidir:

- Docker ve Docker Compose
- Python (versiyon 3 veya üzeri)
- Pip
- Make (isteğe bağlı, ancak projenin bazı özelliklerini daha hızlı kullanmanıza yardımcı olabilir)
- asyncio
- websockets
- opencv-python
- numpy
- python-dotenv

### Kurulum

#### MacOS

1. Docker Compose, Python3, Pip ve Make'i yükleyin:

   ```sh
   brew install docker-compose
   brew install python3
   brew install pip
   brew install make
   ```

2. Projeyi klonlayın:

   ```sh
   git clone https://github.com/makbulut1/webcam-broadcast.git
   ```

3. Proje dizinine gidin:

   ```sh
   cd webcam-broadcast
   ```

4. Docker Desktop veya OrbStack'in açık olduğundan emin olun.

5. Docker konteynerini başlatın:

   ```sh
   make
   ```

   veya

   ```sh
   pip install -r requirements.txt
   make
   ```

#### Linux

1. Docker Compose, Python3, Pip ve Make'i yükleyin:

   ```sh
   apt install docker-compose
   apt install python3 python3-pip
   apt install make
   ```

2. Projeyi klonlayın:

   ```sh
   git clone https://github.com/kullaniciadi/webcam-broadcast.git
   ```

3. Proje dizinine gidin:

   ```sh
   cd webcam-broadcast
   ```

4. Docker konteynerini başlatın:

   ```sh
   make
   ```

   veya

   ```sh
   pip install -r requirements.txt
   make
   ```

### Projeyi Kapatma

Projeyi kapatmak için:

```sh
make rm
```

## Katkıda Bulunma

Katkıda bulunmak için lütfen [CONTRIBUTING.md](https://github.com/makbulut1/webcam-brodcast/blob/main/CONTRIBUTING.md) dosyasına göz atın.

## Lisans

Bu proje MIT License ile lisanslanmıştır - detaylar için [LICENSE](https://github.com/makbulut1/webcam-brodcast/blob/main/LICENSE) dosyasına bakın.
