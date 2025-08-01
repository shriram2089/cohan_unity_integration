import speech_recognition as sr
import socket

def listen_and_recognize():
    r = sr.Recognizer()
    with sr.Microphone() as source:
        print("Say something:")
        audio = r.listen(source)
    try:
        text = r.recognize_google(audio)
        print("You said: " + text)
        return text
    except sr.UnknownValueError:
        print("Could not understand audio")
        return None
    except sr.RequestError as e:
        print(f"Could not request results; {e}")
        return None




def send_text_to_linux(text, ip='172.26.140.147', port=12345):
    with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
        s.connect((ip, port))
        s.sendall(text.encode('utf-8'))

if __name__ == "__main__":
    while True:
        text = listen_and_recognize()
        if text:
            send_text_to_linux(text)



