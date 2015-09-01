// create angular app
	angular.module('validationApp', []);

	// create angular controller
	angular.module('validationApp').controller('mainController', function($scope) {

		$scope.message = "告訴我們你的名字吧！";

	});

	// function mainController($scope) {
	// 	$scope.name = "Anna";
	// }



// 	angular.module('app', [])
// .controller('PasswordController', function PasswordController($scope) {
//   $scope.password = '';
//   $scope.grade = function() {
//     var size = $scope.password.length;
//     if (size > 8) {
//       $scope.strength = 'strong';
//     } else if (size > 3) {
//       $scope.strength = 'medium';
//     } else {
//       $scope.strength = 'weak';
//     }
//   };
// });