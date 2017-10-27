
<compare>

<div class="wrap">
    <header>
        <h2>比較</h2><button onclick={ reset }>リセット</button>
        <ul class="search-param-list">
            <li>愛知県</li>
            <li>名古屋市</li>
            <li>家族葬(30名)</li>
            <li>予算:～50万</li>
        </ul>
    </header>
    <main class="compare">
        <form action="reserve.html" method="get" name="compare">
            <div class="compare-table">
                <div class="compare-table-area">
                    <!--col 1-->
                    <div class="col" each={ shown_companies }>
                        <div class="check-area row">
                            <span><input type="checkbox" checked={ show } onclick={ parent.hide } name={ id }></span>
                        </div>
                        <div class="company-info row">
                            <h2 class="company-name">{ name }</h2>
                            <h3 class="plan-name">{ subtitle }</h3>
                        </div>
                        <div class="price-area row">
                            <h4 class="price">{ price }</h4>
                            <div class="review-area">
                                <div>
                                    <span class="review-cnt">{ rate_star }</span>
                                    <span class="review-title">{ rate_evaluate }</span>
                                </div>
                                <div><a href="{ opinion_link }" class="review-href">口コミ</a></div>
                            </div>
                        </div>
                        <div class="plan-require row">
                            <h4>必須品目</h4>
                            <div class="require-items">
                                { base }
                            </div>
                        </div>
                        <div class="plan-base row">
                            <h4>基本</h4>
                            <div class="option-items">
                                { included_options }
                            </div>
                        </div>
                        <div class="plan-option row">
                            <h4>オプション</h4>
                            <div class="option-items">
                                { excluded_options }
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </main>
</div>

  <script>
    this.companies = opts.companies
    this.shown_companies = JSON.parse(JSON.stringify(opts.companies))

    hide(e) {
        var checked_company = e.item
        checked_company.show = !checked_company.show
        this.shown_companies = this.shown_companies.filter(function(item) {
            return item.show
        })
        return true
    }

    reset(e){
        this.shown_companies = this.companies
    }

  </script>

</compare>
