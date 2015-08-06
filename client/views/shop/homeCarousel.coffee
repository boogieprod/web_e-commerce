Template.shopHome.rendered = ->
  console.log "rendered"
  owl = this.$('#home-carousel')
  owl.owlCarousel({
    items: 1,
    autoplay: true,
    autoplayTimeout: 3000,
    loop: true
    })
