Template.manufacturersPage.helpers

  manufacturers: ->
    Manufacturers.find({}, {sort: {name: 1}})

Template.manufacturersPage.rendered = ->
  console.log 'rendered'
  owl = this.$('#manuf-carousel')
  owl.owlCarousel({
    items: 10,
    autoplay: true,
    autoplayTimeout: 5000,
    loop: true,
    margin: 25
    })
