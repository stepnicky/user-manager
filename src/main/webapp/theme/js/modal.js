const deleteHref = document.getElementById('delete').getAttribute("href");
const htmlString = "<button id=\"deleteButton\" type=\"button\" class=\"btn btn-primary\">" +
    "<a style='color: white; text-decoration: none' href=" + `${deleteHref}` + ">Tak</a>" +
    "</button>" +
    "<button type=\"button\" class=\"btn btn-secondary\" data-dismiss=\"modal\">Nie</button>";
const modalFooter = document.getElementById("modalFooter");
modalFooter.innerHTML = htmlString;

