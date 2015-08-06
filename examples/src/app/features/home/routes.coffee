

# =============================================
# Main Module
# =============================================
angular.module 'App'

  # =============================================
  # Config Twain
  # =============================================
  .config ($stateProvider, $urlRouterProvider) ->

    $stateProvider
      .state "home",
        url         : "/"
        templateUrl : "app/features/home/home.html"
        controller  : "HomeCtrl"

    $urlRouterProvider.otherwise '/'