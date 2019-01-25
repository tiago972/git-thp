/*méthode setTimeout https://www.w3schools.com/jsref/met_win_settimeout.asp associée à confirm https://www.w3schools.com/jsref/met_win_confirm.asp dans une fonction*/
setTimeout(function() {
	let toPorn;
	toPorn = confirm("Hey le site xxxvidsxxx est trop bien. Viens dessus stp please");
	if (toPorn) 
		window.location.href=("https://www.youtube.com/watch?v=dQw4w9WgXcQ");	 
 }, 10000);

/*POUR ALLER PLUS LOIN: 
information trouvée sur https://stackoverflow.com/questions/14292997/changing-style-sheet-javascript mélangée à https://developer.mozilla.org/fr/docs/Apprendre/Commencer_avec_le_web/Les_bases_JavaScript */

function switchSheet(sheet) {
	document.getElementById('page_style').setAttribute("href", sheet);
}; /*fonction qui permettra directement de changer l'attribute des éléments dont l'id est page_style (e.g le CSS)*/

let myButton = document.querySelector("button");

myButton.addEventListener('click', function(){
let style = document.getElementById('page_style').getAttribute("href");
	if (style == "style.css")
		switchSheet("style2.css");
	else	
		switchSheet("style.css");
});/*fonction qui réagit au clic et qui évalue l'état actuel de la page, changeant le style selon le style existant*/
