// PROFILE

// $(document).ready(function() {
//     var panels = $('.user-infos');
//     var panelsButton = $('.dropdown-user');
//     panels.hide();
//
//     //Click dropdown
//     panelsButton.click(function() {
//         //get data-for attribute
//         var dataFor = $(this).attr('data-for');
//         var idFor = $(dataFor);
//
//         //current button
//         var currentButton = $(this);
//         idFor.slideToggle(400, function() {
//             //Completed slidetoggle
//             if(idFor.is(':visible'))
//             {
//                 currentButton.html('<i class="glyphicon glyphicon-chevron-up text-muted"></i>');
//             }
//             else
//             {
//                 currentButton.html('<i class="glyphicon glyphicon-chevron-down text-muted"></i>');
//             }
//         })
//     });
//
//
//     $('[data-toggle="tooltip"]').tooltip();
//
//     $('button').click(function(e) {
//         e.preventDefault();
//         alert("This is a demo.\n :-)");
//     });



    function readURL(input){
      if(input.files && input.files[0]){
        var reader = new FileReader();

        reader.onload = function(e){
          console.log('this worked')
          console.log(e)
          console.log(reader.result)
          var fieldInput = document.getElementById('inputFileToLoad');
          fieldInput.value = reader.result;
        }
        reader.readAsDataURL(input.files[0])
      }
    }
