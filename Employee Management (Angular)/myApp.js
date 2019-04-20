angular.module("myApp", []).controller("myController", function($scope){
    $scope.data = [{name:'', designation:'', base:0, allowance:0, total:0}];
    $scope.addEmployee = function(){
        $scope.data.push({name:'', designation:'', base:0, allowance:0, total:0});
    }
    $scope.removeEmployee = function(index){
        $scope.data.splice(index, 1);
    }
    
    $scope.totalBase = function(){
        var total = 0;
        angular.forEach($scope.data, function(record){
           total += record.base; 
        });
        return total;
    }
    
    $scope.totalAllowance = function(){
        var total = 0;
        angular.forEach($scope.data, function(record){
           total += record.allowance; 
        });
        return total;
    }
    
    $scope.totalTotal = function(){
        return $scope.totalBase()+$scope.totalAllowance();
    }
});

