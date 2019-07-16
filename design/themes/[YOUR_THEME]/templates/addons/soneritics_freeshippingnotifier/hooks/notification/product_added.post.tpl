{assign var="amount_till_free_shipping" value=fn_soneritics_freeshippingnotifier_get_amount($smarty.session.cart.subtotal)}

{if $amount_till_free_shipping > 0}
    {capture name="amount_till_free_shipping_formatted"}
        {include file="common/price.tpl" value=$amount_till_free_shipping}
    {/capture}

    <div class="soneritics_free_shipping_text soneritics_free_shipping_notification">
        {sprintf(__('addons.soneritics_freeshippingnotifier.message'), "<span>`$smarty.capture.amount_till_free_shipping_formatted`</span>") nofilter}
    </div>
    <div class="clearfix"></div>
{/if}
