var module = angular.module('Raffler', ["ngResource"]);

module.factory('User', ['$resource',
  function($resource){
    return $resource('/users/:id.json', {id: "@id"}, {update: {method: "PUT"}})
  }
]);

module.controller("RaffleCtrl", ['$scope', 'User',
  function($scope, User) {
    $scope.users = User.query()

    $scope.addUser = function(){
      if ($scope.newUser && $scope.newUser.name) {
        user = User.save($scope.newUser)
        $scope.users.push(user)
        $scope.newUser = {};
      }
      return false;
    };

    $scope.drawWinner = function(){
      var user, pool = [];

      angular.forEach($scope.users, function(user) {
        if (!user.winner) {
          return pool.push(user);
        }
      });

      if (pool.length > 0) {
        user = pool[Math.floor(Math.random() * pool.length)];
      }else{
        user = $scope.users[Math.floor(Math.random()*$scope.users.length)];
      }
      user.winner = true;
      user.$update();
      $scope.lastWinner = user;
    };
  }
]);
