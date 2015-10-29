window.onunload = function() { };
var tacoYelp = angular.module('TacoYelp', ['restangular'])

tacoYelp.controller('storesCtrl', ['$scope', 'Restangular',
    function($scope, Restangular) {
      console.log(Restangular);
      Restangular.addResponseInterceptor(function(res, op) {
        if (op === 'getList') {
          console.log('here\'s the res!!!', res);
        } else {
          console.log(op);
          console.log(res);
        }

        return res;
      })





      $scope.stores = Restangular.all('stores').getList().$object;
    }

])
