@Categories = new TAPi18n.Collection 'categories'

CategoriesSchema =

  name:
    type: String

  "i18n.fr.name":
    type: String
    optional: true

  systemId:
    type: String

  createdAt:
    type: Date
    autoValue: ->
      if this.isInsert
        new Date()

  updatedAt:
    type: Date
    optional: true
    autoValue: ->
      if this.isUpdate
        new Date()

Categories.attachSchema CategoriesSchema
