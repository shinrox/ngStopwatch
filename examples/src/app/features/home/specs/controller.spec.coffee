'use strict'

# =============================================
# HomeController
# =============================================
describe '\nController: HomeController\n', ()->

  # =============================================
  # Import modules
  # =============================================
  beforeEach module('ui.router')
  beforeEach module('Stopwatch.scripts')
  beforeEach module('ngToast')
  beforeEach module('hAnalytics')
  beforeEach module('Twain')
  beforeEach module('ui.bootstrap')
  beforeEach module('pascalprecht.translate')
  beforeEach module('oitozero.ngSweetAlert')


  # =============================================
  # Variables
  # =============================================
  $scope         = null
  HomeCtrl = null

  # =============================================
  # Inject dependencies
  # =============================================
  beforeEach inject ($controller, $rootScope, _twainApi_, _USERS_MOCK_, _USER_MOCK_ ) ->
    $scope = $rootScope.$new()
    $rootScope.user = _USER_MOCK_
    HomeCtrl = $controller 'HomeCtrl',
      $scope   : $scope
      twainApi : _twainApi_
      userList : _USERS_MOCK_
      userSettings: _USER_MOCK_



  describe 'Atributes', ->
    it 'Should define default atributes', ->
      expect($scope.twainApi).toBeDefined()



