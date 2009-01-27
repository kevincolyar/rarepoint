require File.dirname(__FILE__) + '/defaultDriver.rb'

module Sharepoint
  module Lists

    class List
     
      attr_accessor :list_name, :driver, :xml

      def initialize(args={})
        @driver = List.get_driver(args)

        if args.keys == [:xml]
          @xml = args[:xml]
        else
          @list_name = args[:name]
          init_remote_list
        end
      end

      def self.get_driver(args={})
        driver = ListsSoap.new(args[:url])
        driver.options["protocol.http.basic_auth"] << [args[:url], args[:username], args[:password]]
        driver.wiredump_dev = STDERR if ENV['DEBUG']
        return driver
      end

      def init_remote_list
        response = @driver.getList(GetList.new(@list_name))
        @xml = response.getListResult.list
      end

      def method_missing(method, *args)
        return nil if @xml.nil?
        begin
          return eval("@xml.xmlattr_#{method.to_s.camelize}(*args)")
        rescue
          puts "!! #{method.to_s} does not exist"
          return nil
        end
      end

      def items_from(args={})
        puts "list_name: #{@list_name}"
      #  @driver.wiredump_dev = STDERR 
        view = args[:view] 
        response = @driver.getListItems(GetListItems.new(@list_name, view))
        if response.getListItemsResult.listitems.data != "\n"
          return response.getListItemsResult.listitems.data.row.collect {|i| ListItem.new(:list => self, :xml => i)}
        else
          return []
        end
      end

      def self.find(type, args={})
        self.find_all(args)
      end

      def self.find_all(args={})
        response = self.get_driver(args).getListCollection(nil)
        results = []
        response.getListCollectionResult.lists.list.find_all do |i|
          results << List.new(:xml => i)
        end
  
        return results
      end

      def to_s
        @xml
      end

      def xml_properties
        results = [] 
        @xml.methods.each {|i| results << i.gsub(/^xmlattr_/, '').underscore if i =~ /^xmlattr_\w*$/}
        return results
      end

    end
  end
end

