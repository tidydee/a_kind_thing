angular
  .module('app')
  .controller('MainCtrl', ['Act', '$scope', function(Act, $scope) {
    $scope.acts = Act.query();
  }]);