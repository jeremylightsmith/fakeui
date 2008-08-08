module FakeUI
  class OutlineView
    def expandItem(item)
    end
    
    def reloadData
    end
    
    def setDataSource(data_source)
      @data_source = data_source
    end
    
    def isItemExpanded(item)
      true
    end
    
    def reloadItem_reloadChildren(item, recurse)
    end
    
    def to_s(item = nil, indent = '')
      if @data_source.outlineView_isItemExpandable(self, item)
        (0..@data_source.outlineView_numberOfChildrenOfItem(self, item) - 1).map do |i|
          child = @data_source.outlineView_child_ofItem(self, i, item)
          value = @data_source.outlineView_objectValueForTableColumn_byItem(self, 0, child)
          "#{indent}#{value}\n" + to_s(child, indent + "  ")
        end.join("")
      else
        ""
      end
    end
  end
end