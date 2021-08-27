function handleFiles(files)
{
    var listImg = document.getElementById('fileList');
    if (!files.length) { 
        return;
    }
    else
    {
        var list = document.createElement("ul");
        list.id="delete"
        listImg.appendChild(list);
        for (var i=0; i < files.length; i++) {
            var li = document.createElement("li");
            list.appendChild(li);
            
            var img = document.createElement("img");
            img.src = window.URL.createObjectURL(files[i]);;
            
            img.onload = function() {
            window.URL.revokeObjectURL(this.src);
            }
            li.appendChild(img);
            
            // var info = document.createElement("span");
            // info.innerHTML = files[i].name + ": " + files[i].size + " bytes";
            // li.appendChild(info);
        }
    }
}