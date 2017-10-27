var data = {
   title: '葬儀社名',
   companies: [
      {
         id: 1,
         name: "ティア大幸",
         price: "¥280,000",
         base: [
            "祭壇","宅送布団","拾骨セット","ドライアイス(1日)","棺"
         ],
         included_options: [
            "ドライアイス(1日)", "ドライアイス(1日)", "ドライアイス(1日)", "ドライアイス(1日)", "ドライアイス(1日)"
         ],
         excluded_options: [
            "ネックレス", "ネックレス", "ネックレス", "ネックレス", "ネックレス"
         ],
         show: true
      },
      {
         id: 2,
         name: "ベルコ",
         price: "¥220,000",
         base: [
            "祭壇","宅送布団","拾骨セット","ドライアイス(1日)","棺"
         ],
         included_options: [
            "ネックレス", "ネックレス", "ネックレス", "ネックレス", "ネックレス"
         ],
         excluded_options: [
            "ネックレス", "ネックレス", "ネックレス", "ネックレス", "ネックレス"
         ],
         show: true
      },
      {
         id: 3,
         name: "紫雲殿",
         price: "¥180,000",
         base: [
            "棺","棺","棺","棺","棺","棺","棺","棺","棺","棺"
         ],
         included_options: [
            "ネックレス", "ネックレス", "ネックレス", "ネックレス", "ネックレス"
         ],
         excluded_options: [
            "ネックレス", "ネックレス", "ネックレス", "ネックレス", "ネックレス"
         ],
         show: true
      },
      {
         id: 4,
         name: "紫雲殿",
         price: "¥180,000",
         base: [
            "棺","棺","棺","棺","棺","棺","棺","棺","棺","棺"
         ],
         included_options: [
            "ネックレス", "ネックレス", "ネックレス", "ネックレス", "ネックレス"
         ],
         excluded_options: [
            "ネックレス", "ネックレス", "ネックレス", "ネックレス", "ネックレス"
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
riot.mount('search', data);
var data = {
   company_ids: []
};
riot.mount('filter', data);
var data = {
   title: '葬儀社名',
   companies: [
      {
         id: 1,
         name: "ティア大幸",
         price: "¥280,000",
         base: [
            "祭壇","宅送布団","拾骨セット","ドライアイス(1日)","棺"
         ],
         included_options: [
            "ドライアイス(1日)", "ドライアイス(1日)", "ドライアイス(1日)", "ドライアイス(1日)", "ドライアイス(1日)"
         ],
         excluded_options: [
            "ネックレス", "ネックレス", "ネックレス", "ネックレス", "ネックレス"
         ],
         show: true
      },
      {
         id: 2,
         name: "ベルコ",
         price: "¥220,000",
         base: [
            "祭壇","宅送布団","拾骨セット","ドライアイス(1日)","棺"
         ],
         included_options: [
            "ネックレス", "ネックレス", "ネックレス", "ネックレス", "ネックレス"
         ],
         excluded_options: [
            "ネックレス", "ネックレス", "ネックレス", "ネックレス", "ネックレス"
         ],
         show: true
      },
      {
         id: 3,
         name: "紫雲殿",
         price: "¥180,000",
         base: [
            "棺","棺","棺","棺","棺","棺","棺","棺","棺","棺"
         ],
         included_options: [
            "ネックレス", "ネックレス", "ネックレス", "ネックレス", "ネックレス"
         ],
         excluded_options: [
            "ネックレス", "ネックレス", "ネックレス", "ネックレス", "ネックレス"
         ],
         show: true
      },
      {
         id: 4,
         name: "紫雲殿",
         price: "¥180,000",
         base: [
            "棺","棺","棺","棺","棺","棺","棺","棺","棺","棺"
         ],
         included_options: [
            "ネックレス", "ネックレス", "ネックレス", "ネックレス", "ネックレス"
         ],
         excluded_options: [
            "ネックレス", "ネックレス", "ネックレス", "ネックレス", "ネックレス"
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
