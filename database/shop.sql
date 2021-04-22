-- "Host=localhost;Port=5432;Database=northwind;Username=postgres;Password=postgres"

DROP TABLE IF EXISTS shop_orders;
DROP TABLE IF EXISTS shop_order_details;
DROP TABLE IF EXISTS shop_customers;
DROP TABLE IF EXISTS shop_movie_prices;

 

-- DROP TABLE public.shop_customer;

CREATE TABLE public.shop_customers
(
    id bigint NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1 ),
    user_id text COLLATE pg_catalog."default",
    name character varying(40) COLLATE pg_catalog."default",
    street character varying(60) COLLATE pg_catalog."default",
    city character varying(15) COLLATE pg_catalog."default",
    postal_code character varying(15) COLLATE pg_catalog."default",
    country character varying(15) COLLATE pg_catalog."default",
    CONSTRAINT customer_pkey PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.shop_customers
    OWNER to postgres;



-- DROP TABLE public.shop_order;

CREATE TABLE public.shop_orders
(
    id bigint NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1 ),
    customer_id bigint,
    order_date date,
    street character varying(60) COLLATE pg_catalog."default",
    city character varying(15) COLLATE pg_catalog."default",
    postal_code character varying(15) COLLATE pg_catalog."default",
    country character varying(15) COLLATE pg_catalog."default",
    CONSTRAINT order_pkey PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.shop_orders
    OWNER to postgres;



-- DROP TABLE public.shop_order_detail;

CREATE TABLE public.shop_order_details
(
    order_id bigint NOT NULL,
    movie_id bigint NOT NULL,
    unit_price numeric(8,2) NOT NULL,
    CONSTRAINT shop_order_detail_pkey PRIMARY KEY (order_id, movie_id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.shop_order_details
    OWNER to postgres;


-- DROP TABLE public.shop_movie_price;

CREATE TABLE public.shop_movie_prices
(
    movie_id bigint NOT NULL,
    unit_price numeric(8,2) NOT NULL,
    CONSTRAINT shop_movie_price_pkey PRIMARY KEY (movie_id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.shop_movie_prices
    OWNER to postgres;