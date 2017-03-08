// public/app.js
var ExchangeOrderApp = angular.module('ExchangeOrderApp', []).controller("mainController", mainController);

function mainController($scope, $http, $interval) {
    $scope.formData = {};
    // when landing on the page, get all orders and refreshes after every 5sec
    $interval(function() {
      return $http.get('/showAll').then(function successCallback(response) {
        $scope.orders = response.data;
      }, function failureCallback(reason) {
      })
    }, 5000);

    //Get data by instrument ID
        $scope.getStatusByID = function(id) {
            $http.get('/instrument/'+id)
                .success(function(data) {
                    $scope.orders = data;
                })
                .error(function(data) {
                    console.log('Error: ' + data);
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
