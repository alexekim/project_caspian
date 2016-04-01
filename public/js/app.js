// PROFILE PIC UPLOAD
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
