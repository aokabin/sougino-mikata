
<confirm>

    <div each={ shown_items }>
        <input type="checkbox" checked={ show } onclick={ parent.hide } >
        <h1>{ title }</h1>
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

</confirm>
