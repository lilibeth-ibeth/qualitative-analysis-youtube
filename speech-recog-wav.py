import speech_recognition as sr

r = sr.Recognizer()

with sr.AudioFile("/home/lilibeth/korban_corona.wav") as source:

    audio = r.record(source)

print("Transkripsi: " + r.recognize_google(audio, language="id-ID"))
