require File.dirname(__FILE__) + '/../error.rb'

module Builders
  class ErrorBuilder

    def from_update_list_items_result(xml)
      return nil if xml.nil?

      error = Error.new
      error.code = xml.updateListItemsResult.results.result.errorCode
      error.text = xml.updateListItemsResult.results.result.errorText
      return error
    end

  end
end
