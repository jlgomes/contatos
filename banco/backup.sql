PGDMP     
    5                x         
   conserthus    13.1    13.1 e    6           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            7           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            8           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            9           1262    16394 
   conserthus    DATABASE     j   CREATE DATABASE conserthus WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE conserthus;
                postgres    false            �            1259    47437    defects    TABLE     �   CREATE TABLE public.defects (
    id bigint NOT NULL,
    created_at timestamp without time zone,
    description character varying(200) NOT NULL,
    name character varying(200) NOT NULL,
    updated_at timestamp without time zone
);
    DROP TABLE public.defects;
       public         heap    postgres    false            �            1259    47435    defects_id_seq    SEQUENCE     w   CREATE SEQUENCE public.defects_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.defects_id_seq;
       public          postgres    false    201            :           0    0    defects_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.defects_id_seq OWNED BY public.defects.id;
          public          postgres    false    200            �            1259    47445    fail_sugestion    TABLE     �   CREATE TABLE public.fail_sugestion (
    id bigint NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    fail_id bigint,
    sugestion_id bigint
);
 "   DROP TABLE public.fail_sugestion;
       public         heap    postgres    false            �            1259    47443    fail_sugestion_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.fail_sugestion_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.fail_sugestion_id_seq;
       public          postgres    false    203            ;           0    0    fail_sugestion_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.fail_sugestion_id_seq OWNED BY public.fail_sugestion.id;
          public          postgres    false    202            �            1259    47453    fails    TABLE     �   CREATE TABLE public.fails (
    id bigint NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    defect_id bigint,
    log_test_id bigint,
    user_id bigint
);
    DROP TABLE public.fails;
       public         heap    postgres    false            �            1259    47451    fails_id_seq    SEQUENCE     u   CREATE SEQUENCE public.fails_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.fails_id_seq;
       public          postgres    false    205            <           0    0    fails_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.fails_id_seq OWNED BY public.fails.id;
          public          postgres    false    204            �            1259    47461    files    TABLE     �   CREATE TABLE public.files (
    id bigint NOT NULL,
    created_at timestamp without time zone,
    path character varying(255) NOT NULL,
    updated_at timestamp without time zone,
    model_id bigint
);
    DROP TABLE public.files;
       public         heap    postgres    false            �            1259    47459    files_id_seq    SEQUENCE     u   CREATE SEQUENCE public.files_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.files_id_seq;
       public          postgres    false    207            =           0    0    files_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.files_id_seq OWNED BY public.files.id;
          public          postgres    false    206            �            1259    47469    jig_type_test    TABLE     j   CREATE TABLE public.jig_type_test (
    id bigint NOT NULL,
    jig_id bigint,
    type_test_id bigint
);
 !   DROP TABLE public.jig_type_test;
       public         heap    postgres    false            �            1259    47467    jig_type_test_id_seq    SEQUENCE     }   CREATE SEQUENCE public.jig_type_test_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.jig_type_test_id_seq;
       public          postgres    false    209            >           0    0    jig_type_test_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.jig_type_test_id_seq OWNED BY public.jig_type_test.id;
          public          postgres    false    208            �            1259    47477    jigs    TABLE     �   CREATE TABLE public.jigs (
    id bigint NOT NULL,
    created_at timestamp without time zone,
    serial character varying(255) NOT NULL,
    status boolean NOT NULL,
    updated_at timestamp without time zone,
    model_id bigint
);
    DROP TABLE public.jigs;
       public         heap    postgres    false            �            1259    47475    jigs_id_seq    SEQUENCE     t   CREATE SEQUENCE public.jigs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.jigs_id_seq;
       public          postgres    false    211            ?           0    0    jigs_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.jigs_id_seq OWNED BY public.jigs.id;
          public          postgres    false    210            �            1259    47485 	   log_tests    TABLE     "  CREATE TABLE public.log_tests (
    id bigint NOT NULL,
    created_at timestamp without time zone,
    log character varying(255) NOT NULL,
    serial_number character varying(255) NOT NULL,
    status boolean DEFAULT true,
    updated_at timestamp without time zone,
    jig_id bigint
);
    DROP TABLE public.log_tests;
       public         heap    postgres    false            �            1259    47483    log_tests_id_seq    SEQUENCE     y   CREATE SEQUENCE public.log_tests_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.log_tests_id_seq;
       public          postgres    false    213            @           0    0    log_tests_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.log_tests_id_seq OWNED BY public.log_tests.id;
          public          postgres    false    212            �            1259    47497    models    TABLE     �   CREATE TABLE public.models (
    id bigint NOT NULL,
    created_at timestamp without time zone,
    name character varying(255) NOT NULL,
    status boolean NOT NULL,
    updated_at timestamp without time zone
);
    DROP TABLE public.models;
       public         heap    postgres    false            �            1259    47495    models_id_seq    SEQUENCE     v   CREATE SEQUENCE public.models_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.models_id_seq;
       public          postgres    false    215            A           0    0    models_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.models_id_seq OWNED BY public.models.id;
          public          postgres    false    214            �            1259    47505    profiles    TABLE     �   CREATE TABLE public.profiles (
    id bigint NOT NULL,
    created_at timestamp without time zone,
    description character varying(45) NOT NULL,
    name character varying(45) NOT NULL,
    updated_at timestamp without time zone
);
    DROP TABLE public.profiles;
       public         heap    postgres    false            �            1259    47503    profiles_id_seq    SEQUENCE     x   CREATE SEQUENCE public.profiles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.profiles_id_seq;
       public          postgres    false    217            B           0    0    profiles_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.profiles_id_seq OWNED BY public.profiles.id;
          public          postgres    false    216            �            1259    47513 
   sugestions    TABLE     �   CREATE TABLE public.sugestions (
    id bigint NOT NULL,
    created_at timestamp without time zone,
    description character varying(255) NOT NULL,
    updated_at timestamp without time zone
);
    DROP TABLE public.sugestions;
       public         heap    postgres    false            �            1259    47511    sugestions_id_seq    SEQUENCE     z   CREATE SEQUENCE public.sugestions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.sugestions_id_seq;
       public          postgres    false    219            C           0    0    sugestions_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.sugestions_id_seq OWNED BY public.sugestions.id;
          public          postgres    false    218            �            1259    47521 
   type_tests    TABLE     �   CREATE TABLE public.type_tests (
    id bigint NOT NULL,
    created_at timestamp without time zone,
    description character varying(200) NOT NULL,
    name character varying(120) NOT NULL,
    updated_at timestamp without time zone
);
    DROP TABLE public.type_tests;
       public         heap    postgres    false            �            1259    47519    type_tests_id_seq    SEQUENCE     z   CREATE SEQUENCE public.type_tests_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.type_tests_id_seq;
       public          postgres    false    221            D           0    0    type_tests_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.type_tests_id_seq OWNED BY public.type_tests.id;
          public          postgres    false    220            �            1259    47529    users    TABLE     }  CREATE TABLE public.users (
    id bigint NOT NULL,
    created_at timestamp without time zone,
    full_name character varying(255) NOT NULL,
    login character varying(45) NOT NULL,
    password character varying(255) NOT NULL,
    remember_token character varying(255),
    status boolean NOT NULL,
    updated_at timestamp without time zone,
    profile_id bigint NOT NULL
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    47527    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    223            E           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    222            f           2604    47440 
   defects id    DEFAULT     h   ALTER TABLE ONLY public.defects ALTER COLUMN id SET DEFAULT nextval('public.defects_id_seq'::regclass);
 9   ALTER TABLE public.defects ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    201    200    201            g           2604    47448    fail_sugestion id    DEFAULT     v   ALTER TABLE ONLY public.fail_sugestion ALTER COLUMN id SET DEFAULT nextval('public.fail_sugestion_id_seq'::regclass);
 @   ALTER TABLE public.fail_sugestion ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    203    203            h           2604    47456    fails id    DEFAULT     d   ALTER TABLE ONLY public.fails ALTER COLUMN id SET DEFAULT nextval('public.fails_id_seq'::regclass);
 7   ALTER TABLE public.fails ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204    205            i           2604    47464    files id    DEFAULT     d   ALTER TABLE ONLY public.files ALTER COLUMN id SET DEFAULT nextval('public.files_id_seq'::regclass);
 7   ALTER TABLE public.files ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206    207            j           2604    47472    jig_type_test id    DEFAULT     t   ALTER TABLE ONLY public.jig_type_test ALTER COLUMN id SET DEFAULT nextval('public.jig_type_test_id_seq'::regclass);
 ?   ALTER TABLE public.jig_type_test ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    208    209            k           2604    47480    jigs id    DEFAULT     b   ALTER TABLE ONLY public.jigs ALTER COLUMN id SET DEFAULT nextval('public.jigs_id_seq'::regclass);
 6   ALTER TABLE public.jigs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    211    211            l           2604    47488    log_tests id    DEFAULT     l   ALTER TABLE ONLY public.log_tests ALTER COLUMN id SET DEFAULT nextval('public.log_tests_id_seq'::regclass);
 ;   ALTER TABLE public.log_tests ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212    213            n           2604    47500 	   models id    DEFAULT     f   ALTER TABLE ONLY public.models ALTER COLUMN id SET DEFAULT nextval('public.models_id_seq'::regclass);
 8   ALTER TABLE public.models ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            o           2604    47508    profiles id    DEFAULT     j   ALTER TABLE ONLY public.profiles ALTER COLUMN id SET DEFAULT nextval('public.profiles_id_seq'::regclass);
 :   ALTER TABLE public.profiles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            p           2604    47516    sugestions id    DEFAULT     n   ALTER TABLE ONLY public.sugestions ALTER COLUMN id SET DEFAULT nextval('public.sugestions_id_seq'::regclass);
 <   ALTER TABLE public.sugestions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219            q           2604    47524    type_tests id    DEFAULT     n   ALTER TABLE ONLY public.type_tests ALTER COLUMN id SET DEFAULT nextval('public.type_tests_id_seq'::regclass);
 <   ALTER TABLE public.type_tests ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    221    221            r           2604    47532    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    223    223                      0    47437    defects 
   TABLE DATA           P   COPY public.defects (id, created_at, description, name, updated_at) FROM stdin;
    public          postgres    false    201   �s                 0    47445    fail_sugestion 
   TABLE DATA           [   COPY public.fail_sugestion (id, created_at, updated_at, fail_id, sugestion_id) FROM stdin;
    public          postgres    false    203   9y       !          0    47453    fails 
   TABLE DATA           \   COPY public.fails (id, created_at, updated_at, defect_id, log_test_id, user_id) FROM stdin;
    public          postgres    false    205   Vy       #          0    47461    files 
   TABLE DATA           K   COPY public.files (id, created_at, path, updated_at, model_id) FROM stdin;
    public          postgres    false    207   �       %          0    47469    jig_type_test 
   TABLE DATA           A   COPY public.jig_type_test (id, jig_id, type_test_id) FROM stdin;
    public          postgres    false    209   <�       '          0    47477    jigs 
   TABLE DATA           T   COPY public.jigs (id, created_at, serial, status, updated_at, model_id) FROM stdin;
    public          postgres    false    211   Y�       )          0    47485 	   log_tests 
   TABLE DATA           c   COPY public.log_tests (id, created_at, log, serial_number, status, updated_at, jig_id) FROM stdin;
    public          postgres    false    213   /�       +          0    47497    models 
   TABLE DATA           J   COPY public.models (id, created_at, name, status, updated_at) FROM stdin;
    public          postgres    false    215   97      -          0    47505    profiles 
   TABLE DATA           Q   COPY public.profiles (id, created_at, description, name, updated_at) FROM stdin;
    public          postgres    false    217    8      /          0    47513 
   sugestions 
   TABLE DATA           M   COPY public.sugestions (id, created_at, description, updated_at) FROM stdin;
    public          postgres    false    219   �?      1          0    47521 
   type_tests 
   TABLE DATA           S   COPY public.type_tests (id, created_at, description, name, updated_at) FROM stdin;
    public          postgres    false    221   A      3          0    47529    users 
   TABLE DATA           {   COPY public.users (id, created_at, full_name, login, password, remember_token, status, updated_at, profile_id) FROM stdin;
    public          postgres    false    223   �A      F           0    0    defects_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.defects_id_seq', 96, true);
          public          postgres    false    200            G           0    0    fail_sugestion_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.fail_sugestion_id_seq', 1, false);
          public          postgres    false    202            H           0    0    fails_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.fails_id_seq', 2772, true);
          public          postgres    false    204            I           0    0    files_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.files_id_seq', 1, false);
          public          postgres    false    206            J           0    0    jig_type_test_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.jig_type_test_id_seq', 1, false);
          public          postgres    false    208            K           0    0    jigs_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.jigs_id_seq', 10, true);
          public          postgres    false    210            L           0    0    log_tests_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.log_tests_id_seq', 2772, true);
          public          postgres    false    212            M           0    0    models_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.models_id_seq', 10, true);
          public          postgres    false    214            N           0    0    profiles_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.profiles_id_seq', 100, true);
          public          postgres    false    216            O           0    0    sugestions_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.sugestions_id_seq', 15, true);
          public          postgres    false    218            P           0    0    type_tests_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.type_tests_id_seq', 6, true);
          public          postgres    false    220            Q           0    0    users_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.users_id_seq', 100, true);
          public          postgres    false    222            t           2606    47442    defects defects_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.defects
    ADD CONSTRAINT defects_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.defects DROP CONSTRAINT defects_pkey;
       public            postgres    false    201            v           2606    47450 "   fail_sugestion fail_sugestion_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.fail_sugestion
    ADD CONSTRAINT fail_sugestion_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.fail_sugestion DROP CONSTRAINT fail_sugestion_pkey;
       public            postgres    false    203            x           2606    47458    fails fails_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.fails
    ADD CONSTRAINT fails_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.fails DROP CONSTRAINT fails_pkey;
       public            postgres    false    205            z           2606    47466    files files_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.files DROP CONSTRAINT files_pkey;
       public            postgres    false    207            |           2606    47474     jig_type_test jig_type_test_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.jig_type_test
    ADD CONSTRAINT jig_type_test_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.jig_type_test DROP CONSTRAINT jig_type_test_pkey;
       public            postgres    false    209            ~           2606    47482    jigs jigs_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.jigs
    ADD CONSTRAINT jigs_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.jigs DROP CONSTRAINT jigs_pkey;
       public            postgres    false    211            �           2606    47494    log_tests log_tests_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.log_tests
    ADD CONSTRAINT log_tests_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.log_tests DROP CONSTRAINT log_tests_pkey;
       public            postgres    false    213            �           2606    47502    models models_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.models
    ADD CONSTRAINT models_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.models DROP CONSTRAINT models_pkey;
       public            postgres    false    215            �           2606    47510    profiles profiles_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.profiles
    ADD CONSTRAINT profiles_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.profiles DROP CONSTRAINT profiles_pkey;
       public            postgres    false    217            �           2606    47518    sugestions sugestions_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.sugestions
    ADD CONSTRAINT sugestions_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.sugestions DROP CONSTRAINT sugestions_pkey;
       public            postgres    false    219            �           2606    47526    type_tests type_tests_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.type_tests
    ADD CONSTRAINT type_tests_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.type_tests DROP CONSTRAINT type_tests_pkey;
       public            postgres    false    221            �           2606    47539 #   models uk_k88mmbltkn8c5cke9r3u5tk8c 
   CONSTRAINT     ^   ALTER TABLE ONLY public.models
    ADD CONSTRAINT uk_k88mmbltkn8c5cke9r3u5tk8c UNIQUE (name);
 M   ALTER TABLE ONLY public.models DROP CONSTRAINT uk_k88mmbltkn8c5cke9r3u5tk8c;
       public            postgres    false    215            �           2606    47541 "   users uk_ow0gan20590jrb00upg3va2fn 
   CONSTRAINT     ^   ALTER TABLE ONLY public.users
    ADD CONSTRAINT uk_ow0gan20590jrb00upg3va2fn UNIQUE (login);
 L   ALTER TABLE ONLY public.users DROP CONSTRAINT uk_ow0gan20590jrb00upg3va2fn;
       public            postgres    false    223            �           2606    47537    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    223            �           2606    47557 !   fails fk139a9yr6rkylgcem0at2jemc6    FK CONSTRAINT     �   ALTER TABLE ONLY public.fails
    ADD CONSTRAINT fk139a9yr6rkylgcem0at2jemc6 FOREIGN KEY (log_test_id) REFERENCES public.log_tests(id);
 K   ALTER TABLE ONLY public.fails DROP CONSTRAINT fk139a9yr6rkylgcem0at2jemc6;
       public          postgres    false    213    205    2944            �           2606    47587 %   log_tests fk2xax1mh37p65ydoahxxf3g92a    FK CONSTRAINT     �   ALTER TABLE ONLY public.log_tests
    ADD CONSTRAINT fk2xax1mh37p65ydoahxxf3g92a FOREIGN KEY (jig_id) REFERENCES public.jigs(id);
 O   ALTER TABLE ONLY public.log_tests DROP CONSTRAINT fk2xax1mh37p65ydoahxxf3g92a;
       public          postgres    false    213    2942    211            �           2606    47547 *   fail_sugestion fk8l4advnotdtlayj9dato8hup6    FK CONSTRAINT     �   ALTER TABLE ONLY public.fail_sugestion
    ADD CONSTRAINT fk8l4advnotdtlayj9dato8hup6 FOREIGN KEY (sugestion_id) REFERENCES public.sugestions(id);
 T   ALTER TABLE ONLY public.fail_sugestion DROP CONSTRAINT fk8l4advnotdtlayj9dato8hup6;
       public          postgres    false    2952    203    219            �           2606    47562 !   fails fk99xkadveb2yboqvgsfo67wcrf    FK CONSTRAINT     �   ALTER TABLE ONLY public.fails
    ADD CONSTRAINT fk99xkadveb2yboqvgsfo67wcrf FOREIGN KEY (user_id) REFERENCES public.users(id);
 K   ALTER TABLE ONLY public.fails DROP CONSTRAINT fk99xkadveb2yboqvgsfo67wcrf;
       public          postgres    false    205    2958    223            �           2606    47582     jigs fkgi69mgy8gciiu6wwl9jylnpqg    FK CONSTRAINT     �   ALTER TABLE ONLY public.jigs
    ADD CONSTRAINT fkgi69mgy8gciiu6wwl9jylnpqg FOREIGN KEY (model_id) REFERENCES public.models(id);
 J   ALTER TABLE ONLY public.jigs DROP CONSTRAINT fkgi69mgy8gciiu6wwl9jylnpqg;
       public          postgres    false    211    2946    215            �           2606    47567 !   files fki44l8hv6gytwe5y6es22xyfgb    FK CONSTRAINT     �   ALTER TABLE ONLY public.files
    ADD CONSTRAINT fki44l8hv6gytwe5y6es22xyfgb FOREIGN KEY (model_id) REFERENCES public.models(id);
 K   ALTER TABLE ONLY public.files DROP CONSTRAINT fki44l8hv6gytwe5y6es22xyfgb;
       public          postgres    false    2946    215    207            �           2606    47572 )   jig_type_test fkl5e6i2039v003jcdv8g9mm8ju    FK CONSTRAINT     �   ALTER TABLE ONLY public.jig_type_test
    ADD CONSTRAINT fkl5e6i2039v003jcdv8g9mm8ju FOREIGN KEY (jig_id) REFERENCES public.jigs(id);
 S   ALTER TABLE ONLY public.jig_type_test DROP CONSTRAINT fkl5e6i2039v003jcdv8g9mm8ju;
       public          postgres    false    211    209    2942            �           2606    47577 )   jig_type_test fkld47f9u5x4n6f7k04om0ghin5    FK CONSTRAINT     �   ALTER TABLE ONLY public.jig_type_test
    ADD CONSTRAINT fkld47f9u5x4n6f7k04om0ghin5 FOREIGN KEY (type_test_id) REFERENCES public.type_tests(id);
 S   ALTER TABLE ONLY public.jig_type_test DROP CONSTRAINT fkld47f9u5x4n6f7k04om0ghin5;
       public          postgres    false    221    209    2954            �           2606    47542 *   fail_sugestion fkmm77d61hap4ugfsc9368bydpy    FK CONSTRAINT     �   ALTER TABLE ONLY public.fail_sugestion
    ADD CONSTRAINT fkmm77d61hap4ugfsc9368bydpy FOREIGN KEY (fail_id) REFERENCES public.fails(id);
 T   ALTER TABLE ONLY public.fail_sugestion DROP CONSTRAINT fkmm77d61hap4ugfsc9368bydpy;
       public          postgres    false    203    2936    205            �           2606    47592 !   users fkq2e6rj0p6p1gec2cslmaxugw1    FK CONSTRAINT     �   ALTER TABLE ONLY public.users
    ADD CONSTRAINT fkq2e6rj0p6p1gec2cslmaxugw1 FOREIGN KEY (profile_id) REFERENCES public.profiles(id);
 K   ALTER TABLE ONLY public.users DROP CONSTRAINT fkq2e6rj0p6p1gec2cslmaxugw1;
       public          postgres    false    217    2950    223            �           2606    47552 !   fails fksqe5vj8gp73ccw2nts79msgi2    FK CONSTRAINT     �   ALTER TABLE ONLY public.fails
    ADD CONSTRAINT fksqe5vj8gp73ccw2nts79msgi2 FOREIGN KEY (defect_id) REFERENCES public.defects(id);
 K   ALTER TABLE ONLY public.fails DROP CONSTRAINT fksqe5vj8gp73ccw2nts79msgi2;
       public          postgres    false    2932    201    205               d  x���Kn�F���)�FF0�Wv=ds�m�M7Ikl��"�	��#d���b��{$[@1� �`H����.6�$J�Mo�JE�O�wQ�~t�f�t7�������er.=�S<�xz.����Рb�۳�x��Z7NqM�5ٹ��L��.ɹ$?Wb���%��J���W�z�%W��m�r����k������;���v���8�R�ynm�`[{z����wܐH7ƫ��:����OZ����(�m�L��� �eI̱6����<��eA�0-��������I�W$Y��'i����o��mXh��f��X�����4��{��
��s�a7&�!9+�p��S�24v᪰���@k�X���~\�y�K��K"wG���?�NE"��1i�!\+�Ȱ�d{��p2&�E��{���hYL}�wc��
'2л�>�ۻۏ�ԗO�~��~��������Kau"���E�ЌTz!%�L��?͇��\;��~#,�}k|p�+����vvK}PS��z^P�S�oo�a8�ʐw�bf��.�7�z�n(��ũ�f.a���x�l]���L���k;<�j@Oe��[�y΅7�̼�{��U���K���$(7�����i`^��[��$a��^��ћ��j5�N�(���y��p�����v����H�SϨ�)[�?��[Y	l���B��8\#��;c��e�[ن�� ��P�f��=��A��,�nyG�O]�����}:�~d'3H��%�B<�N�I���#�Z��]��#� �V ,"]��^�G�)���?G`0˵����'�� 83穀	f ��C�b&S���X ��ʱ�`�W��H9xf2Ϧ�nl禉�@�����*�Y��b��3R��@����xq
���-wTe�Zw�5�\FEO��C�.�YTF�u������W�Y�����cG�����˼h��]4M�
+X�,���9v��eb�6U���o��������c�Dq~ӹk΂].��[����+��@S�z�v#���L��]�_!�3{5�^=K��a���4�Uo�r<|J�����%�@���U	�s�j>r�
Xx�y3�)��%p+̴r�R U�}��j��TȘ�(�A�b� UȤ������s���^%�+㰛�v%�2�+�fSJ���t���2|��T����VL)�!�7c=Q�O����\*�R�K)s�}ICMyv��R�B�Lꄑ��R�\�d>���a�U�R��Q�M�.A�Z���YO%�I�����큨��G�y
(U2�����(�޻U�������3 �����k�>�<u��x:�z�*0�df|*���2�q>���i�*�{�����_���            x������ � �      !      x�u�]��*����Պ����ۈۂ��v��v�N�"V���2�U~��?��?��~�������k��ʿ��g��U����������W��&��{_W���.{����_�ߐ�����5�}���cߧv��o���c��Z��[�����>����Z�����o)�/q��w�a1ƿ�O!�X�K�� }�����?���lױ�w��$W�eֿ{H�_���c��S�������^R��g[���-�H��P����E:Q��G��X^�c��J��Lǹ˂k�Wq����Q�mHO)�4�"�����ϥ�mP�MTUP��B��2��;5�c����ީ����
��_��_�x�ZE��/�����\DT�mo�u�WE�����q�jo�i��|U��5:�!��֏�k��j��y'�����jo>�,ܭ�ڻ��u�����˿+�����^�5���������CS������?�����i��������>�����i��ڐ���c<�L)���`�ז֔7^���m)�K}�R���Rs����o)�K�<�c��z�b����J�_����^���q�;/LTs��?��Ꝡv��]P�?�6���j��c�F���C�w��7���)e��A5�pjz��K+���s;��o�wn~!~�����S�wj���c9��BP�?�Fx��v���p��T�����A5�p��c<73E��qR�s�)�����SP�?�����?���yto�S��V'�SSL�?��<�Q��4u�;5�tN)�7�c<w��H}�c�-���s|��O��{�GqK���1��H�_���xz}U
�@T�ƿդ0�^d�[�Ux��������[b���S0]b��ᔂ��Rs�x����{8]�������Ŏ�<�-��6���9����o��.s��b���y��Q���{�x��5��<�<~j�����:��o���s/|�������X����"�Ys������Bkn������[�F��1�ui�=#�dH�_:�(kJd%\���oI��qÊ�li���x��1@�3���������\�F����4�m~ׁ����j�>ox���;�@XQea���Yeq�� ��`�(��r��+�f{��~��f�/O3,���y��]��^�����U�����I��<�"���W\��������֏�f�	\0�E��]�W��_{Q���X�XD����ɁQ��=���]��C���
� ��Ad�lh
�#��/8ߎ���]�{�A0��C�%�rZF��AҔ\�A͔濏��>���uIc����li��VZ�����l���f��4w+���YT\��[�����Л�[{5�W�߁��i����t^G�ͱ��Vܻ8{��A�{7q�^�N����(�����9��������<>(�݋��y��;?�]�ͱྎe��;��p_]�ͱ�5E��h��<��:�sg{�ufܗ@�o9V��	���A3���@�o9��X�@{��<:�!��\N}��C�=��u*5m��xoX1�����8��V�א���18���s�H1�s4Kkи/��7���q�>ѹߘ���@ceTw�a]O��X'��o`ד��u
���v=B�{���w��M���)�h�,:�)�>q��d�������S��o�38�#��7�g���8���y�?�K�=�8Z��-q����8�8����4?�K��q�^���@���ua>�^m�c�҃�h��uHz��� �4�җH�Lz�_����9�z@o��N�i���@{r��&�-��+9��	z��e@����z%�!nF)o8ܷ �f{~#���<����
�����'���]:������]�~p�G�� ۛSE���a��J��'� "��Ƃ�#ց���cPA����\_N��'��[p;��h�v`Y�(��)A56f\n�������-��)�`lG"��Z00,�8{��!�[�}F���M�Qn�6߂n��Yg�6ׂ/�=x��\�h2�G#��Z�,��g�'Ea=eq6ׂns�Q#�>�y�Sر+E�}������tE
>���t�-��`)��roD8�P��R0�Tވp���w���,ij�\Gy#&DN	����3��Db|��1�t߁W�L��/�QI��	����Z�BM"뗜ZW�|�A�L�#���@��@���KX�@��@��l�U��u��q��T�6ׁ�f���&�Ϝ�G8Jh�xލΣ	���j4��JhEa�n�l��<�����'L���w4�6����;�@{���M���@��8T8W�@{��Ԣth+9%� ��̝ch�t���Q\�ąD�;&�F�Σ��O�����hD�;&�:w��tM3~�bM�Cz���K����_p�7�%ʮ�[��7,\�orF��
W�Q�
v;ިp%�rj:�:ިp�{�7g`1Oy���ct�oT�ܻ�:V���\N%F�:�8{�s�����c}�X�-Q6������LQ�%���z
�y�S���e�-pR��?Q6߂7o�����S����Xav��:�:Vh�9O��
�8�)X�g� .�Y�l�dX�F�ݹ��%��[�aPX�@�o9����f�,��;���=��p	�/�8����X�l�oך�σy��X�a�	w�,�G�F���
:Λ���w�+��;��v�BMx�7$�<���&�B�A��;M�6��n�,��7�oH�S�s�lb����XL���f�,pK]��g�,��F�ш�/�8o���u���o/�t�'��g��«�0�8,�jq!q6ׂ���s����,i��=ן@��(�q4���Ӈ�-VZ�}�w�]o�.ɅWN�[�}�����8�Z�Sc�z���Z�!�[��ׂ��#��ZN�V�%��ZN��u�0{�s��=c]�����Jp!Ą��	�1�qs��>1!45=�����ĄФa������Фزr��>!!4#�|�ߨOH���`"�>!$֜Qe%�' ��"K�U��	�Ƈa��E���r*��4�"�>}s(t6jes�ީ�U��>�SVe7��ߨ�l~�iă���9|s0�y4}��nX�è�3�(lP#��%9�2���H����E@mnc�:�;�&�>
{�xZjg���&�>{sU��&��5N�f�jd��3R�&Ⱦ�� d0X� ��(X_K��ټ����&��΋��P���i���	�I3Õ3�����龎�)��� V�;?� 4���{��N�&��z^�'�&/�����i,�G}ؘ�PuP6�'��:S���x_�l�n��`��Ω�`oc��C�z�k���HN���gw-�������/9����8{����!о,�<����C�}��4h,�<����<��h_s�l�S�?\��Q#��cb&�N��KPa=u��]�Ӎ�=�ST�a���<��gp��9��Ƹ�Na�	nkR#��[�5��l<�`NV9Ot������*��E�O(�V�z-��'�)+�Y����9i��:tO,���r����.�y��&sv�>�`�\9��uqG4%2������s�
Zc������i�!w���n㔵�y�����69oq����9����g�O����"��l�6�P���#$"�`a���G>����'o�M��ڳؐ)��~�����h�W������O��Kr��!l?q6�q:��`�	s#i��8�ߘ�Pga흒�I��h�W���Т�O���+�(K��S��(F�-����r���ܒX7�T�fZND��#�3��M�ƞ���ƈ�G����-����r��-����EM7)G0X>�^0
~�rĂ�#��c��`�H}�_�VD�IN}b�h+�|��Lϣ(��$Р�܊0�E'��z����=�W	�E�͵�:=4�; �[h��f2�K�ݷ@�x���r�1o�U��A�s��!�V��'�O�W�h�|��C�F�KZn�y�U�=o��	GG#ξ���:���������/V�    }Mj��\��u�]�} ��Ͻ��W���Ω�r:�+ߏ�HTR��[��T�W���$i�V1�.�O94�mmHb�p�[s���Z�C��r[�X�?O����-�Nͧa��߫1�r9��sX0ں0��s��0�Q�}��q
�l]����z��.��\�z8�.�>s��X��ƈ�u�6��Qk��.�y�֣Bm�32�lC���r��z4"m�^j �������\#����1��\a=���h:oL�=�~�@�{���J=:/����~H���K���'�+�B\4��-M��1$l�H�V�7��mVi���	�6�D#5XN�٥I�E'�Ҭ��1hp4S�8/��6׫������o=n���K�}����"�%�9�q��-��ŹwN�%�y�V�%��>���K��R3X���@��.*���%�>�
�I/��A���s�h[�ç�/��-�>�{��vm������-���f�c�/5;�9ض@{.���9����q�β�٧t�M�[��G���Lc�<�۸n�mq��y0��sJ�An7�����Iz���+Ҥ�GS��%RH���N�&m��:�.�M�f�C��C���3X�)Mj�3������FTg�w-��� �0�k9}cX���s^�F�ш�/E�`DY�����Jon-psN٣�h��gf�+�f?=�����0{���5�[�s�^g
a���=���\��׊\�;��"�yk��-���O�@C�E�}+4X_׋0{_�@�i�"�>r���D�A�A�Q��|��눲�̂�z4����ił����)��ι�!aʫ�Dv��xCWs2���aN�AQ��oD��j�(8=�߈0�՜�)�ؒcH㩑0�#���^J��`���T���g���W�>�'��zd�\=��&��2� �X�7A��e��57Q���s��M�}��.]o����2�y�M��g��1�(K�}���H�9���i�M�}�y\+ڻ0��8������ϸ��ť�������p�wa��e�sf���}_��}!�����^�<Of�.ξ�*M����s����y���w����������s�A�o0�rj�����T�����SR͂�N�SR��$u��7�I5��b~c��T�O c��Ƃ)��B�]C��Ts:�����SR^c��}
����s�:��C��3���9�����w�}
s���M~��� t��w��|�°�0qN���x$�l�eC��f9=��}	s^^����X�G$��΋��8����y�K�ݵ΋�y	�{���b~�/q�����}�sI�%a�D:�"@뿾E��s!��7L)5�u���7�)5��1Ax4Us��e������)�l��7L)5��zZ�
�����z��
���7F���)��:�͖f���9���,W�q���@�QX���g�kp?��h���alc��������g��C}:�#��9p_ܯ�'�yi*��:�'�>F���O�}\t\���hO��h<q��@`=�u��op��Mη8�:���#fs�Gp�踅ٗ��:��f�`�D�}��y��� ���|�o�[��	��Fe�3&�F��ǋ�kE��l�����Ƃ)��`g:����d^�q��.M�U�,kHcN�^���x���Ms��:�%�=h0�1�`0eӜ�����l���Pf��`J��T�G�<��Og�,��aʨ��i`=^�����^�KEGf|Eu5�$��|�*�>߂�
s�o���zf{=�it�M�}��i��Of4a��Wh�zc4aγ�����	sNՃ�4�&��,:�&�>�{��	�g�����M�}�;�L�M�}�;�~ds���{!_��EG��K���;���7L�4��`p��`J�Ac�to,��iPc��7L�4p�138�X0eӜ�̬��)��M�Tt��`ʥ�֗��
�\,ϋ�@�P0��`��e��`N��F���弩���|���s_C�}V��W,C�=��Tl:����2&oL�?�,�Lf�v�r�x^�)�yCeX�ߝ���s��KfLqΛ*�z��gG�����S�=��8Չ��1�9�\���
��v�}F{���&�缻��n2c�s�Cup��X����ȼ���<���Xt,��;�N�'��4�	�Lf<�`N�������s2�i<����s2>��O0��i��-1?�`Υ9�Xq�-�E:�}�V2�	s2����xb��M'����Ă9��ͯ�gsx�88�8��8�w�
	������p<�@�IX��:��>�-Ҿ����"�wb���7"���yZ?|�O�}�sw�@���]�������b������n2�'�9	�֣� �q4��K�q�x���>(�E�0���3~|��0��w�ό��y����kr�輅��v�;a���&3��|l�rs+�'��4�E��iR��G3��N��rk���9�E-���$mj��'��4�p����s>�\�Ͳ�4)��u4�՘o���o�"��)9�֣g_j��t�%��)���gg�=Ϝ[��"��'�c���o���6�
���z�igO�;m��?�*��\���Q&W��*�려�ڈ����;�J�YE9�\�w.ʞLs�ae�2�0��xT�n�
�wI���h����h?��.�>!|*���ل�]�E�s��VT��\R�E�+8�`0�� tC�2�`0���]n�K�O4��i:*����9�����t��b{�'�	5����|$�2sp>�`N��ns�[t>��G:�y��F}�w~�&W��.̹G��>]�}�;�ܰ_�=��0��Eggs�b�?�N{�M��C��k�0o2�C�}[�S��Wp��wHp� ��C���4Z�F������G��!ОN��=��A\��c���:�7&�>Hr�G#�>q@���S�=�9ea���tZԌ##�8{�ic�g���u�7�8{��ʜ�֏dt�88#�_'ǜ�>�9����M��֣YҤhg2spF4X?�ix
ƐfD��#������h�~�Ӡ�����)Ҥ/'ϑ�֯sd�#e48#��4��-��%ξWڹ�boc���9r����K�=�uf�n�s>P�֣g�6�8��&g�g��9�a48�8{��a���9o92cfpn���&(���@{�꬐@���g��#�����s��;w�q��E��IΓg������Ӝ���
�O�͹ �;ɬ�H�z��/�������V�G�}�	4��'�y�4X��<�S��5X�)Iڷxqo��[Ҥ�`EQ[���g1sp�?iҲLX���&����j�4�+��>w�&�i=�&MZ�y�w5>k��O�X�0�s9�[��Vi��8��1�Bs^�8���:���/=��}dVg_�z�r.��+���pq���/qa�L�SeF��sކ�֣�t`��+Q�e�8��'�Q���C�������� �ϫ
��v�a����8���Tс^U�}��������O�����<�S*6�ŁFGӥI�V7]uHc��a{�S���Tt�%�Ń�iT�纥1�>�p���&�2.��vK�RY�:�Z���7Ne�u>��j|o��a��jm/<k��@�3p���#h�h�Q�ɳ��W��:]M�=}�Iw��� �CG#��Ɵ���@{w�w!�mu�����V��#���NQz�.��Σ,̨�.��Ο�	�t>�f1upu����qS��>������@�|���1DڇOϣ�r��鹰�Z��d�s��#\C��;q-.]���i��=�4i�*�(jJShn&�ƒƺ8ۍ�cli�p��-�?i�a����-���x^�Y$Y�EeH�f�f��Őp��j|����^2k
�'Ӝ���5���_+&�fϥ�uس����Q�g==�b�k��9e��x�k	�/�?�����g_*r��y��/_=��[G#ξT�<S��    %�>r�|�0���}�i>�R�h�9�vG�ш��|)c��Z���	�X8�-О�wj��E�iUpda|�P���Aʬ-�9�fq�pm��I]�F�oT�2j��z��F�)���Fa=����,�gP�ޠ0�Ԡ������l������)�����-M���\/�ߠ0�� ���N�~�T���'�����k��0��ͨ:w�'��/Au�,�>ʁ�&�#��0��9��f�҅+��-�>�{�bP�oa���羸�辅9/ٜ#ܷ0�<<XϽ���Y��GG�-�~�
�!iB=OG4�H�_X�[�=��t�b�辅��Pq�g����a=����G#������p���f�j��7n>�.5*$ؾ���ӣkߓ�,�A�k�3���SbNFeh���0%���/A��SfHc�߿���)�����=F������������X�*QJ����74̩5�α����W��X���U��s�
�MW��qThH�����7�S��
�/���34��q����n���.qp�8�)X����>�q��n��%���2������cz٠�8�9Xq_�;6�
wg_n��,�%����ѿ�]�}���p�pwq�S4�����K�qt�vgE�!ŕe�s^!�9W��8{���\9�߸0�Us�ɔ$-���!�oX����]a�p�aa>��f��7*�'՜�3ؚߠ0���+����,K�y��
S^F�;oT��jptiL�7.L�5�:���=D�3k ��B�]��8��4B��7�֋���׿���N�Χ�m&�)��9���L$�S�}M��c�u^�y���bm��|a=w6��;'����S���k� �=�'`Pg��=:���<sbO�N��o9��0����r�p/a���T֣�<��#�p/aλ�Ê
	��S=��l�^��[%�ĝF��&�`ō=�Sr������)��|�a�fK�6�\<���0%������aJ�A{�W޸0%׀Ϧ�~�\����Sr:�9��Srv�d�~�\���½�ٷ�G������C&8r~Q#�>dr�ԉ��h_p����B�;&47�ۇM0�������`�
���#�>��z�����d�E����}if�D��y�3�%�Ƈq*�Bq~D>�A4�Z����4o����*��"�n��E�����-��a0ƌ�G�sVͬ���.� ���n���Z�0�r~��k�bF��)��{�=n�RhD3���cJ��xd������M�ܡ*R���K�G�Ɛ)!���qg��Ӥ�kiQd��^-�$SZ�j���o,�sX"OL���Y"�-����Ń�S�U�}j��*��)�4�AV��Q����P��O��ܚ�����&<���U����h�U�=Un��(Q�}a,�5I��}���f^K�}u,��؛o"�8������7�`��޷L�N���O!�}��G|��&[x�&�>��"{TL��2|�� ���������)<�9϶8?[��w۬�x�4�����������{x�'��8��'����A���&�Oъ[|"М�3�z8�'�=�T��'�)=t�}�w���Ӄ|��gL3\�yw9(�;ڜ����TE?g��o��{�^�P��/��h�!�>E�K�P��w�x� ?D�������#���-�Y���j�y-��1�>�9S�=�µfx�)�>��kͿ~�{w9�X��)�~����S����g
~�v�f^K�}�-�5��/�_ݡ.g���t�.7�9?��ږ�f4�'d�@ �~!�%J��4�A>QkN�g0CU��+$�P5�|��V�zBל��0�O<�kNb�o����ʒ�I">�O ���&֊k	����Z�����;Cൣ����<�6w��-������{�L,1b�-�i�V��-�y{&��z�L\�����{sM��Ng�}^6G3�{_8�k���?���Щ>�7Tb�����C%���]47���7��0,v~�>��*��5����|�L���\��� @3Ub��i�=>����ڳ��O`�q�i0���~��sѺ!*�|�0CU�J'y��k5�� 4�=amN#�{T~H�ҫ}߁�	ks.Q�kF�׫ʋrif���;C�M��gW3H��$g<��ڻ��T��"���m��fϏ���3�:���;�d�|��}��W}���!V��.��C��&E�}����9U��码q{��#�9�f<�*��s��j��*��sP��!���}��f�(�cCw�U�}�8�g~���|)�h�U�}`��`_��g�/ZQ��j�G�f�nn�s~n��Q�n�Qm��>B f�X����V��D��Z���Ӷ�$:��#�mIH|�-�GL�>Ґ�)��>b�����X�%�W�Sah�-�}zwLPqS��#�~ U��B��A]��|y_CLU|h��{�#}� �݅�y��(����w'�]���4�-u��0��� �޼�D���=�>�$f�������p8C�=o�F�cb�sd���C�}���g?�>ϰ��z��Q5�J����?<���!�>[F+x��w��`?�>/��q>�S��/���H��Y��~V���JU��M*[g�{��~v����h��1�D6���m\�ϔ������%U�X�f�BsK�$i�_�W�1�
g���c4��D���<�F3H,��%���
�K�?F���%���΀�J�}���K�=an"b�{��X�]+x�}�[�f��-�y�:�l�'N��[�}�n���[�}�Uѻ߂�&������a���l���􎆿�+H�����,>�{�a}wMx�Ֆ����s�T�T%�
�+TE���Ks��J�>�7TM���6��.U:��f���>���f�~Je��kF�K�����o�������-��Z����>��f���S��*�{� �k�-�>^������__��1�B��V�N��B�g��ZB��
3T"�K��E3�UD޼	\̨Wz?yO�/�-E�ݝ�&�b*��d�v��E�?�|
7�=?b���Q/��}b�E3��ϛP�*����*L=?���oR�::Ua�[[�)�jP���r Vb���*U�M'&kKmR��i�ڥ�ٛ�h�uHe����Ԕ(������Ty�f4�����-o1<�զ+��.�	}ތ7�P	�`��EϏ�L�n!t~��w��}��O�@߄�3&x��9M�}I3�}�M콣C����{��V��]콟�����,]�}e3��-�Ώ���!�ؿ/]�}0�%F��b����V(��h x�����5C0S%��d0�1v��Y2��z	��%4���~��G`�EB��}�<,z�l���L,������m��B�f^�Ie#� �\��T=y��C4$��y<��߸6�d�����,<����y�ڔ����]h��Ƶ)3���>g
}ށ�f9���@�0]�)�>MU8�)�ˁ
�����"��|_��h�@!�~n<��)����Gd[����dD�e	�/B+\ѿ_���a��_b�N��ȶ,�w��z�lmYb�異^1][����%x�V��%�>�1][���ᵢ�/��q^+::K�}8�Տ����q�ӵe�w�P�}�ꁟR��-;��7���#]��U{۔�u���߿�m��"�́���)�����7�M�\��h�o`���?��-U� .����o\���
f����)���	��G=~�	����.�7T��#�墹C%�>$�.��}_E}��?o
L�J�=Oc\4�@��D����o��<ҋVк�>o�G3*��j qm�E�c�"�P���rq�� x�&�h�[�s��T	���X� �oL񭭷��7��Uޏ/@ۊ��ZD�7�C��^���!�r��ن���j�J�Z�ͿQmJ �����jS
X��G�C��Vf��7�Mi`��8�^K�<�3U[�<�Y��z�7�M�`�fT�y~�W�����p��{�t�S�;C am��﹤�V�+R�}[>�V�{~D��7Tk��*�� H�T�｡�V|�    ëV~�|��x�M�=���f������VԽ	}N^3TB_�Cm���I)�}�z	�G_f�����5��ڄ�G���B$�9єf؅�ǙѢ;{���o$����t����=ؿam>��%2��oX���բ�.��B+��֦�1xA��am��F�%��kS�X\kŵ�Ti�x���jS?������)����@U^��Q�A�:��G��qFx�!�y�Y/��)04��~��'��^������E+EB���
����#�O��Cx@1Y[���>_�<7O:?B�w㡙%
����?O�̩S�s�*�x���{�H�lm�B�C ��u
�O�������%i�J��	q4�_.������|��Q�tm]��C�p�9{~E���p��#
��jS>�fŢ�Am�'��_���!Y�j�9dS2{J�������n���R嵤�����kSB�3Z�֦�2���X�\߰6%����h�oX���(wx�-��noȎ�j��Gi,�k��|�4��f�a�b��	oH�B�[�=Jc��k����4<Gn�t��������*��Sn�E3Ub�������$���j�O�}5Kdp�~b�j�V�k�����E3k/�>��/�Y{����q�<��|�ͨ�-��)T<������g	n�{~��7�(��u��GrG�-��}�'�,1z��l?N�ֻ�ņT5�-�k��愲���۞�6'�ݼ�
Ֆj�{3��m?N�B�%Z���2Y����2��'�����>�Xa�J���(�8�֊��� �|��r~�#�f +���wĶ����i�����R�@f�b�i���[{�@"�!�*�y�1�����{�袕�{_�z�������,���V��ǭA5"�V��ǭY���ǇH"�W����|TM�=T�m[{���ڶ&�>[FU���Ǉ.Z��	}��3��lsFYأ�!�y&��<��D�9��.���ٞ�6���3���󳥲tъ�?�m�(C@�z�!�'��8^
�أ�?�mN)C��f��Ty:�Erm{BۜR�63���!���Zz�(�c쁾��*^=Z}z��^+nQ���4�=b��1C5��oC�7t��K��g���� ?D�G�.ZY��Dj-�!�!��z�
�C��H;�8v߆�{�ƺG����u��Gj���7S��*�cL׶)�yD�Q�)�~
�V�D��иf��)��Z^���A�Ϣ�*B��D�9����gƜ�)U^�3���愲�k��"ۜP7ɉ���9��=���	lsB[a�ֶ'��H(�7��ǜ�*U^��V��'��	el��E��g�X���,���z��;����Фc��-�w���G�~�}>��f��[�}=#��f~g�b�ˆ��B$�>��[����{GhG�~���"�>?B�18�b��m���z�b4�-���;�Y/���x��l[�?�3�����}�yB0w���|: 4C%�����h�P	���h�T���㢙*���[�#��	e𾝧���)U�
�����������szD��#����`N���$�j���j�GB�WzL��j�GBޞ��=����PF�w��Ti#.X)��c\��lm�E޷}f�l�o����⧶�"��@���y_�H�����o��z�_����6�f�/B�~	��5Ƚ�/�F��zzwLx@���7Ǆ��0�j���<�t E�}:�Eθ���.hh<�����g��W���xD1]۫�{����*���
�y�U�}d�ErΰW�����#��W���!��I�U�}iPĖQ�>��1Xhu�%�}<X�h�uK��h�-���ʫ�z�Ȫ�[2�p�~��[�j�����*Y�$�f|Z���uX�Ev��6h0�Z�U}d�����M�?Ə`����͊����{����]�}�h�slΏ����i�7%�`ۻ�,.�`ۻ�L�����]�}Ԛ���]�}��"��w�w��׶�ϩ�iG�m�B���#�������B�>���M�~,D�C�}���6�G�}RO{����Т�b<�S�Xa���ǐ*���7��)U͏h��K��_����cKem�������m��T։��bζ�"��-:B�>�T���#�����<��m����a�g�B�1�L3TB���{L��)�Y+���"�^����}	�/�F�bƶ/��l1���~	��	���D�B�Չ�98�G��V�8�֗��"D����G�=���.g	�3���{_����/��Ax�1]۷�{p���l��l1\,B۾�wr�����nŎ.�|���&w|k���@3U=J|�7wL�g����)�=��VP�K��^f��T��0����'U:���-U�<<����S/���R�4V�+TM*[1�0C�_U�[�f���{�Yͬ��̻�|C%�>FՊ�	������G��"�k�-���P�h^P	~>b�����
��x����z������h���-�y�#�"�[�}�4��=�.&�`��+���o������ׅی�ȣ���e#6DE���4�Z���E+P�������;� ��=-���Q�Pa��mO���V��$�N�f��T�{��.\�0�ж��fT�r\a��m���ڎ7��g	�LU�*oI0jl�;�ж��-<�^�mS�:M#B�Q��7�����Q���/Z����g�Q����gd�Z�ߏ&��la��$���&AxB-�7�w�sъ�7���>�V�F�D�g�x-�&�;q�kG���f�y�"��h^�y4�w�s�"��9w�-Z}����G�C]�}@碕�x��h�޷�@�{�K	���� �޼V<��]�}4:���iS�Xe�ܸh�1mJ+�B���������ƴ)S��k�7��g~��`\5ސ6g���(��R��`�7�M�b�
����ӥ�[8�i�ҦD1�#�%�>��{�F?�އr�c+�1��cy4�xBS�?��Op=?b�3` 1�:dL���F�֎)���$ft0��l�:x����<�>"�vL��ʁ�
�O��Z�~
��D�y-��Yw���%��.ZAk��o\Z+�7K�K^�0"�K�}��%F�r���%���%�~��E+y�s�*ȿm>$Lc�v�mN�*���¨�F�F�9Q��ѳ|ڔ(�a��x�|^^�X�<ހ6'��Zh�ЦD1��Ў7�͇���ѿyڔ(F7s�c���^h8��	c���^�=Gr�{w8�Vt��O�}O��anP	��IV.�T���'ٌ}��O�}��]a�J�}n�%��	���*����f�@�?����X�*���>��f�(�� B�Oß��l����{O���s�-��B0S%������-�{��y�bo>g�^\2o����q�L����;��_@;߀6������F��)U��H���Ƴ)Ud�Ѥ�x6�a�Ì��gS�X�*��Цd1�EÌ��F�)Yl�b-T]����m5ߘ6e�!������G�X�?�E�}�O���!������jV��pO3��Y���F�XeOgV��(��*q-�w�DU��*���JU���U�=N��_�YE�΃0��V�����rsV���-8�B%�;	�kg|_���q�~6����yь�7�����V(�>�uъԄ��C3U"�C���8a8������j��j Q�l"oΉ/d���ks����j�amJ�?�]��֦\1@��^;߸6��ѝ�@��9U�%�P5��5�x�o`�R�غzՐʖl�݈����)U�>'���o`�R����vv��ѣ�V������3��9��#gc�T�B�Gh��^;���� 4��y���#��8�g����q��B�&��~��5��9�s�O��Z�����1cӨ9��5\+���S�}2��6��S��g3��9��s6�&℟9��w^�s�͐�{@����S�?��aF��b��Rf^K�?B5��
��6g�E�����9Q��P�R�5�0�1=�mN�ˉ=����D1;0���6'�!��+���~�<^�e�|Bۜ'��ui�ms���<����W�q�،e�s	�/��M��߂��tv8    �-������o�7��ч��s�������5jn�����V<�-��t03xm��]���w�r��{�<K�^�{�מ$V��|^<���O�}���Au��;C���A%��ڊ���{���E3Ub�^�*���|���E3�%��G�X��~��3��=������⌟�|�Ճ����Ķ9U�l�zbۜ*6���YOl�q�H�ٵ�ms�\	��&U>�f��T�Xb�bۜ*�Y�S����h�Oh�S�
�����U��"^+uV|߉7Y�Z~��l�k�W}�O��h;E�}yQ�h�"�yc���*��I�@Qz(��4C%��]a�H�=Lc��d�"��iE\����>n1rkWy��ӿ}�VzO��h���"D�D5~z��ʮΪb�C��h�U��3Q>�
�{&�����b�9��G�*�y�~Ej�z�������2�������b�[���6g��Fn�z�����Vl����6g��x@O`����rb�v=����ch�qr�zۜ-�ݢ�?�m���}�v��	l?�c���Y]�}+!�+N�Y]�}l$������c04�������g�����=|N���y�ѵ���geP����w��:F`�����cxB�]���{�[�P�b��N��!��� ���5��]����zw9x��)�!��B��ݐ�z�W��*����T����{�*�5�Zb�!��~�{���
���5��zC��aF�َ�l1�k�q�"�}���_���v|��ax~Ŕ��v|���3~���#_��N'B��/FWːW���#_��mW���#_��+�C^ڎ�|1v:&�V���#a��p��Y���b�v-���9�����O���\�t���E�"�v-��Y5�kۮ%���0ß,�7���m�Zb�!Vk	�w�DU4�-���s����b�/���'k��Gjx�خ-���4C%���"�բD���֬}8�-���Dd���{w�Pdخ-�>n��a����.gx�����{�T;�H3Tb������{��t���yCU�ʛ��X��M*KD൘ݼ]*�n׋�Ր*�c��M�컽.��ZR�e�0��[���ĎS~������V��W�q.usy�B��ָś�~�B�qJ4̀z�� }���[�}�_a�J��/E�F�K�?�_ܑa�o��>U+j/�w�C�q�.b��bxڅ�~����]D�]E	�E�?ڱ#�.��&��Z���,��J�}�5UA���Ϩ�X��}Oc��
���k4�ȱ�����������zK�W��`�H�����y�*�7�Z�@ٵI��v�C޵Ke���ŭ���*���)Q�kǮQ�.��;�!�_�y
��ʡ�݄�}�M�}a�v�k�M�}3DT,B���ޓ��>���M�}@�*vtv{���5��M�}�M:lw��)���`������Ek�D�]��Z��E��ӸhE���{_�8�vw��).ԫ�׶��G����Ȼ����W������c�y��Q���Oq�	��@�]�?v�ر)��bo����3��]�}L2V#�!���9~�z�|1,sٱu�E*sM(1b�=�Ty��l4��1�0��.����U��v�!U�bǬ�S��Jf>��$���D��[*�g��w�^����b��)�'����0�#�vO���w�l�/��������/�'��n�~_(�3��~ߜ)���S�}� V,��}����&�3�|_�x��{\����u��Y��θ�UB%�a�AF��^����i�H�?��w,I�K�}�V�Z��zߐ����,���3��%��T�X����b�HDt���mպ#��ot�ӰU%J�Rق8���7��_[m�̛|�۞N5Dc�E��o{�jOrG��۞�u��~���4�L�
Ֆ�F��X�f[~ox�R�X�[����vh�����(����G��S�bx���~_��k����LU�zܥ�����>��������B�??��cΨgnϏ����4E?��h�[�s�*�*��{���k���Ԙ�"���$z���q߂��K�̛|?��|�����&�-��)B]�f{~��#����{=-?>�"�>�úܡz���)x���pG��*y��H���z-jߥJThF�xܑRǂQ��T#��eF�K�4-@3k��J1� �Ʒ#�9�$��:?���+iF�U�}{��}{sM�m�p:U�}�5��
~^�H3<E|�X�E
��ID)�pϏৌVZ�
��{=/���M�}yJ���G����4�5���V�l%�%����J^M���1�X����#6^,�7�7���F�߇v��-�N|u�M�&���C������i�.�_��;H��~�#	�s~�T�-��p���h��K�F�i��~#ܔ?F�����YF1e��pS�!ֽA��J;`ь��F�)��ߵ.��pSÄ-~�X����{$v�
�:��1��hQ-��Q��V�'�>��Zz�!�s�>���+�>JD+j/�����k
����՟B�Nך����p2p�{���$<H���N�����V��)����=
�|�a��{ϣ�mq���}>ېf�(�>�uъ�/��m�Z]�%������%��=�b`��A���BU��l�}<���r��6e��q�����L�d1����U��gI�6����-��/�n��n�Ic@����mJc�fG7�oS�C�]�-�y�4ͼ���\z�y-���1����?o�H3Z�|"�=C%�y�V�� ��{���t��{.��/�'Tb�9T���?��I�v�<�{"��T���j��uΏ��L�����}��Uj�G�}�V^k�=��/I\�,Q�}�k\4�Z��t�nn�|~�ޝ�Gl{�b�s4�������h��~c۔<VX"ë�mS���4C5��3i�7�M�c���E��gI��h���R�h��lS�q�@�F�)w,Tw\�He��������4�D�����V^J��/�#�����d?�.B�7b���.b�6��:?b�k��p
��*�9��f<�*��gµj4�*�>���`_���b�t�w{�~�T	~>�f���O�����#�D!��]a�H�=N�/��g�nbo�	��(��}:Z�V�b��X:�P��9&X���	ls��.�Y�.U:��f��O\���U��S��q�[R�%�4�9>�m���usUr���6g��wpG`{?�m�c�w\�H�s�=��O`����A��(���M�i����5O��w�;�٥�����I�����EߗK���>���O����h�C��N4����	}����{��zq'��#��J�����o.����ϛ,�L�؛��V�bo^]�;I���	}P�b�sf��5����Q���=�>��J3�5��%RUB%��=FU��b��ch�3��Ol���n^+�?�m�Ca0�ZS*sN����Ķ9{�����ms�[Ό���~d��y�����J��4�A>�m�cy1����6g�ŵj��^�4+���|(4�T�}���f�_b� 믯�߇�)�K�=T�hE��اDZu}��"���/��{���q��E�7=���{.=<��[�=N��
�����g����8X�p8[ܽ3�G����O�}��S"�x��'�~�ؾh�P������0C%��Q�h�P���3b�[�'���c��%�l����1���E��gJ���Ւ*�O��k���ܱ��3�*O\�s��{|�ڜ;�oUa���)R��$�%V��i�a���*���f���G�����I����A��#Tb�}��������z�
�yŌm)B�=�D��z��-�V��O�*�E>���n#u~��SǨj�zO��.����4�{Q{��QkP�A��G�?�B0�^b�]!^+�}{����>�
~>2�f��*�y�E�Q�*��s� k��*�y/|���������??��
/?��u�\w�:?K*?*�V��Y��FQ~��#u�f���HCϙf��T���+��u��E+*q���+T��    ��v~d��S]����y�
���|mi"�Ao1�}yOj%�*��*1_[����B��9�\���$>�ų}z��'"�-]��a�4�t�w��9�\�؛g�����t��Ak�8B%�y_j�Y/�� m"�kK�|�͠:��'���tmb��Tq��O;S������/	.H>?b����������f�B�c֬W���O=&��)cI��Ň�-U�zD��?�Zn^3<μ���0�ZE*{@��,|9f���=w�:?M������K�v���O{�W�9���������@lθK���X��w1��F���}ߛ�W�_��A�rŷv��w��Br��#��i��%�>�FU|k���V�Ib���&��"�ǭ�v�����I���K��7]���{_^�y���{�4�w��b��ZiF��b����,[��7���pN���9�������d��D��]�)U:[#�P-�l<���m�[���Dh[?��s
��AuK5S�4CU����h�PU�R� ����<���E��<|`���{_��k�P��g��f�{�y�Vܣ�{'�_4�Q�[�}��"�����i�:�7T��i�㢹B%�9�4�P	�{
�Z��w*c�9�So�Ϲc4����\,q	����X�z	���JW��"��5ǱԘ��E�}�4����W�}���p\����w��nk|�{���J�����Z�)w��&�_��dy�f����5��Z�Ty�fY��wؿ��[�b��۬E���"�p�J���ƽ��O�*OԿɵ�W�Y����������b�9o[���]�i�M
�wd�
�U��'�'���N�.����y�M��+��s;��#��Pd�G�6���lЌ�l���B���|_����_�E?��J3�E}?�<B��D�������D��Ì�C}wP�>�=?��@T�7����G�K��#̪3�����dX����]�}�,z��7�M	d��U�(u~�T6�p�Jђ(-����-�/P�9����){�epx��!n��h奊D�-��̼n���8�ȿnJ#���qS�67J>?�"�C����w�CY�B�C;,rE��އv��v?���B�3�O���wp��N�w�6��O���w���G��'h���lN���.�
n�|~D�G��rĢ�:�{E�$!�>��{�v?��W��*������#^���%��9��G�[���i�ZB�~P��%�u	����rbIr]B�����E����X�\��v��w�Q��Ʒ�c��0C����kE���)s�/ǎ�pS�1̸�7�M�c�E�[� 7e���O�oS���ox�����U�ot���q��ۺ���u.Z�"����Ь����g߉�޾���'Î
f�~b��jٶ�'��+иh���:ü�}sM��5�%��.Z7D��*���K�%
�ċ������7T�-���E|�n�7ׄ~=�x���{w��?���l0w�?o
D3�|vF��t�v��χ]�F��3�(�^3�-��/z�:!��E?-���Ʒ3�/t,0�P�R�̱k����4��k�(�J5�s䡶�I��8�����v�#4X�No|�2���l1yۊ��eЍ�ڞ��N���{��$J��*�����k۪��y��Ř�mU�=u�j��>oEF3@T��<���a�B�>o-w�:?B��/Z�nT��U?��C��x�A5�W��"֊	(���&_���6����j-}�|�!ͨ|x��hekn���x��J��|޾�f���B,���4��ȣo-Z�֦�1��X��ް6�M��1��Ƶ)q��qm{�ڔ8vSŎN{�ڔ8�צ�h�o\��P����O�*�D3�����1��ઽQm����#J�����Vޢ�{=�s+��#�yk!�u�^ꈆ?��#L��*���n�hۆ��<�e,GnC�=L��C;��ǆФG4�!��X�%
���K�m�Ϗ����ȴmC���1�8�֦�{=HDXۦ��ޭTq�T�b�}!4����4Z�_Xۦ��<�}�ڶ)�>6t�
S�}�<��Q�6�����]�)�~����ܶ7�M�c�5����)q� �haod�����_�mS�=E���mS���Ÿ"���mJ�'Q�٦�1�s��n�ۦ�1Dq0�.�T���zVt2��6�5�d�2���(��a��E߷e�js�m��X*�b�m��$���!��ߏ �{�7y۶����,򯛹��#�fޥ��}i�J���h^+��}�����k�[�}�0���O���c4w���O*�*�����E����8K�Q��,��<�����Ջ�
����U#H~>����ໃ�=��D�9������Ot����F;�K>?�T�oE�7������1��{$��'���c���Op���Ѝ����6��!�<���ҡa�jJ�G�{���'���c,���-��v�
�E����}��m/B��K�
�Ȼס*���>�O	�Ӌ�{��m/b�^�e���"��c�o��7��pf�|�2�hE�(��CDTqd�W��"�������<�zǵD��W3HT��,ԫ�(Q�}F���
��k,0|Nz�f��W�����#��U�?����%
���n֋�m�ۜ;��c�u���os��=��*R�f8�'�͹c�v�p9O|�s�x�@����c�T��ۜ:F�����1>��n���Ա�W@ݯ���b/�w�����Gpۻ�,5걏T�B������?��Sۅ�7 �����w��I5���i����Auz��M>z�K�]��-ŵ�}���H�!��ӊ&s�}�#�Z�,���rK#��zsK��
�3�>�ff����P���!�~@�E+y�f��p���#�h�J�}���mbۜ:ƾDĶ��m?��/�q�Ol�S��Rg�kU��̼V���{�mBۏc��C����Ol�S����kM�����O.��Oh�S�X����W�����/���24zm{~D�c�f4�%��oPb,I�K�}�U�����5Z�
�K�?��z���%�+�z$��%�� �Y�����׵_b����c���'��Tw�߂�Y��؎.�|��*&��}�	����Iߢ�1>3��}���v�E߻B�I�)�-���C�������Ng�����ET;~��{����L鯯s��E3UE�t
+��*U�MՎ�j�G�\�Tu�r�s�jH�r�a�Q������Ԓ(/�A툠v}$�R�b�A��:vEޜ6��{�����<n���V��������g,�sW�|���E�J�=N�Mƚ�q�{'<�9�q��o-��[$�[��=��+X��/�f��ߏ"�{|�<�}ߎ%�-JE�}p��E��w�Шy���}�lE�K4�"��X"{����oȈ'[I�"�>xM��y'D0�^���h1k;���s�f�?�H3j_�9�Tc��Q�Ti��I��$ʣw0�R]*K��z��T��3^�:��;��Ւ*����uKe�������ɕ#����W��2"�M�?vc׎&����k�&����c9�hb��Z�ob�3ۈk�����E3�%�~`�j$܎&��؊�#����c�����b�iwv�G{�V�;�}��V^J��R�<��{^+���(��1��[z�X����#���D��͇Р#�v��N�e�c<�S�����c��@4SU�2g�ڏ��&�������ѥ�D�c����Z#�5���4¿��X�Y��h�["���Gtt��U��j	�c�}^:4b�vL��)z4�Y�RB��x�#�S�=�-���L��S8�qf|h���)�� ���0�EL�wW�j�wv����P�~�|>l�f��K��`2�+��K�}����p�XBo������#i�%��KXbx�%��'�Lb�>h�+>�K콏���َ%��L'l�|_�g���|�F�;��~��2~�b1��U�� 8v��ݤʣ�0��]*��5vG{He�`�O��)�4��%��(���co��޻#V#��O�����Uy �  �.�o��އ��E3��	���\/�;T��X�h�P	�t��z��{&�k�J�=����%��X2�+Tb��f�x��ϒ�+��-�><���Z�y�H_��^��{�j׸��$��k�-�9�3&k�-��W�/�Tb~�,Q�=G~^a�J�?��i>�"�> �#��E�}kW��_T;ߨ6�������jSZ�d3Rm�զ�28�Y�.U�h�1[;ߨ6'��^���7�M�e�Mm{~�Ty��Q�|�ڜZ�{��v�Qm�,C3H�Qm�,�;
��^f0�@���@�ȜU�}!5n��˩B��x�j��*��sX���wO�=�*��3v��U�=y�$ؽ�M�}����e;���� �$�&�>9OY�2E��@����Dߗ,�QD\;���J6��lg~��,\~~�� 6�lg~?��7�	�ل�c�{�����˩Q��u
����ۣ�lg|���忁m�-�w���&U����lSn٢*>�od�r����-�od�rˀ+���9��G_�kK�����m�lSn=X�G�od����
#��o`�r�x� ?D�]��s��Gjٌ��s���Vd���ywMhϱy��}y�����@h�?�b���,2��z�Mx�3�O���]���ڞ���P1������?jCI3      #      x������ � �      %      x������ � �      '   �   x�}��mD1c�
7��ck�2�?�m(9}3��PV&QR��~{��_a��:�E�)���(�g왱:�k���[g��v�i�F�ԩz�l��ϸ�#aY$�H���E�8��*���]2��3���'�}�l1���ݻ�!�1u�l���8�ǡ3H�Ztn���sĥ%�v���+��ޠ�{gxi��ޞ����B�?�=�Z      )      x���Ͳd���9f>E���m��%��xӬ�I˪�e��d��5k���'�Lz�~�X��T����cE�d��0�7��|p8���ҿO��q����?|�����㟿�����>�~��������և|W����o����߾���>���Ͽ����?�����^L9�|+f~(w���������[�1��C�+���_�����RՏ��~����~�vQ��/�5�EK�T8?�X��?���M�>�'��|RQ?,N�{�|�tܕ|����?~�㧿���҂?�j_��~y���vc�澅�׬�/����8�4�C�ow4�^�i�o�����]K���ǇtbXC�G��?1�+M�֥�}38����r��M@����.���{�Z�R:>d�@$�4r�^g"���Tę�j~o��!sn!�ry8��Q|�?~���/�>����/�~�єm̋9e�4@�Mq�"�D3%��A���y�|�G�4�Y/~A���%�J���$�i�yi���6��U~����7�?}��׏Z��u�a�^�Ə�����o�~�HR�Z�����?����/�]�yM�S�GZ-�-�8V+ދ�.V��D�4��k��tk�t1�J��5K��B%�Ś�ڳq�"��Ϭ���e�*7��o�a��7�~����G=l@��5�����1��������ȓ���C�B4�?gY?إe#���PV��K�g{v�9�L�|�D5s��2�H��cR�j.~��(�M=���c�x���_ڇ~b��D��qy�N�h�e��:i2�$Ӑ�1G�q�S.c�0���Ku�"V�f���U�?i���e��E�v���3�������C��3/k��aܷ���X�0�;H����l��Q�_6��(T��E��K�t���xڋ!��3�|�dc���B4>fjB�k��9T��N�9�t��M�DT�����p��r��ߍ�	�T{7�&R���}'i)O� ���Tf�8�I�D��,MH�Dj帴�z�]H9ˠ�b�dV�-�L֥�뾙|�I����_���O����뗯~Ӷ�|����H��E����E&jN�g,2>FKg,��e�u�X���2G��FD��Jt����tpF�3s���J|F�3�5=�Mz����R�{<^��&Y/Og!"�6]Kg""Z��R@ˉJ_�J�G�����G���P
�gd�=�j����O��"Γ�<.�Fލ�*�Ǝ@U�l���^4/��Et�2�'`"�_�8���� ���Ꝓß���C�� �����P��p���K
�	������^D��8,��T]DI��~ F���H3)����1�-*f[�#r�6zc�e#���^ճ`�K}��!�Hh
Ph�ܪ���i�!��_�4�Z.�Hl8��wDb�"�Hj��\
�h�:-�'
 ���[��K��p�TE�֏���"�6iz���h^:��� ���]~~���3Bz�C����6�#�2��Y�>iM��f`�j.1#���(��q
 )�[I�/ȱR�j����R5xd�����㑃KR�Ko�c�]|��4�E�/@��z2,#k��M$�bQ��R��4�x�3*z-�г0z��L>*����Uݐ�()t���!�P�pCa讴��I`ڇAI�x1=��7|IzڇEU蓒3f+ޢ��̖F�H�`�+�ɼ�B�����wM��h]�;�4�-ɧ5UQe*����F�Mo�Nq�-6Uтz�H��z[�J�MC�y> ,pu�|y�AT��QET�[F@QߋZ�YG�N�m���a���æ*��6NE5�eJ9E���$D4/(X�����]����_?}u���Ǘ����r9�K2%f9ZPm^�}K��o���<�Qś�W�G}���hƙ�O��;N P�W���'m�fJ��_�u��k����.R?� �B�+ֳ����!�%��|�N�E�F�����q,����1l+s�TD�Uo�''*_��A�G1�U���qu�̑e���(��>�QE��q��qT]܂|ŀ�B�|����Wmۏ�����[a\Z-��l�ì"���*yߞN�����1��⡉t���3�`��&�6D3iAP�aX�n`9sv�|x�R�(��R��U.UT�\��s�UD���o搫�V�������2e�4�!8�8��)�mZKx+e#�-#09`������ m�E��h��q<V6'�������X��r�coZ����}�p%�	�����p��ai��FR���Wu�\4����kM��(s��i�s��\BE�!�5�&f>;�q	�������я��DUQwÁ֩�f[r��"�Œ��h��l�>�5�-��ީ��^h������gt��s6�\�|�`]��p���Ւ�n}���e��h��I��RE���v3���r�꾱\5�hl�ik(U����z2�^z�� Y�SU4��8�*�Y,�!s�"����נ�-�^�}3���I��q�]�K,�0s�ui��/8Һ����l��/?����6l�'s�UD�ٶa�����m�;s�UE6��9T4ܞ8�*��fr@\�gN*���!�u4���c�BUET���s�5�V������_
�ٿ:�a����N�qX��n�î����#FDNk{ָ�z���Ԡ#�
N��"j��9.�"�ҳ�V�.���������t�����_]���5\T��e��<wwGQ +�!j���u�={�V�g.�UE�{Ksƣ"��u�]K?�D��WT_!��̇Ӗ�퀭�Ý��Q��_8V��b�����C�0�Q�[�-�M2�5��Gvڨ��U��]EԳO�
i�(Y�`� ��j1�PH�^�[�� �^>��y��B���	;�(M�ػ3�-�J `�|�˟�}������h����G�&�dI����l��<�%@��5���R=%`��G��mK mOk˨@��`�[(|���,������0�5�6]K@oC�/��h�䦽Ft�ܳ&�������5۴㮅
�U��Q���������ݏ�S<WfS}$�Q*�v����r�i�Z��KQ�8�Q��2�
��H�͜B�[t��wB!�-��ߎ��(_U��CL�x?{��nѰyh9���k���X�0�-*��m@E���鞌���9]����M�?@���g�)Q��ꖯ�i�E����o"[����h�1.��TT�U�l+TT�9�)�=kșJ��c��**͢rE|�h���/XȬ#��=��[/�4���O=m�4�>t)su;�Q���-���{UǲM�B�^�<|rJ�^�
FZ�t�o(Td��d<�wz���3����w$�7��,�ݢ�k� ��B:f�ݎ�������Y	ho4!�yy�^��m�><�~�hx�%����	]�ݪ�t*K���Go
���V�b��"��+T��-j��U�(�-�!W�ˬ����o�ϋ��B��-*�:s�>l�P1�[4�?��H�G0=zP��iG"z��S�w�`�PYT5��[���5_tR9�hX���߫�լ�N�{�W� �F9��ٵ�<;E��lET�m}(�ݢ�VOQ\�AD�Ǝ�j���Pex1����ގ�Ӄ���I���7��u뤕���H�yM��2�i#��A���s�;��1,���vG��a�K�0[�������s4w.�
��iM�њ����3g;�焨TĬ����C�&1<Ak��O�~��O�~��7yJ�y�^ ���&�~�>�a�R�i�רu����5�
�UQ������"Z˟��s\d��Y��^�JK�&�."��\�}�YZd�i���ԛe�/����'.��#��
�UQI�*��U5��8�J�T��O�8�M%�Y��JEƦc)ٔ���TD�1x%���p��i�9�\P�7Dէ�*DVE�p�@Կ~��������_~��?��O�����/���ӏ_~�����RвER�H��8|W�,�U��+r�UD�"�^D4|��Ra�*��T��T��,�\��qؽHҁ�0�QS�����è*� ��aT-c    x5���󒂊�sJA��Ծ仌5୑ݵY�O
�`��C�4�p�UE݈G=�Ŋ,�W��}��߬y��Je7آn�A����"?�[��}J��y�9��f�d���j���˪�����X���,R��6�ضA�OAZ��j�i��S�E��G�f�����a���lE4��"f����)��JA�[9f�ڲ�>��UѲ���![Y��~>n4�~fk+J�y�!3����,�/���SV�C�"��RS�p���U�Th��]l�k�^�G��+�LCD~P�r�VE��S�p�-�����8%�e�5��'��u9	xm\y�tؕ�"p޾�6�{R����Z9���ʰn�(n�)y2�J�J�"X	sWD�s�Հ�z���_��p�VE�ID�r[$�p7���w+6�Z�r�?�<��R .��4�+T���F
ʶFh�U��4���U��רlɰ���a^��%.h��sU7�@�k}��q1�*��Q_Aj�Q�k�<��<X�Y��n�g� b��x�O�D��p������U�Żȷ� �������-��� ^��zΐE�n4��6c��"�L��8������F� �u�7�q�WD����i��{ߤ�Ѿ��j�RR�\�{�e�lM�8�+�9|���{[dtk�M+�R�"�Hr�$'���[4��H{ȶ	��G�C^~:��7�kyy�z{*�����{	�D�������U�tB�]�E��H����q4����;,죑TwU�YT���Z�ﯷ3��G�ː���ޢEY��������V� 'Z�}C#��4P��S�����hEd,Rڛ�N���H<�"��@�k�	n�ʠ��ei�>4*���d2~x�#P�Ę�+�ϛ��8w���|5�דg|6���k�����E�<s��d����zߢ�#.�VE�Uبk��j�3?װo�.@��f�٩=�rWk~�D{���]д���>W�6~@}��z�t1����"_�_�/W��hA���"y��<�y�bxE�.��dp�bxQ��G�M?�� ��[�����T�%��n>�����byET���F�a�e�tx�z��|Vj>E����d�{㋦Q�Lo{�n	��s��x��ƅ����	Y�Y��� z���&	�EԜ���XD�t:�H��#���rr�t��)�Y�/��8.�C?��W�nY�:�+"�쫈��Q�] ���sXE>�v�����s��*F�:����3� �D�x�΅�nQ�ک����������n����"�Lybb���b:U[EU�f��ᢇ�_o�L��������l�H���ax�s�x���D�Jj���9R,��l��S�r�D>�u.�j���U�.%[n����5\ �f@;*�i��%.�c�*���;ǄU��d9&,"ˤ$��˦�"?��*L�<�mB��8�`H�'�=�����$�PeZ"��;G�E4|'�stYEcA�S�%?��|�S��"�9�,e۪I>h����I���C�T:�8�}���	[�e@���#RѰ<�=@�����)+�[r�Ĩ��wM1i�T=@��;ݢ�;A��q��"Z���YKJ���#��d�Y
��
5�p�ګPM�A����O���L��L9��Z炊���n�b���*򓓝��"�����f���8$�f�siT4mC�s��"�~�s�T�Qu��"�\ѹ�*�>�qYDv��>km��G�2�n��IR���=�e瘱��������he�u�Tz�4J��&��D*��u���U�����fq��~{�7��V�V��%<��=K�/W��n~V���E������/���U(9<,�����-�O�m�x�{|��dL�GN;��U4܇rA�*�N!^G�Z��� S�#oD��,�9|,��t�ȣ<���X���+=���j'KF�O�[�DZil�.��	0s�`{Ɖd���&���n�mz���&�,*�vLs��f �e�}<��p�/���QL㷯b��Z�o���M�q��?���fl�Hv�|��F$���GoQ��#�ڿi�.�<�`��g�4P�E2YD��� �A$ߛ�C����SI6�d��Z�X{(~��x==�.�y��!���;6895O�?��;	�el����>8̬ѩ�9bp�9�l�x��`%#K��F.�o�TN_Ѵ�Dnd�Tύ3�|L�'���{�˯�b���x2��.����Ώ���.��2������e�1��v��4*��"�.?b?f����3��zrf����78�,���$�z17�_rpy�,��U�y]ŏUn�K�E�v+z������I<oR��!���[T�IȕR��ۃT�"�\.V�_�;��*�6�\�	-��;�1���-r��a`�txM�,d���k+��F�P�')�ݢ����������<��x=�4,`ypx��o����h�����J�&�P`bgT
J��|<N�{������:���S��߬�K-�d{�.7�OO�:X�@oQY#�����ߍE�5��ͨ:-W��UK�����}��{pAĢ�=�� "�Xe�}A��-�{|K#�r��؂|��O��A�h�)�면R�ں��ѳ)e��=��� rH֒m8���<Z�� ��������y��?}�������/�.����z���I�ūP�Ƣ��.}t�ܧJ���$�Ʊ\
������S�]���A!"�ĚKA����{�c3���58�"??��b�ڄ�'��n�{�^�b ��U�_�<�{kP˗3����.(�V�x�� �k�)�&GsU�,�rr0WE�B.&sU�vr��*�����n�dH�\ ���HK�p�gr@WD���䀮���G$��3��H�DC��H���'�sUYg to��(	���}p-�2s��$��*���B�Ř���*�H�j�[~t���}�ý"�c39ܻE���G-�/G�\���<�|rXE�AN�g�EF'�qX5~����N�M�}]�����>5�2�%�D4J̎�� ��� `L�2�����^�,dؿB����g�}�Ղԗ7��^���pg�����m%%zb���	�`�I~>[�π	�̽u�b���e��E��3r|X�G���09>�wc�\�
�a�g �oZ}إ]ڌ���� �������8W"��� b,H|	��U��e&��E4���0����a�ȯ�&тk�&ǉߩX;�K_D��Sq�ގ�39^�1�rNM�*{���t�
�/7r���d�3`�7�vZ���K@��Y��l�w��f	Vg�9�����1�"�hr!â�T͓��MD3�����M$+�V��/�����B���z��XG���E��f� ��4�J0��@�({b���[�6�#��A�R��4�o�ن����p1�*���z�����~�·]�&����a1���!��I�&�+BDR9O.�WU�G� �޸��{�3ೱF?i9���"�r|kX��!�������v���P��<۽���J��J�d�"����Ѿ�4-_Ɛ�� �o@2ZYl�Q�0Z����ş��^�����Z�=m;K�3DOZI�~��z=
w�}6T,��N"���
����$�d� �����kɛ�����cɇ��.�JczR�0[0�Z�En� ��d��n��栭��~�@۫�P�r��bp�������l�C�*j�
�=�h�Lmq�zՓ'�^�?V*�����Qq����e|P��8_g�����nXQ����@
j�m�-��X���E�H�v�f�kn�O�}���oV@j^�}
W�"�����4/�BZ'�[�h��	=ܺo�r��Ic��/�[�=m��"��2���� ���-�gq����,�
p/�n���ߕ���z�k^\�MCa�1�}��R..����J,�5��E�qq�2�}B�إL�d��Xg�\g���aq�WD��占��4SXgA��ĭf[ Vܒ��R5c=L8|f�e��O�8    ���]���$���"�~��h���Ѯ��6�L=kP��.˼��,����O+���.��3�_"�^�����̀���Zc����"�M��"!�C,ǂQ$�����o�^\���&��I.c���<�n���n��(���M�*�M�[ VQ��E��8��X��rߵR�f���<�Z����P`y���hYXƯ��2_T��%�C\Tޢe��+�6�iw����*��(��u�8��S$YD��-�u�{�Uc�����*~�c���.���q<[4}�KA�+�����8�bA�+`��e�o0�t@$݂"�[Խ�S$�M��Ge�PQ?�.
'oQ������"s^Cޢ�Cn��!���w�V ����M:C����F��$��7���(��q������+��TA�8��e:}��D���"��U��"ʮD��E��]�[�l�KԔR��5n��ѷ��Ao�o�#��6��}ؖ��6�Yɫ�D�\lQ��9.관�m��*�x���ȴ��q�þ�#t��IW�$֎�<��X;Z�I��C�V���05���S��#��gv�&�@�j��C���H�*U��N�Yd1��0��B�[e��w]������l�
)�*O	�� VS�|��ij�>{�⩍E��S=��SQ�[�yND�Q���*J@���D T�V�u��ԏ�ޞ�7�U|>��x��h�6�
�Ɗ���*IG����nM/�V���4�N�}XԱ�(Ƭ*[������*'w�T�p���<!g���<� ⭚П��"ݻ���BT��YPAĢ���z)*�u�*��F�Kj0&Q�XU��Dř�����JE��`�+����`^c��L5p�f:`�N�k�tPaĪ�[�w�'[��UD��o�
�(d��^�r�C�����L۪y
疽��){QՀM ���EDt�F��cU-��8�G�<�5�o�}��4���nwK�v	����c\@����h,��j��Ū��֠B�U��}t̽���F���F󦱎�^��NKZ�#%QsUUp�g���sTt�wS� f[������ .ߘ����F�j���PD���8�<c���x蛈nx��a��j���zGb�P���"%�1�t�9\m=P)*�VA��Q�!�Me8�,�u���(���� 3ǈSE��!<���M� �=7e�ͭ��Ϣ�f�Խu[����[VU��?�S)���#��Ll���f)	��#�����ھI�����0���Q�w�IU��Xj̭b�f-�2) ����=����>}�U���|�������.�:�ޡ�HC	o)��'�#�Q�!��4�_d���b�<[��^͐�%��g����V�1(���5_�b��H %�4��#�LL��f�K�Rz|�ݻ�)�����fQ���a��KF@k��3{N���-�f�!��8$,9�jv%Wkᠲ�<c���[e����n`�4��bϴk����Ι�w1.w�Z��H��;KEO�� �� $�s�.�
^�c�]SYH_JS�jV�xDMJQ~_S>�cq(Ye~9_JJU�0�(9�R������GK��C)�hU��LZ�o�n�T�}"��XfUY���~��y��]&5��Ý"{|XGEc�H��.��@�6�Q��ƁfUuT����%M_.��>s%Y���h��^�#�����Z�\�[�|Y�8�,�ҝ$�>�j��f��Ȫ_#�']ϰ�V��4����D�.o�e�v7�fF����i�j[���@iD���	�S
���`<ƀnF._��V?w%�0�s�YTv�����	hD��	pP�vf\E��pv�����D��xS-��嵺��`��zl�.�c�ǡU�aY�qhT�s!�[��2Q�1�j9+Nu�^���'��9�y�.幨fUgI��fUM븰fQMtGgq�>�P̱9����x.���IR�r_l�p�8�*�dQ��5�5[��`�7@� *?�ZҪ0�8�VMpxg�\���:E�5[�q �z�0��ោ�]�&��=��
6��Ue� �)�Ql�'
,o��3Hm�_�'�W�߼������Ney @��o��ϑ)���R:��̔�X���cf�o��-�.Sml�ޓ���SO�2ŗ���4;SA̪ڝ)����� DE�FW�-�v���� & S�XT{'�?<�C�M�4S YU���kQ���ʏ��9UNQ2��xkfi�:�Z.��Ue�]U�KIF�L�o���B�P��j��q~9{�.���$S�x� l#S�3�T�	(V�����EE��d'�՞)B�U��XT�����^@a�7�� �������뷏����|Ɔ�m�����L���|<�b���	�Z��$2)G��Q6�s�Lo����2E��������VulW�b���a�;���V-�fT�q՟�z21�.������V�Y}Q���S�P?i:~@V�\*8�MN�B���~�@�
�yͫ�N���-jI�y4e
oFe��l�Hu��KL|E�SH*��V�&X��zU

�
.�g.�؄������E�.�۪��'��2��2�oY��X�VG#9`�L���<����ZL�,���>|�m����Le>VՀ���bª�~�N�ު���Z��i����E&��2���;���ނ�d�C�B�[�`�E�`UY���_��o2�<*�XU��f���xOKD��qM[��\R�`�V�
oJ�!Q58��)�U�'��+�ޛN��L�aU�滾#�U52�G�U�3z��j&�xT��j�#R~Ge�o��Q�]�/I�_��1[��o!�d�vT��������`U-�p�����D�N*p^2s�XT�uxW�tRk���㭺z�Ww1�$�9[g$LVe��W�%��\�#;�(T�V(&�1�dGS�j8�#��켵pDXUc��q�@�9vሰ�ʀ'd�(E�kU|�w���m�plXTvńV��땇���5�
��BU���_[H�{ͪ92,�r9x�_�#â�s�꾅���j��K�8��.��L�kz��ǺǉQ5U����n��E��G�����>I(��X�=�d)D��֬��,d�go��w������d� ,	V�������7b��T���Uw��+����!�	.�G������:+T�YH�	4��XL�VqҪ��¡_Qu���C��Wo��EJ�ӈ%��dI� ߶�e���9@���3� �ۚ����t� 4恓*dXU)9,�UU�K� �N�{% ��sit8
W8����Z����yxT�Po]���^�,��R���n�0��Eq�ԣ�#3���}���V�,2���S�OMy(Q���U�S����ޙ25U`(7�*xҀ_y�t�)T��z��#���]	�ͣ���`%���t�l��Qz}�
���W�*�<�ʦc�a�Ш,���8��F���O6!�H�诪�>%Q�'3޿�0�Ⱟ�VZ�
'W�� h �.b*�w�.���p�Y�T���� �ca�o��+T��VuX�H7^�J�v(����*C}�ப:,%8�����aH+�]���*��zy⫿/~��p!���fq˽&***0XRa�"jX8����q���U�_4(*�&z�]�P[b�_K*�S�����5Y��p��������H������*T�'��*�%�M���z�.��c��3!�a�-W������v̉m����h�zy��Nj�8�Vy��\�N�+�ʁ^UMxW.U��8ԫ� [���W�$��V*���r���j�������!BT�w����{�I��o+�B��5 �D�JI�(PeJ�� u5%.BXTvy�E��o?J�n�aQ�B���d��C�k���&ԫ�>�U⪀����@�����D�RL�*xb���4IT	�o�u���$�E��P=N6��'U�!][�"�EU��qQQ�)�\�&"��0��L�֙e�C�M�[�{�r�_�`bQ5�{NT�������L�[�P�0[�.�s�`�Q9r����^�D���r�XU�'���V�Wo~qҹ��*5@ǱO��/{J��VU3��Il�� ��F    �;ު
-�d^�] >�\��V��1@�g�K^�i�4��y,��7�G��J9�s?�C¢Jvi��H�)�d嘰�0i���+� *����Q��r^���<�}C�u�ep,VU��Z��oF@�X��H�S&����A%��*�G�g��h��ɇ� ���b?j�Lڈ7�*.RXU���r�XTk�꾉��������h�]/ƞPR�s��������/��/��_����o�������������/��_�����R�B���%^O�X�d����Ԁ+�j�s�P�FTv�Z+��E5V<NP|3nh��U��{X9�,�U`)C%(�:��I9Q�s�[6����\U��U�]�ʁe�YȌ��U�K� ,ǮI
0�ߚ�VՀ���.�������?���A@�o+]�7�+ǖU5ݼǖߩ�K�����"G�U�<Z�qa�]Cs��z㈲��uq֢*��6.XU��6��|\]�ըt�[6<"q�@5�Mm� 
�����H��F\�-%0����gX���]������V�l�z8��"B����������o^�O�,�Z�!6.x��_��d� �O�9Pi�\��V�1P��z����!aUa���e�Y��ݍ��[�]�	�'��"�\:��+���ܸqY#T��Ʊ^U��^�c�����rF���5�>��q\w�<J�\��zj\��8��s�ªJT�����q�"TU�Ś	.1GwQ�m��ӏ0���j9m\X��,ǜ�t wo�3��C����w�HΚe��d�^\��%�e	��yU��Z�y�!oX��.�Ud)i�U�T���
 �[�/��+�f3,(|�H��i�q���*6�o���6g-E��͘9��*�n�����Ս#���	�v&��*�, �7>f�
�k.�WT���=ܺ��4Z�o4�
"�,�	�w4쪪{��BV$k�=u�sB����R����e��y& \$����r� ��X�L	��t,3e�H<�mn������1$�i\���PFX-�����yd@paD��v��6��L�P�~�*AF#����pªjZ���yT��H�+�z@]��GìC�$��3h�$��KH��H�;5?��!Iv��;�oٽm�)rkHIW ���C�X-x+*Y���R��^��K���� *-�jBAޭ� ��U�ʾ�ܹ[��?g�n�SU�P�v\UМ�"�[��a��SN>܁�:�vUf�k���^�����wK�/z�,Y���ӫ�P+��^E��:w}��z�#�= ��5d�/�(��ݚ5@C�K1��U�g�[�����\ �����ݓֱ$A�~�NQ�Q@��Ec�w� ��u�j9U�=}����7}g��� ��|�Z������Z��o�.�S��|r�Z�#9��oF��C��p_�hG�&��3kU�9�;E~U5������u�촬�p6��u�&9Q���~�b���< 
�?}��P =Y�n�c�r;z��&����� s�g8�ѹ�D� [I�n��*�?��aNT����@2�$= ��W�Ru�9Q-�7�sW̩
@A����Y��
�,GT8u�n�S��� �>l�T\=�Č��R "�s�̩
n���%s��k ;wǜ��᱐N�VY��Z��\NTxUvPq䥗̤`d�.�S�� �����sR��U5Ӏj�����j�9��_>�ǧ��0YD�rG�L��{�T��;w����t�S YUru�9UJ�5���ǹ��R$y�&�����A�/ ���Z/� )s�ܯl��kNe�9a���P�:$5�]VՀ��No�l�^O]17 ��~?�������8��07���'}h?7~AK�?z@����y��lk���_����~�����V_��X� ��S�y����/�ӒrMP?59RU�u'C�U0 ϧ�`q������E��݊Nq筚8���k�
�R{��8���k?�Å��6���Pcg�@�l��u�0x��W�*�ܦ�Wl�e��ۓZ��
�JǞU�t�Ƿ��,�u�7}�=8-�	G���E�R����KU��G�U����� ����A��գ��U�< h�9�v�{�V��#���mD���נ2O�*��Ae��*8�38�,�2�l�x9󄖄��#��_���t�/o�?����/�~��Ʀ�������,�d�kJ��XT��<,�qD���9�,*�I�����vI����4�e�&W_*�x�`;s�zXn�k�D��Q�b�A��)c��]�qrl�e����R���x	GǝU�ޔ�8~S��sP�[�ѳ��q��]�r:18-�`mP��U5��A��jAƼ�f�7u���{3��U�w�_�}	�A��Tdp�YU�皃��S�a}�9���Z�:O��7ϤߟE�8.4�P䭂$ ��̢*&_d>�)J�*�M5�9�z{�?,�E��q@YT}����2��$��c�Y����5�n8Ĭ�y@�A�#�l�mc˪�5��*�o�_���YD�*r}P��[V������� �dP�%�
Ώ*��M�
6�ƃ�����o��d�*�MBl�ϱ/�ui;E�i��9-T��V��#`�g�ogR5c~KI5Ax����9P0�� �����cT톻oP�.m�u�e��43#*Q�ʙ� ���g��1X+jp�}Pѩ�C��Ae*VՄl���|NU���fJ�o��}�AE�JHCk�#P�3F�5H��\8H,���5H��=*�x�pSs����f����Rr��I��@ު	����紤�>��Kު����S "ipq�s6M�k� �^jS���(���s���������a/�����n�EV�̠"2 ��C��$��ܓD���>4� �~��|�?I ,���zF���.��&|1���ns����u�c�JgrȪZ~Db�x�ǈ'��E�}F>I<5����I%�PY�	��s&�W8/9�l[�+���HU�5�
�g�u)'����X/t�n)�z.�XTW�nR�$T�i�'IvE�er�ŪW�xb0���8I�;����'d�eN���$�UՄ��:�u�V�$��g���$ܝ~ׇ�R����.�6�ݰ�U�m��'���23�T�m��_�I����x�Qի�$�U���`Z��>�{��v���D�s��3�Ʌ��z���B�U�.����X�V�½YVωQ@����~�`"+N�'��D�s���8w�-z�z2̝Z@u�l�y�<aKnrê�if s�圔`[;�w8��*HN19��*�dn\��a/Q�j���V-GC���l]�1eQ[����J���`���*fi$�\��q�WT���[#��g�T��4��aQ5�_\а�:�&��=}XK��[�5�QQu�b���q�K%V��x�H������q]�����v�j��l�	���Ss���wU�[V��[�2x��[��"=KmvA"_�%c��=�	oF��UUr=9ԻUКQ,��ـ�GCg��,�՟
5�rX�qlXU���c�j�e3@���1���O.|[ӘF��(8�*�;fr,x�u@�ʤ�����=�}��߂�U�}�ٜ�������4������t\���ߜ��*��� �F�@p�gq�WU�sq�������˗��iK�/T�$ΆD�
<����Z@�u�z��:-)wg��ު�-��<�����O�,m��X��Oh��G��:Hu�8��4ߍO�V@�����#C�����Pqs#Qu��,�*�,�ei+��g_&%ȭ�8��֚���YK�V ���-`�����GƜ�/�5�*Acq�YU̘b�EO�A2����ѬZ�e��O�X�VM�5Lp��2�,�?o�<@Ō|�*���3>`���+��a��j�P+��y��@�Vu�$�VU���E��J��[�޲����?W觧rV��"��Wd��<�w���U6*��3�_|���E!�-���E!�7�S�E!hU-��lQQĢJ�>b�i')���uƠ����l��] r�E��-�`]gQ����U,*�x�����r��T!�e=    ��׼| �V,�;o��Zw��5�}��&I����JEo� OH�eUM��sQp�J�6C��*0�Qpy�p6ME�ja�����p�]����j��][�2��(�\t��dP������[7�.*�x����\V��{NL{�;�
��-�5��sj�R9��Tޕ�'��uBA�eU�-��5X{i	�J ��Ɨ��6�E1fUٕ�9_]<�8*�x�,k���"SQL϶(ڼU�}Q�YT�Rs�8өz$|M��},�~����Q�
��yU� 2�&��:(�y�ԝQ��J��`���-���E�UUt�o�K^5VU����ު^�1X�h8�#�����a�ūA���k�o���+a��g��O����U4ª|+V�B���fU��2�-��q�3{�(�b�ex��˫ٳvI~�̞q��f�]{
Ę����
V��4��8��ب+��[���摠Q��᭪̙�*K����ŷӇ:s^М��L����p���e��@��Os*�������Ʋ��Րe����(��U�C-�U��0�|��kO���}s�˧?���?|���>������ׯ_~�v��s5l_�l�Q����u��={�u��<�f����e�E��u��@E�*���bUUOG+�����j{-���wA�_�Ļ��� ��	��{��U�=E�>�G�&�$߭�JC���㷒��S�|O�~6�6��Н�6}p�@��&�(����݀���ݻA ��^1�g�P��v���4���V����T-x��1��6e��Ku_2O�r	&����`� a̴�5k�+?>s��귩烃ª�>�C|��_Un1Y�W8:��>���R\�!���Cs�XU>)ǉU��;!��Fjơ���*��|�|Ūʗ�L;#������z�»]@���Ϣ?-�$�������QcUUh��_��U4pQ��-+(�<��< k1����b��0��b���-��[N��<ު����F�eݳو��^��s0Xw���j�`�-�u�}��,��Y�M�u`	��-
t�=ờ�
<eMV���65g@�7�zn(�r�� ��',���[����yʋ��	:s�U�>E��i3/p�H��=���d3%�z��>��\׏�a��!e�(�'/_��%��:��eP	��StG�)��g_�ЧM���/���q-��8��:�P,0B
�og��E�VjpSs:~$@�9%�>�HY��G���Ė�j&�kP�`xV{� Ϝ��㭪�"G�s��H�D53��y�6��@5����%�8q�YeA����[O����9 �jM�����V�NS|Ҝ
}���;@��L� D�����ft��m��X����Ȓߔ��� ���~Wi��o���,7�~=�`V�~P��"�( ���^��gŉc�[5��ݓ_a��@����A�hsn��*Ȉ~]S�����LC7(@C�F��v�-\VՀ>�eʇ�?P�~8kI����4[5:�9d,2��[;`�70��
0s�p��LW8�,*�ɭ#_���g��#y����>kUc&lnj���9q\YUF�`c_Ĵb�%��P	-�
gy�x[��X�X&QT�������c������Ƶ�M��9d���YR�����ԯ�e79pHOVUkP����zɺ'풒^ޢ��J�agU�`g�~�TΉ�TVU�8��?�N�f���Ihԯq�YUQ|~WS���ġgU����(�:s���,�����}�6x}G�l��S�p�V�����:O�8I�x��MhC�Z��BɉH������ As�}��p��/�[�)@���R���R��O����۵>���S@�nPj���4�1�~Wa��Nj�$�V��,�4<!�ZTF��o�Ӓ
��F��6��ռ*���c.�YT�w��#��y�p��b��$Ng�*��O���r���<�F�\X����ͫU�]~9��d}��DN�j��*9��YTՃgr��o<_�սe~��w�@������}�b �h:|��2����_�{Mk0pVPT'{τ�8�|7�.	"t3��b����e2�j7v����fQ�_|�3��b������"��Q��ͼ�-��hN��w�II�X�S�Y4�@˞�>g.ZTe����X�ݘe��k�֚Ϛ3��o��� OotA	j�\R��;��Ɂ��Q~�f��ۊz6�$��\�~\����`kD�2ɡg?<���(�SV���#R#���9`ф�jI8���.���˘�E?�
]=��BU�-)g<�*�*�bDU<�T�\L�� :9s�y�`, �����,G�6<�^YE�p��9Ȭ��-�2JԒ���;�P���7�R
���m�\�-<�6��h0�㸴���v�K�
�K�a-`��
5���q�Ĥ���/�˙vVՂ��v�}c��E;�
���N_M�D��g�������zVU�Y�s�1tߢ��g梟U5`��!gQ��CU��;s��)��3�U�7��\��j@Ui�*��pi0T'2G���e=��rUO'�9�,��a�`��N`1/ۻp�Ye�a��p��k&��r@�n^k98]
�s�x� ml.!�vs1�ƭ�8��߯���d�M5@u�Y������zѬ�0�d��O?��_�}���	����Q~,䠲� :>sPYU+A]�e��U�a����  �gs6/@?ǍE��x��ʯe�]n�� �y5) ̚CȢ���P	r�-U�=
�p,YT��ǒk��d����U�eZ���y|���f�Cي��'?υOV$�e,"+��HK@����4�6��PV�E(g��9ET�#��cbU %5J�Q��[Cg5�@�˔!*��C�cǪ��&�cǢ�|
�CTzU��5��e�-��׼@E0Y*=�E�1��_~��n�}e*�>��-��j8�)Og��&��˄�j���M�̪��M�̲�VըϨ0�9en1V��X��82�}w\+�{>�F�q�G>w��>�,gX�[�꿠]8�"�	F�QaQY�8�r.BYU�]
�E�!"���܎�:��
��&:2qTXU�^8*,�'�K@����&���Ukᘰ�*�D���rj؄�����#޷"�����Ey:��ߛ��Q^T�$�* Q��d��NrK���� �����Z��k	H��i�	��>�v��#��4�BճѡZ����g��N�#�0�7=�
#�xUU��sȪ��1��
��%<-585=�	C}Dy	�G�|\8����s�mz�F�������W��¥�hz���7��F^by�^�h���3jG�h�V�䇣�����[�Y��2�j����oɅ��[�p�pAĪ����Var�!_�9GxE�;�\"���ϳ��ių�K��[���p�VA�8��a��+�}�#y���lv� �>�E(�	~���z���̄�Mo���paŢʐd��`�83C|n� ��� iJS�X֖ VU�X�B�QMڂt8�l��w���^��H'4��b�Kb!�Y����_l�	��5��w��ޮ����W9�*<pX���"[ٻ\=��ְC��	Y{YW�EPs�H��:��� mc�#�g~}�]4U�������c9}C�P��r���7����`�
�Zgx�v��V��J/ �gëF���D�f��D�����y�P���r+ar,���Y�e� ��>�R�r YT�Y�ɪ��Y�0},�H~_����TE�)Q�d�)754�� ճ{�R��$��l�8-`��V��+͍�!Y�Ȫ���J�|��倬�cɪ�<�C;z��%�mD�Q�P�]-iG%����qeU �WVU~U��b�5��CUIT��ˣ��cȪЅ��bU����Ȣj���ry��ʌzF�����]�BD&�'ZR�0��%��1��x�۔q8��O�H����b��˾~��.iAI�aM��\��V����~14?�;9�<��ދ�:�¶��\�ıv�^V{���ds�T �	  �QY�}� 13F %��Qދ�A����r�*��py-T��U/�
NV/�
o�O���3���fQU�cU�|�Qz�}{}�3�|Um?<Yq�г�`��r�y��i�����T�B���+��3���d�gf�#��VU�Pk1evs2�GD�+A����[U��ZY�Y��}:��.�#�*�����`,�KAi�	�ʅo��{YT?���)[*���ȱk�(��;V���agQu�._�|M-T4`H樳h&��O��Ƀu,G�UUP�Z����(g3�
Z�ԯm6�RA�ͅO���eH31OѢ�ϕG�UU%��S%�t�f�qz���šUT}���9� ik���fS�v��v��Id�o�V���Gߟi�Z�$�%y�|>Ը,ɢʐ��x���L��|hXr�~]Ը�cUA>��!dU��G�\��[��wA.�XU��2&�t�-D��^޻В��!��	-&�9�����KI|:�8����t�l�{�Q
>5�&��ndVUm��oN>�hnt_5/OM�\�H��
d�mT��484��|�_S��Ʊ��f}��l�{fÀj�d�ONM���ƥ�X���ke�j�-�V�WRUïB�Va߷��]��9�]�	�^	GLG�EՊ�nm��T4�mq�y�|�q�y�<j�q�YTv��n�Fb�nk�Y�s$%lf�#��3�3��hz\A���2]���/��!�h�H���$OhҸ�ʪ�0_���3�*��q��bB�efnq��TV�	�O��3
�/����Hw- ��3�F�����E0��A���E0��B��^��a9��8�,*L���L�IВ���ƁfU�՛- �T�K�ã��,�~�yx}�E�	���oVU�}@��W�K׵�9��q�<㻮�"� �����3�|%Z~�����Xt�|�F�}��@z�}A��M@�oܮ_�[����d��y�@4��N�m����o�2�D�f;��)G����c@]��Uܰ���3���������h��9��!�Q���mU�|`VU����[U`*A歪	TQ!~�-����B�[G�Y�������o*��S|y�
	�/��BlG{�����A
/��|���|G5}��S$�M��Sq̪j���)|�U���V�D�t*�y�2�kBn:ȼU���*�w�\�	Y��d�`�#�jVw��)\�U���N�<���L�����I>��$�*���$V^K�)F�U�wY;ňUe�⊪(�P�h�^�]�
.����B�� ��}�2�4l�Ma|�U� �v�2���J�S�WU�U{ |� ��	�{�����ALO'��2�����JT��	:\�U>K ��㪚�8`\��i��P��[53T����$8a���\N�r�[����XM��VY�nU=^�l���)쫪rٺ�^v�}�C��ˈP_�C��9)޻UpSu�x��\f��x/�Ѐ;�z�{��=z���a�[�ދJj�*;i�G *�x�F�Ge�2��IP�&���_0�y���VA$o����T��ѩ�aU%��ݪ	���VU��;Eu�*�������~���_~�pC�oՄ�-�u�j������*����}�j�O���j&Bo�����t�F*(XU��:�ex�>!�6��= �7c�h����˞�Dsx��|�E��T �Vu�����@�S���Z85��Mc*������P��t�B�[�*{�`�aQK��:�+ՂE%��@���M53�';��UU����/AAح���@�;*������:﫪���3"{_���\�>n �J$xܢ�A��#��p#l��Vyp[�����|ǢspVU�G��,��98���38�>M�Y��n��}��1vg�L�H����ap|VU�q��l4���ȣqj��tv��3��Փ��%��9�/9H{���R�0c���/�yp�VU��T�y������q���ߊ���*��ap�VU�� �؇�,F{���_��c�M��"�ȸ$���z]�i����t���D>�Z�A�ZQU�Q֊
�R$����`n��"��T2U���jU��#J%8FQ#������pPa�o*_k*jw�:8"Ѫ�WM�D��;��6"DK�3D�|�4���[5�,؊�bz�2҈J>��GȖz����U� �j�M�VTJ���`a��$�UÎB�nل��,%����G2����If+��g��U���Mա1X�hxfad�]��V���ڇ]D�[��Ԋ�9�;ov<6{3���s�g�ۢ	��䳣�V�@�YQA � ��(��[�5�G$�e��(#೔���Q�><�3��$�GR}3o��V<�^6@�_u�w�F ko&�5C��A[U�Iۡ�X�ɐ�VT�y��-��\(>���-�]�q]{%5���*�plk���^���ۊSN�R���>|����D��      +   �   x�}��n�0 g�+�1$��E�,�$KUJd�2��}e{;��@9�����5�4Z+$����r���؆
k�^���A�4��L9�7X%Pmh���S�s�T`s@����7�kJU�$0Mh���e
>'�
���N����G����N���S�!=��jA߆ڨ^����ƙ\c�@�&�Jp��J��H�|w �Qp��      -   �  x�}��r�6@׼_�ݬ����]���L�W<�]55X�%�(Q��8��ϥ$@���]�c��}A4�K���?K���h��R�
c�j�pj�y���c�K,Hr�s��m���혚���f�aE,jƥp�7O�>m����:��=P��i��p\8�|Oiݥ���(rQ).�i����y�oc\ ���:X�e�����֮�]{�,���E�5~��8��q������5/��ylכԏc�|���<Яu�!���8i\��"��X�X5��`��V۸?�o��V�� W�r����]|��E3�r�0嵴
��78����t��)� (�3�:���1�6-�s!APV�5��^�S�MX@APZ��V7����7�x��D�GFAPb[&4���'NCj>���K�@PZ[��7���� ���ӽ�A�ז�v���sJ��|K��@H�APb[fF3�ǡݧxL͗v��t�r;� )�-���p��O]$I��N5ı]EL���Z�u�$�c��ts߯�s,�7��| Ii�Q�������vZ ARV;�����vB���:� )��p�����tZ0 � )�=�Nc�=�]�7��TA��؞I���)�1����$HJm��Ehe��vN�g����H�jό��c������D��L�����:�P�R�����։J�E)����
��ی��/���H��QP�Ӟ�����МOqxI�j�����:`�HmM�%��ϖQP�فI��u����sI��R�E9�
�̏��9@��#��(��!���q��^�Ä�y�:�R;�w��;LE����{Lۑ������EO7���f�\�W�H[FA~k��Ǯ :��8�S�M���R`��o�՘s[M���ʄD�/thN���Ϝp���	�q���Cz_� )$hBj\���h�Vo�C���j׎S�.0hBk\��,��훈F�`�	�q�8�u9��E����	�����s����j�QPЄѸ��E����0hBi\�V��]L��*	�Z0˕B��_,��ue�`n��!��wl��	m����Z`�",6|���������[�i�����4RE��`(�%�:xu�n`C�-1�zl��A}N���2�r[b/�w�C�V����Yb�	�[�u<m&������klRui?s���`(��'�s�8����гl!�Pv+&���y���3���Q���
Go/��ï~�?�o�~�^-�`)��B�7-�)Kf,%��\9���:�?�c��`)��=
��A��`)����i	��Z�ͷ�K�n�Ӈ~��R�k&�AĮ7��j��$X�p��7��u�]��������c��^Д���������x�	�wJ?ܒ�a���zn{��k�����vץ��L�G)���:,8E�������%���51?����u��Q�6��U�HR�:nPp��a~�؞\n$��Ap��i�N?׊������B���6��	�|���t�i,�S�Gn��g)��H��RA�Q�T��)\K�ف�_S�-��(�-�d���V�Χ^�Q�[&-f�Z�z�te�Sz[�&e_*��v������e�O�m�+4no�v=�:	�R�2�猓��R��,x�m�SK�:����^�$x�m�8��X�mK3n��S�;l������ih�n��e<%�c28�oS���
���v�	K�G.(ի�����v�
L����}��v��d<��c�J��t�`Q�C�$�/����-�N���(�p�x�P2����E�F�2
�R�3m�����rw�8�SG�M�ǩ�Y��k��B7)�@Y�Y�ܻ�-���W�.-,J���ͧ)I�Z�$J���s�wnM�׈���#/(��<0��`��;��B��y�q2�$�˜Y� n��9>*�M��s���k�ApBo\�J`��6`W������z�z7      /     x�e�MN1���)��M�@���M<%�$��B��a�Xp����.��hޗg���ꔯ�����.��0�C������r~�j���WD���X��]
����S��*��^G�W蘤��^�~��tc��U�3�[W (��\̂ܟ�ʘ+�	�
�C����(M�n���/p����D��Q�w�g��u���F�g(N��VEK�.����u'n�d�hͨ�������\Ɯ.$�Gʐ�L�ۖ����<�Ӵø�x�������� |�㾫�"V�5�}!��(v������      1   �   x�}�;
�0D��S�6kY�?]p�"�&]!D�����r_,��jg�}S#FE�
V_�����MKq���3Ӣ�������@�aͩ������{�4�u"�m`�^J���i y"��:�['����p�;�"�x3n������)�������� =��|����uo�      3      x�}{ɲ�ʶm[|�j��MQ�B�	T�� 
	D!*	��#n�Ɖ�"v��N�?�R��;�^����9ǘs&� Gq��0��p�e�����  ñ;��Ud�i��vt��/)�N��f�׀�v<7��������<����$s3r�e�hL./�?D�\���@�X.\�#�\��l�?����;�� �h�����d(��!-�A䥉��)��y�2[�a��3A=�$��֥<��1ˉC͔U���H>�Y�̽d}�6}�Zl!:c4�1�@�9�O�R�/۠�#��0�Lq5�K��rt��u0/�=pՄ�W��q52&S�R�0�2����fU�3{C����)
���_S���Al�'�*@����1�y�u�"7�g�J5����܄�|�CK2:;��Z���>C�~N/P�:���c�@���8��_�*	�'�s8v~���M,��&κ9Ky1�&���*�A�r�)��I�)�K�Y�k�O�M!t�c�`�	<Y��]�V؉������>����������)�)�j�8M���>���9�A;�j����@U͍��z�����0�d�+ƿO�W/��\�(-�����nh���h���5�%�f��ӾZ�J�H�sUh�r)���!q|t�ؗ�P������|�QNq��3E|�q��{0!�k`?���n#�;�1�(Gј�3BX�)�<m����"jB����ΰV�9#�����Cl��Y��xL�cQ�L
�7$/O��<��W��F��Z-�ۛx���*�K&w�T!
�rT����	J-�Vrc�v7��ǭ��|�4IP�5���Ab�b��ra����x �����m�b/k	�"��܈
��PYV������xfO��	�sҀC���0����{���y ���L��=��� ��fv�i�����4Qex>��d���z���yIa�fE�M����P�`����a�%	�(��ke����}Ƅk'�H������R3Ϛ`�\��=����̸9e
up��k,]6�>��"L�X�4�#X�$P�A1�`������k)�1��	��rD�*I�k:�&�6���8�Η�����Cfv9��Ɯm�5�'�1���
@���~���UVy9�=�b;�`�4�>V��(R���~�ӝ�����jh0v�ZȬ��~�iuĚ㫷�W'Z�`]RA�D)R|��/��XO��?%���"�01)ˏnNU}��;�C䒔S��fB
�jY��]T�Qe��j11
��T�I�4;�٣�� ���y���-onw�湀S�Jd�KR���c�N����>�16�w�ntuEQI������K)h@�$JR�:����DxΏ�"����ο�Q�Yy��X�6��x�t4Go����ڤKy��l�����τTȽF����R	�,C�0��Xի2�_^�v����Rf��Q�P�Y�է�<��ʙ7te	SRg�6�JVeD�x��>-������%4<������%�n�݃;sH@f1T� i����Yn��<q�Zh�0y&V��ފS��&���������^��^���]�� �)�XP�_��^����Ռ{E�^�����ٚ�o�������a�E�DG�-�Po7켚\+��z�G�K�s,G�=p��.���5����K� ��U���؆)y��9dG�hI�����f��<��e��aㆹz�zc���a��%��0ݺ^���{�k��5�5t�o�x��<�T��](��l6���S����kb��s���A�jT>	G�.�` ��4�L��9��,�m��?�:�9xV^Z�UG�&D.�"��+���s�e�Yj��Dvm��7�Y�Xi6����ް8��]�� C	�Q��܃IQ�l�%����ǿݠ=tM}�
�6U�-^���#W��P7T��+�	�&��d�ɽ��`�D{��'�KX�2F�������5�^�>�O�E]�RT�T�4+k��6�X�s�q���z���k�2m-�I�^b�8�z���KX�Cх��o���Uj�"��t�
M�S2C�ǻ]3�͘X>ۖ��`��ݫ�Ɇ��u븟���KX@�(I���j[A��:\7� v�������"h���9�����6���H�3k���M���%N�u/E���g�K#X@���۬7_���{��W��5��?o�M�&���p�d�/ްF�lq8��#N�2���*��5Ǭ7�?p|S�Y���4�vU|��h��QJ\=X����p����'	�Ϊ��}b/l�&bev_�N31��Kb}*c)ϖ��䍋sѥ,��(��ZS��B�m�f�8�9M��ux���{AT~��G�<;�a��N�9,w�rH�f��v���ؽ�	!����c0��(p�O*��N�8^��?�7��?Fʖ��(������d��;m�x`�X��[u�W6/)Ktq0C�W,ZtC�.�� ���Fk�n����4���=j�v$C���#~7��`�V_1�z�N�K1�U]��gLi��y���s-0�#D�Bp ���Z�>ʫ����e��So�Xٴ��gc�߅I��moD��%2)M���x㷆`eJ)^]�Ǧ��� �K%8@p}�C&��Z}�OW�������C�j0���%�2�Q��[S �y�Լh�U�krwZx�M�?�{c$Bt��V?�@���O͒�iEz9�<C����t�(�ğ�@���R��]5?���r!L�\u�G�c��#��3��->A!D�Np�fHf��y�f0o-�ӯ�84�6zha�a�Ņ�bRm��ܝ.��O��m(_�d�S������K8�B��-V���/�e��n^���Z���E3��Q�]�Z�в}P��k�*��f!/�N %@���B�w�72� D�2�(@q���Wo�z�10��H>eΛ�X��ȏ�d�l��Sʋ�9_k�������33g$���N��{Ծq	!:� ���,���5��>�IA��y �{ʞN;����?2�I1� O��|��Iȵ� ���5�I�,՛�Ū���Op١���/oI���o������0����˨w$F��ZY���[pT��6&�"��I��a'�q
��F�7E�y�/�2����]�?c�W�����m{^��ܶ���cj��8�E��Ya�Q���T��F+�q2�m�����$1����MC��q��k_�]8A�=��	���W�{�U�'�:�,�6N�T�Ku:�s��n�x�\&>�%X0�$�8U��D����C�,AҰ0��P8?�w��U:����t�o#n�������ST�"M�p(׺�n(K��&���낿�I!;���q�1�=ןN��˽���O���Y'�;w��L�/阬�|Yy�W�6He��m�S�L(�\s�
}n�	I"d�R��΅c)h�`������k!��ʝ�T���!+Sw�Kg��=�
>~��T�	+���cL������N��Vo���$��J_���i��Yӟ��/	�8H~���Ѹ�Δ�%�oE�g��؛�~^2��7k7�fr?!+���io�|�I!;4>')�����G��~�����kk�չ��6O�a�&�TB�?1�h�{�tW�]+��XW�T�V}��72� d�f`��X���s)�'(`z6���A��Bu�O���:7/b��+��6���)�/�={�^_�`�ǝ���Q5�Z}��7�E�.�� C�(��j�s���?�O���~��O�,��wQ��QR�2��qu�G�L�/4��vWZ��eu$y.v(���74�!T�t`�ei�"�w����y;/�񐓇�N���aaXs_L�JHs��id��^�h�ZC�*��m�l���P]����͂��
yc'/�p�Ļ�ѯS�C#(]���
��n�;����>��U�����k�̋񍴰ޤ�"SBu�p�䠏Y���.~*�|�&����#���Y?��gֻ[M�$�l<���ˣ�:��kcF�s8��I��.\N��%8t�$ǒ�1�x �  v���1{�b��v~������|�x��M�y���斡�6�]\(��g`�fޔ.榯��Nե8�H�f����wH\?�����񰉆�@��x�T�:��F�F��Vr��،�%9��Q�_���`��T�H�����Rf0j��<�I�b��#��^�����ʠ�s�M���?V�vl4i���i����)�:�9}�RBuIu�e9��a����a�Z�wJ�uou�o\~�4�3��i�]s�D,��Gk�2��e]��(y$�^�o|�F�.�  ���[�K�E
#��&~���;�oٶ�E�$nqT��ud�&:�g�z�k\_�	i�u�n����+-4� T�X �0
��9����=s�v�oW8f�D�d����(y=����f�M�TՏ5����T�'�^��"S,Bui�`����Q�������DU��Q~z�IsE]�KQ���H���V,r���Tӎ&�	����Z|�C�.�  ��,��¢�(��ӳ{���4)�X��a�L�^y��뇕��|�df�C;*�*_g��Z��#��Ϭ|Y��&��h��Ă 4��8;���i�e�'���	��?���\��1�����.���k����Q����"la!�/6i��]�Q�u��ZdC�.�  �>�#�1�����<���+H\�1̍Z�`��G�J�vD:���L�`� ��G,6q���{լŧq���p4F��=����<��.鼚���9���B�^w�n;�N���ʝ�����gϕ���������m�LdQ�{TNݥ$�P�f?��.�m;|�G ���^�aha��ԏ��dۚ��S#0n^�Ci>�N�~"�LF#�D�}Vn�i��Ԃ�zL�O���S�等������_G�^��E�ɨ�vt�=&�N��7��qn��iURSiïϏ�^Ak�Bw		EV�ܫ�����Z�����JܢQ�P]����l���t�si�Q�2�������Y�Hlг�{��4Bw�	(�&a��4*�н.�ۧA{��֓|X���򚸆aX���%����[��L�j�dm��ug��L�z%�������Oc0j�ǰ {��v�yxVBJT�z
�x�ٯF���UE�$��?��r��.����bX9��ޜ��,Bw)	��a�֞���h��q��6�����k�-�!���N֩ZMJ}:�7�z����f��s&�;��|#��ti	8���o��<O?��_�'�ܪ.̄(/�A16yhEs�*�Y�%;�ka��w����`Y��bo�k�a�4��2��B�����m�.�yc�ǚ��n=���i��X�e���WK�j/�x�5~�&�dI6Q��ږ�!L�VP��������%ݟJ���G�N/k�gY���$�<��>��2M�[�+~Q���h:Wr�=3���Â��K0(���b��\~��KY��Ņ����N+T
^�&+/BR�ɟOp̋�4��E�4e�Ri���;���0]bAA1�9��f�<4��HۑJ��o?�QLt,�·����M�(�[��g*�c��m�Ď�l��I���{�Zh�D�.�� ���\5�F��=�į��#�7��F�H��alSn!4#����*K�:�	}��I*GiA���k�P�%���,;����j?��T�px�|z�,����X�Dc�L�"V��s+(bh���E;l��):g��{�b-.C#L�8�PwY�}��������۽��_"`�mS��U菄d�����2N��u���ط��$Oۉˢ��y9�*��a�Kh�Sд��E���+~&'�i�H�ZqC���q���q��teh����@[en�KO����r�ˤz�o̰ӥ4 Q��==�|���Wo`��Җ_������M�)�K˱HbN_�{0ċ&�N�Vz�F�p�%4�(}��lo�~.c�g)��h%�۱$&�<	����&�J)�$v���Ԥ��<���)WYt��~c�(�v�`�>�_��p����T��EdW�y{��eӄu"�����"*�N2
3ԛS̎����3��JbV���[|�-6�!l�.Ѐ��`���+	~ʺ� 	��*~0�}|/n�͞�%���0���)e�
m���EA����&���t��tZpG�.=���4�v��}���ug$߃��;�t�w��6�&�X�{we�V���Ȗ�4��(��Q����ѯ�-6K l�$0���Ї>��}d��\�|�v��tBb&gj͌,���E67D�JzUQ%��`E>7���5]�K���v{׮EgI��R��U7�^]�I@�Pz�d���I���H7Y�?�z���;J��EZ��m�ʢ���,����d�ޛKZh�B�.m�&�<^X�4�����j����l�7/��N��i]���9~2�%�����D�3W�����0���74K#l�<0 ��JvvrL�fN�3)lx��uU���{I��Y0O���@N�I�F���0�����?N�E"���G��f��R0G��s|f�m����5x�t�K#��e����'è��az�,�U~2�.虸��R�ս�D˄e�K.�0������{\h{����m��7Ʈ��4��o�����c�F�BKN׹{%���9,g�<�2ګ->�!\�f� e'�{��v����_���<kV8Κo�b���g6FW7�+CR��cM���XL��z��^r-6�"\�f�����ϻ�_VZ�?9嗸%雨΋�Y:A#���6�G�s	���jVX���^B�ߏVg���7����p]j�>?�����OK���kW��-�7�TQ�$�Y�t"�-֎c��R���r�װa���&�ι�0��?�{�s8�u��͑�O�^[�Bs����5~96�pRBw�s�S����mEҏ������a�*�Mf���#�K/8��I�{$f�I�H3�������5I�-_���_�"�Ⱥ��*�J1?����.��;�ƙ���8߰�p]2���1�"���|�h���&N��ڸ�I��vvƬbt^��B�c��ѻG����R<NUE ��5k�9
Ẅ�0b0O>^�������/��ģNW���]�iq�z5X��_����+���9#������;�-.G#\�Jp��!P��-��n��,�)�#�{�������6ÍIC���H���%g~�ƌw�t{U|�����-�|y\O�VuL-{k֖� \�Zp��P��{��}ϗc��u�a�V7���y�����7@0�+Ԛ��U��&�ء�����Ͷ �\��ƾ�9�:�B�S8��$��WC�ml����:Th�s˵(�N���
����F�m�"q{���J)aAQ��>�����u�|�z�{|u�Z������_'Nk&�Y�$�k^hN&���h���ے�1���gTK49�Y].Ըo�!1� � ���W     