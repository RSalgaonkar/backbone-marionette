@Demo.module "FooterApp.Show", (Show , App, Backbone, Marionette, $, _) ->
  Show.Controller =
    showFooter: ->
      currentUser = App.currentUser
      footerView = @getFooterView()
      App.footerRegion.show footerView

    getFooterView: (currentUser) ->
      new Show.Footer
        model: currentUser