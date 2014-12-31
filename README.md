## Coin market making

#### GUI applications
To control the algorithms and see the order books we will need to use
a GUI application. We assume the GUIs will run on Linux. For quick and 
dirty development, Python is fine. For more robust and mission critical
GUIs we may switch to C, C++, or Java.

#### Python GUIs
Python has several frameworks for GUIs. TKinter is one of them. An example GUI from TKinter:

    from Tkinter import Tk, BOTH
    from ttk import Frame, Button, Style
    
    
    class Example(Frame):
    
        def __init__(self, parent):
            Frame.__init__(self, parent)
    
            self.parent = parent
    
            self.initUI()
    
        def initUI(self):
    
            self.parent.title("Quit button")
            self.style = Style()
            self.style.theme_use("default")
    
            self.pack(fill=BOTH, expand=1)
    
            quitButton = Button(self, text="Quit",
                command=self.quit)
            quitButton.place(x=50, y=50)
    
    
    def main():
    
        root = Tk()
        root.geometry("250x150+300+300")
        app = Example(root)
        root.mainloop()
    
    
    if __name__ == '__main__':
        main() 


A good review of GUI frameworks is available here: http://www.pythoncentral.io/introduction-python-gui-development/


#### Papers
- Quote-driven vs order-driven (Bitcoin)
- For order-driven markets, price formation is more complex, since there are many more participants, each with their own opinion models of price formation: inventory based vs formation based
- Foucault (1999): order flow composition & trading costs in a dynamic limit order market 
many order-drive markets have a visible order book, which in themselves are a source of information. Studies: Angelo Ranaldo (2004): order aggressiveness in the limit order book markets


