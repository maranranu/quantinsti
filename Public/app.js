// public/app.js
var ExchangeOrderApp = angular.module('ExchangeOrderApp', ['ngRoute']);

ExchangeOrderApp.controller("mainController", mainController);

function mainController($scope, $http,$window, $interval,$timeout) {
    $scope.formData = {};
    // when landing on the page, get all orders and refreshes after every 5sec
    $scope.getAllData = function(){
      return $http.get('/showAll').then(function successCallback(response) {
        $scope.orders = response.data;
      }, function failureCallback(reason) {
      })
    };

    $scope.getAllData();
    $interval(function () {
      $scope.displaysuccess = true;
      $timeout(function () {
          $scope.displaysuccess = false;
      }, 1000);


      $scope.getAllData();
    }, 5000);
    //Get data by instrument ID
        $scope.getStatusByID = function(id) {
                $http({
                    method: 'GET',
                    url: '/instrument/'+id
                  }).then(function (success){
                    console.log(success.data);
                    $scope.instrumentDetails = success.data;
                  },function (error){

                  });
        };
    // when submitting the add form, send the text to the node API
    $scope.storeOrder= function() {
        $http.post('/store', $scope.formData)
            .success(function(data) {
                $scope.formData = {}; // clear the form so our user is ready to enter another
                $scope.orders = data;
                console.log(data);
            })
            .error(function(data) {
                console.log('Error: ' + data);
            });
    };
}
