{assign var="amount_till_free_shipping" value="15.95"}

{if $amount_till_free_shipping > 0}
    <div class="soneritics_free_shipping_text soneritics_free_shipping_notification">
        {sprintf(__('addons.soneritics_freeshippingnotifier.message'), "<span>&euro; $amount_till_free_shipping</span>") nofilter}
    </div>
    <div class="clearfix"></div>
{/if}
