<?php
if (!defined('BOOTSTRAP')) { die('Access denied'); }

/**
 * @param $subtotal
 * @param int|null $shippingcost
 * @return float
 */
function fn_soneritics_freeshippingnotifier_get_amount($subtotal, $shippingcost = null)
{
    // If the shipping cost are known and 0, then you already have free shipping
    if ($shippingcost !== null && $shippingcost == 0) {
        return 0;
    }

    $freeshipping = \Tygh\Registry::get('addons.soneritics_freeshippingnotifier.amount');
    return max(0, $freeshipping - $subtotal);
}
