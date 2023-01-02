function calcul_moyenne()
{
    var note1= prompt("donner ta premiere note: ") ;
    var note2= prompt("donner ta deuxieme note: ") ;
    var note2= prompt("donner ta troisieme note: ") ;

    var somme = Number(note1)+Number(note2)+Number(note3);

    document.write ("Voici la somme: " + somme + "<br>");
    var moyenne= somme/3;

    document.write ("Voici la moyenne: " + somme + "<br>");

    if (moyenne<10)
    {
        document.write("Vous êtes redoublant");
    }
    else
    { 
        document.write("vous êtes admis");

    }
}    

function test_age()
{
    var age=prompt("donnez votre age")
    if (age<18)
    { 
        document.write("Vous êtes mineur ");
        document.body.style.background ="red";
    }
    else
    { 
        document.write("Vous êtes majeur");
        document.body.style.background = "green";
    }

}
function simple_affichage()
{
    var nom = prompt("donner votre nom")
    var prenom = prompt("donner votre prénom");

    document.write("<div style= 'margin:auto; width:300px ; border:2px solid blue;'>");
    document.write("bonjour     " + prenom + "    " + nom);
    document.write("</div>")

}
function test_couleur()
{
    var c = prompt("donner une coueleur");
    if( c== "rouge" || c == "ROUGE" || c=="R")
    document.body.style.background = "red" ; 
    else if (c == "bleu" || c == "BLEU")
    document.body.style.background = "blue" ;
    else if (c == "jaune" || c == "JAUNE")
    document.body.style.background = "yellow";
    else
    document.write("couleur non comprise"); 
}