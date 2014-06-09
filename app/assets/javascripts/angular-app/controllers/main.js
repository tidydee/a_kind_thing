angular
  .module('app')
  .controller('MainCtrl', ['Act', '$scope', 
    function(Act, $scope) {
    
    $scope.acts = Act.query();
    $scope.newAct = new Act();
    $scope.save = function(act) {
      $scope.acts.push(act);
      act.$save();
      $scope.newAct = new Act();
    } 

  }]);