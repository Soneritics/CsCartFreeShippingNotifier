{assign var="amount_till_free_shipping" value="15.95"}

{if $amount_till_free_shipping > 0}
    <div class="soneritics_free_shipping_cart cart-top-border">
        <ul class="ty-cart-statistic ty-statistic-list">
            <li class="ty-cart-statistic__item ty-statistic-list-shipping-method">
                <div class="soneritics_free_shipping_text">
                    {sprintf(__('addons.soneritics_freeshippingnotifier.message'), "<span>&euro; $amount_till_free_shipping</span>") nofilter}
                </div>
            </li>
        </ul>
        <div class="clearfix"></div>
    </div>
{/if}
