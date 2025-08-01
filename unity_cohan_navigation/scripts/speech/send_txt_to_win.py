import socket
import time

WINDOWS_IP = '172.26.128.1'
PORT = 54320

def send_text(text):
    with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
        s.connect((WINDOWS_IP, PORT))
        s.sendall(text.encode('utf-8'))
        print(f"Sent: {text}")
        time.sleep(1)  

if __name__ == '__main__':
    send_text("Hello World from Linux!")
