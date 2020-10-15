WITH payments AS (
    SELECT
        id
        , orderid AS order_id
        , paymentmethod AS payment_method
        , status
        , amount / 100.0 AS amount
        , created AS created_at
    FROM raw.stripe.payment
)
SELECT * FROM payments