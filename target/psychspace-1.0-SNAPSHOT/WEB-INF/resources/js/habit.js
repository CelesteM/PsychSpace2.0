$(document).ready(function () {

    $(".ps-modal-type-comment").addClass("pushToBack");
    placeholderPositive();


    $(".btn-cue-add").on("click", addCueModalShow);
    $(".btn-cue-edit").on("click", editCueModalShow);

    $(".btn-reward-add").on("click", addRewardModalShow);
    $(".btn-reward-edit").on("click", editRewardModalShow);

    $(".btn-cue-positive").on("click", setTypePositive);
    $(".btn-cue-negative").on("click", setTypeNegative);

    $(".ps-type-close").on("click", onModalClose);


    // For habit js
    $("#ps-cue").hide();
    $("#ps-rou").show();
    $("#ps-rew").hide();

    var piemenu = new wheelnav('piemenu');
    piemenu.wheelRadius = piemenu.wheelRadius * 0.83;
    piemenu.createWheel();
    piemenu.navItems[0].navSlice.mouseup(function () {
        $("#ps-cue").show();
        $("#ps-rou").hide();
        $("#ps-rew").hide();
    });
    piemenu.navItems[1].navSlice.mouseup(function () {
        $("#ps-cue").hide();
        $("#ps-rou").show();
        $("#ps-rew").hide();
    });
    piemenu.navItems[2].navSlice.mouseup(function () {
        $("#ps-cue").hide();
        $("#ps-rou").hide();
        $("#ps-rew").show();
    });
});


function addCueModalShow() {
    $("#add-cue-modal").removeClass("pushToBack");
    $("#add-cue-modal").addClass("pushToFront");
    $("#add-cue-modal").modal("show");
}

function editCueModalShow() {
    $("#edit-cue-modal").removeClass("pushToBack");
    $("#edit-cue-modal").addClass("pushToFront");
    $("#edit-cue-modal").modal("show");
}

function addRewardModalShow() {
    $("#add-reward-modal").removeClass("pushToBack");
    $("#add-reward-modal").addClass("pushToFront");
    $("#add-reward-modal").modal("show");
}

function editRewardModalShow() {
    $("#edit-reward-modal").removeClass("pushToBack");
    $("#edit-reward-modal").addClass("pushToFront");
    $("#edit-reward-modal").modal("show");
}



function placeholderPositive() {
    $("#cues-cue-name").attr("placeholder","Example: Going to the library.");
    $("#cues-cue-location").attr("placeholder","Example: In the library.");
    $("#cues-cue-time").attr("placeholder","Example: 2:00pm.");
    $("#cues-cue-feelings").attr("placeholder","Example: I felt like I could focus and I was getting work done.");
    $("#cues-cue-environment").attr("placeholder"," Example: Other people who were studying.");
    $("#cues-cue-action").attr("placeholder","Example: I left my phone in my backpack.");
}

function placeholderNegative() {
    $("#cues-cue-name").attr("placeholder","Example: Being alone in my room.");
    $("#cues-cue-location").attr("placeholder","Example: In my room.");
    $("#cues-cue-time").attr("placeholder","Example: 1:00am.");
    $("#cues-cue-feelings").attr("placeholder","Example: I was stressed that I could not understand the material.");
    $("#cues-cue-environment").attr("placeholder"," Example: I was alone.");
    $("#cues-cue-action").attr("placeholder","Example: I received a text.");
}

function setTypePositive() {
    $(".btn-cue-negative").removeClass("ps-btn-primary-active");
    $(".btn-cue-positive").addClass("ps-btn-primary-active");

    $("#add-cue-type").val("Positive");

    placeholderPositive();
}

function setTypeNegative() {
    $(".btn-cue-positive").removeClass("ps-btn-primary-active");
    $(".btn-cue-negative").addClass("ps-btn-primary-active");

    $("#add-cue-type").val("Negative");

    placeholderNegative();
}

function onModalClose(){
    $(".ps-modal-type-comment").removeClass("pushToFront");
    $(".ps-modal-type-comment").addClass("pushToBack");
}
