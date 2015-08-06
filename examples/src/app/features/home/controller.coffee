angular.module "App.controllers"
.controller "HomeCtrl", ($state, $rootScope, $scope, stopwatch) ->
  ##################################
  ## Init
  ##################################

  $scope.timers = []

  $scope.timers.push stopwatch.create()
  $scope.timers.push stopwatch.create({name: 'No Refresh', autoRefresh: false})
  $scope.timers.push stopwatch.create({name: 'Different Refresh Rate', refreshRate: 500})
