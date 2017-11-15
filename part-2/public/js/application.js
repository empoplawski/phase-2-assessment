$(document).ready(function() {
  $("#new-post-form").on("submit", function(event){
    event.preventDefault();
    
    var $form = $(this)
    
    var url = $form.attr('action');
    var method = $form.attr('method');
    var data = $form.serialize();

    console.log(url)
    console.log(method)
    console.log(data)

    var request = $.ajax({
      url: url,
      method: method,
      data: data
    })

    request.done(function(response){

      $("#post-list").prepend(response)
      $form.trigger("reset")
    })

    request.fail(function(response){
      console.log(response.responseText)
    })
  })


  $("#post-list").on("click", ".js--like-comment-button", function(event){
    event.preventDefault();

    var $button = $(this)
    var $form = $button.closest("form")

    var url = $form.attr('action');
    var method = "put"

    var request = $.ajax({
    url: url,
    method: method,

    })

    request.done(function(response){

      $form.closest('article').find('.js--post-likes').text(response.points);

    })

  })

})
