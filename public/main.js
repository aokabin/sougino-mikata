var data = {
   companies: [ // 最初のデータは人気順でソート済みとする
      {
         id: 1,
         name: "金城葬祭",
         subtitle: "こだわり納得プラン",
         price: 470238,
         rate_star: 3,
         rate_evaluate: "とても良い",
         opinion_link: "https://www.google.co.jp",
         is_checked: false,
         detail_link: "review.html",
         base: "お棺・ドライアイス・車両・装飾",
         included_options: "お棺・ドライアイス・車両・装飾",
         excluded_options: "お棺・ドライアイス・車両・装飾",
         show: true
      },{
         id: 2,
         name: "池上殿",
         subtitle: "家族一体あったかプラン",
         price: 340157,
         rate_star: 2,
         rate_evaluate: "満足できる",
         opinion_link: "https://www.google.co.jp",
         is_checked: false,
         detail_link: "review.html",
         base: "お棺・ドライアイス・車両・装飾",
         included_options: "お棺・ドライアイス・車両・装飾",
         excluded_options: "お棺・ドライアイス・車両・装飾",
         show: true
      },{
         id: 3,
         name: "平野院",
         subtitle: "シンプルプラン",
         price: 390157,
         rate_star: 1,
         rate_evaluate: "良い",
         opinion_link: "https://www.google.co.jp",
         is_checked: false,
         detail_link: "review.html",
         base: "お棺・ドライアイス・車両・装飾",
         included_options: "お棺・ドライアイス・車両・装飾",
         excluded_options: "お棺・ドライアイス・車両・装飾",
         show: true
      }
   ]
};
riot.mount('search', data);
var filter_data = {
   company_ids: []
};
riot.mount('filter', data);

riot.mount('compare', data);
riot.mount('entry', data);
riot.mount('confirm', data);

var toYenPrice = function(price) {
   return price.toLocaleString()+"円";
}

var toRatingStar = function(rate) {
   var stars = "";
   for(i=rate;i--;) stars += "★";
   return stars;
}

var objArraySort = function(ary, key, order) {
    var reverse = 1;
    if(order && order.toLowerCase() == "desc")
        reverse = -1;
    ary.sort(function(a, b) {
        if(a[key] < b[key])
            return -1 * reverse;
        else if(a[key] == b[key])
            return 0;
        else
            return 1 * reverse;
    });
}

