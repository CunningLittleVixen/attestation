PGDMP
         8                {
         
   DBAttestacion
    15.1    15.1
 5    5
           0
    0    ENCODING
    ENCODING
        
SET client_encoding = 'UTF8';
                      
false
            6
           0
    0 
   STDSTRINGS
 
   STDSTRINGS
     (
   SET standard_conforming_strings = 'on';
                      false
            7
           0
    0 
   SEARCHPATH
 
   SEARCHPATH
     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false
            8
           1262
    16941 
   DBAttestacion
    DATABASE
     �
   CREATE DATABASE "DBAttestacion" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE "DBAttestacion";
                postgres
    false
            �
            1259    16942
    category
    TABLE
     [
   CREATE TABLE public.category (
    id integer NOT NULL,
    name character varying(255)
);
    DROP TABLE public.category;
       public
         heap
    postgres
    false
            �
            1259    16945
    category_id_seq
    SEQUENCE
     �
   CREATE SEQUENCE public.category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &
   DROP SEQUENCE public.category_id_seq;
       public
          postgres
    false
    214            9
           0
    0    category_id_seq
    SEQUENCE OWNED BY
     C
   ALTER SEQUENCE public.category_id_seq OWNED BY public.category.id;
          public
          postgres
    false
    215            �
            1259    16946
    image
    TABLE
     ~
   CREATE TABLE public.image (
    id integer NOT NULL,
    file_name character varying(255),
    product_id integer NOT NULL
);
    DROP TABLE public.image;
       public
         heap
    postgres
    false
            �
            1259    16949
    image_id_seq
    SEQUENCE
     �
   CREATE SEQUENCE public.image_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #
   DROP SEQUENCE public.image_id_seq;
       public
          postgres
    false
    216            :
           0
    0    image_id_seq
    SEQUENCE OWNED BY
     =
   ALTER SEQUENCE public.image_id_seq OWNED BY public.image.id;
          public
          postgres
    false
    217            �
            1259    16950
    orders
    TABLE
       CREATE TABLE public.orders (
    id integer NOT NULL,
    count integer NOT NULL,
    date_time timestamp(6) without time zone,
    number character varying(255),
    price real NOT NULL,
    status smallint,
    person_id integer NOT NULL,
    product_id integer NOT NULL
);
    DROP TABLE public.orders;
       public
         heap
    postgres
    false
            �
            1259    16953
 
   orders_id_seq
    SEQUENCE
     �
   CREATE SEQUENCE public.orders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $
   DROP SEQUENCE public.orders_id_seq;
       public
          postgres
    false
    218            ;
           0
    0 
   orders_id_seq
    SEQUENCE OWNED BY
     ?
   ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;
          public
          postgres
    false
    219            �
            1259    16954
    person
    TABLE
     �
   CREATE TABLE public.person (
    id integer NOT NULL,
    login character varying(100),
    password character varying(255),
    role character varying(255)
);
    DROP TABLE public.person;
       public
         heap
    postgres
    false
            �
            1259    16959
 
   person_id_seq
    SEQUENCE
     �
   CREATE SEQUENCE public.person_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $
   DROP SEQUENCE public.person_id_seq;
       public
          postgres
    false
    220            <
           0
    0 
   person_id_seq
    SEQUENCE OWNED BY
     ?
   ALTER SEQUENCE public.person_id_seq OWNED BY public.person.id;
          public
          postgres
    false
    221            �
            1259    16960
    product
    TABLE
     �
  CREATE TABLE public.product (
    id integer NOT NULL,
    date_time timestamp(6) without time zone,
    description text NOT NULL,
    price real NOT NULL,
    seller character varying(255) NOT NULL,
    title text NOT NULL,
    warehouse character varying(255) NOT NULL,
    category_id integer NOT NULL,
    CONSTRAINT product_price_check CHECK ((price >= (1)::double precision))
);
    DROP TABLE public.product;
       public
         heap
    postgres
    false
            �
            1259    16966
    product_cart
    TABLE
     m
   CREATE TABLE public.product_cart (
    id integer NOT NULL,
    person_id integer,
    product_id integer
);
     DROP TABLE public.product_cart;
       public
         heap
    postgres
    false
            �
            1259    16969
    product_cart_id_seq
    SEQUENCE
     �
   CREATE SEQUENCE public.product_cart_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *
   DROP SEQUENCE public.product_cart_id_seq;
       public
          postgres
    false
    223            =
           0
    0    product_cart_id_seq
    SEQUENCE OWNED BY
     K
   ALTER SEQUENCE public.product_cart_id_seq OWNED BY public.product_cart.id;
          public
          postgres
    false
    224            �
            1259    16970
    product_id_seq
    SEQUENCE
     �
   CREATE SEQUENCE public.product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %
   DROP SEQUENCE public.product_id_seq;
       public
          postgres
    false
    222            >
           0
    0    product_id_seq
    SEQUENCE OWNED BY
     A
   ALTER SEQUENCE public.product_id_seq OWNED BY public.product.id;
          public
          postgres
    false
    225            ~
           2604
    16971    category id
    DEFAULT
     j
   ALTER TABLE ONLY public.category ALTER COLUMN id SET DEFAULT nextval('public.category_id_seq'::regclass);
 :
   ALTER TABLE public.category ALTER COLUMN id DROP DEFAULT;
       public
          postgres
    false
    215    214
                       2604
    16972    image id
    DEFAULT
     d
   ALTER TABLE ONLY public.image ALTER COLUMN id SET DEFAULT nextval('public.image_id_seq'::regclass);
 7
   ALTER TABLE public.image ALTER COLUMN id DROP DEFAULT;
       public
          postgres
    false
    217    216
            �
           2604
    16973 	   orders id
    DEFAULT
     f
   ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);
 8
   ALTER TABLE public.orders ALTER COLUMN id DROP DEFAULT;
       public
          postgres
    false
    219    218
            �
           2604
    16974 	   person id
    DEFAULT
     f
   ALTER TABLE ONLY public.person ALTER COLUMN id SET DEFAULT nextval('public.person_id_seq'::regclass);
 8
   ALTER TABLE public.person ALTER COLUMN id DROP DEFAULT;
       public
          postgres
    false
    221    220
            �
           2604
    16975 
   product id
    DEFAULT
     h
   ALTER TABLE ONLY public.product ALTER COLUMN id SET DEFAULT nextval('public.product_id_seq'::regclass);
 9
   ALTER TABLE public.product ALTER COLUMN id DROP DEFAULT;
       public
          postgres
    false
    225    222
            �
           2604
    16976    product_cart id
    DEFAULT
     r
   ALTER TABLE ONLY public.product_cart ALTER COLUMN id SET DEFAULT nextval('public.product_cart_id_seq'::regclass);
 >
   ALTER TABLE public.product_cart ALTER COLUMN id DROP DEFAULT;
       public
          postgres
    false
    224    223
            '
          0    16942    category 
   TABLE DATA                 public          postgres    false    214   d9       )
          0    16946    image 
   TABLE DATA                 public          postgres    false    216   �9       +
          0    16950    orders 
   TABLE DATA                 public          postgres    false    218   �A       -
          0    16954    person 
   TABLE DATA                 public          postgres    false    220   �A       /
          0    16960    product 
   TABLE DATA                 public          postgres    false    222   �B       0
          0    16966    product_cart 
   TABLE DATA                 public          postgres    false    223   �L       ?
           0    0    category_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.category_id_seq', 1, false);
          public          postgres    false    215            @
           0    0    image_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.image_id_seq', 60, true);
          public          postgres    false    217            A
           0    0 
   orders_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.orders_id_seq', 3, true);
          public          postgres    false    219            B
           0    0 
   person_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.person_id_seq', 5, true);
          public          postgres    false    221            C
           0    0    product_cart_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.product_cart_id_seq', 5, true);
          public          postgres    false    224            D
           0    0    product_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.product_id_seq', 12, true);
          public          postgres    false    225            �           2606    16978    category category_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.category DROP CONSTRAINT category_pkey;
       public            postgres    false    214            �           2606    16980    image image_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.image
    ADD CONSTRAINT image_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.image DROP CONSTRAINT image_pkey;
       public            postgres    false    216            �           2606    16982    orders orders_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
       public            postgres    false    218            �           2606    16984    person person_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.person
    ADD CONSTRAINT person_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.person DROP CONSTRAINT person_pkey;
       public            postgres    false    220            �           2606    16986    product_cart product_cart_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.product_cart
    ADD CONSTRAINT product_cart_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.product_cart DROP CONSTRAINT product_cart_pkey;
       public            postgres    false    223            �           2606    16988    product product_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.product DROP CONSTRAINT product_pkey;
       public            postgres    false    222            �           2606    16990 $   product uk_qka6vxqdy1dprtqnx9trdd47c 
   CONSTRAINT     `   ALTER TABLE ONLY public.product
    ADD CONSTRAINT uk_qka6vxqdy1dprtqnx9trdd47c UNIQUE (title);
 N   ALTER TABLE ONLY public.product DROP CONSTRAINT uk_qka6vxqdy1dprtqnx9trdd47c;
       public            postgres    false    222            �           2606    16991 "   orders fk1b0m4muwx1t377w9if3w6wwqn 
   FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk1b0m4muwx1t377w9if3w6wwqn FOREIGN KEY (person_id) REFERENCES public.person(id);
 L   ALTER TABLE ONLY public.orders DROP CONSTRAINT fk1b0m4muwx1t377w9if3w6wwqn;
       public          postgres    false    218    220    3212            �           2606    16996 #   product fk1mtsbur82frn64de7balymq9s 
   FK CONSTRAINT     �   ALTER TABLE ONLY public.product
    ADD CONSTRAINT fk1mtsbur82frn64de7balymq9s FOREIGN KEY (category_id) REFERENCES public.category(id);
 M   ALTER TABLE ONLY public.product DROP CONSTRAINT fk1mtsbur82frn64de7balymq9s;
       public          postgres    false    222    3206    214            �           2606    17001 "   orders fk787ibr3guwp6xobrpbofnv7le 
   FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk787ibr3guwp6xobrpbofnv7le FOREIGN KEY (product_id) REFERENCES public.product(id);
 L   ALTER TABLE ONLY public.orders DROP CONSTRAINT fk787ibr3guwp6xobrpbofnv7le;
       public          postgres    false    3214    218    222            �           2606    17006 !   image fkgpextbyee3uk9u6o2381m7ft1 
   FK CONSTRAINT     �   ALTER TABLE ONLY public.image
    ADD CONSTRAINT fkgpextbyee3uk9u6o2381m7ft1 FOREIGN KEY (product_id) REFERENCES public.product(id);
 K   ALTER TABLE ONLY public.image DROP CONSTRAINT fkgpextbyee3uk9u6o2381m7ft1;
       public          postgres    false    3214    216    222            �           2606    17011 (   product_cart fkhpnrxdy3jhujameyod08ilvvw 
   FK CONSTRAINT     �   ALTER TABLE ONLY public.product_cart
    ADD CONSTRAINT fkhpnrxdy3jhujameyod08ilvvw FOREIGN KEY (product_id) REFERENCES public.product(id);
 R   ALTER TABLE ONLY public.product_cart DROP CONSTRAINT fkhpnrxdy3jhujameyod08ilvvw;
       public          postgres    false    3214    223    222            �           2606    17016 (   product_cart fksgnkc1ko2i1o9yr2p63ysq3rn 
   FK CONSTRAINT     �   ALTER TABLE ONLY public.product_cart
    ADD CONSTRAINT fksgnkc1ko2i1o9yr2p63ysq3rn FOREIGN KEY (person_id) REFERENCES public.person(id);
 R   ALTER TABLE ONLY public.product_cart DROP CONSTRAINT fksgnkc1ko2i1o9yr2p63ysq3rn;
       public          postgres    false    3212    220    223            '
   �
   x���
v
Q��
�W((M��L�KN,IM�/�T��L�Q�K�M�T
s�	u
V�0�QP�0�b�Ŧ
�.l���b�
���b녽
v\�ua���5�'if�̜wa˅���
d�a2cЄ�@��b�.. �V�      )
   �  x���M��
F���.	`
(��(t�E�h�nJ�Ik���é]w�6��\i�Ç�?���_~z���O~������>�f��۷�����W����������׿���{������|�6��f�(NVRU�IZ�dmI�ZGͅ�P�TU�����o��?���
� *<��ũ�$�5��%�ڼ���v�>e@G��Wj�9�❴��3k�\���ǎ*�����2R��$�����N�>�J���)j՛�U�8�՚��N�g�CK�D��Gl�VcM��f���<Ѵ*[�KW���˫�~_k���G�[��l~jN[���N0�SP
(�->�t���i��;M�?�P~
: ]$�SZ�L��4�4�DR�5���S�L�j�]h��K-ɬЂM�W��V���ZH��\����$!.iʑ�
��B^X.f�|D~�
�i5t��y&��s����4$$���^��*$��
^
v�Y��Q -�Ao�v_�Ӳ��/8�ԝ�K�mM@�����3���r�A���sMΎ�J��.��i!��h>]��8��IA鎚�e�2�/����ejh�J�a���7�6Ѷv�1y������Ǩz���Zu�/�	�j�T�i7T�5��5D�Q!�E�K�i�55T��j���
���%LԶ��^�B��70O�:a�P�ѮGha"2^�`�iF-I��fNz:�(/N���֗���b��H�R�9$��I{�����[n�cԐ5^~zN�d4���I�E�Hc~S�c�Бu��"
y�Ԑ1����pR�����䓍pF�(�]c� �ǀ�f�x����G���`K��qH�p�#h�2�sT-W�������+��J� '��'x�s-��OG55?F
Y�sh�}��<2��2�o�t��Q�x�5|TY%�)����a4��-�=�9���r�;�A��D�x-�(?����!ExC��z�:B���m��7�x�#���M�0�6Ӽ>���_����э��6@W�4w��G}v�&#;��1j�Ȱ���Y#\��c?�Ce�
ږ��Y�1l�)QWNW��0��2�:�*�J`�c�[Fy�&�v�k�1�-�u�4�����vm:	�G���؃�k=2��O�_���
'區۱0)
@ψ]�LD�ݶ��
 ��c�P�0
H�'�6 {F1kl��]=s[C -�A�H�;�q�ш�[��Zc�-͹v@�)���&�9�ox�!Վ_"� <�n:�Gh��J��#\�C�65H�m������X�r��eji�6��I�#����f
��^;g;��5?F
!���a�PVbmb	�WΪǖ��Ǡ������FR�x�@��0>b:�[�#��P�f� ��R6��D��$���Qo�-�#�����"x"'@�C
�n
����v�J���L/S�WEj�1BR7�
(X
��KZ��Ai"]��9j���Ǒja ٨���܊eʳ��
��PO?u����}P6�Q�e3��7ɜ'�3�ұ��)�q���!
�#&/��t�|woeÉp{yĴ� �QG�yX,*��Ź�=PƂ1��@�|�\J_�.�����k����S�BHi��d1t�Z������y�����<c,`�B�Č9�
�q��X����=��b���L=��+a���q��p4�[�܅/�%0v������);��>���o��1�{=p #Dψ�n���QN.��=6�<�la^��q��*��^h�%�}�P�j�=�
���he$�l4,�>��g�]k��SS�+�;b��	Wz 5�#����ba͑����	�т$�������v\�������vfs<
�FW����������������^gޑ
�
�_������8*��y��ͱg}��י��x�[N���L�����T��g��Zh/3[��k.B����?�(M���5��c��3߽��F�      +
   
   x���          -
   �   x���Ok�0 �"
�
�j�c'Q�,]�_�4LM���؄��O?{)���x��a^��	%��a5b.��g'Bu0�B�
�
�z�
{oW�
X<�@�
sK���nU�T�?�
��x
.Ʒ�j� ��K�T
X�hu�n]�
'ȧ���p���.��f��|U������B����ɝ��=�/�O�|;p�8�9��>�&���_o����hR���|��S�_��]-      /
   :
  x��Y]o�}��X��	@\~�}2�<(\�N�$��p#C�Q䍤�؂�v��p�:1����j�5��a�/��tΙ{��]�R@jM�$w��;w�̙3�׮���w�8׮�[�֝�o�����v��l�;����g�;����#wno�o�w�,8���[r���͛;{g��S��峽�/v�ܖ�[���v�������󇫿���7�܂s�\*W6J�
�ḛ���*7�n}��6����E܉���"?~��h�r)���7v�{�6�����Ə���O
N�G���qO��re$�<������8��cY�Q�X�x9��'f�i
D
�úE�<L)������h w*
��ҵs�e9�˚۪T�
��֫4�����=�@�`wtM�/��M}
FA�����@����9�
?,:�$��
|��[e�h����\�g�0�
L�����0�Dn|-�#Y
�
"2r�WS_�{��{#��ۛ�bW��s�r_�q���� $4}�{ 
���j"Q�����^�,
�
4���;
9��������;�94�
�
2�
]r$FN�3q
�"����ۉ��w�G�}�ݑܒ��0Y(�o�c�T9�ȿ�x9��C�?�玾J}uI�bɭ7�M|�H�֥"�Y���
�V|8�nfh��p
m�q�2��I8����<� �
BA�
� �pw$ ��B�ߋ�
�+
<���
�3CLL��
C
ya�
 B�M
كژ�5���-�i&w�
Od�:�.�z_�
M���E���i�k���
0�
�G�
�
:4)@
sp��X
��̍f���k�H���	��_
R�
��[n��6��R�Vm��!��
�
�#�ML-�e�K�w
2I�)
�;
��
 �
C
��r� �fIn�
X
����)-a
�|%K��.qG�
�� )V�A�Z+����h(s���
%��2�
E1�?1O���.�<�
���x��j�b�Z-77i,
A�
�
�!��
3�F
�����p8���s�!j
𥉊��2&)>W+��
\Z�4�E2��y�ޙ �B/[�
���|��?�w��
�V
+�y̜
�܀�L��y*
�Q���`�S|v��
��f
7�
�bM�S�'�}J|_�;�0;k�н�^���_�PgJ�<�Ab�@��~F���5�Uj�P%k6&����0�>.!�<B��J�Xj�*U��j��]M������-n�.�5��3���'�Z�)�
��S
!��P�׵�
����
�
�
��Hό���twu
u�OK
���|?1t��
ʟHms&��7m�
\*n�V)��J�V���+7��$!S+H��ȷ����0v8sXĆ�!. +�:S��3��D�����$t�:JG��
����c��c��g�H>aF���2
�d�2
��
$}�
BO:
��
sU�%���A�=�M-�D p�Z
��"�9�L�G�3�D�����	t4ɥ�W:�<5�f�JG��:���H8���Fa|ȉ���1^HEH��Q?��㐃��L/�+[v�k�����򵾊�ٷ ���/]'+�Ҿ]��Sz(�D5[�s6�J�F�N���T�#���;��O�V�.��F�g���O�H#���� ,:ӄ����&6w��g���*���S�@]%q�N�����hLU�۲E�d�Q N����yr��=H�2'&������ĕ8Cy��fd�@�͜F���w���mLda�<\J@�l_	n������	�LylR���Z���@@(�]�A���_N���.sH�o��}#{�sg�f�Qk�R���l��Z�p��GW����GW��{j�>6N.M�mc��� ņ= ��@*)z���kL�OV愚��u���@��`�����1Ey�}��e%�i��s���1O�C�\*�7=�wC킕������ҧKmk9��
�w0H�E�R|�S1S�	�e��@U@>K� xz��$^*@�!&�b�ڼ�^�Q#P��R������@ŤC[#B0�6��?#�.�R�T<6+� RCdE5<�}���`���30<�g5.���گ�m�Z��s�%��/S?I L����$ê����t�f|20�dE�t���gM#��o$�wU?j��"A &Q%�`P��d���<Vֵ{�h����y<zD�I��
�3f
�c�
8Jj���,R�C�;

�
e��Z��Pi�
�gjo�
C�2�;
�G�m�N
��3B�_ѳ�;
Q��E|>�lE�
:��ò�gS����F�T/�K��{�@�
	=*�u��5��ag�VP#
󓀅���ʳ�FZ�2s�
����
���
p
���twh����	w�R�
��
E��
;
�K���ib��
P� %R
r�8I4�
+ϐ�<əP
�6a�oM*L@����m�Yc@'b�+�<I:�"99γh!�B&Pp
��S�<%mdc�����ȴ�㥅|44]�쫥�$~�0��]p�>��OTr<F(���uh/�П��I���JB]�=�W���60�C����U�ֱ��}��ߝo�j�ʹ&w���d��k�ۈ���M�L�Y	
z�akz|��4A��́[�u-�s�Mm����3���;y7�[��2~Th���f�V3�������S�� ���g#��ˌ���(���
~��,J��}.(�\Pm��J��l����/��W�~�Z$0/l�-�S�Uw�JM ���^G\����i      0
   
   x���         