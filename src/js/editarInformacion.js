function previewIMG(event)
{
    var input = event.target.files[0];
    var reader = new FileReader();
    reader.onload = function(){
        var results = reader.result;
        var caracteres = results.toString();
        var perfilIMG = document.querySelector('.img-cuenta');
        perfilIMG.style.backgroundImage = 'url("'+caracteres+'")';
    }
    reader.readAsDataURL(input);
}