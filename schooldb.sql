PGDMP     -        	             {            schooldb    15.1    15.1     ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    18343    schooldb    DATABASE     ?   CREATE DATABASE schooldb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE schooldb;
                postgres    false            ?            1259    18361    student    TABLE     ?   CREATE TABLE public.student (
    id integer NOT NULL,
    first_name character varying(255) NOT NULL,
    last_name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    course character varying(255) NOT NULL
);
    DROP TABLE public.student;
       public         heap    postgres    false            ?            1259    18360    student_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.student_id_seq;
       public          postgres    false    215            ?           0    0    student_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.student_id_seq OWNED BY public.student.id;
          public          postgres    false    214            e           2604    18364 
   student id    DEFAULT     h   ALTER TABLE ONLY public.student ALTER COLUMN id SET DEFAULT nextval('public.student_id_seq'::regclass);
 9   ALTER TABLE public.student ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            ?          0    18361    student 
   TABLE DATA           K   COPY public.student (id, first_name, last_name, email, course) FROM stdin;
    public          postgres    false    215   ?
       ?           0    0    student_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.student_id_seq', 10, true);
          public          postgres    false    214            g           2606    18368    student student_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.student DROP CONSTRAINT student_pkey;
       public            postgres    false    215            ?   ?   x?]ϱn?@?z?1(?@L?(Q"E?
?r^???3?;????v?i?3S???M??^[O??{??g]<??#?.????X0Cu????[V?d??F
??l??:? 	??Nyo?3?id??r????TtQ|?}?) ?,?%??'ۣd??j?ը?~???l???H?t_??JJ?=??y+w??(n^?l     