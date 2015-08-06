@SubCategories = new TAPi18n.Collection 'subcategories'

SubCategoriesSchema =

  name:
    type: String

  "i18n.fr.name":
    type: String
    optional: true

  systemId:
    type: String

  catRel:
    type: [Schemas.CategoriesSchema]
    autoform:
      options: ->
        _.map Categories.find().fetch(), (category) ->
          label: category.name
          value: category.systemId

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

SubCategories.attachSchema SubCategoriesSchema
