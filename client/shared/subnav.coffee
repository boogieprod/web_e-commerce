TAPi18n.subscribe 'subcategories'

Template.subnav.helpers

  computersubcats: ->
    SubCategories.find({catRel: "PC"}, {sort: {name: 1}})

  mobilesubcats: ->
    SubCategories.find({catRel: "MO"}, {sort: {name: 1}})

  homesubcats: ->
    SubCategories.find({catRel: "HO"}, {sort: {name: 1}})

  carsubcats: ->
    SubCategories.find({catRel: "CA"}, {sort: {name: 1}})

  gadsubcats: ->
    SubCategories.find({catRel: "GA"}, {sort: {name: 1}})
