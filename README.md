# CsCart Free Shipping Notifier
Notifications to the customer on how much more to spend before getting free shipping.

## Setup
1) Upload the plugin
2) Install the plugin via the CsCart plugins page
3) Go to the plugin settings and enter the amount that gives customers free shipping

### Optional: Message at the cart page
When you also want to show the message at the cart page, open the following file:
```/themes/your-theme/templates/views/checkout/components/cart_content.tpl```

Next, find the following line:
```{include file="views/checkout/components/checkout_totals.tpl" location="cart"}```

Insert a line below and add the following:

```
{hook name="checkout:cart"}
{/hook}
```

### Optional: Message at the product added notification window
When you also want to show the message at the notification window when a customer adds a product,
open the following file:
```/themes/your-theme/templates/views/products/components/notification.tpl```

Next, find the following line:
```<div class="ty-product-notification__buttons clearfix">```

Insert a line below and add the following:

```
{hook name="notification:product_added"}
{/hook}
```