require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe FakeUI::TextView do  
  before do
    @text = FakeUI::TextView.new
  end
    
  it "should start empty" do
    @text.string.should == ""
  end
  
  it "should be settable and insertable" do
    @text.setString("app")
    @text.insertText("le")
    @text.insertText("!")
    @text.string.should == "apple!"
    
    @text.setString("orange")
    @text.string.should == "orange"    
  end
  
  it "should keep track of position" do
    @text.setString('cricket')
    @text.setSelectedRange([1, 0])
    @text.selectedRange.should == [1, 0]
    @text.insertText("ow ")
    
    @text.string.should == "cow ricket"
    
    @text.setSelectedRange([2, 7])
    @text.insertText("l")
    
    @text.string.should == "colt"
  end
end

