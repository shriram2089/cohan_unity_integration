import socket
from gtts import gTTS
from playsound import playsound

HOST = '0.0.0.0'
PORT = 54320

with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as server_socket:
    server_socket.bind((HOST, PORT))
    server_socket.listen()
    print(f"Listening on port {PORT}...")

    while True:
        try:
            conn, addr = server_socket.accept()
            with conn:
                print(f"Connected by {addr}")
          
                data_chunks = []
                while True:
                    data = conn.recv(1024)
                    if not data:
                        break
                    data_chunks.append(data)
                data_str = b''.join(data_chunks).decode('utf-8')
                print("Received:", data_str)

                if data_str.strip():
                    tts = gTTS(text=data_str, lang='en')
                    tts.save("output.mp3")
                    playsound("output.mp3")

        except Exception as e:
            print(f"Error: {e}")
