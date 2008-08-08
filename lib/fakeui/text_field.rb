module FakeUI
  class TextField
    def stringValue
      @value || ""
    end
    
    def setStringValue(v)
      @value = v
    end
  end
end