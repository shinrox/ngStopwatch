# =============================================
# Modules
# =============================================
angular.module 'ngStopwatch.services'    , []


# =============================================
# Scripts Module
# =============================================
angular.module 'ngStopwatch.scripts'     , [
  'ngStopwatch.services'
]


# =============================================
# Main Module
# =============================================
angular.module 'ngStopwatch', [
  'ngStopwatch.scripts'
  ]