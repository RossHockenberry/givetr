PGDMP                     	    y           giving     11.12 (Raspbian 11.12-0+deb10u1)    13.2     e           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            f           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            g           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            h           1262    34764    giving    DATABASE     [   CREATE DATABASE giving WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE giving;
                pi    false            �            1259    34765    account    TABLE     �   CREATE TABLE public.account (
    account_id integer NOT NULL,
    name character varying,
    description character varying,
    origin_date timestamp without time zone DEFAULT now(),
    total_given double precision DEFAULT 0.00
);
    DROP TABLE public.account;
       public            pi    false            �            1259    34774    account_account_id_seq    SEQUENCE     �   ALTER TABLE public.account ALTER COLUMN account_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.account_account_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          pi    false    196            �            1259    34776    transaction    TABLE       CREATE TABLE public.transaction (
    trans_id integer NOT NULL,
    origin_date timestamp without time zone DEFAULT now(),
    amount double precision,
    how_paid character varying,
    check_number integer,
    comment character varying,
    account_id integer
);
    DROP TABLE public.transaction;
       public            pi    false            �            1259    34784    transaction_trans_id_seq    SEQUENCE     �   ALTER TABLE public.transaction ALTER COLUMN trans_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.transaction_trans_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          pi    false    198            _          0    34765    account 
   TABLE DATA           Z   COPY public.account (account_id, name, description, origin_date, total_given) FROM stdin;
    public          pi    false    196   4       a          0    34776    transaction 
   TABLE DATA           q   COPY public.transaction (trans_id, origin_date, amount, how_paid, check_number, comment, account_id) FROM stdin;
    public          pi    false    198          i           0    0    account_account_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.account_account_id_seq', 6, true);
          public          pi    false    197            j           0    0    transaction_trans_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.transaction_trans_id_seq', 3, true);
          public          pi    false    199            �
           2606    34772    account account_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.account
    ADD CONSTRAINT account_pkey PRIMARY KEY (account_id);
 >   ALTER TABLE ONLY public.account DROP CONSTRAINT account_pkey;
       public            pi    false    196            �
           2606    34783    transaction transaction_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.transaction
    ADD CONSTRAINT transaction_pkey PRIMARY KEY (trans_id);
 F   ALTER TABLE ONLY public.transaction DROP CONSTRAINT transaction_pkey;
       public            pi    false    198            _   �   x�M��j1�s���Lv�nr+�"T�z�2]��Y�YK߾a=������:��^�0�Hΰ'9SI�@=�C������:���څmmt}l�閝��B���X|�wf��9��q��t������M���j��V�i�n�a�?,���/�3���49���K�b)�=�N�.�!6!�`���k�OFk�g�@�      a   w   x�m�1�0F��>E.��l({O��B(�E�޿ Ā�7|�<�^6ؽ� J�|,�l�L��-<⏌	��W������_-��٨ե��<���]Қ��m��]�F+>,�y{�':     