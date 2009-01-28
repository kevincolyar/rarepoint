require File.dirname(__FILE__) + '/../../spec_helper'
require File.dirname(__FILE__) + '/../../../lib/sharepoint/lists/list'
require File.dirname(__FILE__) + '/../../../lib/sharepoint/lists/list_item'

describe Sharepoint::Lists::ListItem do

  before(:each) do
    @list = Sharepoint::Lists::List.new(:url => DEFAULT_URL,
                                        :name => DEFAULT_LIST_NAME,
                                        :username => DEFAULT_USERNAME,
                                        :password => DEFAULT_PASSWORD)
    @list_items = @list.items_from(@list.default_view_url) 
    @list_item = @list_items.first
  end

  it 'should not be nil' do
    @list_item.should_not == nil
  end

  it 'should create a new list item' do 
   @list.http_debugging = false
   list_item = Sharepoint::Lists::ListItem.new(:list => @list) 
   list_item.title = 'test'
   list_item.title.should == 'test'
   list_item.save
  end

  it 'should change title' do 
    @list_item.Title = 'test' 
    @list_item.Title.should == 'test'
  end

  it 'should change and save title' do 
    @list_item.Title.should_not == 'test'
    @list_item.Title = 'test'
    @list_item.save
  end
end
