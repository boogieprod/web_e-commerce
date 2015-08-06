@Products = new TAPi18n.Collection 'products'

ProductsSchema =

  description:
    type: String

  "i18n.fr.description":
    type: String
    optional: true

  modelNum:
    type: String

  UPC:
    type: String

  cost:
    type: String

  isInPromo:
    type: Boolean

  promoEnds:
    type: String
    optional: true

  price:
    type: String

  qty:
    type: Number

  catRel:
    type: Schemas.CategoriesSchema
    autoform:
      options: ->
        _.map Categories.find().fetch(), (category) ->
          label: category.name
          value: category.systemId

  subCatRel:
    type: Schemas.SubCategoriesSchema
    autoform:
      options: ->
        _.map SubCategories.find().fetch(), (subcategory) ->
          label: subcategory.name
          value: subcategory.systemId

  manufRel:
    type: Schemas.ManufacturersSchema
    autoform:
      options: ->
        _.map Manufacturers.find().fetch(), (manufacturer) ->
          label: manufacturer.name
          value: manufacturer.systemId

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

  modifier:
    type: String
    optional: true
    autoform:
      options: ->
        _.map Meteor.users.find().fetch(), (user)->
          label: user.emails[0].address
          value: user._id

  thumb:
    type: String
    optional: true

Products.attachSchema ProductsSchema
