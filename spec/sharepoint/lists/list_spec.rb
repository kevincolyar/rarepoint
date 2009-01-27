require File.dirname(__FILE__) + '/../../../lib/sharepoint/lists/list'

describe Sharepoint::Lists::List do

  def setup
    @list = Sharepoint::Lists::List.new(:url => 'http://test.intranet/is/_vti_bin/Lists.asmx',
                                       :name => '121E93D6-9054-4BE6-B79C-BF449AF43F4C')
  end

  it 'should not be nil' do
    @list.should_not == nil 
  end

  it 'should have a default view' do
    puts @list.xml
    @list.default_view_url.should_not == nil
  end

  it 'should get a list from a site' do
    list = Sharepoint::Lists::List.new(:url => 'http://test.intranet/is/_vti_bin/Lists.asmx',
                                       :name => '121E93D6-9054-4BE6-B79C-BF449AF43F4C')
    list.should_not == nil
  end
  
end
