angular
  .module('app')
  .factory('Act', function ($resource) {

    var Act = $resource('http://localhost:3000/api/v1/acts/:id.json', {id: '@id'},{
      update: {
        method: 'PUT'
      }
    });
    return Act;
    });
