//チェックボックス変更イベントハンドラ
$(document).on("change", "input[name=select-item]", function(){
    if ($(this).is(':checked')) {
        $(this).addClass('checked');
    } else {
        $(this).removeClass('checked');
    }
    compareBtnJudge();
});

//現在チェックされているアイテム数を数える
function checkedCounting() {
    var checkedCnt = 0;
    $("input[name=select-item]").each(function () {
        if ($(this).is(':checked')) {
            checkedCnt++;
        }
    });
    console.log('checked: ' + checkedCnt);
    return checkedCnt;
}

//比較ボタンの有効・無効判定
function compareBtnJudge() {
    if(checkedCounting() >= 2){
        $("#compare-btn").removeAttr("disabled");
        $("#compare-btn").removeClass("disabled");
    }else{
        $("#compare-btn").attr("disabled", 'disabled')
        $("#compare-btn").addClass("disabled");
    }
}
