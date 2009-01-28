require File.dirname(__FILE__) + '/../../spec_helper'
require File.dirname(__FILE__) + '/../../../lib/sharepoint/lists/list'

describe Sharepoint::Lists::List do

  setup do  
    @list = Sharepoint::Lists::List.new(:url => DEFAULT_URL,
                                        :name => DEFAULT_LIST_NAME,
                                        :username => DEFAULT_USERNAME,
                                        :password => DEFAULT_PASSWORD)
  end

  it 'should not be nil' do
    @list.should_not == nil 
  end

  it 'should have a title' do
    @list.title.should_not == nil
  end

  it 'should have xml attributes' do 
    @list.xml_attributes.should_not == nil 
  end
  
end
