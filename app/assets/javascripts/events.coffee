# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
@EventsCtrl = ($scope) ->
  $scope.entries=[
    {name: "Larry"}
    {name: "Curly"}
    {name: "Moe"}
  ]

  $scope.addEntry = ->
    $scope.entries.push($scope.newEntry)
    $scope.newEntry= {}

  $scope.drawWinner = ->
    entry =$scope.entries[Math.floor(Math.random()*$scope.entries.length)]
    entry.winner = true
    $scope.lastWinner=entry