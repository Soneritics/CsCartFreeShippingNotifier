{assign var="amount_till_free_shipping" value=fn_soneritics_freeshippingnotifier_get_amount($cart.subtotal, $cart.shipping_cost)}

{if $amount_till_free_shipping > 0}
    {capture name="amount_till_free_shipping_formatted"}
        {include file="common/price.tpl" value=$amount_till_free_shipping}
    {/capture}

    <div class="soneritics_free_shipping_cart cart-top-border">
        <ul class="ty-cart-statistic ty-statistic-list">
            <li class="ty-cart-statistic__item ty-statistic-list-shipping-method">
                <div class="soneritics_free_shipping_text">
                    {sprintf(__('addons.soneritics_freeshippingnotifier.message'), "<span>`$smarty.capture.amount_till_free_shipping_formatted`</span>") nofilter}
                </div>
            </li>
        </ul>
        <div class="clearfix"></div>
    </div>
{/if}
