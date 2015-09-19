// SEARCH FORM
function lookup(inputString) {
   if(inputString.length == 0) {
      $('#suggestions').fadeOut(); // Hide the suggestions box
   } else {
      $.post("/search", {queryString: ""+inputString+""}, function(data) { // Do an AJAX call
        // console.log(data);
        $('#suggestions').fadeIn(); // Show the suggestions box
        var searchTerm = inputString;
        var doc = document.implementation.createHTMLDocument("New Document");
        var div = doc.createElement("div");
        div.className = 'this-search-class';
        div.id = 'search-content';
        div.innerHTML = data;
        try {
          doc.body.appendChild(div);
        } catch(e) {
          console.log(e);
        }

        var el = doc.getElementById ("searchresults").childNodes;
        console.log(el);
        for (i = 0; i < el.length; i++) { 
          if(el[i].tagName=="A" && el[i].innerHTML!= "NO RESULTS FOUND")
          {
            var toBeReplaced = doc.getElementById ("searchresults").childNodes[i].childNodes[1].innerHTML;
            var element = doc.getElementById ("searchresults").childNodes[i].childNodes[1].innerHTML = accent_folded_hilite(toBeReplaced, searchTerm);
            // console.log(element);
          }
          // console.log(el[i].tagName !=null ? el[i] : "null");
        }
        // console.log("AFTER");
        // console.log(doc);
        $('#suggestions').html(doc.getElementById ("searchresults"));// Fill the suggestions box
      });
   }
}