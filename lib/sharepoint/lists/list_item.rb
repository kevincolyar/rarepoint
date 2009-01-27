require File.dirname(__FILE__) + '/defaultDriver.rb'

module Sharepoint
  module Lists

    class ListItem
      attr_accessor :xml, :updates

      def initialize(args)
        @xml = args[:xml]
        @list = args[:list]
        @updates = args[:updates] || {} 
      end

      def method_missing(method, *args)
       
        if method.to_s =~ /=$/
          method_name = method.to_s.gsub(/=$/, '')
          @updates[method_name.to_sym] = args;
          return 
        end

        @updates.each_pair do |key, value|  
          if key == method
            return value.first if value.class == Array and value.size == 1 
            return value
          end
        end

        begin
          return eval("@xml.xmlattr_ows_#{method.to_s.camelize}(*args)")
        rescue
          return nil
        end
      end

      def save
        @list.driver.wiredump_dev = STDERR 
        batch_xml = get_batch_xml
      
        begin 
          response = @list.driver.updateListItems(UpdateListItems.new(@list.list_name, batch_xml))
          puts response.inspect
        rescue Exception => ex
          puts ex
        end
        @list.driver.wiredump_dev = STDERR if ENV['DEBUG'] 
      end

      def get_batch_xml
        fields = []

        if @xml.nil?
          command = 'New'
        else
          field = SOAP::SOAPElement.new('Field', @xml.xmlattr_ows_ID)
          field.extraattr["Name"] = 'ID' 
          fields << field 
          command = 'Update'
        end

        @updates.each_pair do |key, value|
          field = SOAP::SOAPElement.new('Field', value.to_s)
          field.extraattr["Name"] = key 
          fields << field 
        end

        batch = get_batch_hash(command, fields)

        return batch 
      end
      
      def get_batch_hash(command, fields)
        return  { 
                  'Batch' => 
                    {
                      'xmlattr_OnError' => 'Continue',
                      'xmlattr_ListVersion' => '1',
                      'Method' => 
                        {
                          'xmlattr_ID' => 1,
                          'xmlattr_Cmd' => command,
                          'Field' => fields
                        }
                    }
                }
      end

      def xml_properties
        results = [] 
        @xml.methods.each {|i| results << i.gsub(/^xmlattr_ows_/, '').underscore if i =~ /^xmlattr_ows_\w*$/}
        return results
      end

    end

  end
end
