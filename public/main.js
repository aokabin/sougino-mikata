var search_data = {
   companies: [ // 最初のデータは人気順でソート済みとする
      {
         id: 1,
         name: "金城葬祭",
         subtitle: "こだわり納得プラン",
         price: 570238,
         rate_star: 3,
         rate_evaluate: "とても良い",
         opinion_link: "https://www.google.co.jp",
         is_checked: true,
         detail_link: "https://www.google.co.jp"

      },{
         id: 2,
         name: "池上殿",
         subtitle: "シンプルプラン",
         price: 570237,
         rate_star: 2,
         rate_evaluate: "とても良い",
         opinion_link: "https://www.google.co.jp",
         is_checked: true,
         detail_link: "https://www.google.co.jp"
      }
   ]
};
riot.mount('search', search_data);
var data = {
   company_ids: []
};
riot.mount('filter', data);
var data = {
   title: '葬儀社名',
   companies: [
      {
         id: 1,
         name: "金城葬祭",
         subtitle: "こだわり納得プラン",
         price: "570,238円",
         rate_star: "★★★",
         rate_evaluate: "とても良い",
         opinion_link: "",
         base: "お棺・ドライアイス・車両・装飾",
         included_options: "お棺・ドライアイス・車両・装飾",
         excluded_options: "お棺・ドライアイス・車両・装飾",
         show: true
      },
      {
         id: 2,
         name: "金城葬祭",
         subtitle: "こだわり納得プラン",
         price: "570,238円",
         rate_star: "★★★",
         rate_opinion: "とても良い",
         opinion_link: "",
         base: [
            "お棺", "ドライアイス", "車両", "装飾"
         ],
         included_options: [
            "お棺", "ドライアイス", "車両", "装飾"
         ],
         excluded_options: [
            "お棺", "ドライアイス", "車両", "装飾"
         ],
         show: true
      },
      {
         id: 3,
         name: "金城葬祭",
         subtitle: "こだわり納得プラン",
         price: "570,238円",
         rate_star: "★★★",
         rate_opinion: "とても良い",
         opinion_link: "",
         base: [
            "お棺", "ドライアイス", "車両", "装飾"
         ],
         included_options: [
            "お棺", "ドライアイス", "車両", "装飾"
         ],
         excluded_options: [
            "お棺", "ドライアイス", "車両", "装飾"
         ],
         show: true
      }
   ],
   items: [
      { title: 'Avoid excessive caffeine', show: true },
      { title: 'Hidden item',  show: true },
      { title: 'Be less provocative', show: true },
      { title: 'Be nice to people', show: true }
   ]
};
riot.mount('compare', data);
riot.mount('entry', data);
riot.mount('confirm', data);

var toYenPrice = function(price) {
   return price.toLocaleString()+"円";
}

var toRatingStar = function(rate) {
   var stars = "";;
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
