require File.dirname(__FILE__) + '/default.rb'
require 'rubygems'
gem 'soap4r'
require 'soap/mapping'

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsSoap = "http://schemas.microsoft.com/sharepoint/soap/"
  NsXMLSchema = "http://www.w3.org/2001/XMLSchema"

  LiteralRegistry.register(
    :class => GetList,
    :schema_name => XSD::QName.new(NsSoap, "GetList"),
    :schema_element => [
      ["listName", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetListResponse,
    :schema_name => XSD::QName.new(NsSoap, "GetListResponse"),
    :schema_element => [
      ["getListResult", ["GetListResponse::GetListResult", XSD::QName.new(NsSoap, "GetListResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetListResponse::GetListResult,
    :schema_name => XSD::QName.new(NsSoap, "GetListResult"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => GetListAndView,
    :schema_name => XSD::QName.new(NsSoap, "GetListAndView"),
    :schema_element => [
      ["listName", "SOAP::SOAPString", [0, 1]],
      ["viewName", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetListAndViewResponse,
    :schema_name => XSD::QName.new(NsSoap, "GetListAndViewResponse"),
    :schema_element => [
      ["getListAndViewResult", ["GetListAndViewResponse::GetListAndViewResult", XSD::QName.new(NsSoap, "GetListAndViewResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetListAndViewResponse::GetListAndViewResult,
    :schema_name => XSD::QName.new(NsSoap, "GetListAndViewResult"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => DeleteList,
    :schema_name => XSD::QName.new(NsSoap, "DeleteList"),
    :schema_element => [
      ["listName", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DeleteListResponse,
    :schema_name => XSD::QName.new(NsSoap, "DeleteListResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => AddList,
    :schema_name => XSD::QName.new(NsSoap, "AddList"),
    :schema_element => [
      ["listName", "SOAP::SOAPString", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["templateID", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => AddListResponse,
    :schema_name => XSD::QName.new(NsSoap, "AddListResponse"),
    :schema_element => [
      ["addListResult", ["AddListResponse::AddListResult", XSD::QName.new(NsSoap, "AddListResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AddListResponse::AddListResult,
    :schema_name => XSD::QName.new(NsSoap, "AddListResult"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => AddListFromFeature,
    :schema_name => XSD::QName.new(NsSoap, "AddListFromFeature"),
    :schema_element => [
      ["listName", "SOAP::SOAPString", [0, 1]],
      ["description", "SOAP::SOAPString", [0, 1]],
      ["featureID", nil],
      ["templateID", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => AddListFromFeatureResponse,
    :schema_name => XSD::QName.new(NsSoap, "AddListFromFeatureResponse"),
    :schema_element => [
      ["addListFromFeatureResult", ["AddListFromFeatureResponse::AddListFromFeatureResult", XSD::QName.new(NsSoap, "AddListFromFeatureResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AddListFromFeatureResponse::AddListFromFeatureResult,
    :schema_name => XSD::QName.new(NsSoap, "AddListFromFeatureResult"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => UpdateList,
    :schema_name => XSD::QName.new(NsSoap, "UpdateList"),
    :schema_element => [
      ["listName", "SOAP::SOAPString", [0, 1]],
      ["listProperties", "UpdateList::ListProperties", [0, 1]],
      ["newFields", "UpdateList::NewFields", [0, 1]],
      ["updateFields", "UpdateList::UpdateFields", [0, 1]],
      ["deleteFields", "UpdateList::DeleteFields", [0, 1]],
      ["listVersion", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => UpdateList::ListProperties,
    :schema_name => XSD::QName.new(NsSoap, "listProperties"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => UpdateList::NewFields,
    :schema_name => XSD::QName.new(NsSoap, "newFields"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => UpdateList::UpdateFields,
    :schema_name => XSD::QName.new(NsSoap, "updateFields"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => UpdateList::DeleteFields,
    :schema_name => XSD::QName.new(NsSoap, "deleteFields"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => UpdateListResponse,
    :schema_name => XSD::QName.new(NsSoap, "UpdateListResponse"),
    :schema_element => [
      ["updateListResult", ["UpdateListResponse::UpdateListResult", XSD::QName.new(NsSoap, "UpdateListResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => UpdateListResponse::UpdateListResult,
    :schema_name => XSD::QName.new(NsSoap, "UpdateListResult"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => GetListCollection,
    :schema_name => XSD::QName.new(NsSoap, "GetListCollection"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => GetListCollectionResponse,
    :schema_name => XSD::QName.new(NsSoap, "GetListCollectionResponse"),
    :schema_element => [
      ["getListCollectionResult", ["GetListCollectionResponse::GetListCollectionResult", XSD::QName.new(NsSoap, "GetListCollectionResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetListCollectionResponse::GetListCollectionResult,
    :schema_name => XSD::QName.new(NsSoap, "GetListCollectionResult"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => GetListItems,
    :schema_name => XSD::QName.new(NsSoap, "GetListItems"),
    :schema_element => [
      ["listName", "SOAP::SOAPString", [0, 1]],
      ["viewName", "SOAP::SOAPString", [0, 1]],
      ["query", "GetListItems::Query", [0, 1]],
      ["viewFields", "GetListItems::ViewFields", [0, 1]],
      ["rowLimit", "SOAP::SOAPString", [0, 1]],
      ["queryOptions", "GetListItems::QueryOptions", [0, 1]],
      ["webID", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetListItems::Query,
    :schema_name => XSD::QName.new(NsSoap, "query"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => GetListItems::ViewFields,
    :schema_name => XSD::QName.new(NsSoap, "viewFields"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => GetListItems::QueryOptions,
    :schema_name => XSD::QName.new(NsSoap, "queryOptions"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => GetListItemsResponse,
    :schema_name => XSD::QName.new(NsSoap, "GetListItemsResponse"),
    :schema_element => [
      ["getListItemsResult", ["GetListItemsResponse::GetListItemsResult", XSD::QName.new(NsSoap, "GetListItemsResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetListItemsResponse::GetListItemsResult,
    :schema_name => XSD::QName.new(NsSoap, "GetListItemsResult"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => GetListItemChanges,
    :schema_name => XSD::QName.new(NsSoap, "GetListItemChanges"),
    :schema_element => [
      ["listName", "SOAP::SOAPString", [0, 1]],
      ["viewFields", "GetListItemChanges::ViewFields", [0, 1]],
      ["since", "SOAP::SOAPString", [0, 1]],
      ["contains", "GetListItemChanges::Contains", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetListItemChanges::ViewFields,
    :schema_name => XSD::QName.new(NsSoap, "viewFields"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => GetListItemChanges::Contains,
    :schema_name => XSD::QName.new(NsSoap, "contains"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => GetListItemChangesResponse,
    :schema_name => XSD::QName.new(NsSoap, "GetListItemChangesResponse"),
    :schema_element => [
      ["getListItemChangesResult", ["GetListItemChangesResponse::GetListItemChangesResult", XSD::QName.new(NsSoap, "GetListItemChangesResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetListItemChangesResponse::GetListItemChangesResult,
    :schema_name => XSD::QName.new(NsSoap, "GetListItemChangesResult"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => GetListItemChangesSinceToken,
    :schema_name => XSD::QName.new(NsSoap, "GetListItemChangesSinceToken"),
    :schema_element => [
      ["listName", "SOAP::SOAPString", [0, 1]],
      ["viewName", "SOAP::SOAPString", [0, 1]],
      ["query", "GetListItemChangesSinceToken::Query", [0, 1]],
      ["viewFields", "GetListItemChangesSinceToken::ViewFields", [0, 1]],
      ["rowLimit", "SOAP::SOAPString", [0, 1]],
      ["queryOptions", "GetListItemChangesSinceToken::QueryOptions", [0, 1]],
      ["changeToken", "SOAP::SOAPString", [0, 1]],
      ["contains", "GetListItemChangesSinceToken::Contains", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetListItemChangesSinceToken::Query,
    :schema_name => XSD::QName.new(NsSoap, "query"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => GetListItemChangesSinceToken::ViewFields,
    :schema_name => XSD::QName.new(NsSoap, "viewFields"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => GetListItemChangesSinceToken::QueryOptions,
    :schema_name => XSD::QName.new(NsSoap, "queryOptions"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => GetListItemChangesSinceToken::Contains,
    :schema_name => XSD::QName.new(NsSoap, "contains"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => GetListItemChangesSinceTokenResponse,
    :schema_name => XSD::QName.new(NsSoap, "GetListItemChangesSinceTokenResponse"),
    :schema_element => [
      ["getListItemChangesSinceTokenResult", ["GetListItemChangesSinceTokenResponse::GetListItemChangesSinceTokenResult", XSD::QName.new(NsSoap, "GetListItemChangesSinceTokenResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetListItemChangesSinceTokenResponse::GetListItemChangesSinceTokenResult,
    :schema_name => XSD::QName.new(NsSoap, "GetListItemChangesSinceTokenResult"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => UpdateListItems,
    :schema_name => XSD::QName.new(NsSoap, "UpdateListItems"),
    :schema_element => [
      ["listName", "SOAP::SOAPString", [0, 1]],
      ["updates", "UpdateListItems::Updates", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => UpdateListItems::Updates,
    :schema_name => XSD::QName.new(NsSoap, "updates"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => UpdateListItemsResponse,
    :schema_name => XSD::QName.new(NsSoap, "UpdateListItemsResponse"),
    :schema_element => [
      ["updateListItemsResult", ["UpdateListItemsResponse::UpdateListItemsResult", XSD::QName.new(NsSoap, "UpdateListItemsResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => UpdateListItemsResponse::UpdateListItemsResult,
    :schema_name => XSD::QName.new(NsSoap, "UpdateListItemsResult"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => AddDiscussionBoardItem,
    :schema_name => XSD::QName.new(NsSoap, "AddDiscussionBoardItem"),
    :schema_element => [
      ["listName", "SOAP::SOAPString", [0, 1]],
      ["message", "SOAP::SOAPBase64", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AddDiscussionBoardItemResponse,
    :schema_name => XSD::QName.new(NsSoap, "AddDiscussionBoardItemResponse"),
    :schema_element => [
      ["addDiscussionBoardItemResult", ["AddDiscussionBoardItemResponse::AddDiscussionBoardItemResult", XSD::QName.new(NsSoap, "AddDiscussionBoardItemResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AddDiscussionBoardItemResponse::AddDiscussionBoardItemResult,
    :schema_name => XSD::QName.new(NsSoap, "AddDiscussionBoardItemResult"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => GetVersionCollection,
    :schema_name => XSD::QName.new(NsSoap, "GetVersionCollection"),
    :schema_element => [
      ["strlistID", "SOAP::SOAPString", [0, 1]],
      ["strlistItemID", "SOAP::SOAPString", [0, 1]],
      ["strFieldName", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetVersionCollectionResponse,
    :schema_name => XSD::QName.new(NsSoap, "GetVersionCollectionResponse"),
    :schema_element => [
      ["getVersionCollectionResult", ["GetVersionCollectionResponse::GetVersionCollectionResult", XSD::QName.new(NsSoap, "GetVersionCollectionResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetVersionCollectionResponse::GetVersionCollectionResult,
    :schema_name => XSD::QName.new(NsSoap, "GetVersionCollectionResult"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => AddAttachment,
    :schema_name => XSD::QName.new(NsSoap, "AddAttachment"),
    :schema_element => [
      ["listName", "SOAP::SOAPString", [0, 1]],
      ["listItemID", "SOAP::SOAPString", [0, 1]],
      ["fileName", "SOAP::SOAPString", [0, 1]],
      ["attachment", "SOAP::SOAPBase64", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AddAttachmentResponse,
    :schema_name => XSD::QName.new(NsSoap, "AddAttachmentResponse"),
    :schema_element => [
      ["addAttachmentResult", ["SOAP::SOAPString", XSD::QName.new(NsSoap, "AddAttachmentResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetAttachmentCollection,
    :schema_name => XSD::QName.new(NsSoap, "GetAttachmentCollection"),
    :schema_element => [
      ["listName", "SOAP::SOAPString", [0, 1]],
      ["listItemID", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetAttachmentCollectionResponse,
    :schema_name => XSD::QName.new(NsSoap, "GetAttachmentCollectionResponse"),
    :schema_element => [
      ["getAttachmentCollectionResult", ["GetAttachmentCollectionResponse::GetAttachmentCollectionResult", XSD::QName.new(NsSoap, "GetAttachmentCollectionResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetAttachmentCollectionResponse::GetAttachmentCollectionResult,
    :schema_name => XSD::QName.new(NsSoap, "GetAttachmentCollectionResult"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => DeleteAttachment,
    :schema_name => XSD::QName.new(NsSoap, "DeleteAttachment"),
    :schema_element => [
      ["listName", "SOAP::SOAPString", [0, 1]],
      ["listItemID", "SOAP::SOAPString", [0, 1]],
      ["url", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DeleteAttachmentResponse,
    :schema_name => XSD::QName.new(NsSoap, "DeleteAttachmentResponse"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => CheckOutFile,
    :schema_name => XSD::QName.new(NsSoap, "CheckOutFile"),
    :schema_element => [
      ["pageUrl", "SOAP::SOAPString", [0, 1]],
      ["checkoutToLocal", "SOAP::SOAPString", [0, 1]],
      ["lastmodified", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CheckOutFileResponse,
    :schema_name => XSD::QName.new(NsSoap, "CheckOutFileResponse"),
    :schema_element => [
      ["checkOutFileResult", ["SOAP::SOAPBoolean", XSD::QName.new(NsSoap, "CheckOutFileResult")]]
    ]
  )

  LiteralRegistry.register(
    :class => UndoCheckOut,
    :schema_name => XSD::QName.new(NsSoap, "UndoCheckOut"),
    :schema_element => [
      ["pageUrl", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => UndoCheckOutResponse,
    :schema_name => XSD::QName.new(NsSoap, "UndoCheckOutResponse"),
    :schema_element => [
      ["undoCheckOutResult", ["SOAP::SOAPBoolean", XSD::QName.new(NsSoap, "UndoCheckOutResult")]]
    ]
  )

  LiteralRegistry.register(
    :class => CheckInFile,
    :schema_name => XSD::QName.new(NsSoap, "CheckInFile"),
    :schema_element => [
      ["pageUrl", "SOAP::SOAPString", [0, 1]],
      ["comment", "SOAP::SOAPString", [0, 1]],
      ["checkinType", ["SOAP::SOAPString", XSD::QName.new(NsSoap, "CheckinType")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CheckInFileResponse,
    :schema_name => XSD::QName.new(NsSoap, "CheckInFileResponse"),
    :schema_element => [
      ["checkInFileResult", ["SOAP::SOAPBoolean", XSD::QName.new(NsSoap, "CheckInFileResult")]]
    ]
  )

  LiteralRegistry.register(
    :class => GetListContentTypes,
    :schema_name => XSD::QName.new(NsSoap, "GetListContentTypes"),
    :schema_element => [
      ["listName", "SOAP::SOAPString", [0, 1]],
      ["contentTypeId", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetListContentTypesResponse,
    :schema_name => XSD::QName.new(NsSoap, "GetListContentTypesResponse"),
    :schema_element => [
      ["getListContentTypesResult", ["GetListContentTypesResponse::GetListContentTypesResult", XSD::QName.new(NsSoap, "GetListContentTypesResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetListContentTypesResponse::GetListContentTypesResult,
    :schema_name => XSD::QName.new(NsSoap, "GetListContentTypesResult"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => GetListContentType,
    :schema_name => XSD::QName.new(NsSoap, "GetListContentType"),
    :schema_element => [
      ["listName", "SOAP::SOAPString", [0, 1]],
      ["contentTypeId", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetListContentTypeResponse,
    :schema_name => XSD::QName.new(NsSoap, "GetListContentTypeResponse"),
    :schema_element => [
      ["getListContentTypeResult", ["GetListContentTypeResponse::GetListContentTypeResult", XSD::QName.new(NsSoap, "GetListContentTypeResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetListContentTypeResponse::GetListContentTypeResult,
    :schema_name => XSD::QName.new(NsSoap, "GetListContentTypeResult"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => CreateContentType,
    :schema_name => XSD::QName.new(NsSoap, "CreateContentType"),
    :schema_element => [
      ["listName", "SOAP::SOAPString", [0, 1]],
      ["displayName", "SOAP::SOAPString", [0, 1]],
      ["parentType", "SOAP::SOAPString", [0, 1]],
      ["fields", "CreateContentType::Fields", [0, 1]],
      ["contentTypeProperties", "CreateContentType::ContentTypeProperties", [0, 1]],
      ["addToView", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CreateContentType::Fields,
    :schema_name => XSD::QName.new(NsSoap, "fields"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => CreateContentType::ContentTypeProperties,
    :schema_name => XSD::QName.new(NsSoap, "contentTypeProperties"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => CreateContentTypeResponse,
    :schema_name => XSD::QName.new(NsSoap, "CreateContentTypeResponse"),
    :schema_element => [
      ["createContentTypeResult", ["SOAP::SOAPString", XSD::QName.new(NsSoap, "CreateContentTypeResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => UpdateContentType,
    :schema_name => XSD::QName.new(NsSoap, "UpdateContentType"),
    :schema_element => [
      ["listName", "SOAP::SOAPString", [0, 1]],
      ["contentTypeId", "SOAP::SOAPString", [0, 1]],
      ["contentTypeProperties", "UpdateContentType::ContentTypeProperties", [0, 1]],
      ["newFields", "UpdateContentType::NewFields", [0, 1]],
      ["updateFields", "UpdateContentType::UpdateFields", [0, 1]],
      ["deleteFields", "UpdateContentType::DeleteFields", [0, 1]],
      ["addToView", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => UpdateContentType::ContentTypeProperties,
    :schema_name => XSD::QName.new(NsSoap, "contentTypeProperties"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => UpdateContentType::NewFields,
    :schema_name => XSD::QName.new(NsSoap, "newFields"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => UpdateContentType::UpdateFields,
    :schema_name => XSD::QName.new(NsSoap, "updateFields"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => UpdateContentType::DeleteFields,
    :schema_name => XSD::QName.new(NsSoap, "deleteFields"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => UpdateContentTypeResponse,
    :schema_name => XSD::QName.new(NsSoap, "UpdateContentTypeResponse"),
    :schema_element => [
      ["updateContentTypeResult", ["UpdateContentTypeResponse::UpdateContentTypeResult", XSD::QName.new(NsSoap, "UpdateContentTypeResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => UpdateContentTypeResponse::UpdateContentTypeResult,
    :schema_name => XSD::QName.new(NsSoap, "UpdateContentTypeResult"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => DeleteContentType,
    :schema_name => XSD::QName.new(NsSoap, "DeleteContentType"),
    :schema_element => [
      ["listName", "SOAP::SOAPString", [0, 1]],
      ["contentTypeId", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DeleteContentTypeResponse,
    :schema_name => XSD::QName.new(NsSoap, "DeleteContentTypeResponse"),
    :schema_element => [
      ["deleteContentTypeResult", ["DeleteContentTypeResponse::DeleteContentTypeResult", XSD::QName.new(NsSoap, "DeleteContentTypeResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DeleteContentTypeResponse::DeleteContentTypeResult,
    :schema_name => XSD::QName.new(NsSoap, "DeleteContentTypeResult"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => UpdateContentTypeXmlDocument,
    :schema_name => XSD::QName.new(NsSoap, "UpdateContentTypeXmlDocument"),
    :schema_element => [
      ["listName", "SOAP::SOAPString", [0, 1]],
      ["contentTypeId", "SOAP::SOAPString", [0, 1]],
      ["newDocument", "UpdateContentTypeXmlDocument::NewDocument", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => UpdateContentTypeXmlDocument::NewDocument,
    :schema_name => XSD::QName.new(NsSoap, "newDocument"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => UpdateContentTypeXmlDocumentResponse,
    :schema_name => XSD::QName.new(NsSoap, "UpdateContentTypeXmlDocumentResponse"),
    :schema_element => [
      ["updateContentTypeXmlDocumentResult", ["UpdateContentTypeXmlDocumentResponse::UpdateContentTypeXmlDocumentResult", XSD::QName.new(NsSoap, "UpdateContentTypeXmlDocumentResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => UpdateContentTypeXmlDocumentResponse::UpdateContentTypeXmlDocumentResult,
    :schema_name => XSD::QName.new(NsSoap, "UpdateContentTypeXmlDocumentResult"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => UpdateContentTypesXmlDocument,
    :schema_name => XSD::QName.new(NsSoap, "UpdateContentTypesXmlDocument"),
    :schema_element => [
      ["listName", "SOAP::SOAPString", [0, 1]],
      ["newDocument", "UpdateContentTypesXmlDocument::NewDocument", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => UpdateContentTypesXmlDocument::NewDocument,
    :schema_name => XSD::QName.new(NsSoap, "newDocument"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => UpdateContentTypesXmlDocumentResponse,
    :schema_name => XSD::QName.new(NsSoap, "UpdateContentTypesXmlDocumentResponse"),
    :schema_element => [
      ["updateContentTypesXmlDocumentResult", ["UpdateContentTypesXmlDocumentResponse::UpdateContentTypesXmlDocumentResult", XSD::QName.new(NsSoap, "UpdateContentTypesXmlDocumentResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => UpdateContentTypesXmlDocumentResponse::UpdateContentTypesXmlDocumentResult,
    :schema_name => XSD::QName.new(NsSoap, "UpdateContentTypesXmlDocumentResult"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => DeleteContentTypeXmlDocument,
    :schema_name => XSD::QName.new(NsSoap, "DeleteContentTypeXmlDocument"),
    :schema_element => [
      ["listName", "SOAP::SOAPString", [0, 1]],
      ["contentTypeId", "SOAP::SOAPString", [0, 1]],
      ["documentUri", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DeleteContentTypeXmlDocumentResponse,
    :schema_name => XSD::QName.new(NsSoap, "DeleteContentTypeXmlDocumentResponse"),
    :schema_element => [
      ["deleteContentTypeXmlDocumentResult", ["DeleteContentTypeXmlDocumentResponse::DeleteContentTypeXmlDocumentResult", XSD::QName.new(NsSoap, "DeleteContentTypeXmlDocumentResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DeleteContentTypeXmlDocumentResponse::DeleteContentTypeXmlDocumentResult,
    :schema_name => XSD::QName.new(NsSoap, "DeleteContentTypeXmlDocumentResult"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => ApplyContentTypeToList,
    :schema_name => XSD::QName.new(NsSoap, "ApplyContentTypeToList"),
    :schema_element => [
      ["webUrl", "SOAP::SOAPString", [0, 1]],
      ["contentTypeId", "SOAP::SOAPString", [0, 1]],
      ["listName", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ApplyContentTypeToListResponse,
    :schema_name => XSD::QName.new(NsSoap, "ApplyContentTypeToListResponse"),
    :schema_element => [
      ["applyContentTypeToListResult", ["ApplyContentTypeToListResponse::ApplyContentTypeToListResult", XSD::QName.new(NsSoap, "ApplyContentTypeToListResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ApplyContentTypeToListResponse::ApplyContentTypeToListResult,
    :schema_name => XSD::QName.new(NsSoap, "ApplyContentTypeToListResult"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )
end
