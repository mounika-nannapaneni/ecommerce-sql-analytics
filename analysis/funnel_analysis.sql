-- Funnel Stage Count (User Level):
-- Business Question: How many unique users progress through each stage of the purchase funnel?

WITH funnel AS (
    SELECT 
        user_id,
        MAX(CASE WHEN event_type = 'view' THEN 1 ELSE 0 END) AS viewed,
        MAX(CASE WHEN event_type = 'cart' THEN 1 ELSE 0 END) AS added_to_cart,
        MAX(CASE WHEN event_type = 'wishlist' THEN 1 ELSE 0 END) AS wishlist,
        MAX(CASE WHEN event_type = 'purchase' THEN 1 ELSE 0 END) AS purchased
    FROM events
    GROUP BY user_id
)

SELECT 
    COUNT(*) AS total_users,
    SUM(viewed) AS users_viewed,
    SUM(wishlist) AS users_wishlist,
    SUM(added_to_cart) AS users_added_to_cart,
    SUM(purchased) AS users_purchased
FROM funnel;


-- Funnel Conversion Rates:
-- Business Question: What are the conversion rates between each stage of the funnel?

WITH funnel AS (
    SELECT 
        user_id,
        MAX(CASE WHEN event_type = 'view' THEN 1 ELSE 0 END) AS viewed,
        MAX(CASE WHEN event_type = 'cart' THEN 1 ELSE 0 END) AS added_to_cart,
        MAX(CASE WHEN event_type = 'wishlist' THEN 1 ELSE 0 END) AS wishlist,
        MAX(CASE WHEN event_type = 'purchase' THEN 1 ELSE 0 END) AS purchased
    FROM events
    GROUP BY user_id
)

SELECT 
    SUM(viewed) AS users_viewed,
    SUM(added_to_cart) AS users_added_to_cart,
    SUM(wishlist) AS wishlist,
    SUM(purchased) AS users_purchased,

    ROUND(SUM(added_to_cart) * 100.0 / NULLIF(SUM(viewed), 0), 2) 
        AS view_to_cart_conversion_rate,

    ROUND(SUM(purchased) * 100.0 / NULLIF(SUM(added_to_cart), 0), 2) 
        AS cart_to_purchase_conversion_rate

FROM funnel;

