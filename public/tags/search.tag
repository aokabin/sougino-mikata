
<search>
    <main class="search">
        <ul class="plan-sort-btn-list">
            <li>
                <input type="radio" name="sort-item" id="radio-1" value="1" checked onclick={ sort }>
                <label for="radio-1">人気順</label>
            </li>
            <li>
                <input type="radio" name="sort-item" id="radio-2" value="2" onclick={ sort }>
                <label for="radio-2">安い順</label>
            </li>
            <li>
                <input type="radio" name="sort-item" id="radio-3" value="3" onclick={ sort }>
                <label for="radio-3">近い順</label>
            </li>
        </ul>

        <section class="search-result">
            <ul class="search-result-list">
                <li each={ companies }>
                    <div class="check-area">
                        <input type="checkbox" name="select-item" id="select-item-{ id }" value={ id } onclick={ check }>
                        <label for="select-item-{ id }">&nbsp;</label>
                    </div>
                    <div class="plan-info">
                        <div class="item-top-area">
                            <div class="left">
                                <img src="./img/plan1-thumb.jpg" alt="">
                            </div>
                            <div class="price-area">
                                <h4 class="price">{ toYenPrice(price) }</h4>
                                <div class="review-area">
                                    <div>
                                        <span class="review-cnt">{ toRatingStar(rate_star) }</span>
                                        <span class="review-title">{ rate_evaluate }</span>
                                    </div>
                                    <div><a href="{ opinion_link }" class="review-href">口コミ</a></div>
                                </div>
                            </div>
                        </div>
                        <div class="company-info">
                            <div class="left">
                                <h2 class="company-name">{ name }</h2>
                                <h3 class="plan-name">{ subtitle }</h3>
                            </div>
                            <div class="right">
                                <a class="detail-link" href={ detail_link }>
                                    詳細
                                </a>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
        </section>
    </main>

    <footer>
        <button id="compare-btn" onclick="location.href='compare.html'" class={ can_compare? "" : "disabled" } disabled={ can_compare? "" : "disabled" }>
            <i class="icon"></i>プランを比較
        </button>
    </footer>

  <script>
    this.companies = opts.companies

    this.checked_companies = []

    this.can_compare = false

    sort(e) {
        var sort_type = e.target.value
        switch (sort_type){
          case "1":
            objArraySort(this.companies, "rate_star", "desc")
            break;
          case "2":
            objArraySort(this.companies, "price", "asc")
            break;
          case "3":
            objArraySort(this.companies, "rate_star", "desc")
            break;
        }
    }

    check(e) {
        var company_id = e.target.value
        this.companies = this.companies.filter(function(item, index){
            if (item.id == company_id) {
                item.is_checked = !item.is_checked
            }
            return true
        })
        console.log(this.companies)

        var compares = this.companies.filter(function(item, index){
            if (item.is_checked) {
                return true
            }
        })

        if (compares.length >= 2) {
            this.can_compare = true
        } else {
            this.can_compare = false
        }

    }

  </script>

</search>
