angular.module "App.controllers"
.controller "HomeCtrl", ($state, $rootScope, $scope, stopwatch) ->
  ##################################
  ## Init
  ##################################

  $scope.timers = []

  $scope.timers.push stopwatch.start('one')
  $scope.timers.push stopwatch.start('two')
