$(document).ready(function () {
    $("#MainContent_btnCloseEditNumber").click(function () {
        $("#MainContent_dEdit").css("display", "none");
    });
});

function ShowEditPanel(id, text, prize) {
    $("#MainContent_dEdit").css("display", "block");
    $("#MainContent_lblNumber").text(text);
    $("#MainContent_lblPrize").text(prize);
    $("#MainContent_hfEditNumberID").val(id);
    $("#MainContent_hfEditNumber").val(text);
}


