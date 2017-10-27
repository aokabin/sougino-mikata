
<search>
    
    <section class="search-result">
        <ul class="search-result-list">
            <li>
                <div class="check-area">
                    <input type="checkbox" name="select-item" id="select-item-1" value="1">
                    <label for="select-item-1">V</label>
                </div>
                <div class="plan-info">
                    <div class="item-top-area">
                        <div class="left">
                            <img src="./img/plan1-thumb.jpg" alt="">
                        </div>
                        <div class="price-area">
                            <h4 class="price">570,238円</h4>
                            <div class="review-area">
                                <div>
                                    <span class="review-cnt">★★★</span>
                                    <span class="review-title">とても良い</span>
                                </div>
                                <div><a href="" class="review-href">口コミ</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="company-info">
                        <div class="left">
                            <h2 class="company-name">金城葬祭</h2>
                            <h3 class="plan-name">こだわり納得プラン</h3>
                        </div>
                        <div class="right">
                            <a class="detail-link" href="">
                                詳細
                            </a>
                        </div>
                    </div>
                </div>
            </li>
        </ul>
    </section>

  <script>
    this.companies = opts.companies
    this.items = opts.items
    this.shown_items = JSON.parse(JSON.stringify(opts.items))

    hide(e) {
        var checked_item = e.item
        checked_item.show = !checked_item.show
        this.shown_items = this.shown_items.filter(function(item) {
            return item.show
        })
        return true
    }

    reset(e){
        this.shown_items = opts.items
    }

  </script>

</search>
