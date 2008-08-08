module FakeUI
  class TableView
    def setDataSource(dataSource)
      @dataSource = dataSource
    end
    
    def reloadData
    end
    
    def selectRow_byExtendingSelection(index, extendSelection)
      @row = index
    end
    
    def selectedRow
      @row
    end
    
    def numberOfRows
      @dataSource.numberOfRowsInTableView(self)
    end
    
    def scrollRowToVisible(row)
    end
  end
end