Router.map ->
  @route "home",
    path: "/"
    layoutTemplate: "homeLayout"

  @route "dashboard",
    path: "/dashboard"
    waitOn: ->
      [
        subs.subscribe 'posts'
        subs.subscribe 'comments'
        subs.subscribe 'attachments'
      ]
    data: ->
      posts: Posts.find({},{sort: {createdAt: -1}}).fetch()

  @route "shopHome",
    path: "/shop_home"

  @route "promotionsPage",
    path: "/promotions"

  @route "homeProducts",
    path: "/home_products"

  @route "computerProducts",
    path: "/computer_products"

  @route "mobileProducts",
    path: "/mobile_products"

  @route "carProducts",
    path: "/car_products"

  @route "gadgetProducts",
    path: "/gadget_products"

  @route "manufacturersPage",
    path: "/manufacturers_page"
    waitOn: ->
      subs.subscribe 'manufacturers'
