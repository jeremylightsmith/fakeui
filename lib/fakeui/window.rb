module FakeUI
  class Window
    def close
      @key = false
    end
  
    def makeKeyAndOrderFront(parent)
      @key = true
    end
    
    def makeKeyWindow
      @key = true
    end
  
    def isKeyWindow
      @key
    end
    
    def makeFirstResponder(view)
    end
  end
end