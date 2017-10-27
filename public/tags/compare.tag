
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

    <button onclick={ reset }>リセット</button>

    <main class="compare">
        <form action="reserve.html" method="get" name="compare">
            <table class="compare-table">
                <tbody>
                    <!--チェック -->
                    <tr class="row-check">
                        <th>比較する</th>
                        <td each={ val, i in companies }><input type="checkbox" checked={val.show} onclick={ parent.hide } name={ val.id }></td>
                    </tr>
                    <!--社名-->
                    <tr class="row-company_name">
                        <th>葬儀社名</th>
                        <td each={ companies }>{ name }</td>
                    </tr>
                    <!--価格-->
                    <tr class="row-price">
                        <th>価格</th>
                        <td each={ companies }>{ price }</td>
                    </tr>
                    <!--基本サービス-->
                    <tr class="row-base_service">
                        <th>基本</th>
                        <td each={ companies }>
                            <ul>
                                <li each={ item in base }>{ item }</li>
                            </ul>
                        </td>
                    </tr>
                    <!--含むオプション-->
                    <tr class="row-opt">
                        <th>付加<br>オプション</th>
                        <td each={ companies }>
                            <ul>
                                <li each={ item in included_options }>{ item }</li>
                            </ul>
                        </td>
                    </tr>
                    <!--含まないオプション-->
                    <tr class="row-ignore_opt">
                        <th>含まない<br>オプション</th>
                        <td each={ companies }>
                            <ul>
                                <li each={ item in excluded_options }>{ item }</li>
                            </ul>
                        </td>
                    </tr>
                    <tr class="row-button">
                        <th></th>
                        <td each={ companies }>
                            <input type="hidden">
                            <button type="button" value={ id }>予約フォームへ</button>
                        </td>
                    </tr>
              </tbody>
            </table>
        </form>
    </main>

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
