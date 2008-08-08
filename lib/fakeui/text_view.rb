module FakeUI
  class TextView
    attr_accessor :textStorage, :string, :selectedRange
    
    def initialize
      @string = ""
      @selectedRange = [0, 0]
      @textStorage = TextStorage.new
    end
    
    def setString(string)
      @string = string
      @selectedRange = [string.size, 0]
    end
    
    def insertText(to_insert)
      @string[@selectedRange[0], @selectedRange[1]] = to_insert
      @selectedRange = [@selectedRange[0] + to_insert.size, 0]
    end
    
    def setSelectedRange(range)
      @selectedRange = range
    end
    
    def scrollRangeToVisible(range)
      # stub
    end
    
    def setDelegate(delegate)
    end
  end
  
  class TextStorage
  end
end