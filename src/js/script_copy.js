function copiaTesto() {
    var testo = "Eℝcαi𝓷o#4311";
    var tempInput = document.createElement("input");
    document.body.appendChild(tempInput);
    tempInput.value = testo;
    tempInput.select();
    document.execCommand("copy");
    document.body.removeChild(tempInput);
    alert("Testo copiato: " + testo);
}