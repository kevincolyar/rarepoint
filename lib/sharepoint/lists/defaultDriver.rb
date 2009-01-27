require File.dirname(__FILE__) + '/default.rb'
require File.dirname(__FILE__) + '/defaultMappingRegistry.rb'
require 'soap/rpc/driver'

class ListsSoap < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "http://test.intranet/_vti_bin/Lists.asmx"

  Methods = [
    [ "http://schemas.microsoft.com/sharepoint/soap/GetList",
      "getList",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://schemas.microsoft.com/sharepoint/soap/", "GetList"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://schemas.microsoft.com/sharepoint/soap/", "GetListResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://schemas.microsoft.com/sharepoint/soap/GetListAndView",
      "getListAndView",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://schemas.microsoft.com/sharepoint/soap/", "GetListAndView"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://schemas.microsoft.com/sharepoint/soap/", "GetListAndViewResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://schemas.microsoft.com/sharepoint/soap/DeleteList",
      "deleteList",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://schemas.microsoft.com/sharepoint/soap/", "DeleteList"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://schemas.microsoft.com/sharepoint/soap/", "DeleteListResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://schemas.microsoft.com/sharepoint/soap/AddList",
      "addList",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://schemas.microsoft.com/sharepoint/soap/", "AddList"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://schemas.microsoft.com/sharepoint/soap/", "AddListResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://schemas.microsoft.com/sharepoint/soap/AddListFromFeature",
      "addListFromFeature",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://schemas.microsoft.com/sharepoint/soap/", "AddListFromFeature"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://schemas.microsoft.com/sharepoint/soap/", "AddListFromFeatureResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://schemas.microsoft.com/sharepoint/soap/UpdateList",
      "updateList",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://schemas.microsoft.com/sharepoint/soap/", "UpdateList"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://schemas.microsoft.com/sharepoint/soap/", "UpdateListResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://schemas.microsoft.com/sharepoint/soap/GetListCollection",
      "getListCollection",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://schemas.microsoft.com/sharepoint/soap/", "GetListCollection"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://schemas.microsoft.com/sharepoint/soap/", "GetListCollectionResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://schemas.microsoft.com/sharepoint/soap/GetListItems",
      "getListItems",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://schemas.microsoft.com/sharepoint/soap/", "GetListItems"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://schemas.microsoft.com/sharepoint/soap/", "GetListItemsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://schemas.microsoft.com/sharepoint/soap/GetListItemChanges",
      "getListItemChanges",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://schemas.microsoft.com/sharepoint/soap/", "GetListItemChanges"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://schemas.microsoft.com/sharepoint/soap/", "GetListItemChangesResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://schemas.microsoft.com/sharepoint/soap/GetListItemChangesSinceToken",
      "getListItemChangesSinceToken",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://schemas.microsoft.com/sharepoint/soap/", "GetListItemChangesSinceToken"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://schemas.microsoft.com/sharepoint/soap/", "GetListItemChangesSinceTokenResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://schemas.microsoft.com/sharepoint/soap/UpdateListItems",
      "updateListItems",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://schemas.microsoft.com/sharepoint/soap/", "UpdateListItems"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://schemas.microsoft.com/sharepoint/soap/", "UpdateListItemsResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://schemas.microsoft.com/sharepoint/soap/AddDiscussionBoardItem",
      "addDiscussionBoardItem",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://schemas.microsoft.com/sharepoint/soap/", "AddDiscussionBoardItem"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://schemas.microsoft.com/sharepoint/soap/", "AddDiscussionBoardItemResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://schemas.microsoft.com/sharepoint/soap/GetVersionCollection",
      "getVersionCollection",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://schemas.microsoft.com/sharepoint/soap/", "GetVersionCollection"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://schemas.microsoft.com/sharepoint/soap/", "GetVersionCollectionResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://schemas.microsoft.com/sharepoint/soap/AddAttachment",
      "addAttachment",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://schemas.microsoft.com/sharepoint/soap/", "AddAttachment"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://schemas.microsoft.com/sharepoint/soap/", "AddAttachmentResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://schemas.microsoft.com/sharepoint/soap/GetAttachmentCollection",
      "getAttachmentCollection",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://schemas.microsoft.com/sharepoint/soap/", "GetAttachmentCollection"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://schemas.microsoft.com/sharepoint/soap/", "GetAttachmentCollectionResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://schemas.microsoft.com/sharepoint/soap/DeleteAttachment",
      "deleteAttachment",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://schemas.microsoft.com/sharepoint/soap/", "DeleteAttachment"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://schemas.microsoft.com/sharepoint/soap/", "DeleteAttachmentResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://schemas.microsoft.com/sharepoint/soap/CheckOutFile",
      "checkOutFile",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://schemas.microsoft.com/sharepoint/soap/", "CheckOutFile"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://schemas.microsoft.com/sharepoint/soap/", "CheckOutFileResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://schemas.microsoft.com/sharepoint/soap/UndoCheckOut",
      "undoCheckOut",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://schemas.microsoft.com/sharepoint/soap/", "UndoCheckOut"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://schemas.microsoft.com/sharepoint/soap/", "UndoCheckOutResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://schemas.microsoft.com/sharepoint/soap/CheckInFile",
      "checkInFile",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://schemas.microsoft.com/sharepoint/soap/", "CheckInFile"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://schemas.microsoft.com/sharepoint/soap/", "CheckInFileResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://schemas.microsoft.com/sharepoint/soap/GetListContentTypes",
      "getListContentTypes",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://schemas.microsoft.com/sharepoint/soap/", "GetListContentTypes"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://schemas.microsoft.com/sharepoint/soap/", "GetListContentTypesResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://schemas.microsoft.com/sharepoint/soap/GetListContentType",
      "getListContentType",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://schemas.microsoft.com/sharepoint/soap/", "GetListContentType"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://schemas.microsoft.com/sharepoint/soap/", "GetListContentTypeResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://schemas.microsoft.com/sharepoint/soap/CreateContentType",
      "createContentType",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://schemas.microsoft.com/sharepoint/soap/", "CreateContentType"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://schemas.microsoft.com/sharepoint/soap/", "CreateContentTypeResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://schemas.microsoft.com/sharepoint/soap/UpdateContentType",
      "updateContentType",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://schemas.microsoft.com/sharepoint/soap/", "UpdateContentType"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://schemas.microsoft.com/sharepoint/soap/", "UpdateContentTypeResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://schemas.microsoft.com/sharepoint/soap/DeleteContentType",
      "deleteContentType",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://schemas.microsoft.com/sharepoint/soap/", "DeleteContentType"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://schemas.microsoft.com/sharepoint/soap/", "DeleteContentTypeResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://schemas.microsoft.com/sharepoint/soap/UpdateContentTypeXmlDocument",
      "updateContentTypeXmlDocument",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://schemas.microsoft.com/sharepoint/soap/", "UpdateContentTypeXmlDocument"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://schemas.microsoft.com/sharepoint/soap/", "UpdateContentTypeXmlDocumentResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://schemas.microsoft.com/sharepoint/soap/UpdateContentTypesXmlDocument",
      "updateContentTypesXmlDocument",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://schemas.microsoft.com/sharepoint/soap/", "UpdateContentTypesXmlDocument"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://schemas.microsoft.com/sharepoint/soap/", "UpdateContentTypesXmlDocumentResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://schemas.microsoft.com/sharepoint/soap/DeleteContentTypeXmlDocument",
      "deleteContentTypeXmlDocument",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://schemas.microsoft.com/sharepoint/soap/", "DeleteContentTypeXmlDocument"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://schemas.microsoft.com/sharepoint/soap/", "DeleteContentTypeXmlDocumentResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://schemas.microsoft.com/sharepoint/soap/ApplyContentTypeToList",
      "applyContentTypeToList",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://schemas.microsoft.com/sharepoint/soap/", "ApplyContentTypeToList"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://schemas.microsoft.com/sharepoint/soap/", "ApplyContentTypeToListResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ]
  ]

  def initialize(endpoint_url = nil)
    endpoint_url ||= DefaultEndpointUrl
    super(endpoint_url, nil)
    self.mapping_registry = DefaultMappingRegistry::EncodedRegistry
    self.literal_mapping_registry = DefaultMappingRegistry::LiteralRegistry
    init_methods
  end

private

  def init_methods
    Methods.each do |definitions|
      opt = definitions.last
      if opt[:request_style] == :document
        add_document_operation(*definitions)
      else
        add_rpc_operation(*definitions)
        qname = definitions[0]
        name = definitions[2]
        if qname.name != name and qname.name.capitalize == name.capitalize
          ::SOAP::Mapping.define_singleton_method(self, qname.name) do |*arg|
            __send__(name, *arg)
          end
        end
      end
    end
  end
end

