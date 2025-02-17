PGDMP  ;    %    
            {            HRMS    16.0    16.0 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    17196    HRMS    DATABASE     ~   CREATE DATABASE "HRMS" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Vietnamese_Vietnam.1258';
    DROP DATABASE "HRMS";
                postgres    false            �            1259    17197     activation_panel_for_system_user    TABLE     �   CREATE TABLE public.activation_panel_for_system_user (
    id integer NOT NULL,
    activation_date timestamp without time zone,
    detail character varying(255),
    is_approved boolean,
    job_id integer,
    system_user_id integer
);
 4   DROP TABLE public.activation_panel_for_system_user;
       public         heap    postgres    false            �            1259    17200 '   activation_panel_for_system_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.activation_panel_for_system_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.activation_panel_for_system_user_id_seq;
       public          postgres    false    215            �           0    0 '   activation_panel_for_system_user_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.activation_panel_for_system_user_id_seq OWNED BY public.activation_panel_for_system_user.id;
          public          postgres    false    216            �            1259    17201    attended_schools    TABLE     �   CREATE TABLE public.attended_schools (
    id integer NOT NULL,
    graduation_date_of_university timestamp without time zone,
    starting_date_of_university timestamp without time zone,
    job_seeker_id integer,
    school_id integer
);
 $   DROP TABLE public.attended_schools;
       public         heap    postgres    false            �            1259    17204    attended_schools_id_seq    SEQUENCE     �   CREATE SEQUENCE public.attended_schools_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.attended_schools_id_seq;
       public          postgres    false    217            �           0    0    attended_schools_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.attended_schools_id_seq OWNED BY public.attended_schools.id;
          public          postgres    false    218            �            1259    17205    cities    TABLE     ^   CREATE TABLE public.cities (
    id integer NOT NULL,
    city_name character varying(255)
);
    DROP TABLE public.cities;
       public         heap    postgres    false            �            1259    17208    cities_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cities_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.cities_id_seq;
       public          postgres    false    219            �           0    0    cities_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.cities_id_seq OWNED BY public.cities.id;
          public          postgres    false    220            �            1259    17209    departments    TABLE     i   CREATE TABLE public.departments (
    id integer NOT NULL,
    department_name character varying(255)
);
    DROP TABLE public.departments;
       public         heap    postgres    false            �            1259    17212    departments_id_seq    SEQUENCE     �   CREATE SEQUENCE public.departments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.departments_id_seq;
       public          postgres    false    221            �           0    0    departments_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.departments_id_seq OWNED BY public.departments.id;
          public          postgres    false    222            �            1259    17487    employee    TABLE     #  CREATE TABLE public.employee (
    id bigint NOT NULL,
    address character varying(255),
    date_of_birth date,
    phone character varying(255),
    email character varying(255),
    salary double precision NOT NULL,
    status character varying(255),
    name character varying(255)
);
    DROP TABLE public.employee;
       public         heap    postgres    false            �            1259    17486    employee_id_seq    SEQUENCE     x   CREATE SEQUENCE public.employee_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.employee_id_seq;
       public          postgres    false    254            �           0    0    employee_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.employee_id_seq OWNED BY public.employee.id;
          public          postgres    false    253            �            1259    17213 	   employers    TABLE     �   CREATE TABLE public.employers (
    id integer NOT NULL,
    companyname character varying(255),
    phonenumber character varying(255),
    website character varying(255),
    userid integer,
    join_date date
);
    DROP TABLE public.employers;
       public         heap    postgres    false            �            1259    17218    employers_id_seq    SEQUENCE     �   CREATE SEQUENCE public.employers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.employers_id_seq;
       public          postgres    false    223            �           0    0    employers_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.employers_id_seq OWNED BY public.employers.id;
          public          postgres    false    224            �            1259    17219    images    TABLE     �   CREATE TABLE public.images (
    id integer NOT NULL,
    image character varying(255),
    image_title character varying(255),
    job_seeker_id integer
);
    DROP TABLE public.images;
       public         heap    postgres    false            �            1259    17224    images_id_seq    SEQUENCE     �   CREATE SEQUENCE public.images_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.images_id_seq;
       public          postgres    false    225            �           0    0    images_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.images_id_seq OWNED BY public.images.id;
          public          postgres    false    226                       1259    24644    job_position_skill    TABLE     �   CREATE TABLE public.job_position_skill (
    id integer NOT NULL,
    job_position_id integer NOT NULL,
    skill_id integer NOT NULL
);
 &   DROP TABLE public.job_position_skill;
       public         heap    postgres    false                       1259    24643 &   job_position_skill_job_position_id_seq    SEQUENCE     �   CREATE SEQUENCE public.job_position_skill_job_position_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.job_position_skill_job_position_id_seq;
       public          postgres    false    261            �           0    0 &   job_position_skill_job_position_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.job_position_skill_job_position_id_seq OWNED BY public.job_position_skill.job_position_id;
          public          postgres    false    260            �            1259    17225    job_positions    TABLE     i   CREATE TABLE public.job_positions (
    id integer NOT NULL,
    position_name character varying(255)
);
 !   DROP TABLE public.job_positions;
       public         heap    postgres    false            �            1259    17228    job_positions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.job_positions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.job_positions_id_seq;
       public          postgres    false    227            �           0    0    job_positions_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.job_positions_id_seq OWNED BY public.job_positions.id;
          public          postgres    false    228            �            1259    17229    job_seekers    TABLE     W  CREATE TABLE public.job_seekers (
    id integer NOT NULL,
    birthdate integer,
    firstname character varying(255),
    github_account character varying(255),
    info_about_job_seeker character varying(255),
    lastname character varying(255),
    linkedin_account character varying(255),
    nationalityid bigint,
    userid integer
);
    DROP TABLE public.job_seekers;
       public         heap    postgres    false            �            1259    17234    job_seekers_id_seq    SEQUENCE     �   CREATE SEQUENCE public.job_seekers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.job_seekers_id_seq;
       public          postgres    false    229            �           0    0    job_seekers_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.job_seekers_id_seq OWNED BY public.job_seekers.id;
          public          postgres    false    230            �            1259    17235    jobs    TABLE     �  CREATE TABLE public.jobs (
    id integer NOT NULL,
    created_date timestamp without time zone,
    deadline timestamp without time zone,
    description character varying(255),
    number_of_empty_positions integer,
    is_active boolean,
    max_salary integer,
    min_salary integer,
    city_id integer,
    employer_id integer,
    general_position_id integer,
    work_place_id integer,
    work_time_id integer
);
    DROP TABLE public.jobs;
       public         heap    postgres    false            �            1259    17238    jobs_id_seq    SEQUENCE     �   CREATE SEQUENCE public.jobs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.jobs_id_seq;
       public          postgres    false    231            �           0    0    jobs_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.jobs_id_seq OWNED BY public.jobs.id;
          public          postgres    false    232            �            1259    17239    known_languages    TABLE     �   CREATE TABLE public.known_languages (
    id integer NOT NULL,
    language_name character varying(255),
    job_seeker_id integer,
    language_level_id integer
);
 #   DROP TABLE public.known_languages;
       public         heap    postgres    false            �            1259    17242    known_languages_id_seq    SEQUENCE     �   CREATE SEQUENCE public.known_languages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.known_languages_id_seq;
       public          postgres    false    233            �           0    0    known_languages_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.known_languages_id_seq OWNED BY public.known_languages.id;
          public          postgres    false    234            �            1259    17243    language_levels    TABLE     o   CREATE TABLE public.language_levels (
    id integer NOT NULL,
    level_description character varying(255)
);
 #   DROP TABLE public.language_levels;
       public         heap    postgres    false            �            1259    17246    language_levels_id_seq    SEQUENCE     �   CREATE SEQUENCE public.language_levels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.language_levels_id_seq;
       public          postgres    false    235            �           0    0    language_levels_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.language_levels_id_seq OWNED BY public.language_levels.id;
          public          postgres    false    236            �            1259    17247    refresh_token    TABLE     d   CREATE TABLE public.refresh_token (
    id character varying(255) NOT NULL,
    owner_id integer
);
 !   DROP TABLE public.refresh_token;
       public         heap    postgres    false            �            1259    17250    roles    TABLE     X   CREATE TABLE public.roles (
    id integer NOT NULL,
    name character varying(255)
);
    DROP TABLE public.roles;
       public         heap    postgres    false            �            1259    17253    roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.roles_id_seq;
       public          postgres    false    238            �           0    0    roles_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;
          public          postgres    false    239            �            1259    17254    schools    TABLE     a   CREATE TABLE public.schools (
    id integer NOT NULL,
    school_name character varying(255)
);
    DROP TABLE public.schools;
       public         heap    postgres    false            �            1259    17257    schools_id_seq    SEQUENCE     �   CREATE SEQUENCE public.schools_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.schools_id_seq;
       public          postgres    false    240            �           0    0    schools_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.schools_id_seq OWNED BY public.schools.id;
          public          postgres    false    241                        1259    17518    skill    TABLE     �   CREATE TABLE public.skill (
    id integer NOT NULL,
    description character varying(255),
    job_position_id integer,
    skill_name character varying(255)
);
    DROP TABLE public.skill;
       public         heap    postgres    false            �            1259    17517    skill_id_seq    SEQUENCE     �   CREATE SEQUENCE public.skill_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.skill_id_seq;
       public          postgres    false    256            �           0    0    skill_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.skill_id_seq OWNED BY public.skill.id;
          public          postgres    false    255            �            1259    17258    system_users    TABLE     �   CREATE TABLE public.system_users (
    id integer NOT NULL,
    role character varying(255),
    userid integer,
    aidi integer NOT NULL
);
     DROP TABLE public.system_users;
       public         heap    postgres    false            �            1259    17261    system_users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.system_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.system_users_id_seq;
       public          postgres    false    242            �           0    0    system_users_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.system_users_id_seq OWNED BY public.system_users.id;
          public          postgres    false    243            �            1259    17262    users    TABLE     �   CREATE TABLE public.users (
    id integer NOT NULL,
    createddate timestamp without time zone,
    email character varying(255),
    isactivated boolean,
    password character varying(255),
    status boolean
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    17267    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    244            �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    245            �            1259    17268    users_roles    TABLE     `   CREATE TABLE public.users_roles (
    user_id integer NOT NULL,
    role_id integer NOT NULL
);
    DROP TABLE public.users_roles;
       public         heap    postgres    false                       1259    24605    vacation    TABLE     )  CREATE TABLE public.vacation (
    id bigint NOT NULL,
    day_off date,
    from_date date,
    note character varying(255),
    number_day bigint NOT NULL,
    status character varying(255),
    to_date date,
    vacation_name character varying(255),
    vacation_type character varying(255)
);
    DROP TABLE public.vacation;
       public         heap    postgres    false                       1259    24628    vacation_employee    TABLE     �   CREATE TABLE public.vacation_employee (
    status character varying(255),
    emp_id bigint NOT NULL,
    vac_id bigint NOT NULL
);
 %   DROP TABLE public.vacation_employee;
       public         heap    postgres    false                       1259    24604    vacation_id_seq    SEQUENCE     x   CREATE SEQUENCE public.vacation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.vacation_id_seq;
       public          postgres    false    258            �           0    0    vacation_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.vacation_id_seq OWNED BY public.vacation.id;
          public          postgres    false    257            �            1259    17271    work_experiences    TABLE     �   CREATE TABLE public.work_experiences (
    id integer NOT NULL,
    quit_date timestamp without time zone,
    starting_date timestamp without time zone,
    workplace_name character varying(255),
    position_id integer,
    job_seeker_id integer
);
 $   DROP TABLE public.work_experiences;
       public         heap    postgres    false            �            1259    17274    work_experiences_id_seq    SEQUENCE     �   CREATE SEQUENCE public.work_experiences_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.work_experiences_id_seq;
       public          postgres    false    247            �           0    0    work_experiences_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.work_experiences_id_seq OWNED BY public.work_experiences.id;
          public          postgres    false    248            �            1259    17275 
   work_place    TABLE     h   CREATE TABLE public.work_place (
    id integer NOT NULL,
    work_place_name character varying(255)
);
    DROP TABLE public.work_place;
       public         heap    postgres    false            �            1259    17278    work_place_id_seq    SEQUENCE     �   CREATE SEQUENCE public.work_place_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.work_place_id_seq;
       public          postgres    false    249            �           0    0    work_place_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.work_place_id_seq OWNED BY public.work_place.id;
          public          postgres    false    250            �            1259    17279 	   work_time    TABLE     f   CREATE TABLE public.work_time (
    id integer NOT NULL,
    work_time_name character varying(255)
);
    DROP TABLE public.work_time;
       public         heap    postgres    false            �            1259    17282    work_time_id_seq    SEQUENCE     �   CREATE SEQUENCE public.work_time_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.work_time_id_seq;
       public          postgres    false    251            �           0    0    work_time_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.work_time_id_seq OWNED BY public.work_time.id;
          public          postgres    false    252            �           2604    17283 #   activation_panel_for_system_user id    DEFAULT     �   ALTER TABLE ONLY public.activation_panel_for_system_user ALTER COLUMN id SET DEFAULT nextval('public.activation_panel_for_system_user_id_seq'::regclass);
 R   ALTER TABLE public.activation_panel_for_system_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215            �           2604    17284    attended_schools id    DEFAULT     z   ALTER TABLE ONLY public.attended_schools ALTER COLUMN id SET DEFAULT nextval('public.attended_schools_id_seq'::regclass);
 B   ALTER TABLE public.attended_schools ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217            �           2604    17285 	   cities id    DEFAULT     f   ALTER TABLE ONLY public.cities ALTER COLUMN id SET DEFAULT nextval('public.cities_id_seq'::regclass);
 8   ALTER TABLE public.cities ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219            �           2604    17286    departments id    DEFAULT     p   ALTER TABLE ONLY public.departments ALTER COLUMN id SET DEFAULT nextval('public.departments_id_seq'::regclass);
 =   ALTER TABLE public.departments ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221            �           2604    17490    employee id    DEFAULT     j   ALTER TABLE ONLY public.employee ALTER COLUMN id SET DEFAULT nextval('public.employee_id_seq'::regclass);
 :   ALTER TABLE public.employee ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    253    254    254            �           2604    17287    employers id    DEFAULT     l   ALTER TABLE ONLY public.employers ALTER COLUMN id SET DEFAULT nextval('public.employers_id_seq'::regclass);
 ;   ALTER TABLE public.employers ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223            �           2604    17288 	   images id    DEFAULT     f   ALTER TABLE ONLY public.images ALTER COLUMN id SET DEFAULT nextval('public.images_id_seq'::regclass);
 8   ALTER TABLE public.images ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225            �           2604    24647 "   job_position_skill job_position_id    DEFAULT     �   ALTER TABLE ONLY public.job_position_skill ALTER COLUMN job_position_id SET DEFAULT nextval('public.job_position_skill_job_position_id_seq'::regclass);
 Q   ALTER TABLE public.job_position_skill ALTER COLUMN job_position_id DROP DEFAULT;
       public          postgres    false    261    260    261            �           2604    17289    job_positions id    DEFAULT     t   ALTER TABLE ONLY public.job_positions ALTER COLUMN id SET DEFAULT nextval('public.job_positions_id_seq'::regclass);
 ?   ALTER TABLE public.job_positions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227            �           2604    17290    job_seekers id    DEFAULT     p   ALTER TABLE ONLY public.job_seekers ALTER COLUMN id SET DEFAULT nextval('public.job_seekers_id_seq'::regclass);
 =   ALTER TABLE public.job_seekers ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    229            �           2604    17291    jobs id    DEFAULT     b   ALTER TABLE ONLY public.jobs ALTER COLUMN id SET DEFAULT nextval('public.jobs_id_seq'::regclass);
 6   ALTER TABLE public.jobs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    231            �           2604    17292    known_languages id    DEFAULT     x   ALTER TABLE ONLY public.known_languages ALTER COLUMN id SET DEFAULT nextval('public.known_languages_id_seq'::regclass);
 A   ALTER TABLE public.known_languages ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    233            �           2604    17293    language_levels id    DEFAULT     x   ALTER TABLE ONLY public.language_levels ALTER COLUMN id SET DEFAULT nextval('public.language_levels_id_seq'::regclass);
 A   ALTER TABLE public.language_levels ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    235            �           2604    17294    roles id    DEFAULT     d   ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);
 7   ALTER TABLE public.roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    239    238            �           2604    17295 
   schools id    DEFAULT     h   ALTER TABLE ONLY public.schools ALTER COLUMN id SET DEFAULT nextval('public.schools_id_seq'::regclass);
 9   ALTER TABLE public.schools ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    241    240            �           2604    17521    skill id    DEFAULT     d   ALTER TABLE ONLY public.skill ALTER COLUMN id SET DEFAULT nextval('public.skill_id_seq'::regclass);
 7   ALTER TABLE public.skill ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    256    255    256            �           2604    17296    system_users id    DEFAULT     r   ALTER TABLE ONLY public.system_users ALTER COLUMN id SET DEFAULT nextval('public.system_users_id_seq'::regclass);
 >   ALTER TABLE public.system_users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    243    242            �           2604    17297    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    245    244            �           2604    24608    vacation id    DEFAULT     j   ALTER TABLE ONLY public.vacation ALTER COLUMN id SET DEFAULT nextval('public.vacation_id_seq'::regclass);
 :   ALTER TABLE public.vacation ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    257    258    258            �           2604    17298    work_experiences id    DEFAULT     z   ALTER TABLE ONLY public.work_experiences ALTER COLUMN id SET DEFAULT nextval('public.work_experiences_id_seq'::regclass);
 B   ALTER TABLE public.work_experiences ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    248    247            �           2604    17299    work_place id    DEFAULT     n   ALTER TABLE ONLY public.work_place ALTER COLUMN id SET DEFAULT nextval('public.work_place_id_seq'::regclass);
 <   ALTER TABLE public.work_place ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    250    249            �           2604    17300    work_time id    DEFAULT     l   ALTER TABLE ONLY public.work_time ALTER COLUMN id SET DEFAULT nextval('public.work_time_id_seq'::regclass);
 ;   ALTER TABLE public.work_time ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    252    251            }          0    17197     activation_panel_for_system_user 
   TABLE DATA           |   COPY public.activation_panel_for_system_user (id, activation_date, detail, is_approved, job_id, system_user_id) FROM stdin;
    public          postgres    false    215   ��                 0    17201    attended_schools 
   TABLE DATA           �   COPY public.attended_schools (id, graduation_date_of_university, starting_date_of_university, job_seeker_id, school_id) FROM stdin;
    public          postgres    false    217   �       �          0    17205    cities 
   TABLE DATA           /   COPY public.cities (id, city_name) FROM stdin;
    public          postgres    false    219   �       �          0    17209    departments 
   TABLE DATA           :   COPY public.departments (id, department_name) FROM stdin;
    public          postgres    false    221   [�       �          0    17487    employee 
   TABLE DATA           b   COPY public.employee (id, address, date_of_birth, phone, email, salary, status, name) FROM stdin;
    public          postgres    false    254   x�       �          0    17213 	   employers 
   TABLE DATA           ]   COPY public.employers (id, companyname, phonenumber, website, userid, join_date) FROM stdin;
    public          postgres    false    223   V�       �          0    17219    images 
   TABLE DATA           G   COPY public.images (id, image, image_title, job_seeker_id) FROM stdin;
    public          postgres    false    225   ��       �          0    24644    job_position_skill 
   TABLE DATA           K   COPY public.job_position_skill (id, job_position_id, skill_id) FROM stdin;
    public          postgres    false    261   ��       �          0    17225    job_positions 
   TABLE DATA           :   COPY public.job_positions (id, position_name) FROM stdin;
    public          postgres    false    227   ��       �          0    17229    job_seekers 
   TABLE DATA           �   COPY public.job_seekers (id, birthdate, firstname, github_account, info_about_job_seeker, lastname, linkedin_account, nationalityid, userid) FROM stdin;
    public          postgres    false    229   �       �          0    17235    jobs 
   TABLE DATA           �   COPY public.jobs (id, created_date, deadline, description, number_of_empty_positions, is_active, max_salary, min_salary, city_id, employer_id, general_position_id, work_place_id, work_time_id) FROM stdin;
    public          postgres    false    231   A�       �          0    17239    known_languages 
   TABLE DATA           ^   COPY public.known_languages (id, language_name, job_seeker_id, language_level_id) FROM stdin;
    public          postgres    false    233   ��       �          0    17243    language_levels 
   TABLE DATA           @   COPY public.language_levels (id, level_description) FROM stdin;
    public          postgres    false    235   ��       �          0    17247    refresh_token 
   TABLE DATA           5   COPY public.refresh_token (id, owner_id) FROM stdin;
    public          postgres    false    237   ��       �          0    17250    roles 
   TABLE DATA           )   COPY public.roles (id, name) FROM stdin;
    public          postgres    false    238   ��       �          0    17254    schools 
   TABLE DATA           2   COPY public.schools (id, school_name) FROM stdin;
    public          postgres    false    240   8�       �          0    17518    skill 
   TABLE DATA           M   COPY public.skill (id, description, job_position_id, skill_name) FROM stdin;
    public          postgres    false    256   U�       �          0    17258    system_users 
   TABLE DATA           >   COPY public.system_users (id, role, userid, aidi) FROM stdin;
    public          postgres    false    242   r�       �          0    17262    users 
   TABLE DATA           V   COPY public.users (id, createddate, email, isactivated, password, status) FROM stdin;
    public          postgres    false    244   ��       �          0    17268    users_roles 
   TABLE DATA           7   COPY public.users_roles (user_id, role_id) FROM stdin;
    public          postgres    false    246   ��       �          0    24605    vacation 
   TABLE DATA           {   COPY public.vacation (id, day_off, from_date, note, number_day, status, to_date, vacation_name, vacation_type) FROM stdin;
    public          postgres    false    258   ��       �          0    24628    vacation_employee 
   TABLE DATA           C   COPY public.vacation_employee (status, emp_id, vac_id) FROM stdin;
    public          postgres    false    259   &�       �          0    17271    work_experiences 
   TABLE DATA           t   COPY public.work_experiences (id, quit_date, starting_date, workplace_name, position_id, job_seeker_id) FROM stdin;
    public          postgres    false    247   ~�       �          0    17275 
   work_place 
   TABLE DATA           9   COPY public.work_place (id, work_place_name) FROM stdin;
    public          postgres    false    249   ��       �          0    17279 	   work_time 
   TABLE DATA           7   COPY public.work_time (id, work_time_name) FROM stdin;
    public          postgres    false    251   ��       �           0    0 '   activation_panel_for_system_user_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.activation_panel_for_system_user_id_seq', 2, true);
          public          postgres    false    216            �           0    0    attended_schools_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.attended_schools_id_seq', 1, false);
          public          postgres    false    218            �           0    0    cities_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.cities_id_seq', 3, true);
          public          postgres    false    220            �           0    0    departments_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.departments_id_seq', 1, false);
          public          postgres    false    222            �           0    0    employee_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.employee_id_seq', 61, true);
          public          postgres    false    253            �           0    0    employers_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.employers_id_seq', 4, true);
          public          postgres    false    224            �           0    0    images_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.images_id_seq', 1, false);
          public          postgres    false    226            �           0    0 &   job_position_skill_job_position_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.job_position_skill_job_position_id_seq', 1, false);
          public          postgres    false    260            �           0    0    job_positions_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.job_positions_id_seq', 4, true);
          public          postgres    false    228            �           0    0    job_seekers_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.job_seekers_id_seq', 1, true);
          public          postgres    false    230            �           0    0    jobs_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.jobs_id_seq', 2, true);
          public          postgres    false    232            �           0    0    known_languages_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.known_languages_id_seq', 1, false);
          public          postgres    false    234            �           0    0    language_levels_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.language_levels_id_seq', 1, false);
          public          postgres    false    236            �           0    0    roles_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.roles_id_seq', 2, true);
          public          postgres    false    239            �           0    0    schools_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.schools_id_seq', 1, false);
          public          postgres    false    241            �           0    0    skill_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.skill_id_seq', 1, false);
          public          postgres    false    255            �           0    0    system_users_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.system_users_id_seq', 1, false);
          public          postgres    false    243            �           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 19, true);
          public          postgres    false    245            �           0    0    vacation_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.vacation_id_seq', 22, true);
          public          postgres    false    257            �           0    0    work_experiences_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.work_experiences_id_seq', 1, false);
          public          postgres    false    248            �           0    0    work_place_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.work_place_id_seq', 2, true);
          public          postgres    false    250            �           0    0    work_time_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.work_time_id_seq', 2, true);
          public          postgres    false    252            �           2606    17302 F   activation_panel_for_system_user activation_panel_for_system_user_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.activation_panel_for_system_user
    ADD CONSTRAINT activation_panel_for_system_user_pkey PRIMARY KEY (id);
 p   ALTER TABLE ONLY public.activation_panel_for_system_user DROP CONSTRAINT activation_panel_for_system_user_pkey;
       public            postgres    false    215            �           2606    17304 &   attended_schools attended_schools_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.attended_schools
    ADD CONSTRAINT attended_schools_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.attended_schools DROP CONSTRAINT attended_schools_pkey;
       public            postgres    false    217            �           2606    17306    cities cities_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.cities
    ADD CONSTRAINT cities_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.cities DROP CONSTRAINT cities_pkey;
       public            postgres    false    219            �           2606    17308    departments departments_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.departments
    ADD CONSTRAINT departments_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.departments DROP CONSTRAINT departments_pkey;
       public            postgres    false    221            �           2606    17494    employee employee_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.employee DROP CONSTRAINT employee_pkey;
       public            postgres    false    254            �           2606    17310    employers employers_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.employers
    ADD CONSTRAINT employers_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.employers DROP CONSTRAINT employers_pkey;
       public            postgres    false    223            �           2606    17312    images images_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.images
    ADD CONSTRAINT images_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.images DROP CONSTRAINT images_pkey;
       public            postgres    false    225            �           2606    24649 *   job_position_skill job_position_skill_pkey 
   CONSTRAINT        ALTER TABLE ONLY public.job_position_skill
    ADD CONSTRAINT job_position_skill_pkey PRIMARY KEY (job_position_id, skill_id);
 T   ALTER TABLE ONLY public.job_position_skill DROP CONSTRAINT job_position_skill_pkey;
       public            postgres    false    261    261            �           2606    17314     job_positions job_positions_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.job_positions
    ADD CONSTRAINT job_positions_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.job_positions DROP CONSTRAINT job_positions_pkey;
       public            postgres    false    227            �           2606    17316    job_seekers job_seekers_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.job_seekers
    ADD CONSTRAINT job_seekers_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.job_seekers DROP CONSTRAINT job_seekers_pkey;
       public            postgres    false    229            �           2606    17318    jobs jobs_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.jobs
    ADD CONSTRAINT jobs_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.jobs DROP CONSTRAINT jobs_pkey;
       public            postgres    false    231            �           2606    17320 $   known_languages known_languages_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.known_languages
    ADD CONSTRAINT known_languages_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.known_languages DROP CONSTRAINT known_languages_pkey;
       public            postgres    false    233            �           2606    17322 $   language_levels language_levels_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.language_levels
    ADD CONSTRAINT language_levels_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.language_levels DROP CONSTRAINT language_levels_pkey;
       public            postgres    false    235            �           2606    17324     refresh_token refresh_token_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.refresh_token
    ADD CONSTRAINT refresh_token_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.refresh_token DROP CONSTRAINT refresh_token_pkey;
       public            postgres    false    237            �           2606    17326    roles roles_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public            postgres    false    238            �           2606    17328    schools schools_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.schools
    ADD CONSTRAINT schools_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.schools DROP CONSTRAINT schools_pkey;
       public            postgres    false    240            �           2606    17525    skill skill_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.skill
    ADD CONSTRAINT skill_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.skill DROP CONSTRAINT skill_pkey;
       public            postgres    false    256            �           2606    17330    system_users system_users_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.system_users
    ADD CONSTRAINT system_users_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.system_users DROP CONSTRAINT system_users_pkey;
       public            postgres    false    242            �           2606    17332    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    244            �           2606    24632 (   vacation_employee vacation_employee_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.vacation_employee
    ADD CONSTRAINT vacation_employee_pkey PRIMARY KEY (emp_id, vac_id);
 R   ALTER TABLE ONLY public.vacation_employee DROP CONSTRAINT vacation_employee_pkey;
       public            postgres    false    259    259            �           2606    24612    vacation vacation_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.vacation
    ADD CONSTRAINT vacation_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.vacation DROP CONSTRAINT vacation_pkey;
       public            postgres    false    258            �           2606    17334 &   work_experiences work_experiences_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.work_experiences
    ADD CONSTRAINT work_experiences_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.work_experiences DROP CONSTRAINT work_experiences_pkey;
       public            postgres    false    247            �           2606    17336    work_place work_place_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.work_place
    ADD CONSTRAINT work_place_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.work_place DROP CONSTRAINT work_place_pkey;
       public            postgres    false    249            �           2606    17338    work_time work_time_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.work_time
    ADD CONSTRAINT work_time_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.work_time DROP CONSTRAINT work_time_pkey;
       public            postgres    false    251            �           2606    17339 <   activation_panel_for_system_user fk1gq57f2xpqm69x73i7eq29csa    FK CONSTRAINT     �   ALTER TABLE ONLY public.activation_panel_for_system_user
    ADD CONSTRAINT fk1gq57f2xpqm69x73i7eq29csa FOREIGN KEY (system_user_id) REFERENCES public.system_users(id);
 f   ALTER TABLE ONLY public.activation_panel_for_system_user DROP CONSTRAINT fk1gq57f2xpqm69x73i7eq29csa;
       public          postgres    false    215    4802    242            �           2606    17344 ,   attended_schools fk1ogbfbwom5q5y8h92f357m0la    FK CONSTRAINT     �   ALTER TABLE ONLY public.attended_schools
    ADD CONSTRAINT fk1ogbfbwom5q5y8h92f357m0la FOREIGN KEY (school_id) REFERENCES public.schools(id);
 V   ALTER TABLE ONLY public.attended_schools DROP CONSTRAINT fk1ogbfbwom5q5y8h92f357m0la;
       public          postgres    false    217    4800    240            �           2606    17349 '   users_roles fk2o0jvgh89lemvvo17cbqvdxaa    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_roles
    ADD CONSTRAINT fk2o0jvgh89lemvvo17cbqvdxaa FOREIGN KEY (user_id) REFERENCES public.users(id);
 Q   ALTER TABLE ONLY public.users_roles DROP CONSTRAINT fk2o0jvgh89lemvvo17cbqvdxaa;
       public          postgres    false    4804    244    246            �           2606    17354 %   employers fk3scyexn5n59e1l2ne7s0m1054    FK CONSTRAINT     �   ALTER TABLE ONLY public.employers
    ADD CONSTRAINT fk3scyexn5n59e1l2ne7s0m1054 FOREIGN KEY (userid) REFERENCES public.users(id);
 O   ALTER TABLE ONLY public.employers DROP CONSTRAINT fk3scyexn5n59e1l2ne7s0m1054;
       public          postgres    false    223    4804    244            �           2606    17359 +   known_languages fk4550xh1e02t6by7g5ic17csp9    FK CONSTRAINT     �   ALTER TABLE ONLY public.known_languages
    ADD CONSTRAINT fk4550xh1e02t6by7g5ic17csp9 FOREIGN KEY (language_level_id) REFERENCES public.language_levels(id);
 U   ALTER TABLE ONLY public.known_languages DROP CONSTRAINT fk4550xh1e02t6by7g5ic17csp9;
       public          postgres    false    235    233    4794            �           2606    17364 '   departments fk4jnjjrg2f5maubcxpp0fjhgqd    FK CONSTRAINT     �   ALTER TABLE ONLY public.departments
    ADD CONSTRAINT fk4jnjjrg2f5maubcxpp0fjhgqd FOREIGN KEY (id) REFERENCES public.schools(id);
 Q   ALTER TABLE ONLY public.departments DROP CONSTRAINT fk4jnjjrg2f5maubcxpp0fjhgqd;
       public          postgres    false    221    4800    240            �           2606    17369     jobs fk5lrk0rlw7migs17lpgqvv29up    FK CONSTRAINT     �   ALTER TABLE ONLY public.jobs
    ADD CONSTRAINT fk5lrk0rlw7migs17lpgqvv29up FOREIGN KEY (work_place_id) REFERENCES public.work_place(id);
 J   ALTER TABLE ONLY public.jobs DROP CONSTRAINT fk5lrk0rlw7migs17lpgqvv29up;
       public          postgres    false    4808    231    249            �           2606    17374 )   refresh_token fk8q34touek1xe9pakhlosia9wl    FK CONSTRAINT     �   ALTER TABLE ONLY public.refresh_token
    ADD CONSTRAINT fk8q34touek1xe9pakhlosia9wl FOREIGN KEY (owner_id) REFERENCES public.users(id);
 S   ALTER TABLE ONLY public.refresh_token DROP CONSTRAINT fk8q34touek1xe9pakhlosia9wl;
       public          postgres    false    4804    237    244            �           2606    17379 "   images fk9t05qprf8qcsh7nldn3khcwg6    FK CONSTRAINT     �   ALTER TABLE ONLY public.images
    ADD CONSTRAINT fk9t05qprf8qcsh7nldn3khcwg6 FOREIGN KEY (job_seeker_id) REFERENCES public.job_seekers(id);
 L   ALTER TABLE ONLY public.images DROP CONSTRAINT fk9t05qprf8qcsh7nldn3khcwg6;
       public          postgres    false    229    4788    225            �           2606    24655 .   job_position_skill fk9ueq8gt35tkbh9olyro2njmec    FK CONSTRAINT     �   ALTER TABLE ONLY public.job_position_skill
    ADD CONSTRAINT fk9ueq8gt35tkbh9olyro2njmec FOREIGN KEY (skill_id) REFERENCES public.skill(id);
 X   ALTER TABLE ONLY public.job_position_skill DROP CONSTRAINT fk9ueq8gt35tkbh9olyro2njmec;
       public          postgres    false    256    4814    261            �           2606    17384 ,   attended_schools fkd9eqidpwxrvlyw9yn3818ragp    FK CONSTRAINT     �   ALTER TABLE ONLY public.attended_schools
    ADD CONSTRAINT fkd9eqidpwxrvlyw9yn3818ragp FOREIGN KEY (job_seeker_id) REFERENCES public.job_seekers(id);
 V   ALTER TABLE ONLY public.attended_schools DROP CONSTRAINT fkd9eqidpwxrvlyw9yn3818ragp;
       public          postgres    false    4788    229    217            �           2606    17389 ,   work_experiences fkdury3mpd0u5amgnppk6ev23ag    FK CONSTRAINT     �   ALTER TABLE ONLY public.work_experiences
    ADD CONSTRAINT fkdury3mpd0u5amgnppk6ev23ag FOREIGN KEY (position_id) REFERENCES public.job_positions(id);
 V   ALTER TABLE ONLY public.work_experiences DROP CONSTRAINT fkdury3mpd0u5amgnppk6ev23ag;
       public          postgres    false    247    227    4786            �           2606    17394     jobs fkeg3tcklkkgem8erx34qux1xx1    FK CONSTRAINT     �   ALTER TABLE ONLY public.jobs
    ADD CONSTRAINT fkeg3tcklkkgem8erx34qux1xx1 FOREIGN KEY (city_id) REFERENCES public.cities(id);
 J   ALTER TABLE ONLY public.jobs DROP CONSTRAINT fkeg3tcklkkgem8erx34qux1xx1;
       public          postgres    false    219    4778    231            �           2606    17399 <   activation_panel_for_system_user fkgo613wtpymsyxt22d0k4rd2g9    FK CONSTRAINT     �   ALTER TABLE ONLY public.activation_panel_for_system_user
    ADD CONSTRAINT fkgo613wtpymsyxt22d0k4rd2g9 FOREIGN KEY (job_id) REFERENCES public.jobs(id);
 f   ALTER TABLE ONLY public.activation_panel_for_system_user DROP CONSTRAINT fkgo613wtpymsyxt22d0k4rd2g9;
       public          postgres    false    215    231    4790            �           2606    17404     jobs fkhtx3ie5dg224p7onc2bsgmqe8    FK CONSTRAINT     �   ALTER TABLE ONLY public.jobs
    ADD CONSTRAINT fkhtx3ie5dg224p7onc2bsgmqe8 FOREIGN KEY (work_time_id) REFERENCES public.work_time(id);
 J   ALTER TABLE ONLY public.jobs DROP CONSTRAINT fkhtx3ie5dg224p7onc2bsgmqe8;
       public          postgres    false    251    231    4810            �           2606    17409 '   job_seekers fkic27scne62wj47p0xtmcjoudi    FK CONSTRAINT     �   ALTER TABLE ONLY public.job_seekers
    ADD CONSTRAINT fkic27scne62wj47p0xtmcjoudi FOREIGN KEY (userid) REFERENCES public.users(id);
 Q   ALTER TABLE ONLY public.job_seekers DROP CONSTRAINT fkic27scne62wj47p0xtmcjoudi;
       public          postgres    false    244    229    4804            �           2606    17414 '   users_roles fkj6m8fwv7oqv74fcehir1a9ffy    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_roles
    ADD CONSTRAINT fkj6m8fwv7oqv74fcehir1a9ffy FOREIGN KEY (role_id) REFERENCES public.roles(id);
 Q   ALTER TABLE ONLY public.users_roles DROP CONSTRAINT fkj6m8fwv7oqv74fcehir1a9ffy;
       public          postgres    false    238    246    4798            �           2606    17419     jobs fkja6e4osjhsx4wodgd2os82890    FK CONSTRAINT     �   ALTER TABLE ONLY public.jobs
    ADD CONSTRAINT fkja6e4osjhsx4wodgd2os82890 FOREIGN KEY (employer_id) REFERENCES public.employers(id);
 J   ALTER TABLE ONLY public.jobs DROP CONSTRAINT fkja6e4osjhsx4wodgd2os82890;
       public          postgres    false    223    4782    231            �           2606    17424 +   known_languages fkk1iajtbiawjx0yuqexxjutmqa    FK CONSTRAINT     �   ALTER TABLE ONLY public.known_languages
    ADD CONSTRAINT fkk1iajtbiawjx0yuqexxjutmqa FOREIGN KEY (job_seeker_id) REFERENCES public.job_seekers(id);
 U   ALTER TABLE ONLY public.known_languages DROP CONSTRAINT fkk1iajtbiawjx0yuqexxjutmqa;
       public          postgres    false    229    233    4788            �           2606    24650 .   job_position_skill fkkj03353lmswt5qj2s1tq10v5y    FK CONSTRAINT     �   ALTER TABLE ONLY public.job_position_skill
    ADD CONSTRAINT fkkj03353lmswt5qj2s1tq10v5y FOREIGN KEY (job_position_id) REFERENCES public.job_positions(id);
 X   ALTER TABLE ONLY public.job_position_skill DROP CONSTRAINT fkkj03353lmswt5qj2s1tq10v5y;
       public          postgres    false    227    4786    261            �           2606    17429 (   system_users fkmi3c0l1l80t960qlxf3r1um6n    FK CONSTRAINT     �   ALTER TABLE ONLY public.system_users
    ADD CONSTRAINT fkmi3c0l1l80t960qlxf3r1um6n FOREIGN KEY (userid) REFERENCES public.users(id);
 R   ALTER TABLE ONLY public.system_users DROP CONSTRAINT fkmi3c0l1l80t960qlxf3r1um6n;
       public          postgres    false    4804    244    242            �           2606    17434     jobs fknusb7srjjfpgim3rcpjqss9ms    FK CONSTRAINT     �   ALTER TABLE ONLY public.jobs
    ADD CONSTRAINT fknusb7srjjfpgim3rcpjqss9ms FOREIGN KEY (general_position_id) REFERENCES public.job_positions(id);
 J   ALTER TABLE ONLY public.jobs DROP CONSTRAINT fknusb7srjjfpgim3rcpjqss9ms;
       public          postgres    false    4786    231    227            �           2606    24633 -   vacation_employee fkoyvgnj1bl5448vc2eg9naakli    FK CONSTRAINT     �   ALTER TABLE ONLY public.vacation_employee
    ADD CONSTRAINT fkoyvgnj1bl5448vc2eg9naakli FOREIGN KEY (emp_id) REFERENCES public.employee(id);
 W   ALTER TABLE ONLY public.vacation_employee DROP CONSTRAINT fkoyvgnj1bl5448vc2eg9naakli;
       public          postgres    false    254    4812    259            �           2606    24638 -   vacation_employee fkpm8xkkpj4pneubcclppasqkvk    FK CONSTRAINT     �   ALTER TABLE ONLY public.vacation_employee
    ADD CONSTRAINT fkpm8xkkpj4pneubcclppasqkvk FOREIGN KEY (vac_id) REFERENCES public.vacation(id);
 W   ALTER TABLE ONLY public.vacation_employee DROP CONSTRAINT fkpm8xkkpj4pneubcclppasqkvk;
       public          postgres    false    259    258    4816            �           2606    17439 ,   work_experiences fkswh2gf16y7y0i45lb4ccytvnn    FK CONSTRAINT     �   ALTER TABLE ONLY public.work_experiences
    ADD CONSTRAINT fkswh2gf16y7y0i45lb4ccytvnn FOREIGN KEY (job_seeker_id) REFERENCES public.job_seekers(id);
 V   ALTER TABLE ONLY public.work_experiences DROP CONSTRAINT fkswh2gf16y7y0i45lb4ccytvnn;
       public          postgres    false    4788    229    247            }   .   x�3�4202�54�54V0��2��26�31���L�4R\1z\\\ �M            x������ � �      �   ,   x�3���Wp��T�����2��HT����2�t2�ҹb���� ��	G      �      x������ � �      �   �   x��н
�0���}���KR��.���KZD|{/!�B�䖄�����8�����Y��Ȝ�L�d�h+�i�?_�X���ݶ����@���H\m��t6}�E������57gU������,��.)b�����1�E{�d�L�#�+e�/0`�pK�ϝH[���������%p�I��TJ��.j_(�^��h      �   ,   x�3�,I�KL�4152367�0�,���K���4������� ���      �      x������ � �      �      x������ � �      �   (   x�3�tV�2��J,K�2�,�(�2�,�,�������� |�      �   -   x�3�4�I��L.�LJ,�,I�+���
PHŁ
�b���� ��k      �   N   x�3�4202�54�54V0��2��26�361E��(�[ gbJqZbJz"�!g	��P�Dq��	CN#�=... �mB      �      x������ � �      �      x������ � �      �      x������ � �      �   2   x�3���q�v�2��]|=���!W� �HWW.~W� �ax      �      x������ � �      �      x������ � �      �      x������ � �      �   �  x�u�ɲ�H��9�Lv��"���Q&I���vhuTX��_f���_�b��_$� ��wD�"�}�7����+�`�V��2���� F����Q�� ���y`�=���Z�Sy����7:�e�O��7;�c�n������MFjNi�O���}Dq+L�(�B��Y?�cF��X�n;�-��_az)�[�� ��eU�!0�:r�Y�(�B�蕔(�8��@��K!��L��nHڶ%}Y�@s#�X�M3&��/�����Ļ,@�"�2�R@r����7���B��|����IH �ȝ'������8�N�IQ;�20BW��D^v��9դ)Q��↱�AnteoO�x��7O�n�Sl����;�s=���Pv׋�Qފ��r3��!��K�>����L��8�JR����<��qx�'YEБ,�7�it���n$?��g���bE���o����%�4e��B�H34W��y�A?�w9q��s���V��r!�O�]��0j�a���8u��5�̬�m�u��^���'�#��K
ܰ�.	�g�ɠ�����w+��:Qz9��[g��g��~�R��]/��d3@�Y����XKM�,�v�K|��A ���Ő?-`�*��|�e9�h�[[�nS)�1�$#���r:=$y
��+�w�������zG��Y��<�)m�;2ŷx�=�Ƕ���j�=F�#��A����_���׿��s�      �   W   x�=��� B��0�&D�����(��<ӯ@<F���0�r;�B*�r�Kަ
�Bȓh��G�؉�
!�I4
>=�^NI�_���*�      �     x���Mn�0���Sp�4��fiT"Q�
�)'��R�Q �8N�ҋ�&���.�y��f�h����!4��M֯�:��$�����1�FT�T�V��Xy������ޖ��j�.����H�$�R�
M,�(��������`��_��cW�]Y�n�Ď�x�ѽL|wd_-5tn�p���v�2�Wa�Y���K�J�������� ���š��2=6�ka���f�ub�u�dU+���[H�ro��Yq��'/�y=o�x�0�S��.3Kﯷ�!�ǪC      �   H   x�st�s�4�4�r�0�8�LC$aCdqc$�	���h�Ķ@Rc	c��q s඙rq��qqq �m �      �      x������ � �      �   *   x�3�L�T(�HU(�/�.�ILN�2�,J��/�q��qqq �y�      �       x�3�,H,.�-��M�2�L+�Ɂ�c���� ��T     