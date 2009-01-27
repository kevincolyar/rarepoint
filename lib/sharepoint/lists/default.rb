require 'xsd/qname'

# {http://schemas.microsoft.com/sharepoint/soap/}GetList
#   listName - SOAP::SOAPString
class GetList
  attr_accessor :listName

  def initialize(listName = nil)
    @listName = listName
  end
end

# {http://schemas.microsoft.com/sharepoint/soap/}GetListResponse
#   getListResult - GetListResponse::GetListResult
class GetListResponse

  # inner class for member: GetListResult
  # {http://schemas.microsoft.com/sharepoint/soap/}GetListResult
  class GetListResult
    attr_reader :__xmlele_any

    def set_any(elements)
      @__xmlele_any = elements
    end

    def initialize
      @__xmlele_any = nil
    end
  end

  attr_accessor :getListResult

  def initialize(getListResult = nil)
    @getListResult = getListResult
  end
end

# {http://schemas.microsoft.com/sharepoint/soap/}GetListAndView
#   listName - SOAP::SOAPString
#   viewName - SOAP::SOAPString
class GetListAndView
  attr_accessor :listName
  attr_accessor :viewName

  def initialize(listName = nil, viewName = nil)
    @listName = listName
    @viewName = viewName
  end
end

# {http://schemas.microsoft.com/sharepoint/soap/}GetListAndViewResponse
#   getListAndViewResult - GetListAndViewResponse::GetListAndViewResult
class GetListAndViewResponse

  # inner class for member: GetListAndViewResult
  # {http://schemas.microsoft.com/sharepoint/soap/}GetListAndViewResult
  class GetListAndViewResult
    attr_reader :__xmlele_any

    def set_any(elements)
      @__xmlele_any = elements
    end

    def initialize
      @__xmlele_any = nil
    end
  end

  attr_accessor :getListAndViewResult

  def initialize(getListAndViewResult = nil)
    @getListAndViewResult = getListAndViewResult
  end
end

# {http://schemas.microsoft.com/sharepoint/soap/}DeleteList
#   listName - SOAP::SOAPString
class DeleteList
  attr_accessor :listName

  def initialize(listName = nil)
    @listName = listName
  end
end

# {http://schemas.microsoft.com/sharepoint/soap/}DeleteListResponse
class DeleteListResponse
  def initialize
  end
end

# {http://schemas.microsoft.com/sharepoint/soap/}AddList
#   listName - SOAP::SOAPString
#   description - SOAP::SOAPString
#   templateID - SOAP::SOAPInt
class AddList
  attr_accessor :listName
  attr_accessor :description
  attr_accessor :templateID

  def initialize(listName = nil, description = nil, templateID = nil)
    @listName = listName
    @description = description
    @templateID = templateID
  end
end

# {http://schemas.microsoft.com/sharepoint/soap/}AddListResponse
#   addListResult - AddListResponse::AddListResult
class AddListResponse

  # inner class for member: AddListResult
  # {http://schemas.microsoft.com/sharepoint/soap/}AddListResult
  class AddListResult
    attr_reader :__xmlele_any

    def set_any(elements)
      @__xmlele_any = elements
    end

    def initialize
      @__xmlele_any = nil
    end
  end

  attr_accessor :addListResult

  def initialize(addListResult = nil)
    @addListResult = addListResult
  end
end

# {http://schemas.microsoft.com/sharepoint/soap/}AddListFromFeature
#   listName - SOAP::SOAPString
#   description - SOAP::SOAPString
#   featureID - (any)
#   templateID - SOAP::SOAPInt
class AddListFromFeature
  attr_accessor :listName
  attr_accessor :description
  attr_accessor :featureID
  attr_accessor :templateID

  def initialize(listName = nil, description = nil, featureID = nil, templateID = nil)
    @listName = listName
    @description = description
    @featureID = featureID
    @templateID = templateID
  end
end

# {http://schemas.microsoft.com/sharepoint/soap/}AddListFromFeatureResponse
#   addListFromFeatureResult - AddListFromFeatureResponse::AddListFromFeatureResult
class AddListFromFeatureResponse

  # inner class for member: AddListFromFeatureResult
  # {http://schemas.microsoft.com/sharepoint/soap/}AddListFromFeatureResult
  class AddListFromFeatureResult
    attr_reader :__xmlele_any

    def set_any(elements)
      @__xmlele_any = elements
    end

    def initialize
      @__xmlele_any = nil
    end
  end

  attr_accessor :addListFromFeatureResult

  def initialize(addListFromFeatureResult = nil)
    @addListFromFeatureResult = addListFromFeatureResult
  end
end

# {http://schemas.microsoft.com/sharepoint/soap/}UpdateList
#   listName - SOAP::SOAPString
#   listProperties - UpdateList::ListProperties
#   newFields - UpdateList::NewFields
#   updateFields - UpdateList::UpdateFields
#   deleteFields - UpdateList::DeleteFields
#   listVersion - SOAP::SOAPString
class UpdateList

  # inner class for member: listProperties
  # {http://schemas.microsoft.com/sharepoint/soap/}listProperties
  class ListProperties
    attr_reader :__xmlele_any

    def set_any(elements)
      @__xmlele_any = elements
    end

    def initialize
      @__xmlele_any = nil
    end
  end

  # inner class for member: newFields
  # {http://schemas.microsoft.com/sharepoint/soap/}newFields
  class NewFields
    attr_reader :__xmlele_any

    def set_any(elements)
      @__xmlele_any = elements
    end

    def initialize
      @__xmlele_any = nil
    end
  end

  # inner class for member: updateFields
  # {http://schemas.microsoft.com/sharepoint/soap/}updateFields
  class UpdateFields
    attr_reader :__xmlele_any

    def set_any(elements)
      @__xmlele_any = elements
    end

    def initialize
      @__xmlele_any = nil
    end
  end

  # inner class for member: deleteFields
  # {http://schemas.microsoft.com/sharepoint/soap/}deleteFields
  class DeleteFields
    attr_reader :__xmlele_any

    def set_any(elements)
      @__xmlele_any = elements
    end

    def initialize
      @__xmlele_any = nil
    end
  end

  attr_accessor :listName
  attr_accessor :listProperties
  attr_accessor :newFields
  attr_accessor :updateFields
  attr_accessor :deleteFields
  attr_accessor :listVersion

  def initialize(listName = nil, listProperties = nil, newFields = nil, updateFields = nil, deleteFields = nil, listVersion = nil)
    @listName = listName
    @listProperties = listProperties
    @newFields = newFields
    @updateFields = updateFields
    @deleteFields = deleteFields
    @listVersion = listVersion
  end
end

# {http://schemas.microsoft.com/sharepoint/soap/}UpdateListResponse
#   updateListResult - UpdateListResponse::UpdateListResult
class UpdateListResponse

  # inner class for member: UpdateListResult
  # {http://schemas.microsoft.com/sharepoint/soap/}UpdateListResult
  class UpdateListResult
    attr_reader :__xmlele_any

    def set_any(elements)
      @__xmlele_any = elements
    end

    def initialize
      @__xmlele_any = nil
    end
  end

  attr_accessor :updateListResult

  def initialize(updateListResult = nil)
    @updateListResult = updateListResult
  end
end

# {http://schemas.microsoft.com/sharepoint/soap/}GetListCollection
class GetListCollection
  def initialize
  end
end

# {http://schemas.microsoft.com/sharepoint/soap/}GetListCollectionResponse
#   getListCollectionResult - GetListCollectionResponse::GetListCollectionResult
class GetListCollectionResponse

  # inner class for member: GetListCollectionResult
  # {http://schemas.microsoft.com/sharepoint/soap/}GetListCollectionResult
  class GetListCollectionResult
    attr_reader :__xmlele_any

    def set_any(elements)
      @__xmlele_any = elements
    end

    def initialize
      @__xmlele_any = nil
    end
  end

  attr_accessor :getListCollectionResult

  def initialize(getListCollectionResult = nil)
    @getListCollectionResult = getListCollectionResult
  end
end

# {http://schemas.microsoft.com/sharepoint/soap/}GetListItems
#   listName - SOAP::SOAPString
#   viewName - SOAP::SOAPString
#   query - GetListItems::Query
#   viewFields - GetListItems::ViewFields
#   rowLimit - SOAP::SOAPString
#   queryOptions - GetListItems::QueryOptions
#   webID - SOAP::SOAPString
class GetListItems

  # inner class for member: query
  # {http://schemas.microsoft.com/sharepoint/soap/}query
  class Query
    attr_reader :__xmlele_any

    def set_any(elements)
      @__xmlele_any = elements
    end

    def initialize
      @__xmlele_any = nil
    end
  end

  # inner class for member: viewFields
  # {http://schemas.microsoft.com/sharepoint/soap/}viewFields
  class ViewFields
    attr_reader :__xmlele_any

    def set_any(elements)
      @__xmlele_any = elements
    end

    def initialize
      @__xmlele_any = nil
    end
  end

  # inner class for member: queryOptions
  # {http://schemas.microsoft.com/sharepoint/soap/}queryOptions
  class QueryOptions
    attr_reader :__xmlele_any

    def set_any(elements)
      @__xmlele_any = elements
    end

    def initialize
      @__xmlele_any = nil
    end
  end

  attr_accessor :listName
  attr_accessor :viewName
  attr_accessor :query
  attr_accessor :viewFields
  attr_accessor :rowLimit
  attr_accessor :queryOptions
  attr_accessor :webID

  def initialize(listName = nil, viewName = nil, query = nil, viewFields = nil, rowLimit = nil, queryOptions = nil, webID = nil)
    @listName = listName
    @viewName = viewName
    @query = query
    @viewFields = viewFields
    @rowLimit = rowLimit
    @queryOptions = queryOptions
    @webID = webID
  end
end

# {http://schemas.microsoft.com/sharepoint/soap/}GetListItemsResponse
#   getListItemsResult - GetListItemsResponse::GetListItemsResult
class GetListItemsResponse

  # inner class for member: GetListItemsResult
  # {http://schemas.microsoft.com/sharepoint/soap/}GetListItemsResult
  class GetListItemsResult
    attr_reader :__xmlele_any

    def set_any(elements)
      @__xmlele_any = elements
    end

    def initialize
      @__xmlele_any = nil
    end
  end

  attr_accessor :getListItemsResult

  def initialize(getListItemsResult = nil)
    @getListItemsResult = getListItemsResult
  end
end

# {http://schemas.microsoft.com/sharepoint/soap/}GetListItemChanges
#   listName - SOAP::SOAPString
#   viewFields - GetListItemChanges::ViewFields
#   since - SOAP::SOAPString
#   contains - GetListItemChanges::Contains
class GetListItemChanges

  # inner class for member: viewFields
  # {http://schemas.microsoft.com/sharepoint/soap/}viewFields
  class ViewFields
    attr_reader :__xmlele_any

    def set_any(elements)
      @__xmlele_any = elements
    end

    def initialize
      @__xmlele_any = nil
    end
  end

  # inner class for member: contains
  # {http://schemas.microsoft.com/sharepoint/soap/}contains
  class Contains
    attr_reader :__xmlele_any

    def set_any(elements)
      @__xmlele_any = elements
    end

    def initialize
      @__xmlele_any = nil
    end
  end

  attr_accessor :listName
  attr_accessor :viewFields
  attr_accessor :since
  attr_accessor :contains

  def initialize(listName = nil, viewFields = nil, since = nil, contains = nil)
    @listName = listName
    @viewFields = viewFields
    @since = since
    @contains = contains
  end
end

# {http://schemas.microsoft.com/sharepoint/soap/}GetListItemChangesResponse
#   getListItemChangesResult - GetListItemChangesResponse::GetListItemChangesResult
class GetListItemChangesResponse

  # inner class for member: GetListItemChangesResult
  # {http://schemas.microsoft.com/sharepoint/soap/}GetListItemChangesResult
  class GetListItemChangesResult
    attr_reader :__xmlele_any

    def set_any(elements)
      @__xmlele_any = elements
    end

    def initialize
      @__xmlele_any = nil
    end
  end

  attr_accessor :getListItemChangesResult

  def initialize(getListItemChangesResult = nil)
    @getListItemChangesResult = getListItemChangesResult
  end
end

# {http://schemas.microsoft.com/sharepoint/soap/}GetListItemChangesSinceToken
#   listName - SOAP::SOAPString
#   viewName - SOAP::SOAPString
#   query - GetListItemChangesSinceToken::Query
#   viewFields - GetListItemChangesSinceToken::ViewFields
#   rowLimit - SOAP::SOAPString
#   queryOptions - GetListItemChangesSinceToken::QueryOptions
#   changeToken - SOAP::SOAPString
#   contains - GetListItemChangesSinceToken::Contains
class GetListItemChangesSinceToken

  # inner class for member: query
  # {http://schemas.microsoft.com/sharepoint/soap/}query
  class Query
    attr_reader :__xmlele_any

    def set_any(elements)
      @__xmlele_any = elements
    end

    def initialize
      @__xmlele_any = nil
    end
  end

  # inner class for member: viewFields
  # {http://schemas.microsoft.com/sharepoint/soap/}viewFields
  class ViewFields
    attr_reader :__xmlele_any

    def set_any(elements)
      @__xmlele_any = elements
    end

    def initialize
      @__xmlele_any = nil
    end
  end

  # inner class for member: queryOptions
  # {http://schemas.microsoft.com/sharepoint/soap/}queryOptions
  class QueryOptions
    attr_reader :__xmlele_any

    def set_any(elements)
      @__xmlele_any = elements
    end

    def initialize
      @__xmlele_any = nil
    end
  end

  # inner class for member: contains
  # {http://schemas.microsoft.com/sharepoint/soap/}contains
  class Contains
    attr_reader :__xmlele_any

    def set_any(elements)
      @__xmlele_any = elements
    end

    def initialize
      @__xmlele_any = nil
    end
  end

  attr_accessor :listName
  attr_accessor :viewName
  attr_accessor :query
  attr_accessor :viewFields
  attr_accessor :rowLimit
  attr_accessor :queryOptions
  attr_accessor :changeToken
  attr_accessor :contains

  def initialize(listName = nil, viewName = nil, query = nil, viewFields = nil, rowLimit = nil, queryOptions = nil, changeToken = nil, contains = nil)
    @listName = listName
    @viewName = viewName
    @query = query
    @viewFields = viewFields
    @rowLimit = rowLimit
    @queryOptions = queryOptions
    @changeToken = changeToken
    @contains = contains
  end
end

# {http://schemas.microsoft.com/sharepoint/soap/}GetListItemChangesSinceTokenResponse
#   getListItemChangesSinceTokenResult - GetListItemChangesSinceTokenResponse::GetListItemChangesSinceTokenResult
class GetListItemChangesSinceTokenResponse

  # inner class for member: GetListItemChangesSinceTokenResult
  # {http://schemas.microsoft.com/sharepoint/soap/}GetListItemChangesSinceTokenResult
  class GetListItemChangesSinceTokenResult
    attr_reader :__xmlele_any

    def set_any(elements)
      @__xmlele_any = elements
    end

    def initialize
      @__xmlele_any = nil
    end
  end

  attr_accessor :getListItemChangesSinceTokenResult

  def initialize(getListItemChangesSinceTokenResult = nil)
    @getListItemChangesSinceTokenResult = getListItemChangesSinceTokenResult
  end
end

# {http://schemas.microsoft.com/sharepoint/soap/}UpdateListItems
#   listName - SOAP::SOAPString
#   updates - UpdateListItems::Updates
class UpdateListItems

  # inner class for member: updates
  # {http://schemas.microsoft.com/sharepoint/soap/}updates
  class Updates
    attr_reader :__xmlele_any

    def set_any(elements)
      @__xmlele_any = elements
    end

    def initialize
      @__xmlele_any = nil
    end
  end

  attr_accessor :listName
  attr_accessor :updates

  def initialize(listName = nil, updates = nil)
    @listName = listName
    @updates = updates
  end
end

# {http://schemas.microsoft.com/sharepoint/soap/}UpdateListItemsResponse
#   updateListItemsResult - UpdateListItemsResponse::UpdateListItemsResult
class UpdateListItemsResponse

  # inner class for member: UpdateListItemsResult
  # {http://schemas.microsoft.com/sharepoint/soap/}UpdateListItemsResult
  class UpdateListItemsResult
    attr_reader :__xmlele_any

    def set_any(elements)
      @__xmlele_any = elements
    end

    def initialize
      @__xmlele_any = nil
    end
  end

  attr_accessor :updateListItemsResult

  def initialize(updateListItemsResult = nil)
    @updateListItemsResult = updateListItemsResult
  end
end

# {http://schemas.microsoft.com/sharepoint/soap/}AddDiscussionBoardItem
#   listName - SOAP::SOAPString
#   message - SOAP::SOAPBase64
class AddDiscussionBoardItem
  attr_accessor :listName
  attr_accessor :message

  def initialize(listName = nil, message = nil)
    @listName = listName
    @message = message
  end
end

# {http://schemas.microsoft.com/sharepoint/soap/}AddDiscussionBoardItemResponse
#   addDiscussionBoardItemResult - AddDiscussionBoardItemResponse::AddDiscussionBoardItemResult
class AddDiscussionBoardItemResponse

  # inner class for member: AddDiscussionBoardItemResult
  # {http://schemas.microsoft.com/sharepoint/soap/}AddDiscussionBoardItemResult
  class AddDiscussionBoardItemResult
    attr_reader :__xmlele_any

    def set_any(elements)
      @__xmlele_any = elements
    end

    def initialize
      @__xmlele_any = nil
    end
  end

  attr_accessor :addDiscussionBoardItemResult

  def initialize(addDiscussionBoardItemResult = nil)
    @addDiscussionBoardItemResult = addDiscussionBoardItemResult
  end
end

# {http://schemas.microsoft.com/sharepoint/soap/}GetVersionCollection
#   strlistID - SOAP::SOAPString
#   strlistItemID - SOAP::SOAPString
#   strFieldName - SOAP::SOAPString
class GetVersionCollection
  attr_accessor :strlistID
  attr_accessor :strlistItemID
  attr_accessor :strFieldName

  def initialize(strlistID = nil, strlistItemID = nil, strFieldName = nil)
    @strlistID = strlistID
    @strlistItemID = strlistItemID
    @strFieldName = strFieldName
  end
end

# {http://schemas.microsoft.com/sharepoint/soap/}GetVersionCollectionResponse
#   getVersionCollectionResult - GetVersionCollectionResponse::GetVersionCollectionResult
class GetVersionCollectionResponse

  # inner class for member: GetVersionCollectionResult
  # {http://schemas.microsoft.com/sharepoint/soap/}GetVersionCollectionResult
  class GetVersionCollectionResult
    attr_reader :__xmlele_any

    def set_any(elements)
      @__xmlele_any = elements
    end

    def initialize
      @__xmlele_any = nil
    end
  end

  attr_accessor :getVersionCollectionResult

  def initialize(getVersionCollectionResult = nil)
    @getVersionCollectionResult = getVersionCollectionResult
  end
end

# {http://schemas.microsoft.com/sharepoint/soap/}AddAttachment
#   listName - SOAP::SOAPString
#   listItemID - SOAP::SOAPString
#   fileName - SOAP::SOAPString
#   attachment - SOAP::SOAPBase64
class AddAttachment
  attr_accessor :listName
  attr_accessor :listItemID
  attr_accessor :fileName
  attr_accessor :attachment

  def initialize(listName = nil, listItemID = nil, fileName = nil, attachment = nil)
    @listName = listName
    @listItemID = listItemID
    @fileName = fileName
    @attachment = attachment
  end
end

# {http://schemas.microsoft.com/sharepoint/soap/}AddAttachmentResponse
#   addAttachmentResult - SOAP::SOAPString
class AddAttachmentResponse
  attr_accessor :addAttachmentResult

  def initialize(addAttachmentResult = nil)
    @addAttachmentResult = addAttachmentResult
  end
end

# {http://schemas.microsoft.com/sharepoint/soap/}GetAttachmentCollection
#   listName - SOAP::SOAPString
#   listItemID - SOAP::SOAPString
class GetAttachmentCollection
  attr_accessor :listName
  attr_accessor :listItemID

  def initialize(listName = nil, listItemID = nil)
    @listName = listName
    @listItemID = listItemID
  end
end

# {http://schemas.microsoft.com/sharepoint/soap/}GetAttachmentCollectionResponse
#   getAttachmentCollectionResult - GetAttachmentCollectionResponse::GetAttachmentCollectionResult
class GetAttachmentCollectionResponse

  # inner class for member: GetAttachmentCollectionResult
  # {http://schemas.microsoft.com/sharepoint/soap/}GetAttachmentCollectionResult
  class GetAttachmentCollectionResult
    attr_reader :__xmlele_any

    def set_any(elements)
      @__xmlele_any = elements
    end

    def initialize
      @__xmlele_any = nil
    end
  end

  attr_accessor :getAttachmentCollectionResult

  def initialize(getAttachmentCollectionResult = nil)
    @getAttachmentCollectionResult = getAttachmentCollectionResult
  end
end

# {http://schemas.microsoft.com/sharepoint/soap/}DeleteAttachment
#   listName - SOAP::SOAPString
#   listItemID - SOAP::SOAPString
#   url - SOAP::SOAPString
class DeleteAttachment
  attr_accessor :listName
  attr_accessor :listItemID
  attr_accessor :url

  def initialize(listName = nil, listItemID = nil, url = nil)
    @listName = listName
    @listItemID = listItemID
    @url = url
  end
end

# {http://schemas.microsoft.com/sharepoint/soap/}DeleteAttachmentResponse
class DeleteAttachmentResponse
  def initialize
  end
end

# {http://schemas.microsoft.com/sharepoint/soap/}CheckOutFile
#   pageUrl - SOAP::SOAPString
#   checkoutToLocal - SOAP::SOAPString
#   lastmodified - SOAP::SOAPString
class CheckOutFile
  attr_accessor :pageUrl
  attr_accessor :checkoutToLocal
  attr_accessor :lastmodified

  def initialize(pageUrl = nil, checkoutToLocal = nil, lastmodified = nil)
    @pageUrl = pageUrl
    @checkoutToLocal = checkoutToLocal
    @lastmodified = lastmodified
  end
end

# {http://schemas.microsoft.com/sharepoint/soap/}CheckOutFileResponse
#   checkOutFileResult - SOAP::SOAPBoolean
class CheckOutFileResponse
  attr_accessor :checkOutFileResult

  def initialize(checkOutFileResult = nil)
    @checkOutFileResult = checkOutFileResult
  end
end

# {http://schemas.microsoft.com/sharepoint/soap/}UndoCheckOut
#   pageUrl - SOAP::SOAPString
class UndoCheckOut
  attr_accessor :pageUrl

  def initialize(pageUrl = nil)
    @pageUrl = pageUrl
  end
end

# {http://schemas.microsoft.com/sharepoint/soap/}UndoCheckOutResponse
#   undoCheckOutResult - SOAP::SOAPBoolean
class UndoCheckOutResponse
  attr_accessor :undoCheckOutResult

  def initialize(undoCheckOutResult = nil)
    @undoCheckOutResult = undoCheckOutResult
  end
end

# {http://schemas.microsoft.com/sharepoint/soap/}CheckInFile
#   pageUrl - SOAP::SOAPString
#   comment - SOAP::SOAPString
#   checkinType - SOAP::SOAPString
class CheckInFile
  attr_accessor :pageUrl
  attr_accessor :comment
  attr_accessor :checkinType

  def initialize(pageUrl = nil, comment = nil, checkinType = nil)
    @pageUrl = pageUrl
    @comment = comment
    @checkinType = checkinType
  end
end

# {http://schemas.microsoft.com/sharepoint/soap/}CheckInFileResponse
#   checkInFileResult - SOAP::SOAPBoolean
class CheckInFileResponse
  attr_accessor :checkInFileResult

  def initialize(checkInFileResult = nil)
    @checkInFileResult = checkInFileResult
  end
end

# {http://schemas.microsoft.com/sharepoint/soap/}GetListContentTypes
#   listName - SOAP::SOAPString
#   contentTypeId - SOAP::SOAPString
class GetListContentTypes
  attr_accessor :listName
  attr_accessor :contentTypeId

  def initialize(listName = nil, contentTypeId = nil)
    @listName = listName
    @contentTypeId = contentTypeId
  end
end

# {http://schemas.microsoft.com/sharepoint/soap/}GetListContentTypesResponse
#   getListContentTypesResult - GetListContentTypesResponse::GetListContentTypesResult
class GetListContentTypesResponse

  # inner class for member: GetListContentTypesResult
  # {http://schemas.microsoft.com/sharepoint/soap/}GetListContentTypesResult
  class GetListContentTypesResult
    attr_reader :__xmlele_any

    def set_any(elements)
      @__xmlele_any = elements
    end

    def initialize
      @__xmlele_any = nil
    end
  end

  attr_accessor :getListContentTypesResult

  def initialize(getListContentTypesResult = nil)
    @getListContentTypesResult = getListContentTypesResult
  end
end

# {http://schemas.microsoft.com/sharepoint/soap/}GetListContentType
#   listName - SOAP::SOAPString
#   contentTypeId - SOAP::SOAPString
class GetListContentType
  attr_accessor :listName
  attr_accessor :contentTypeId

  def initialize(listName = nil, contentTypeId = nil)
    @listName = listName
    @contentTypeId = contentTypeId
  end
end

# {http://schemas.microsoft.com/sharepoint/soap/}GetListContentTypeResponse
#   getListContentTypeResult - GetListContentTypeResponse::GetListContentTypeResult
class GetListContentTypeResponse

  # inner class for member: GetListContentTypeResult
  # {http://schemas.microsoft.com/sharepoint/soap/}GetListContentTypeResult
  class GetListContentTypeResult
    attr_reader :__xmlele_any

    def set_any(elements)
      @__xmlele_any = elements
    end

    def initialize
      @__xmlele_any = nil
    end
  end

  attr_accessor :getListContentTypeResult

  def initialize(getListContentTypeResult = nil)
    @getListContentTypeResult = getListContentTypeResult
  end
end

# {http://schemas.microsoft.com/sharepoint/soap/}CreateContentType
#   listName - SOAP::SOAPString
#   displayName - SOAP::SOAPString
#   parentType - SOAP::SOAPString
#   fields - CreateContentType::Fields
#   contentTypeProperties - CreateContentType::ContentTypeProperties
#   addToView - SOAP::SOAPString
class CreateContentType

  # inner class for member: fields
  # {http://schemas.microsoft.com/sharepoint/soap/}fields
  class Fields
    attr_reader :__xmlele_any

    def set_any(elements)
      @__xmlele_any = elements
    end

    def initialize
      @__xmlele_any = nil
    end
  end

  # inner class for member: contentTypeProperties
  # {http://schemas.microsoft.com/sharepoint/soap/}contentTypeProperties
  class ContentTypeProperties
    attr_reader :__xmlele_any

    def set_any(elements)
      @__xmlele_any = elements
    end

    def initialize
      @__xmlele_any = nil
    end
  end

  attr_accessor :listName
  attr_accessor :displayName
  attr_accessor :parentType
  attr_accessor :fields
  attr_accessor :contentTypeProperties
  attr_accessor :addToView

  def initialize(listName = nil, displayName = nil, parentType = nil, fields = nil, contentTypeProperties = nil, addToView = nil)
    @listName = listName
    @displayName = displayName
    @parentType = parentType
    @fields = fields
    @contentTypeProperties = contentTypeProperties
    @addToView = addToView
  end
end

# {http://schemas.microsoft.com/sharepoint/soap/}CreateContentTypeResponse
#   createContentTypeResult - SOAP::SOAPString
class CreateContentTypeResponse
  attr_accessor :createContentTypeResult

  def initialize(createContentTypeResult = nil)
    @createContentTypeResult = createContentTypeResult
  end
end

# {http://schemas.microsoft.com/sharepoint/soap/}UpdateContentType
#   listName - SOAP::SOAPString
#   contentTypeId - SOAP::SOAPString
#   contentTypeProperties - UpdateContentType::ContentTypeProperties
#   newFields - UpdateContentType::NewFields
#   updateFields - UpdateContentType::UpdateFields
#   deleteFields - UpdateContentType::DeleteFields
#   addToView - SOAP::SOAPString
class UpdateContentType

  # inner class for member: contentTypeProperties
  # {http://schemas.microsoft.com/sharepoint/soap/}contentTypeProperties
  class ContentTypeProperties
    attr_reader :__xmlele_any

    def set_any(elements)
      @__xmlele_any = elements
    end

    def initialize
      @__xmlele_any = nil
    end
  end

  # inner class for member: newFields
  # {http://schemas.microsoft.com/sharepoint/soap/}newFields
  class NewFields
    attr_reader :__xmlele_any

    def set_any(elements)
      @__xmlele_any = elements
    end

    def initialize
      @__xmlele_any = nil
    end
  end

  # inner class for member: updateFields
  # {http://schemas.microsoft.com/sharepoint/soap/}updateFields
  class UpdateFields
    attr_reader :__xmlele_any

    def set_any(elements)
      @__xmlele_any = elements
    end

    def initialize
      @__xmlele_any = nil
    end
  end

  # inner class for member: deleteFields
  # {http://schemas.microsoft.com/sharepoint/soap/}deleteFields
  class DeleteFields
    attr_reader :__xmlele_any

    def set_any(elements)
      @__xmlele_any = elements
    end

    def initialize
      @__xmlele_any = nil
    end
  end

  attr_accessor :listName
  attr_accessor :contentTypeId
  attr_accessor :contentTypeProperties
  attr_accessor :newFields
  attr_accessor :updateFields
  attr_accessor :deleteFields
  attr_accessor :addToView

  def initialize(listName = nil, contentTypeId = nil, contentTypeProperties = nil, newFields = nil, updateFields = nil, deleteFields = nil, addToView = nil)
    @listName = listName
    @contentTypeId = contentTypeId
    @contentTypeProperties = contentTypeProperties
    @newFields = newFields
    @updateFields = updateFields
    @deleteFields = deleteFields
    @addToView = addToView
  end
end

# {http://schemas.microsoft.com/sharepoint/soap/}UpdateContentTypeResponse
#   updateContentTypeResult - UpdateContentTypeResponse::UpdateContentTypeResult
class UpdateContentTypeResponse

  # inner class for member: UpdateContentTypeResult
  # {http://schemas.microsoft.com/sharepoint/soap/}UpdateContentTypeResult
  class UpdateContentTypeResult
    attr_reader :__xmlele_any

    def set_any(elements)
      @__xmlele_any = elements
    end

    def initialize
      @__xmlele_any = nil
    end
  end

  attr_accessor :updateContentTypeResult

  def initialize(updateContentTypeResult = nil)
    @updateContentTypeResult = updateContentTypeResult
  end
end

# {http://schemas.microsoft.com/sharepoint/soap/}DeleteContentType
#   listName - SOAP::SOAPString
#   contentTypeId - SOAP::SOAPString
class DeleteContentType
  attr_accessor :listName
  attr_accessor :contentTypeId

  def initialize(listName = nil, contentTypeId = nil)
    @listName = listName
    @contentTypeId = contentTypeId
  end
end

# {http://schemas.microsoft.com/sharepoint/soap/}DeleteContentTypeResponse
#   deleteContentTypeResult - DeleteContentTypeResponse::DeleteContentTypeResult
class DeleteContentTypeResponse

  # inner class for member: DeleteContentTypeResult
  # {http://schemas.microsoft.com/sharepoint/soap/}DeleteContentTypeResult
  class DeleteContentTypeResult
    attr_reader :__xmlele_any

    def set_any(elements)
      @__xmlele_any = elements
    end

    def initialize
      @__xmlele_any = nil
    end
  end

  attr_accessor :deleteContentTypeResult

  def initialize(deleteContentTypeResult = nil)
    @deleteContentTypeResult = deleteContentTypeResult
  end
end

# {http://schemas.microsoft.com/sharepoint/soap/}UpdateContentTypeXmlDocument
#   listName - SOAP::SOAPString
#   contentTypeId - SOAP::SOAPString
#   newDocument - UpdateContentTypeXmlDocument::NewDocument
class UpdateContentTypeXmlDocument

  # inner class for member: newDocument
  # {http://schemas.microsoft.com/sharepoint/soap/}newDocument
  class NewDocument
    attr_reader :__xmlele_any

    def set_any(elements)
      @__xmlele_any = elements
    end

    def initialize
      @__xmlele_any = nil
    end
  end

  attr_accessor :listName
  attr_accessor :contentTypeId
  attr_accessor :newDocument

  def initialize(listName = nil, contentTypeId = nil, newDocument = nil)
    @listName = listName
    @contentTypeId = contentTypeId
    @newDocument = newDocument
  end
end

# {http://schemas.microsoft.com/sharepoint/soap/}UpdateContentTypeXmlDocumentResponse
#   updateContentTypeXmlDocumentResult - UpdateContentTypeXmlDocumentResponse::UpdateContentTypeXmlDocumentResult
class UpdateContentTypeXmlDocumentResponse

  # inner class for member: UpdateContentTypeXmlDocumentResult
  # {http://schemas.microsoft.com/sharepoint/soap/}UpdateContentTypeXmlDocumentResult
  class UpdateContentTypeXmlDocumentResult
    attr_reader :__xmlele_any

    def set_any(elements)
      @__xmlele_any = elements
    end

    def initialize
      @__xmlele_any = nil
    end
  end

  attr_accessor :updateContentTypeXmlDocumentResult

  def initialize(updateContentTypeXmlDocumentResult = nil)
    @updateContentTypeXmlDocumentResult = updateContentTypeXmlDocumentResult
  end
end

# {http://schemas.microsoft.com/sharepoint/soap/}UpdateContentTypesXmlDocument
#   listName - SOAP::SOAPString
#   newDocument - UpdateContentTypesXmlDocument::NewDocument
class UpdateContentTypesXmlDocument

  # inner class for member: newDocument
  # {http://schemas.microsoft.com/sharepoint/soap/}newDocument
  class NewDocument
    attr_reader :__xmlele_any

    def set_any(elements)
      @__xmlele_any = elements
    end

    def initialize
      @__xmlele_any = nil
    end
  end

  attr_accessor :listName
  attr_accessor :newDocument

  def initialize(listName = nil, newDocument = nil)
    @listName = listName
    @newDocument = newDocument
  end
end

# {http://schemas.microsoft.com/sharepoint/soap/}UpdateContentTypesXmlDocumentResponse
#   updateContentTypesXmlDocumentResult - UpdateContentTypesXmlDocumentResponse::UpdateContentTypesXmlDocumentResult
class UpdateContentTypesXmlDocumentResponse

  # inner class for member: UpdateContentTypesXmlDocumentResult
  # {http://schemas.microsoft.com/sharepoint/soap/}UpdateContentTypesXmlDocumentResult
  class UpdateContentTypesXmlDocumentResult
    attr_reader :__xmlele_any

    def set_any(elements)
      @__xmlele_any = elements
    end

    def initialize
      @__xmlele_any = nil
    end
  end

  attr_accessor :updateContentTypesXmlDocumentResult

  def initialize(updateContentTypesXmlDocumentResult = nil)
    @updateContentTypesXmlDocumentResult = updateContentTypesXmlDocumentResult
  end
end

# {http://schemas.microsoft.com/sharepoint/soap/}DeleteContentTypeXmlDocument
#   listName - SOAP::SOAPString
#   contentTypeId - SOAP::SOAPString
#   documentUri - SOAP::SOAPString
class DeleteContentTypeXmlDocument
  attr_accessor :listName
  attr_accessor :contentTypeId
  attr_accessor :documentUri

  def initialize(listName = nil, contentTypeId = nil, documentUri = nil)
    @listName = listName
    @contentTypeId = contentTypeId
    @documentUri = documentUri
  end
end

# {http://schemas.microsoft.com/sharepoint/soap/}DeleteContentTypeXmlDocumentResponse
#   deleteContentTypeXmlDocumentResult - DeleteContentTypeXmlDocumentResponse::DeleteContentTypeXmlDocumentResult
class DeleteContentTypeXmlDocumentResponse

  # inner class for member: DeleteContentTypeXmlDocumentResult
  # {http://schemas.microsoft.com/sharepoint/soap/}DeleteContentTypeXmlDocumentResult
  class DeleteContentTypeXmlDocumentResult
    attr_reader :__xmlele_any

    def set_any(elements)
      @__xmlele_any = elements
    end

    def initialize
      @__xmlele_any = nil
    end
  end

  attr_accessor :deleteContentTypeXmlDocumentResult

  def initialize(deleteContentTypeXmlDocumentResult = nil)
    @deleteContentTypeXmlDocumentResult = deleteContentTypeXmlDocumentResult
  end
end

# {http://schemas.microsoft.com/sharepoint/soap/}ApplyContentTypeToList
#   webUrl - SOAP::SOAPString
#   contentTypeId - SOAP::SOAPString
#   listName - SOAP::SOAPString
class ApplyContentTypeToList
  attr_accessor :webUrl
  attr_accessor :contentTypeId
  attr_accessor :listName

  def initialize(webUrl = nil, contentTypeId = nil, listName = nil)
    @webUrl = webUrl
    @contentTypeId = contentTypeId
    @listName = listName
  end
end

# {http://schemas.microsoft.com/sharepoint/soap/}ApplyContentTypeToListResponse
#   applyContentTypeToListResult - ApplyContentTypeToListResponse::ApplyContentTypeToListResult
class ApplyContentTypeToListResponse

  # inner class for member: ApplyContentTypeToListResult
  # {http://schemas.microsoft.com/sharepoint/soap/}ApplyContentTypeToListResult
  class ApplyContentTypeToListResult
    attr_reader :__xmlele_any

    def set_any(elements)
      @__xmlele_any = elements
    end

    def initialize
      @__xmlele_any = nil
    end
  end

  attr_accessor :applyContentTypeToListResult

  def initialize(applyContentTypeToListResult = nil)
    @applyContentTypeToListResult = applyContentTypeToListResult
  end
end
