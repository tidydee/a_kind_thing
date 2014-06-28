angular
  .module('app', ['ngRoute', 'ngResource'])
  .config(['$routeProvider', function($routeProvider) {
    $routeProvider.when('/', {
      controller: 'AppCtrl'
    }).when('/:status',{
      controller: 'AppCtrl'
    }).otherwise({
      redirectTo: '/'
    });
  }]);
