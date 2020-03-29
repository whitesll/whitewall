$(document).ready(function () {
  var sides = "left";
  $(".sidebar." + sides).sidebar({side: sides});
  
  $(".btn[data-action]").on("click", function () {
      var $this = $(this);
      var action = $this.attr("data-action");
      var side = $this.attr("data-side");
      $(".sidebar." + side).trigger("sidebar:" + action);
      return false;
  });
});