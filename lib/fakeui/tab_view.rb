module FakeUI
  class TabView
    def contentRect
      [0, 0, 100, 100]
    end
    
    def addTabViewItem(item)
      if !@items
        @items = [item]
        @selected = item
      else
        @items << item
      end
    end
    
    def selectTabViewItem(item)
      raise unless @items.index item
      @selected = item
    end
    
    def selectTabViewItemAtIndex(index)
      raise unless 0 <= index && index < @items.size
      @selected = @items[index]
    end
    
    def indexOfTabViewItem(item)
      @items.index(item)
    end
    
    def removeTabViewItem(item)
      index = @items.index item
      @items.delete item
      @selected = @items.size > index ? @items[index] : @items[@items.size - 1]
    end
    
    def selectedTabViewItem
      @selected
    end
    
    def tabViewItems
      @items || []
    end
  end
end