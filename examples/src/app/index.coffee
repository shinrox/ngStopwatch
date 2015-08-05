
# =============================================
# Modules
# =============================================
angular.module 'App.controllers' , []
angular.module 'App.filters'     , []
angular.module 'App.factories'   , []
angular.module 'App.constants'   , []
angular.module 'App.services'    , []
angular.module 'App.directives'  , []
angular.module 'App.mocks'       , []
angular.module 'App.i18n'        , []
angular.module 'App.configs'     , []
angular.module 'App.providers'   , []



# =============================================
# Scripts Module
# =============================================
angular.module 'App.scripts'     , [
  'App.controllers'
  'App.constants'
  'App.filters'
  'App.factories'
  'App.services'
  'App.directives'
  'App.mocks'
  'App.i18n'
  'App.providers'
  'App.configs'
]


# =============================================
# Main Module
# =============================================
angular.module 'App', [
  'ngSanitize'
  'ngResource'
  'ui.router'
  'ngStopwatch'
  'App.scripts'
  ]
