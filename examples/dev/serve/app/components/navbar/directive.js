(function() {
  angular.module("App.directives").directive("navbar", function() {
    return {
      restrict: "EA",
      scope: {},
      templateUrl: 'app/components/navbar/template.html',
      controller: 'NavbarCtrl'
    };
  });

}).call(this);

//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbImNvbXBvbmVudHMvbmF2YmFyL2RpcmVjdGl2ZS5jb2ZmZWUiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUE7RUFBQSxPQUFPLENBQUMsTUFBUixDQUFlLGdCQUFmLENBQ0UsQ0FBQyxTQURILENBQ2EsUUFEYixFQUN1QixTQUFBO1dBQ25CO01BQUEsUUFBQSxFQUFVLElBQVY7TUFDQSxLQUFBLEVBQU8sRUFEUDtNQUVBLFdBQUEsRUFBYSxxQ0FGYjtNQUdBLFVBQUEsRUFBWSxZQUhaOztFQURtQixDQUR2QjtBQUFBIiwiZmlsZSI6ImNvbXBvbmVudHMvbmF2YmFyL2RpcmVjdGl2ZS5qcyIsInNvdXJjZVJvb3QiOiIvc291cmNlLyIsInNvdXJjZXNDb250ZW50IjpbImFuZ3VsYXIubW9kdWxlIFwiQXBwLmRpcmVjdGl2ZXNcIlxuICAuZGlyZWN0aXZlIFwibmF2YmFyXCIsICgpIC0+XG4gICAgcmVzdHJpY3Q6IFwiRUFcIlxuICAgIHNjb3BlOiB7fVxuICAgIHRlbXBsYXRlVXJsOiAnYXBwL2NvbXBvbmVudHMvbmF2YmFyL3RlbXBsYXRlLmh0bWwnXG4gICAgY29udHJvbGxlcjogJ05hdmJhckN0cmwnIl19