var actualizar = document.querySelectorAll("[data-reload]");

var idioma = {
	en: {
		history: "History",
		team: "About us",
		clients: "Our clients",
		language: "Language",
		consultancy: "Consultancy",
		contact: "Contact"
	}
};

if (window.location.hash) {
	if (window.location.hash === "#en"){
		history.textContent = idioma.en.history;
		team.textContent = idioma.en.team;
		clients.textContent = idioma.en.clients;
		language.textContent = idioma.en.language;
		consultancy.textContent = idioma.en.consultancy;
		contact.textContent = idioma.en.contact;
	};
}

for (i = 0; i < actualizar.length; i++) {
	actualizar[i].onclick = function() {
		location.reload(true);
	}
}