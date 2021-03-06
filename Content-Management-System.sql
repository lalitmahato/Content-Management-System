PGDMP             	            y            backend    13.2    13.2 ?    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    16394    backend    DATABASE     k   CREATE DATABASE backend WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE backend;
                postgres    false            ?            1259    16408    about_about    TABLE       CREATE TABLE public.about_about (
    id integer NOT NULL,
    member_name character varying(300) NOT NULL,
    member_description text NOT NULL,
    image character varying(100) NOT NULL,
    is_published boolean NOT NULL,
    list_date timestamp with time zone NOT NULL
);
    DROP TABLE public.about_about;
       public         heap    postgres    false            ?            1259    16406    about_member_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.about_member_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.about_member_id_seq;
       public          postgres    false    203            ?           0    0    about_member_id_seq    SEQUENCE OWNED BY     J   ALTER SEQUENCE public.about_member_id_seq OWNED BY public.about_about.id;
          public          postgres    false    202            ?            1259    16437 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            ?            1259    16435    auth_group_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    209            ?           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    208            ?            1259    16447    auth_group_permissions    TABLE     ?   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            ?            1259    16445    auth_group_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    211            ?           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    210            ?            1259    16429    auth_permission    TABLE     ?   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            ?            1259    16427    auth_permission_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    207            ?           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    206            ?            1259    16455 	   auth_user    TABLE     ?  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    postgres    false            ?            1259    16465    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            ?            1259    16463    auth_user_groups_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    215            ?           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    214            ?            1259    16453    auth_user_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    213            ?           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    212            ?            1259    16473    auth_user_user_permissions    TABLE     ?   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            ?            1259    16471 !   auth_user_user_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    217            ?           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    216            ?            1259    16566    contact_contact    TABLE     ?   CREATE TABLE public.contact_contact (
    id integer NOT NULL,
    full_name character varying(200) NOT NULL,
    email character varying(200) NOT NULL,
    phone character varying(31) NOT NULL,
    message text NOT NULL
);
 #   DROP TABLE public.contact_contact;
       public         heap    postgres    false            ?            1259    16564    contact_contact_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.contact_contact_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.contact_contact_id_seq;
       public          postgres    false    221            ?           0    0    contact_contact_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.contact_contact_id_seq OWNED BY public.contact_contact.id;
          public          postgres    false    220            ?            1259    16533    django_admin_log    TABLE     ?  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            ?            1259    16531    django_admin_log_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    219            ?           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    218            ?            1259    16419    django_content_type    TABLE     ?   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            ?            1259    16417    django_content_type_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    205            ?           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    204            ?            1259    16397    django_migrations    TABLE     ?   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            ?            1259    16395    django_migrations_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    201            ?           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    200            ?            1259    16726    django_session    TABLE     ?   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            ?            1259    16577    event_event    TABLE     ?  CREATE TABLE public.event_event (
    id integer NOT NULL,
    title character varying(400) NOT NULL,
    description text NOT NULL,
    created_at timestamp with time zone NOT NULL,
    location_detail character varying(400) NOT NULL,
    event_time character varying(200) NOT NULL,
    event_date timestamp with time zone NOT NULL,
    event_location_campus character varying(150) NOT NULL,
    event_image character varying(100) NOT NULL
);
    DROP TABLE public.event_event;
       public         heap    postgres    false            ?            1259    16575    event_event_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.event_event_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.event_event_id_seq;
       public          postgres    false    223            ?           0    0    event_event_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.event_event_id_seq OWNED BY public.event_event.id;
          public          postgres    false    222            ?            1259    16589    gallery_gallery    TABLE     ?   CREATE TABLE public.gallery_gallery (
    id integer NOT NULL,
    gallery_title character varying(700) NOT NULL,
    image character varying(100) NOT NULL
);
 #   DROP TABLE public.gallery_gallery;
       public         heap    postgres    false            ?            1259    16587    gallery_gallery_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.gallery_gallery_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.gallery_gallery_id_seq;
       public          postgres    false    225            ?           0    0    gallery_gallery_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.gallery_gallery_id_seq OWNED BY public.gallery_gallery.id;
          public          postgres    false    224            ?            1259    16600    indexblog_blog    TABLE     C  CREATE TABLE public.indexblog_blog (
    id integer NOT NULL,
    blog_title character varying(700) NOT NULL,
    list_date timestamp with time zone NOT NULL,
    blog_tag character varying(400) NOT NULL,
    blog_image character varying(500) NOT NULL,
    blog_describe text NOT NULL,
    is_published boolean NOT NULL
);
 "   DROP TABLE public.indexblog_blog;
       public         heap    postgres    false            ?            1259    16598    indexblog_blog_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.indexblog_blog_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.indexblog_blog_id_seq;
       public          postgres    false    227            ?           0    0    indexblog_blog_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.indexblog_blog_id_seq OWNED BY public.indexblog_blog.id;
          public          postgres    false    226            ?            1259    16648 "   indexcoursesdetails_coursesdetails    TABLE     ?  CREATE TABLE public.indexcoursesdetails_coursesdetails (
    id integer NOT NULL,
    hero_img_title character varying(400) NOT NULL,
    hero_img_title_description character varying(800) NOT NULL,
    academic_level character varying(800) NOT NULL,
    "academic_level_I" character varying(800) NOT NULL,
    english_proficiency character varying(800) NOT NULL,
    "english_proficiency_I" character varying(800) NOT NULL,
    "english_proficiency_II" character varying(800) NOT NULL,
    "sub_english_proficiency_I" character varying(800) NOT NULL,
    "sub_english_proficiency_II" character varying(800) NOT NULL,
    "english_proficiency_III" character varying(800) NOT NULL,
    university_name character varying(800) NOT NULL,
    course_duration character varying(800) NOT NULL,
    total_create character varying(800) NOT NULL,
    course_img character varying(100) NOT NULL,
    course_title character varying(400) NOT NULL,
    course_description text NOT NULL,
    course_level integer NOT NULL,
    level_subject_name character varying(700) NOT NULL,
    "level_subject_name_I" character varying(700) NOT NULL,
    "level_subject_name_II" character varying(700) NOT NULL,
    "level_subject_name_III" character varying(700) NOT NULL,
    "level_subject_name_IV" character varying(700) NOT NULL,
    "level_subject_name_V" character varying(700) NOT NULL,
    "level_subject_name_VI" character varying(700) NOT NULL,
    "level_subject_name_VII" character varying(700) NOT NULL,
    "courseName_id" integer
);
 6   DROP TABLE public.indexcoursesdetails_coursesdetails;
       public         heap    postgres    false            ?            1259    16646 )   indexcoursesdetails_coursesdetails_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.indexcoursesdetails_coursesdetails_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public.indexcoursesdetails_coursesdetails_id_seq;
       public          postgres    false    234            ?           0    0 )   indexcoursesdetails_coursesdetails_id_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public.indexcoursesdetails_coursesdetails_id_seq OWNED BY public.indexcoursesdetails_coursesdetails.id;
          public          postgres    false    233            ?            1259    16684    pages_heroslides    TABLE     ?   CREATE TABLE public.pages_heroslides (
    id integer NOT NULL,
    hero_slide character varying(100) NOT NULL,
    description text NOT NULL,
    title character varying(400) NOT NULL
);
 $   DROP TABLE public.pages_heroslides;
       public         heap    postgres    false            ?            1259    16682    pages_heroslides_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.pages_heroslides_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.pages_heroslides_id_seq;
       public          postgres    false    236            ?           0    0    pages_heroslides_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.pages_heroslides_id_seq OWNED BY public.pages_heroslides.id;
          public          postgres    false    235            ?            1259    16692    pages_review    TABLE     2  CREATE TABLE public.pages_review (
    id integer NOT NULL,
    image character varying(100) NOT NULL,
    name character varying(300) NOT NULL,
    description text NOT NULL,
    is_published boolean NOT NULL,
    list_date timestamp with time zone NOT NULL,
    course character varying(300) NOT NULL
);
     DROP TABLE public.pages_review;
       public         heap    postgres    false            ?            1259    16690    pages_review_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.pages_review_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.pages_review_id_seq;
       public          postgres    false    238            ?           0    0    pages_review_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.pages_review_id_seq OWNED BY public.pages_review.id;
          public          postgres    false    237            ?            1259    16703    pages_why_with_us    TABLE       CREATE TABLE public.pages_why_with_us (
    id integer NOT NULL,
    title character varying(300) NOT NULL,
    description text NOT NULL,
    image character varying(100) NOT NULL,
    is_published boolean NOT NULL,
    list_date timestamp with time zone NOT NULL
);
 %   DROP TABLE public.pages_why_with_us;
       public         heap    postgres    false            ?            1259    16701    pages_why_with_us_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.pages_why_with_us_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.pages_why_with_us_id_seq;
       public          postgres    false    240            ?           0    0    pages_why_with_us_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.pages_why_with_us_id_seq OWNED BY public.pages_why_with_us.id;
          public          postgres    false    239            ?            1259    16611    studentApp_course    TABLE     ?  CREATE TABLE public."studentApp_course" (
    id integer NOT NULL,
    course_name character varying(200) NOT NULL,
    academic_level character varying(800) NOT NULL,
    "academic_level_I" character varying(800) NOT NULL,
    course_description text NOT NULL,
    course_duration character varying(800) NOT NULL,
    course_img character varying(100) NOT NULL,
    course_level integer NOT NULL,
    course_title character varying(400) NOT NULL,
    english_proficiency character varying(800) NOT NULL,
    "english_proficiency_I" character varying(800) NOT NULL,
    "english_proficiency_II" character varying(800) NOT NULL,
    "english_proficiency_III" character varying(800) NOT NULL,
    hero_img_title character varying(400) NOT NULL,
    hero_img_title_description character varying(800) NOT NULL,
    level_subject_name character varying(700) NOT NULL,
    "level_subject_name_I" character varying(700) NOT NULL,
    "level_subject_name_II" character varying(700) NOT NULL,
    "level_subject_name_III" character varying(700) NOT NULL,
    "level_subject_name_IV" character varying(700) NOT NULL,
    "level_subject_name_V" character varying(700) NOT NULL,
    "level_subject_name_VI" character varying(700) NOT NULL,
    "level_subject_name_VII" character varying(700) NOT NULL,
    "sub_english_proficiency_I" character varying(800) NOT NULL,
    "sub_english_proficiency_II" character varying(800) NOT NULL,
    university_name character varying(800) NOT NULL,
    total_create character varying(800) NOT NULL
);
 '   DROP TABLE public."studentApp_course";
       public         heap    postgres    false            ?            1259    16609    studentApp_course_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."studentApp_course_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public."studentApp_course_id_seq";
       public          postgres    false    229            ?           0    0    studentApp_course_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public."studentApp_course_id_seq" OWNED BY public."studentApp_course".id;
          public          postgres    false    228            ?            1259    16624    studentApp_module    TABLE     ?   CREATE TABLE public."studentApp_module" (
    id integer NOT NULL,
    module_name character varying(200) NOT NULL,
    level integer NOT NULL,
    course_name_id integer NOT NULL
);
 '   DROP TABLE public."studentApp_module";
       public         heap    postgres    false            ?            1259    16622    studentApp_module_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."studentApp_module_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public."studentApp_module_id_seq";
       public          postgres    false    232            ?           0    0    studentApp_module_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public."studentApp_module_id_seq" OWNED BY public."studentApp_module".id;
          public          postgres    false    231            ?            1259    16617    studentApp_student    TABLE       CREATE TABLE public."studentApp_student" (
    student_name character varying(200) NOT NULL,
    student_email character varying(200) NOT NULL,
    student_password character varying(255) NOT NULL,
    student_level integer NOT NULL,
    student_course_id integer NOT NULL
);
 (   DROP TABLE public."studentApp_student";
       public         heap    postgres    false            ?           2604    16411    about_about id    DEFAULT     q   ALTER TABLE ONLY public.about_about ALTER COLUMN id SET DEFAULT nextval('public.about_member_id_seq'::regclass);
 =   ALTER TABLE public.about_about ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203            ?           2604    16440    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    209    209            ?           2604    16450    auth_group_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210    211            ?           2604    16432    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206    207            ?           2604    16458    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212    213            ?           2604    16468    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            ?           2604    16476    auth_user_user_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            ?           2604    16569    contact_contact id    DEFAULT     x   ALTER TABLE ONLY public.contact_contact ALTER COLUMN id SET DEFAULT nextval('public.contact_contact_id_seq'::regclass);
 A   ALTER TABLE public.contact_contact ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220    221            ?           2604    16536    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            ?           2604    16422    django_content_type id    DEFAULT     ?   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204    205            ?           2604    16400    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    201    200    201            ?           2604    16580    event_event id    DEFAULT     p   ALTER TABLE ONLY public.event_event ALTER COLUMN id SET DEFAULT nextval('public.event_event_id_seq'::regclass);
 =   ALTER TABLE public.event_event ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    223    223            ?           2604    16592    gallery_gallery id    DEFAULT     x   ALTER TABLE ONLY public.gallery_gallery ALTER COLUMN id SET DEFAULT nextval('public.gallery_gallery_id_seq'::regclass);
 A   ALTER TABLE public.gallery_gallery ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225            ?           2604    16603    indexblog_blog id    DEFAULT     v   ALTER TABLE ONLY public.indexblog_blog ALTER COLUMN id SET DEFAULT nextval('public.indexblog_blog_id_seq'::regclass);
 @   ALTER TABLE public.indexblog_blog ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    227    227            ?           2604    16651 %   indexcoursesdetails_coursesdetails id    DEFAULT     ?   ALTER TABLE ONLY public.indexcoursesdetails_coursesdetails ALTER COLUMN id SET DEFAULT nextval('public.indexcoursesdetails_coursesdetails_id_seq'::regclass);
 T   ALTER TABLE public.indexcoursesdetails_coursesdetails ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    234    234            ?           2604    16687    pages_heroslides id    DEFAULT     z   ALTER TABLE ONLY public.pages_heroslides ALTER COLUMN id SET DEFAULT nextval('public.pages_heroslides_id_seq'::regclass);
 B   ALTER TABLE public.pages_heroslides ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    235    236            ?           2604    16695    pages_review id    DEFAULT     r   ALTER TABLE ONLY public.pages_review ALTER COLUMN id SET DEFAULT nextval('public.pages_review_id_seq'::regclass);
 >   ALTER TABLE public.pages_review ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    237    238            ?           2604    16706    pages_why_with_us id    DEFAULT     |   ALTER TABLE ONLY public.pages_why_with_us ALTER COLUMN id SET DEFAULT nextval('public.pages_why_with_us_id_seq'::regclass);
 C   ALTER TABLE public.pages_why_with_us ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    240    239    240            ?           2604    16614    studentApp_course id    DEFAULT     ?   ALTER TABLE ONLY public."studentApp_course" ALTER COLUMN id SET DEFAULT nextval('public."studentApp_course_id_seq"'::regclass);
 E   ALTER TABLE public."studentApp_course" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    229    229            ?           2604    16627    studentApp_module id    DEFAULT     ?   ALTER TABLE ONLY public."studentApp_module" ALTER COLUMN id SET DEFAULT nextval('public."studentApp_module_id_seq"'::regclass);
 E   ALTER TABLE public."studentApp_module" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    231    232            ?          0    16408    about_about 
   TABLE DATA           j   COPY public.about_about (id, member_name, member_description, image, is_published, list_date) FROM stdin;
    public          postgres    false    203   ?      ?          0    16437 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    209   ?      ?          0    16447    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    211   W      ?          0    16429    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    207   ,      ?          0    16455 	   auth_user 
   TABLE DATA           ?   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    213         ?          0    16465    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    215   ?
      ?          0    16473    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    217         ?          0    16566    contact_contact 
   TABLE DATA           O   COPY public.contact_contact (id, full_name, email, phone, message) FROM stdin;
    public          postgres    false    221         ?          0    16533    django_admin_log 
   TABLE DATA           ?   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    219   ?      ?          0    16419    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    205   2      ?          0    16397    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    201   ?2      ?          0    16726    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    241   W7      ?          0    16577    event_event 
   TABLE DATA           ?   COPY public.event_event (id, title, description, created_at, location_detail, event_time, event_date, event_location_campus, event_image) FROM stdin;
    public          postgres    false    223   u8      ?          0    16589    gallery_gallery 
   TABLE DATA           C   COPY public.gallery_gallery (id, gallery_title, image) FROM stdin;
    public          postgres    false    225   ?=      ?          0    16600    indexblog_blog 
   TABLE DATA           v   COPY public.indexblog_blog (id, blog_title, list_date, blog_tag, blog_image, blog_describe, is_published) FROM stdin;
    public          postgres    false    227   ?>      ?          0    16648 "   indexcoursesdetails_coursesdetails 
   TABLE DATA           n  COPY public.indexcoursesdetails_coursesdetails (id, hero_img_title, hero_img_title_description, academic_level, "academic_level_I", english_proficiency, "english_proficiency_I", "english_proficiency_II", "sub_english_proficiency_I", "sub_english_proficiency_II", "english_proficiency_III", university_name, course_duration, total_create, course_img, course_title, course_description, course_level, level_subject_name, "level_subject_name_I", "level_subject_name_II", "level_subject_name_III", "level_subject_name_IV", "level_subject_name_V", "level_subject_name_VI", "level_subject_name_VII", "courseName_id") FROM stdin;
    public          postgres    false    234   CA      ?          0    16684    pages_heroslides 
   TABLE DATA           N   COPY public.pages_heroslides (id, hero_slide, description, title) FROM stdin;
    public          postgres    false    236   `A      ?          0    16692    pages_review 
   TABLE DATA           e   COPY public.pages_review (id, image, name, description, is_published, list_date, course) FROM stdin;
    public          postgres    false    238   EB      ?          0    16703    pages_why_with_us 
   TABLE DATA           c   COPY public.pages_why_with_us (id, title, description, image, is_published, list_date) FROM stdin;
    public          postgres    false    240   ?C      ?          0    16611    studentApp_course 
   TABLE DATA           [  COPY public."studentApp_course" (id, course_name, academic_level, "academic_level_I", course_description, course_duration, course_img, course_level, course_title, english_proficiency, "english_proficiency_I", "english_proficiency_II", "english_proficiency_III", hero_img_title, hero_img_title_description, level_subject_name, "level_subject_name_I", "level_subject_name_II", "level_subject_name_III", "level_subject_name_IV", "level_subject_name_V", "level_subject_name_VI", "level_subject_name_VII", "sub_english_proficiency_I", "sub_english_proficiency_II", university_name, total_create) FROM stdin;
    public          postgres    false    229   $E      ?          0    16624    studentApp_module 
   TABLE DATA           U   COPY public."studentApp_module" (id, module_name, level, course_name_id) FROM stdin;
    public          postgres    false    232   (I      ?          0    16617    studentApp_student 
   TABLE DATA              COPY public."studentApp_student" (student_name, student_email, student_password, student_level, student_course_id) FROM stdin;
    public          postgres    false    230   ?I      ?           0    0    about_member_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.about_member_id_seq', 7, true);
          public          postgres    false    202            ?           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 14, true);
          public          postgres    false    208            ?           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 52, true);
          public          postgres    false    210            ?           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 76, true);
          public          postgres    false    206            ?           0    0    auth_user_groups_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 8, true);
          public          postgres    false    214            ?           0    0    auth_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_user_id_seq', 11, true);
          public          postgres    false    212            ?           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    216            ?           0    0    contact_contact_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.contact_contact_id_seq', 24, true);
          public          postgres    false    220            ?           0    0    django_admin_log_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 623, true);
          public          postgres    false    218            ?           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 19, true);
          public          postgres    false    204            ?           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 62, true);
          public          postgres    false    200            ?           0    0    event_event_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.event_event_id_seq', 10, true);
          public          postgres    false    222            ?           0    0    gallery_gallery_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.gallery_gallery_id_seq', 12, true);
          public          postgres    false    224            ?           0    0    indexblog_blog_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.indexblog_blog_id_seq', 16, true);
          public          postgres    false    226            ?           0    0 )   indexcoursesdetails_coursesdetails_id_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public.indexcoursesdetails_coursesdetails_id_seq', 1, false);
          public          postgres    false    233            ?           0    0    pages_heroslides_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.pages_heroslides_id_seq', 14, true);
          public          postgres    false    235            ?           0    0    pages_review_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.pages_review_id_seq', 11, true);
          public          postgres    false    237            ?           0    0    pages_why_with_us_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.pages_why_with_us_id_seq', 5, true);
          public          postgres    false    239            ?           0    0    studentApp_course_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."studentApp_course_id_seq"', 4, true);
          public          postgres    false    228            ?           0    0    studentApp_module_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."studentApp_module_id_seq"', 16, true);
          public          postgres    false    231            ?           2606    16416    about_about about_member_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.about_about
    ADD CONSTRAINT about_member_pkey PRIMARY KEY (id);
 G   ALTER TABLE ONLY public.about_about DROP CONSTRAINT about_member_pkey;
       public            postgres    false    203            ?           2606    16562    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    209            ?           2606    16489 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    211    211            ?           2606    16452 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    211            ?           2606    16442    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    209            ?           2606    16480 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    207    207            ?           2606    16434 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    207            ?           2606    16470 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    215            ?           2606    16504 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    215    215            ?           2606    16460    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    213            ?           2606    16478 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    217            ?           2606    16518 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 ?   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    217    217            ?           2606    16556     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    213            ?           2606    16574 $   contact_contact contact_contact_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.contact_contact
    ADD CONSTRAINT contact_contact_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.contact_contact DROP CONSTRAINT contact_contact_pkey;
       public            postgres    false    221            ?           2606    16542 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    219            ?           2606    16426 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    205    205            ?           2606    16424 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    205            ?           2606    16405 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    201            	           2606    16733 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    241            ?           2606    16585    event_event event_event_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.event_event
    ADD CONSTRAINT event_event_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.event_event DROP CONSTRAINT event_event_pkey;
       public            postgres    false    223            ?           2606    16597 $   gallery_gallery gallery_gallery_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.gallery_gallery
    ADD CONSTRAINT gallery_gallery_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.gallery_gallery DROP CONSTRAINT gallery_gallery_pkey;
       public            postgres    false    225            ?           2606    16608 "   indexblog_blog indexblog_blog_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.indexblog_blog
    ADD CONSTRAINT indexblog_blog_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.indexblog_blog DROP CONSTRAINT indexblog_blog_pkey;
       public            postgres    false    227                        2606    16656 J   indexcoursesdetails_coursesdetails indexcoursesdetails_coursesdetails_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY public.indexcoursesdetails_coursesdetails
    ADD CONSTRAINT indexcoursesdetails_coursesdetails_pkey PRIMARY KEY (id);
 t   ALTER TABLE ONLY public.indexcoursesdetails_coursesdetails DROP CONSTRAINT indexcoursesdetails_coursesdetails_pkey;
       public            postgres    false    234                       2606    16689 &   pages_heroslides pages_heroslides_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.pages_heroslides
    ADD CONSTRAINT pages_heroslides_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.pages_heroslides DROP CONSTRAINT pages_heroslides_pkey;
       public            postgres    false    236                       2606    16700    pages_review pages_review_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.pages_review
    ADD CONSTRAINT pages_review_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.pages_review DROP CONSTRAINT pages_review_pkey;
       public            postgres    false    238                       2606    16711 (   pages_why_with_us pages_why_with_us_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.pages_why_with_us
    ADD CONSTRAINT pages_why_with_us_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.pages_why_with_us DROP CONSTRAINT pages_why_with_us_pkey;
       public            postgres    false    240            ?           2606    16616 (   studentApp_course studentApp_course_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public."studentApp_course"
    ADD CONSTRAINT "studentApp_course_pkey" PRIMARY KEY (id);
 V   ALTER TABLE ONLY public."studentApp_course" DROP CONSTRAINT "studentApp_course_pkey";
       public            postgres    false    229            ?           2606    16629 (   studentApp_module studentApp_module_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public."studentApp_module"
    ADD CONSTRAINT "studentApp_module_pkey" PRIMARY KEY (id);
 V   ALTER TABLE ONLY public."studentApp_module" DROP CONSTRAINT "studentApp_module_pkey";
       public            postgres    false    232            ?           2606    16621 *   studentApp_student studentApp_student_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public."studentApp_student"
    ADD CONSTRAINT "studentApp_student_pkey" PRIMARY KEY (student_email);
 X   ALTER TABLE ONLY public."studentApp_student" DROP CONSTRAINT "studentApp_student_pkey";
       public            postgres    false    230            ?           1259    16563    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    209            ?           1259    16500 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    211            ?           1259    16501 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    211            ?           1259    16486 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    207            ?           1259    16516 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    215            ?           1259    16515 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    215            ?           1259    16530 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     ?   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    217            ?           1259    16529 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    217            ?           1259    16557     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    213            ?           1259    16553 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    219            ?           1259    16554 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    219                       1259    16735 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    241            
           1259    16734 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    241            ?           1259    16662 5   indexcoursesdetails_coursesdetails_course_id_2c10cab9    INDEX     ?   CREATE INDEX indexcoursesdetails_coursesdetails_course_id_2c10cab9 ON public.indexcoursesdetails_coursesdetails USING btree ("courseName_id");
 I   DROP INDEX public.indexcoursesdetails_coursesdetails_course_id_2c10cab9;
       public            postgres    false    234            ?           1259    16642 )   studentApp_module_course_name_id_e1092378    INDEX     u   CREATE INDEX "studentApp_module_course_name_id_e1092378" ON public."studentApp_module" USING btree (course_name_id);
 ?   DROP INDEX public."studentApp_module_course_name_id_e1092378";
       public            postgres    false    232            ?           1259    16636 -   studentApp_student_student_course_id_bb5477f4    INDEX     }   CREATE INDEX "studentApp_student_student_course_id_bb5477f4" ON public."studentApp_student" USING btree (student_course_id);
 C   DROP INDEX public."studentApp_student_student_course_id_bb5477f4";
       public            postgres    false    230            ?           1259    16635 .   studentApp_student_student_email_d10a3c20_like    INDEX     ?   CREATE INDEX "studentApp_student_student_email_d10a3c20_like" ON public."studentApp_student" USING btree (student_email varchar_pattern_ops);
 D   DROP INDEX public."studentApp_student_student_email_d10a3c20_like";
       public            postgres    false    230                       2606    16495 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    207    3020    211                       2606    16490 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    3025    211    209                       2606    16481 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    207    3015    205                       2606    16510 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    215    3025    209                       2606    16505 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    3033    213    215                       2606    16524 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    3020    217    207                       2606    16519 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    217    213    3033                       2606    16543 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    3015    219    205                       2606    16548 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    219    3033    213                       2606    16669 [   indexcoursesdetails_coursesdetails indexcoursesdetails__courseName_id_fd4570e6_fk_studentAp    FK CONSTRAINT     ?   ALTER TABLE ONLY public.indexcoursesdetails_coursesdetails
    ADD CONSTRAINT "indexcoursesdetails__courseName_id_fd4570e6_fk_studentAp" FOREIGN KEY ("courseName_id") REFERENCES public."studentApp_course"(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.indexcoursesdetails_coursesdetails DROP CONSTRAINT "indexcoursesdetails__courseName_id_fd4570e6_fk_studentAp";
       public          postgres    false    229    234    3062                       2606    16637 H   studentApp_module studentApp_module_course_name_id_e1092378_fk_studentAp    FK CONSTRAINT     ?   ALTER TABLE ONLY public."studentApp_module"
    ADD CONSTRAINT "studentApp_module_course_name_id_e1092378_fk_studentAp" FOREIGN KEY (course_name_id) REFERENCES public."studentApp_course"(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public."studentApp_module" DROP CONSTRAINT "studentApp_module_course_name_id_e1092378_fk_studentAp";
       public          postgres    false    3062    232    229                       2606    16630 M   studentApp_student studentApp_student_student_course_id_bb5477f4_fk_studentAp    FK CONSTRAINT     ?   ALTER TABLE ONLY public."studentApp_student"
    ADD CONSTRAINT "studentApp_student_student_course_id_bb5477f4_fk_studentAp" FOREIGN KEY (student_course_id) REFERENCES public."studentApp_course"(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public."studentApp_student" DROP CONSTRAINT "studentApp_student_student_course_id_bb5477f4_fk_studentAp";
       public          postgres    false    3062    229    230            ?   6  x???[o?@???_1??&qbS?KjA?RQ@!U{O?g/U>??[*T^??7۳{f??O+ϳsv|k٬`???Hَ????:???????PS??Ou?]?pǞ봟?1\R?Cg?g??A?a??p]? ?t?)?qi?a`k9ig???:????
*FQ)?Ѣ#??H?36??pW??X??c8|җn?u??yl#6?Qdt?1 ?xy?-e?|FC?H`???!L?-9???u??p*?彲|zGJ?Ԏ?"??(?ǐT?1Ԉ???xOigJ?9?H?? ?Ub??[V??ג}ش??Ya?k??!?2?$????I??ԓ????M?}pO??II[E>??Rt?񼙊d????]?TH	i"|x6"??u??Of?Y1?V???D?^???o?U?T؝V?E??b^.??ʹZ??h??ǀ??\Ȩ;??5?L3`:`?L????_????˸?E??Zd?rFΰ?`a?㇁ҁ??P:?Z?|?>??????w???E9?)??c?8Z??+??l?t?tK??˗??9??,?˖?>????t@t?7????????F???Tţ      ?   ?   x??=?@?z?Sp???j66cc??6?0fw????????l(餽5CE?AzÚ?&?6t?&l??c???.???????.5??t???^ѳ???[W?.?????*z$?x- ? Y &?      ?   ?   x????0CѳX???⥗?_?P:?o@??h????!?q??%??i?I<K??????`XY??2X?w??cZ?m|m?W???c??px???Hx?5}?\??j??~??"?(?F?8??2*rBc5??????扸D?	G??@R7??'62&2'.R??v"????Lhϝ?mNۅZŉ??????I;#      ?   ?  x?e?[??0E??U??$??lc?V,@J?G???$?zܢ?b????????}l??es??a?!?e?Q?????}\?e,̎?K??L?'????XG?^??8͗??BE<?z?"B??(V?h.Ɛ?'???/s?Îd? ?-?(?.%tQ?U?LE2`???l????a?G?31??A!??x??q=8?<>??=??-???/y5	?DLG?u$?"|B[?,???\J?&5???,?X??W??r??[	ů?`??s{}?ܧ??<???L?\<?bwy?8+:??a?u?%$?:?+=ǝˇ??#.??#?ȃ?-?K??	??q????????g?_^ ?w^?W?E??k?uyx??#?o?aܹ??%?su???????I?)S{?B?NNø??
i`+???9?ӕ???LVk??ߝ?{7?T?=3?l?7^??w?ض?w????F?????&??l?U~????_.wb?J_?f?վ2l?????V?KIn?@?%Q??e?Ʊv9p??P?2??@?3?R????}??#?r?L?]V<ʖH??x?E?n 7?%W$-=ס??!????q?Q@?\?e$Ʌ??(QR\?--󘇐??>??C?Y?.B?@!??e?^_VO??,Ǹ?^??C??md?[??a??J??~??{O??XtC????a?4,I-g\?ƃ?@?)??p?	)? ???̿?1??H??      ?   ?  x?}?]o?@?k???ά??| ?&+[AP??M6E>E?V?ׯMqc?l??7s3??39??a?????,&	 ?!??I?<:yn?ԡ???jZ??X???Z?BJ?0]>=z????NǓ?????X? x"?}r??{ ?w???g?~?f?c??Q????S^??,? '?P????.lg?H??\?FI?{/w?{??S?N
????fM&????.??x>\Ck??y[?cA ,i?e?~h????F?}B)h#??B?cW????r?r???K.UGo?|u?	GQ?=?g??Y??Q????p?N??;???ֱ?[??]C"?"l??%?&>?uF?Z?^?*?iw????{????C_Y?¼?$k?_Ћ?ܛ?[4????1m7?}?|????#?S?W???%??b???J?p?:?Km?G??A#d?[ʈ?7?O?&A"?I?v?ٖ?y@ORy\2?K?F????&???k?R?4?¤????(??K兲?}??ָ?Qp]?dWS32]?]?X????m=`"UA??m?ԅ<7?u???I?XI??&&3cPD?Q?ٽ???ׯGD???v???;nBW6?edM?]	???O'?x.+ma??Kig8;s?U?j?j???۬??Dxk?????SF?8?LCF??r???t?}??????Ne2??>*??O????????ߞD ?????n?M?x?      ?   %   x?3?4?4?2?4?f?f@Ҝ?HZpZ ?=... M?F      ?      x?????? ? ?      ?   t   x?32?L?HM?6?,.)MI?+1tH?M???K????6??03510?01?LK?HK).JO)J?22??2¥???????Ȅ??22"֪?ⴴ??D?u\@#???)?Jj+Ni????? Ӿ@Y      ?      x??]ߓ??~???}J?.]$@??<???q{?ͥv????<?3?G???K??ƕ??~ [jRd?F?j_???ֳ???&? P_??{E??f?ܵVך r!???kCW????o??????????ۯ?????¿ѿ?r??6?!??vG?A???-?? _?_??o??????7????j?~???_?X?kT???2`S?<?2@JvϷ?ǝ????}s?y?~???A????5?5??????~?n?]?֟V??W?V??????jkP??)???~X>.?l>>?V????????n?y@u5?q???*^}?~?m???v?|?]???<?.~???[=,???|?.֏d?RF??&?`?;?s????ﵳ)?B-??????+I?Q?????E?Zنg?j;??c?+]?o?w.{?????_{?:?*?C`)t?4"??'B??A7V???Ի???|Xܮ?nx???w??TÓb?
4?QY???F?8?A???G?b??yv?Rd????|??3K?bb?=??м?"ȼ???^?E?P???Y}xIj!??4??k?????????O???0?@?F???q~?QX?????&?????j?yP?)@x?6???@???L?????1?????#?1N??o?ۧ??q????__???????t??]==?/??n??>?????|?V)9g,?y??w???O???????T???zK???? }?BC??W??_????м8?VXa??^}_˕Lt?	AQ\?X?]??Xڻjf??W?(?keG?u??ω??:#X:Ɵ??H%?B?(T?C?1?j}???⩐M?(m?
?????8^??Z)Yk?P?????a????ͦ????ʧ??	I{cl???S?m(è?L?@Pb?4c?=?ѵ\4???U??????Z0`???l?߷U?Xc???0 ???Y?c?1q?q?u?صҷi?Tb?X7???PBL\?/??????f?????}|????]?F{??E?1?^݈I??N?*??ZePU??4???keA????AB;?}
???xe??<P?1˧H?M?ؑJ?~???/???Q1#ZH~?j??TX?~????+?SO?_ ?󕔄??@cI?ig?1B???+9) N<X?1?ڡ?F$D??'o?gDLظ?!?c&????4lê??L???]/?!?(PW??}*??UlB?,??Q???'?Jd?q⋂ׯ_?۬.?;?w]?????3l??ݯ?G?;:?ʁ?}??G?`?Rǅ's??A?,?׻ŏ˻?nsR??O??????Ow??Z1Zfj!B?=?'?
)?4?KR??l????)???#>Ę???̄??WF1Z??w?pʣ?\???????}?<?bHf?>0>??k0!?L????:?g?x???6??M??8??????Eye??o?9???Fn??I?RJ?j??P~+??????c-???0?^ӭ??;0?,Uq?????.?v????t"??!?b?,??mtW??????ŷ???w?o?????/^-~|???u?U	*?+?&Lj?Y|o?V?{????V??????`?P?-?}?N?????????~q˶??i?????<~??t?y\<,??WO??????ylHVCc?F?0??6?!P)?6̟???3??v%D??E?r?V8l?(?????#??A?\?"?7Ơ???H,?"Q5v*	A??6u_rJBo?؉w{?6?K?;뼓???楞?	???^?w????P???hu?Iܛ?%??	?? R
????????,?<?9??T? ????<??F??,߀V?&??l??4P*???غP ?f???????????"??.??ך?{P???????q???Z>?~??<?V?????I???qY);c???|?}??w'?????;??q??[???,??Z	???:N????Y\ox9??[?~X?v\???U?Q??
h?N???֟??????9?Z?T?I??@?8??6?OwL????]C???OَF?????????L?1eAB??4?1|7????|l??xTʛ~(9?hǚr,?8x`um^???|~X~8~?c&?5?C'????????????;7???u????q??"@x? '???V%?1?????`????.QM<?=??N??cz%Ih_??-<???k4?'???5?_ה?VT?
Φn?'?????ݐw?u??-oc?l??ꕊ^????Q?Q_Ү?$UjCf?u̬4tŪ???Ҟqr?'?"??xsP?f	bsI???,??.?]??M??Q??It??5?_??*f{94?}?q0?7?P??K,??>%?Lq?4?T''ǰ?4$?f?^=?\??????	J?3????Tǋ????C???d?L?kdC\??????c?c?F@??}???V8??U?[?("b"*???* ?|	?q?H?O{:??E%?k?M?|?S????rP?r?U?Ѕ?z?:?s-????u[r?ԃ?C???3?;???T2?򔓿?^??.tP??P?0???-?Mw??1?u?Z>,?=??o?)%???z?^=-?o??o???ϋ???????V?P??)S?????P? ^r????#????h?Z0?e}j???\'?)~? 9fg?%?]e???^#{?>)??E?B?$??? )&y??????v!鵫}
?bʪ*?dm??pR>K?X6???oi2???-o? P??'??R?՟??Ȋ??????a???F???R??j?n?o???.\?[?-?1?=%R;fAr???vj?ߦC?V ?d;?Φ?K?m??c??t?nϝwW`??Y?6E?_r?mD?%?
bo?\Z?ɜ?	%??g?!?Ψ?*? U?0?`?Ş??CK?D2???Ҽ᤹>?T????b???G*-?A0,?^Ch??!??̫?s?7??m????e?"\???UR?O??͇??@?G?SR???`?????7v{֏7l8~??y???rW2?xC?l?f?7??n?~}?<?d%(??R	?7?,n_T.ol?<?Y)֛?Վ/?=???Uޤ?TofTo?״?M?R䌮;w'???z?f#ŰNI??????࣬?jpp???
ө?鄤ap??ٴGHA??|?v??K??Q)+-??r??cH	????C?F???,%J?&;? ? b;?????L?7#?E?%??Y?V)g
K???o$??nc??FK?8??d f?شG??D?帊l??c???1?+??R??Z??D??sCq?\š?>?????q?y??lV;??%B:
??U?CF?Z#e?Zq-?h??.??8Њ~A?D?vA??TSZQ2???֍?Z?Tʼ?v??.n+;?8В?:*O??ٮ5
ӗ??,h????l+Z??U?$c???m??QRLGe??Y9c?S-???U*?Qe?d3??=]?Z?8??%T??&???:??lg'??_?ej?->,?-?K^??u?U???LoEN=(t???!?~????
?????gA??T????v???W???H??O??|ʢ?#?f???????6???sO?R|?(??.??I?tVe~??R???zVJcͤ@C?SKa[J+
&?K?`?K?i??m?v%?Ulc?[J??#??????q?	H"uL???N??????8????f
???Ҟ:?a?q?I+???j?6?Y+A???<P9г֥????@??gi??Z?.d????CP%???&"{?%??????????0?Z?S???0??+?"I_ȗU??b??R?i?R??xjy?<#?J????????mX?d?*???	p? ??;?J?8	?Q u?+?~??8?]?/?`@HS=@Е???N݉?*???????ǔ?5Ϋ]??G???? ]???XK????x??q?$?Z?.3KGW@W,?(????]???G?<qVgt?6??& ???w???(?G??	?&?d#I????े??K??@??)???<*????xφ??ZR??Q??&??"$gv.?
?$:Ka/$8??쒋????ss?$???Uz??R???'ȧvCK????֒???c?l@    ?L??%tʣ?Ǌ?&f?+m??s=,V?7rt??lv?????cf.o?ƥ?K??NbV(?T?H?R*?G??P8=?#?T$?6??_?I???kR8	??:?J#V(a?`Eu??Թ?{??????{??7?&????&?j?2??L{?mTV??VC*oФ?"?b????N|I?͐m%~???3??N?W??WLwm?%^??S?W?-???l??????8????&D?@?NG9SFl?f*F{???8eRh7OR?^1????}??HO??(!?c?R2Nw?a?|?1?ǉO?V>?FT^2o?C9o?V??ނ1<s??$? ????o>%?ӡZh?hت?pY?:??Q6?a?m?x??%p?#???L? ?G?Z???[ȓ??0?/?Q|8N??e??gS??\?<)? ?@? ?ى"?y?V+$U?Ȧ?I???m??v)???V????R?84??:????8>??gwdIڱ(??????3?ZA???U3f???(????b?:?<_**m+n??u??Ɨ?? R?6:??==%??c?i??< 8???à?RC?/?	+????!e?u}n!*??Ft??ؾ??????VB? n??Wq?Jx???L1?*:ۘ+O!Uf?>pw???;T??t?ɀ?()?ō??[???#O\EQ?v??%~?р?x????|4?*2?c"6Օ?>pG]lN??et?????솵?K?>?a}E?X???,^ [?,??xeRRԄ?_1+:\?ʤ6?O|ŭ?r?v?_.:D(?'mVB*?H3!??<?7C,????K?*??m???<?y?q ??{:c0e??p??+?Q޼S????|_(???? 4L^=yip+?,??7?QAk;XK7^JIz;?kkU?Tz?/??:???^Ϙ????rL???X?7^Z?D??????ܡ??K??`P?R???RJ?k?w?x?.?\H?2?Ъ1?z^G?h??(?z???b<??????ՔEͧE:QUL?q%V_?ғ??NT?1v.'c\??Mᡪȍ??usE!QU̖f??wu??(?????ӱ?nOU&??Q?8?d??.????Z?3(s??q????1	??v:̱?*?,EO?pN?ۢ??+mt?|?:mL??M??E#NY???????P??EjۋD,???YJb????*9\?_???Wxׂ?L?x??W*??u ??!??A<?m	WvV????i??d??Yiw?\︣?.өbE?????:V??a}98n܄???F??QN?T?Z???(s??J>H????;gca`lH? ?????zhl?n?4ޓ?1Ď???`??W7??<??F??*???3I?-?????)?i?zￇ?e??.?Ȭ?D?0XS??LD?Y?/?Sk?ꔼZ>y???`??RXb`0??c?64???;?޷WOO) ?B?4??K???3?U???L9*??^??M????:?F?0?h????ɳ??	?W?\.?"Ee{?????Y??y?gh?6S?~N?j?ZJ	C*???{]?????`0Y??7C?Y??(1bلd?)[b0?A%u???/?nHc2???8??h?????[W???8\?H,<?.??Ê0[?x?0?E??1r̳NB삅????6K)z?f?:?KZ ?3~??D?mG???)????Y?qa??\?N????Ԏ??rz?(?a?<r?@???̳??鍒0O!i?}
%/?????$)?-???/.?bj)R??n??-5?z???YL?3???l-K?k<?????7r??O??To~qHɗR?5?7:??sY*?{q??5N?ٳ?mE???l???I?􈃭?b???>??pa??V?o'?w3D?lE?k$??]|Q?ʖ47:v??:???'+m?vӫ?a?\vp?$+mIuy ?t????l??rJ????I?	??Ĕl7?b??B??|???,?4<???gS?+?ob?ݚ???KBW?c??'?o?H?CW????? [j)gk?|Lt??I^
?^??U?*}C?<o??2S>&?Ja??j????D?
Ll??.???]?$?1w䱵Nf?J}ěD?????I??????B?)5}?3??	
'U;.3}?	b?3??(?O?7_i? !??U??_??AΖ??????+5b??bJ??Ą??r??kx?E?? ????@?????R'?????%Ȍ-?L?V??S????|?K?R,O*???rl?!???*tE????͏?P?U. ?r_??*Y?erb(i&?ؒ?rWg?뗼????͞??~?*?k???@??ׯ8#j?[??DV?L??\v3??'?Eb?R????P1J.(n,?t??xЊQ6.~?Oe?Q?\????3q???????Ʀb?)??FU???xٹ?QG?K?X_??,I?F?ZB?ؽO)?&?E????	?1	?([$?غ?rq??M?\)G?/??Z?;??b???d1opA??Q?? ???2?S݌V? ????@???u/?qxa???Pc3??w???L7?+???#?{???wp?
?H?
???ј9?S???T2??L???????-m????O??????6+G?s???m??B???b?)???????M	To+?$?s?d??9`b??9??????S/t_Q??a ?[?W??_??-dGU?[v?+փ?t?vhŬ?P??z?}7???~???X?Њ?:?ס?x?g?_?a?Z???S/???1X?j-??!G]??????媕sz??6??;NX?X.ܶuxP??B?a:?\?m???Q&Eθ??`???mCX?u??z?>???f ??Q??~?1?0?k??I?i???3}??1K"@??*?;????????a%	?M?f2S??o6,?????\? 7?????OG_?aÔkdX??-.Խ? J??!?m$??䂋??w???\??\????ʓ֝)?3?د??t????qs??{-??Zɒ8?h"????????kQ?e?co??n??U,???l|?Z?A?	xJ鶼`Z}Z?~F?j?m?????ݺ?u?y??zw?x>1Q???6.Ⱥ$O??n?y?x?\??p>d???ꗧUo6xĠr?Jz?4SH=fq??\?[?y낚?塡?h%<JZ?֊??
?]?E1%MZ1.?K2d?l??%hЫ?ybJ??b?b??q?W*)???>??\^?<??K%m????????T??m?!??u??:??$??m.}[i?6?'??-??
??S[??(?4va?1ѵ!)?Vh??q??ج?n[i/????OV?C?*??b?xR??!1???b?b???W?E????$?r??X??V?gaSnoS)?(?(?ݥ݆?DVZ#?v??gM/???*???"6?f\????|?d??+?R???l??q?}ؕ???Rƻ?.??i?ƕ???&L YХi?ƕ?Brnؘ?MΊ4?T
&V?*@???׸R??N?Q?????R?u$???Vt; ?俉զhuJ??A?/??ϥ???????-??7???3????v???ho????W??7????C%?엜?Щ@?^}??x????Zl??tO???,??\???ꛇw+????ӎ?5{?A??????]??7???uÏ????ݯ??j?j{s?ޭnv??>???.???nx?!??m?=N-?W?.ww???M???X????xV?3^큎?
r?;*??f??:׏?)%??;0? f?rz?;?0?ĚΟ?8??2?w@???A'?????(?|;6E?ѿЕY?L???????%K???Pw??w?,?f?K^?O=?.?Q?,?$?5ro???|??n:1Z5??????,??%?X??4Se@??㈭W;?+?Z??&??i??{?P?ɓ?6a 5????H???{??`????O
z???[c??RX???&?Q?bj!(??Z??R#E?,
?Tv7g?????x??sE?H?RH<M)~F?~H??R??:?\x<O*?R?\???E????c4ҪA?Y??0'%z?y??N^s??	?Q?W????????:????9?	s\?W???x?jR???	\?+b?k??m?0/?uE?V?uy6?e???[!޹??+bG)l??.?v9 ^  ?uElbk?
*g???%?ʮ??xj??9J_
?*????y????$6^?!?ůS?>?&?J??j?8%A??,??Q??)	*]ЊA?????C"+?Њ$??uv??Z?$U?!^???c???wHV?ZYޙt-??U)?(Fke?˜V???Ʀ??Y?+uAb?0k6z??a??Q?6?:[??x?2?v??
s	+o?!r??'?^q>?|b?8u?? ????{?rV????o?a???ܕ?g????J??uτ%au?!F??????wK?e?pWt?!<?Q,T??ք???ɨ1r???=?AF??bΙ?'5c????a???hڀ,,e?K???F?䵛!??b??ʒRx???k? *??x?u???"?????V?	?d	?jx?ƃ????5|?ɂ?.??$Sq3?????T??A/%`?(P)?jÔ*V??LE??0?????A$?N?R????y[??f?T|?R4?0?yb?????U??i???$?igsM??????H??R?wVO?|H	?R ?? ??cU!G?(?4?%??ջ?4e?(?am??????7???????!S???<t???#???????`?؆?˃??u f ħ{???j???\?"?l??d??@$[2??? O???.??lXx?y\.??`H]W?|??r?b?S??H????z?D,W?M?|Ɔ?7?R??????????I???<??R?x?j4b????q??9?V-N?? t??5?)??u?#W-?X?GA????9^J?΃D[IY??i?[%?r?? ??g?HG???*ɕ?[?8H/$?&?ol?vr?ʧx/L삙?M???֏????
r%?h%?? Q,?m??H|:??5?[?C?m??;?C8w?/@????+ ???ݸ??q:?rz??wH%?ė??wH??:?o????f???ڝ???e'?{y?v?B?yL+ǵr??SO??goqL?c??l?"??S?nK%,ɹ?u`;?m?5,??X'}?}??0??v??X??}?]??R??OO?n???X_??qy:???3??T??k?4k??L?{??J$?<??;U?^?8}?k?_ R??/!
?"Y?Vgm?{c??pg(?&!
̉??at?c?a/ީ3{r?J?ʏ??E)r??=?/9*??}?h??	G-??6?J?ƺЙz:?7??P2?0؇tF?????(?:?tQ1???mت?(ٹR?zu?ļ?[U.k??SRJ?t??????n?~?,KL????o?G?~ZU.c+|)?δ???~PP??1v<%0/?!h?[U2a?,u?a?pK^p!kc*;ê??q?U>?\YR??%?O??fW???????c?JƴmI{?4
p?كU%??Hv??uS4????!??K.R??Ϩ??R?>??R??!
:f+??,?HS?R??+#????٘??Y???#Z?a??c?????ͳY?r??5Y??|C?'??`.ַJ????????݆?~gB?#(oe&??K???-+??Gk?,yb??U?]Dw9?n?=?????1?	b?_???h??F,?H?.?4x?;??<???? ??8?W?\"a?L?? ??\?%7? ]`o<av?]?ӎ?r?i?ϙ?Y?c??E?X???AT??P1?򫁉???7????n???      ?   ?   x?UP?n?0;?3L}???P???plò???????](? IHL?K'>?H?P?
v?ںb?.??+Np?hz?????}?q?IA??DqZ?$O+?+???6?<܊?B???q%?;???@Z ?I?qNҼM0?Z??#o?k?v?v??uJ?)xO?Jn>??F?????%?H?䁢?Ѫ????&?)?>7VT?????<??/??J?xI?m???_??;      ?   H  x???]o?8???????D????????EN?DH???;I??2?
%?yϼ?ځ,?o}&? _^˾̫?/A?@?"A?9#?Ŀ???>?????? ?? ??2{??}q?????v?ܒs0?????<P??Ce??R^wDik]?S?Q?????߾-.?g????tJc,ZRƌ9b8???}Y_??*?????|?j?q?;???zr???/E??Bk-????VV}???h/e???#?%??Uq=?%i u\*?????????e????1? ?Ԕt?<Ҫ?>],Dkmh!`??S?]?Eɋ?Ui-?$???@F??r???m????^???:&4??	}?Uy?????(ڶn???????T?ʘE?MV?Y?5?,YnU?}0'U??	4??ַf?X?i?k?X?o???{"֍Jq?M??b???w??]??]P<?g???H? ?
BV|?lv???8??c????Z^X)i 
E. ??3ߖ^8e6??????yU????%??b?????z????H???Y??N???M?#V_k???
=??ƪ-?????????]ѝ???lǶ??$i?mA???_????5???[?e???0?S !?`???<J?????x4?Z??m͒>????2k??N?	s ?6U?b???"?S,???_????ڮ??җ}?n׍?(z????|s{????H?/??13rh?Mɾvw?4??dG?^E?4A???7???,?z??8?p?K??ǟv??p&?V?b?W?GJ?^;.
??ڑd?b?
??BK???1ΠV??????X?x3Z`??n?EA?Y?]a6|???A?D?ҋ?C[?????cX?3???<????oJ???6f?^?>J:
u`W:??f?????yW?VX?3????a<HLr7?o?m?p?Pk?K3????Erʠc??3??q?I͋:_y??)<.h????l?DY??&?j???????c?@,?XՉ??E`?V?%E[??V?g???ՆT$???a??F"?=+4F?ט?l?#??3?΍?z?i_?+??,??6?W??I?,8??<
<?Lh?@?9????3M?      ?     x???n?@  г|E?f??!#2?Eds?&M?%?l3 _?????^h?W?N`J5??YQE???R6??Y????6????v`??]??h?V?_[?E?????`fI1??ؒ숵????.??P1Y??I#?=?@9 9uh?X?[??P?P??eZ??{?Ӯb????IB????4?]?[??7??-Vf? ?u??)mu8$?g??<??͡z\m.?d?˔?_???<??D?;?@?Y??  J?@?e???r?P?a	      ?   0  x??Yَ?6}?|ŝ?*I???K?-?f?nI_?D۷?H??$??R??i?L? A[???????.g8*f/?8/j?Q????g??&!n?o?ҵ6dّh??R++K'?7$*n?r??@;Sz???r?-??m6Go??????[???R?[?)=	+^{?	Y![I;)??	?????Vֵ ??&l??vz??X+I??T?u?J?HZ?????L?ht#Lydd??`?;%??????睷,?n?ra?w	5??????@X??2??Q	?z??ƶ??l@.??*Y?\o??*F?-?Im-J ?]-`w?]x|ŰNZ?o???p????BU?J?w?iN%m? %p۔nt8\??{HO??Kl?[1r|I/?a?&$߶ 9?譮?0?$>?X??1???Fנ?B?{iBt??~8 aaU!ѱ??`?̝H}H???7?l?s???LN??E?5Ϊ??#zn"?X?'??u?I7*.H? ?ԈC???8%VY?ʼR????#?o?<c?o????SZ?_{9???%7?'U?y?_ɰ??7?#?99?	"?<??????tI?B?"F ??w??%R?{?R??Z#@Rױ?ųc|???%}?%?XV?????B?g)???S???Fg??[i4???*??$???Y??CĤ?0?Z?o??`P???(9A?[?@]?.??I?,	?2? 8????PB?? 0?c?<
??-~???FAE??-#????1
 Y?:E???????xÄ
n`
M4?O:?b?1.?BE?(?E?9??Y??Ȗ?%???<?.??<[???l?],g??? ބ???@?<K?;??f????:?f?m?ѣz@yx??????z?Ū??\?Ѵ??ڣv?^??W??*?\)???o??"?}?"?'G????H\?L?I?&???n??I?&??T?˶?????????H]?n??6??!u??=?/???=??u? ?I?&I?$m??I?&I?TI?Cu?9.o??g??9no+???????????3?u??-???~>Jm??O??????%]?~??bԧ???;??Jػ?S?!+??@????^`0?Wu?4?eL????y+Mg6?I?e?iaQhq?z?j??? ???i?BǃKIl????ݲ???=????B???!=????^ jj,???4|h??d?????kS?}Y"?????_?sl?,͗?M?????X?<?Q6?_??lib ?o???S???վ?MW??J?︒?u?M???>?????w??H??f???(?? J?p???}?Tdw%螖R{ce?*??GY??w?N???Co!??t???,??Ct??Yٽ$?;)}?^\\?	(?G      ?   .  x?}??n?0D??W?????ҔGE?DK?P%???al'4?`?i?g???L?ȼ6?v=?a.??9S???!?f_\t??,??x??渌??h ?a?????HV???0????E??D???̻?.[i??Њ]5&?o??TX??P???0Z??<r6?z??օ??ь)?	i?A?h	?(2QqH?F?????V?????S?2???}8??4???G٧??|?io?`NKѲ???c筪O??u???ݫz?ד-.??J???c????-:?|zOF?ד=??"????9??????      ?   @  x???oo?0?_?Oq阮$V?.Ri??)k'mBB^b?U?????~?*?be?*&?Jb]??_??B<>???5?9k?>I??gQz???(ʢ?]?f?4??n?v??2?.??t??b$???d]\܄?K\?Js?'?R??`?2?-?J^Zn?Va?K?5p*V???Gg???r?R???w?+????lþ? P?mQ?%?v,?;?%
J??]2k??2V?
??KZ?E%?5??m?.?j?iv	??`??
T??-?&?!\t)??P;?c?%=?V???h???j\K?q??
?%6?/??KW#? ???e?.??z.?>	??'?{i?,=8߄???e???ţ w????♲?Nهq6??????????I?2w_W?}[{??;?Xzp?	???a?H?N0	Ŵ^Y??I
I?????Q?6?4L#^?6S??x????TXzp?	???a?H?????e1??????'??c~;??c?y????G??n???;^4?Q??ȋ??'??҃?Mx,?????z???I_??n?,???.g??D???dXzp?	???A????^?'D#??      ?      x?????? ? ?      ?   ?   x????J?0E??W?/h?ڙ?Y??8? ??J(?y??$/$??? ?ɢ??..???Ŷ
3gNM?vش?k63E>:????ex????Gr`BZ(?!??Q??}?)S^"He?I??Ț?HU??U0???Iܖ????!ǧ?-???????/???d???j)?2s??)?/?v?H?2?fi_??????x??~t>?ٛ????y???B|?P?B      ?   ?  x????n?0???S??a?#;????k?u[?n-PX???Z?kQ????r?IA????ۤo??0?M??M??|JĒ??!_?gd??c????w,v??e?N.?@??B?;?@`AK?w?j!?`?=??P??!P??@???^????	?jn??N J??MX\;??)b
??[??ͳ??S? ?b???Z{?bס?=???$??ev??k2?q????-$i"??5OMq?0YU,?¼6E?,?????s?}???? ?5??iV,[=,7????싖h???->bwD??2SL@?eYyk.?C??(??'n????^??ʔբ??8hqqs??k9B?n???>?ڟ???/?;?b??~>o^nF\?R??(?l?_?Me?	????????      ?   +  x????O?0?g?S܎?&N?B6?@B	!ؐ*c?U???g?~{T&:????????I??????w>??b?`??DbP?w5#? ??DQ? G??&???7?h????&C&9?ģz?Ґu>e??5?.??٬???=o??]??G? ?1hb57Z?i??ǥ?d????.7???r;??|???E݁?}#?zuVu}????ʠ%#Ӏ?=	.????୸???FZ??i???hU??p?Y????w????hY#???L??o?N#??or???????d?ںﾢ?RE?6?u?      ?   ?  x??UMo?6=+?b.4?8?G???4I?f??]??Kl(R%)g??????/?7????E?
l?"?z3?潙q1?N?+?v??????~??ҷc??W֬?V??????#Uׁk??>}??..?!h\???v>)??M????m<&E?q??[?=+/H?L? ?H%??b­:???Ώ×??pY,?_ۖI?6R?r?1?S_?XN-5L???X???}`?5N??????ڰ?L???????ɤ???t?*W??fԓ????ƙ?z9?|[N?????A?>r?C ???c?ʒ??P]?	??`??O???
??,K??????]?$g??F?DRx?
H?z???1@Z??n??x?X?{?a?=?l???@ѯӃ
?i???? +?c??????ɹ??:R?L??#e??܉G?5ı?}??*?⟬SI???ْ̞v?X?f?}?%4???J61q?庒w?+?Z //-(????-`?;i? ??j?,??=??tӣ???ήrܢk|??d<???.NN???Φoߜ?FN/Ge??⼘*ݠ? eN?h?L?JTS??)?]mMl??~????
?1??r4????:??.???\y޲? ???C⸻Ǻ?iR?f?w?]?]x?/??????t??uET????a
m?$"9(U?????ǟ?d?]?"7?<}A?l?????^??? ?r?hʖ?_??#,9??C?(????Lz?SϹ4??<t???8??
sfp??c+w????{??:??cz?,E?h?o??F??uL?~._???ܙ?SXd;f;-?L??s'??̥??^'?4?9\ȑ?;k/k7?????ls??.??W?[?}?$!?%N???st?u?Ȯ?Ь????o@????1??bD????m
9??l??\??$????:?֏h??|?Y?_heq>??n?Bʲ??AspZ`????U?]?g/_?+??0j:?	??h?Š?????m??Cr?0?b|???%W???W??????K???????3????      ?   o   x??1
?0@?Y>?NH?8C??vQj?9??7d???7???av?zpç??o?<`Lw?d?&˩?
??????+????T??k!{??x???q⃫o??????&      ?   ?   x?+.)MI?+1?,?2?s3s???s9??SҌ??3?L?T??T??sS??sJT???-,?Ӳ2<JC?r?L?R|?#???"?????
??}?s??<m9M8?@V䥖??2??]???av??.3?]&0?Lh?F\P+Lav??0?b???? ???     