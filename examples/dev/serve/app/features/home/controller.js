(function() {
  angular.module("App.controllers").controller("HomeCtrl", function($state, $rootScope, $scope, stopwatch) {
    $scope.timers = [];
    $scope.timers.push(stopwatch.start('one'));
    return $scope.timers.push(stopwatch.start('two'));
  });

}).call(this);

//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbImNvbnRyb2xsZXIuY29mZmVlIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBO0VBQUEsT0FBTyxDQUFDLE1BQVIsQ0FBZSxpQkFBZixDQUNBLENBQUMsVUFERCxDQUNZLFVBRFosRUFDd0IsU0FBQyxNQUFELEVBQVMsVUFBVCxFQUFxQixNQUFyQixFQUE2QixTQUE3QjtJQUt0QixNQUFNLENBQUMsTUFBUCxHQUFnQjtJQUVoQixNQUFNLENBQUMsTUFBTSxDQUFDLElBQWQsQ0FBbUIsU0FBUyxDQUFDLEtBQVYsQ0FBZ0IsS0FBaEIsQ0FBbkI7V0FDQSxNQUFNLENBQUMsTUFBTSxDQUFDLElBQWQsQ0FBbUIsU0FBUyxDQUFDLEtBQVYsQ0FBZ0IsS0FBaEIsQ0FBbkI7RUFSc0IsQ0FEeEI7QUFBQSIsImZpbGUiOiJjb250cm9sbGVyLmpzIiwic291cmNlUm9vdCI6Ii9zb3VyY2UvIiwic291cmNlc0NvbnRlbnQiOlsiYW5ndWxhci5tb2R1bGUgXCJBcHAuY29udHJvbGxlcnNcIlxuLmNvbnRyb2xsZXIgXCJIb21lQ3RybFwiLCAoJHN0YXRlLCAkcm9vdFNjb3BlLCAkc2NvcGUsIHN0b3B3YXRjaCkgLT5cbiAgIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjI1xuICAjIyBJbml0XG4gICMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyNcblxuICAkc2NvcGUudGltZXJzID0gW11cblxuICAkc2NvcGUudGltZXJzLnB1c2ggc3RvcHdhdGNoLnN0YXJ0KCdvbmUnKVxuICAkc2NvcGUudGltZXJzLnB1c2ggc3RvcHdhdGNoLnN0YXJ0KCd0d28nKVxuIl19