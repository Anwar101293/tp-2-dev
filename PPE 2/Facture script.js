function calculate() {
    var total = 0;
    var sousTotal = 0;
  
    var listePrix = document.getElementsByClassName("prix");
    var listeQte = document.getElementsByClassName("qte");
    var listeTtl = document.getElementsByClassName("totalLigne");
    var listeSoustotal = document.getElementById("soustotal");
    var listesremise = document.getElementById('sremise');
    var listeremise = document.getElementById('remise');
    var listetauximpo = document.getElementById('tauximpo');
    var listetaxetotal = document.getElementById('taxetotal');
    var listeexpi = document.getElementById('expi');
    var listetotalall = document.getElementById('totalall');
  
    for (var i = 0; i < listePrix.length; i++) {
      listeTtl[i].value = parseInt(listeQte[i].value) * parseFloat(listePrix[i].value);
      total += parseFloat(listeTtl[i].value);
      document.getElementsByClassName("total")[0].innerHTML = total.toFixed(2);
      sousTotal = total;
    }
  
    listesremise.value = sousTotal - (sousTotal * (parseFloat(listeremise.value) / 100));
    listetaxetotal.value = (sousTotal * (parseFloat(listetauximpo.value) / 100));
    listetotalall.value = parseFloat(listesremise.value) + parseFloat(listetaxetotal.value) + parseFloat(listeexpi.value);
  }
  
  function ajouterLigne(){
    var newLi= document.getElementById("modeleLigne").cloneNode(true);
    var lastLi= document.getElementById("lastLigne");

    var pere= document.getElementById("table_descrip").firstChild.nextSibling;
    pere.insertBefore(newLi,lastLi);

}
function supprimerLigne(){
    document.getElementById("table_descrip").deleteRow(-1);
}


function remplir() {
    const tabDesc = ["portable", "Bureau", "Ram 8 GO", "Clef USB 16 GO", "Souris", "ecran 17 pouces"];
  
    const champsDesc = document.querySelectorAll("#table_descrip input[name='desc']");
  
    champsDesc.forEach(champDesc => {
      const indexAleatoire = Math.floor(Math.random() * tabDesc.length);
      const motAleatoire = tabDesc[indexAleatoire];
      champDesc.value = motAleatoire;
    });
  }
  
  function remplirNombres() {
    const remplirNombreInputs = document.getElementsByClassName("prix");
    const qteInputs = document.getElementsByClassName("qte");
    
    for (let i = 0; i < remplirNombreInputs.length; i++) {
      const randomNombre = Math.floor(Math.random() * 50) + 1;
      remplirNombreInputs[i].value = randomNombre;
    }
  
    for (let i = 0; i < qteInputs.length; i++) {
      const randomQte = Math.floor(Math.random() * 10) + 1;
      qteInputs[i].value = randomQte;
    }
  }

