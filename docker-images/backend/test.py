from tkinter import *

import time
import random
import os


def main():
  window = Tk()
  window.geometry(os.getenv("UI_GEOMETRY"))

  def clicked():
    print("the button was clicked")
    lbl.configure(text="Here's your random number: %s" % random.random())

  lbl = Label(window, text="Click the button to get a random number")
  btn = Button(window, text="Click Me", command=clicked)


  lbl.grid(column=0, row=0)
  btn.grid(column=0, row=1)

  window.mainloop()

if __name__=='__main__':
  main()
