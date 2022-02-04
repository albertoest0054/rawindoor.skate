function parse_XML(xmlContent)
{
    var IDs = new Array();

    // parse XML content string to XML DOM object
    var parser = new DOMParser();
    var xmlDoc = parser.parseFromString(xmlContent, 'text/xml');

    var codigo = xmlDoc.getElementsByTagName('codigo')[0].childNodes[0].nodeValue;
    var nivel = xmlDoc.getElementsByTagName('nivel')[0].childNodes[0].nodeValue;
    var curso = xmlDoc.getElementsByTagName('curso')[0].childNodes[0].nodeValue;
    var plazas = xmlDoc.getElementsByTagName('plazas')[0].childNodes[0].nodeValue;

    // Create text:

    let string = "<h3>" + codigo  + "</h3>" 
                 + "<p> CURSO: <a href='http://localhost:4000/" + curso + "'>" + nivel + "</a></p>"
                 + "<p> PLAZAS LIBRES: " + plazas + "</p>";

    // return;

    return string;
}