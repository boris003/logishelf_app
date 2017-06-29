(function() {
  "use strict";

  angular.module("app").controller("devicesCtrl", function($scope, $http){  

    $scope.toggleOrder = function(attribute){
      if(attribute != $scope.orderAttribute) {
        $scope.descending = false;
      } else {
        $scope.descending = !$scope.descending;
      }
      $scope.orderAttribute = attribute;
    };



    window.$scope = $scope;
  });
}());