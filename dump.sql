--
-- PostgreSQL database dump
--

-- Dumped from database version 10.9 (Ubuntu 10.9-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 10.9 (Ubuntu 10.9-0ubuntu0.18.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: yernazar
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO yernazar;

--
-- Name: ckeditor_assets; Type: TABLE; Schema: public; Owner: yernazar
--

CREATE TABLE public.ckeditor_assets (
    id bigint NOT NULL,
    data_file_name character varying NOT NULL,
    data_content_type character varying,
    data_file_size integer,
    type character varying(30),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.ckeditor_assets OWNER TO yernazar;

--
-- Name: ckeditor_assets_id_seq; Type: SEQUENCE; Schema: public; Owner: yernazar
--

CREATE SEQUENCE public.ckeditor_assets_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ckeditor_assets_id_seq OWNER TO yernazar;

--
-- Name: ckeditor_assets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yernazar
--

ALTER SEQUENCE public.ckeditor_assets_id_seq OWNED BY public.ckeditor_assets.id;


--
-- Name: comments; Type: TABLE; Schema: public; Owner: yernazar
--

CREATE TABLE public.comments (
    id bigint NOT NULL,
    user_id integer,
    lesson_id integer,
    text text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.comments OWNER TO yernazar;

--
-- Name: comments_id_seq; Type: SEQUENCE; Schema: public; Owner: yernazar
--

CREATE SEQUENCE public.comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comments_id_seq OWNER TO yernazar;

--
-- Name: comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yernazar
--

ALTER SEQUENCE public.comments_id_seq OWNED BY public.comments.id;


--
-- Name: courses; Type: TABLE; Schema: public; Owner: yernazar
--

CREATE TABLE public.courses (
    id bigint NOT NULL,
    title character varying,
    image character varying,
    description text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    color character varying,
    language_id integer
);


ALTER TABLE public.courses OWNER TO yernazar;

--
-- Name: courses_id_seq; Type: SEQUENCE; Schema: public; Owner: yernazar
--

CREATE SEQUENCE public.courses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.courses_id_seq OWNER TO yernazar;

--
-- Name: courses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yernazar
--

ALTER SEQUENCE public.courses_id_seq OWNED BY public.courses.id;


--
-- Name: courses_users; Type: TABLE; Schema: public; Owner: yernazar
--

CREATE TABLE public.courses_users (
    id bigint NOT NULL,
    user_id integer,
    course_id integer
);


ALTER TABLE public.courses_users OWNER TO yernazar;

--
-- Name: courses_users_id_seq; Type: SEQUENCE; Schema: public; Owner: yernazar
--

CREATE SEQUENCE public.courses_users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.courses_users_id_seq OWNER TO yernazar;

--
-- Name: courses_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yernazar
--

ALTER SEQUENCE public.courses_users_id_seq OWNED BY public.courses_users.id;


--
-- Name: faq_categories; Type: TABLE; Schema: public; Owner: yernazar
--

CREATE TABLE public.faq_categories (
    id bigint NOT NULL,
    title character varying,
    language_id integer
);


ALTER TABLE public.faq_categories OWNER TO yernazar;

--
-- Name: faq_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: yernazar
--

CREATE SEQUENCE public.faq_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.faq_categories_id_seq OWNER TO yernazar;

--
-- Name: faq_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yernazar
--

ALTER SEQUENCE public.faq_categories_id_seq OWNED BY public.faq_categories.id;


--
-- Name: faqs; Type: TABLE; Schema: public; Owner: yernazar
--

CREATE TABLE public.faqs (
    id bigint NOT NULL,
    question character varying,
    answer text,
    faq_category_id integer
);


ALTER TABLE public.faqs OWNER TO yernazar;

--
-- Name: faqs_id_seq; Type: SEQUENCE; Schema: public; Owner: yernazar
--

CREATE SEQUENCE public.faqs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.faqs_id_seq OWNER TO yernazar;

--
-- Name: faqs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yernazar
--

ALTER SEQUENCE public.faqs_id_seq OWNED BY public.faqs.id;


--
-- Name: hometasks; Type: TABLE; Schema: public; Owner: yernazar
--

CREATE TABLE public.hometasks (
    id bigint NOT NULL,
    user_id integer,
    lesson_id integer,
    file character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    rate integer,
    comment text
);


ALTER TABLE public.hometasks OWNER TO yernazar;

--
-- Name: hometasks_id_seq; Type: SEQUENCE; Schema: public; Owner: yernazar
--

CREATE SEQUENCE public.hometasks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hometasks_id_seq OWNER TO yernazar;

--
-- Name: hometasks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yernazar
--

ALTER SEQUENCE public.hometasks_id_seq OWNED BY public.hometasks.id;


--
-- Name: languages; Type: TABLE; Schema: public; Owner: yernazar
--

CREATE TABLE public.languages (
    id bigint NOT NULL,
    title character varying,
    abbr character varying
);


ALTER TABLE public.languages OWNER TO yernazar;

--
-- Name: languages_id_seq; Type: SEQUENCE; Schema: public; Owner: yernazar
--

CREATE SEQUENCE public.languages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.languages_id_seq OWNER TO yernazar;

--
-- Name: languages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yernazar
--

ALTER SEQUENCE public.languages_id_seq OWNED BY public.languages.id;


--
-- Name: lessons; Type: TABLE; Schema: public; Owner: yernazar
--

CREATE TABLE public.lessons (
    id bigint NOT NULL,
    title character varying,
    content text,
    course_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    video character varying
);


ALTER TABLE public.lessons OWNER TO yernazar;

--
-- Name: lessons_id_seq; Type: SEQUENCE; Schema: public; Owner: yernazar
--

CREATE SEQUENCE public.lessons_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lessons_id_seq OWNER TO yernazar;

--
-- Name: lessons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yernazar
--

ALTER SEQUENCE public.lessons_id_seq OWNED BY public.lessons.id;


--
-- Name: news; Type: TABLE; Schema: public; Owner: yernazar
--

CREATE TABLE public.news (
    id bigint NOT NULL,
    title character varying,
    description_short text,
    description text,
    image character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    image_dominant_color character varying,
    content text,
    language_id integer
);


ALTER TABLE public.news OWNER TO yernazar;

--
-- Name: news_id_seq; Type: SEQUENCE; Schema: public; Owner: yernazar
--

CREATE SEQUENCE public.news_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.news_id_seq OWNER TO yernazar;

--
-- Name: news_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yernazar
--

ALTER SEQUENCE public.news_id_seq OWNED BY public.news.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: yernazar
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO yernazar;

--
-- Name: template_modules; Type: TABLE; Schema: public; Owner: yernazar
--

CREATE TABLE public.template_modules (
    id bigint NOT NULL,
    title character varying,
    language_id integer,
    label character varying
);


ALTER TABLE public.template_modules OWNER TO yernazar;

--
-- Name: template_modules_id_seq; Type: SEQUENCE; Schema: public; Owner: yernazar
--

CREATE SEQUENCE public.template_modules_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.template_modules_id_seq OWNER TO yernazar;

--
-- Name: template_modules_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yernazar
--

ALTER SEQUENCE public.template_modules_id_seq OWNED BY public.template_modules.id;


--
-- Name: templates; Type: TABLE; Schema: public; Owner: yernazar
--

CREATE TABLE public.templates (
    id bigint NOT NULL,
    label character varying,
    template_module_id integer,
    title text
);


ALTER TABLE public.templates OWNER TO yernazar;

--
-- Name: templates_id_seq; Type: SEQUENCE; Schema: public; Owner: yernazar
--

CREATE SEQUENCE public.templates_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.templates_id_seq OWNER TO yernazar;

--
-- Name: templates_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yernazar
--

ALTER SEQUENCE public.templates_id_seq OWNED BY public.templates.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: yernazar
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    name_surname character varying DEFAULT ''::character varying NOT NULL,
    phone character varying DEFAULT ''::character varying NOT NULL,
    gender integer DEFAULT 1 NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    birthday timestamp without time zone,
    avatar character varying,
    admin boolean
);


ALTER TABLE public.users OWNER TO yernazar;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: yernazar
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO yernazar;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: yernazar
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: ckeditor_assets id; Type: DEFAULT; Schema: public; Owner: yernazar
--

ALTER TABLE ONLY public.ckeditor_assets ALTER COLUMN id SET DEFAULT nextval('public.ckeditor_assets_id_seq'::regclass);


--
-- Name: comments id; Type: DEFAULT; Schema: public; Owner: yernazar
--

ALTER TABLE ONLY public.comments ALTER COLUMN id SET DEFAULT nextval('public.comments_id_seq'::regclass);


--
-- Name: courses id; Type: DEFAULT; Schema: public; Owner: yernazar
--

ALTER TABLE ONLY public.courses ALTER COLUMN id SET DEFAULT nextval('public.courses_id_seq'::regclass);


--
-- Name: courses_users id; Type: DEFAULT; Schema: public; Owner: yernazar
--

ALTER TABLE ONLY public.courses_users ALTER COLUMN id SET DEFAULT nextval('public.courses_users_id_seq'::regclass);


--
-- Name: faq_categories id; Type: DEFAULT; Schema: public; Owner: yernazar
--

ALTER TABLE ONLY public.faq_categories ALTER COLUMN id SET DEFAULT nextval('public.faq_categories_id_seq'::regclass);


--
-- Name: faqs id; Type: DEFAULT; Schema: public; Owner: yernazar
--

ALTER TABLE ONLY public.faqs ALTER COLUMN id SET DEFAULT nextval('public.faqs_id_seq'::regclass);


--
-- Name: hometasks id; Type: DEFAULT; Schema: public; Owner: yernazar
--

ALTER TABLE ONLY public.hometasks ALTER COLUMN id SET DEFAULT nextval('public.hometasks_id_seq'::regclass);


--
-- Name: languages id; Type: DEFAULT; Schema: public; Owner: yernazar
--

ALTER TABLE ONLY public.languages ALTER COLUMN id SET DEFAULT nextval('public.languages_id_seq'::regclass);


--
-- Name: lessons id; Type: DEFAULT; Schema: public; Owner: yernazar
--

ALTER TABLE ONLY public.lessons ALTER COLUMN id SET DEFAULT nextval('public.lessons_id_seq'::regclass);


--
-- Name: news id; Type: DEFAULT; Schema: public; Owner: yernazar
--

ALTER TABLE ONLY public.news ALTER COLUMN id SET DEFAULT nextval('public.news_id_seq'::regclass);


--
-- Name: template_modules id; Type: DEFAULT; Schema: public; Owner: yernazar
--

ALTER TABLE ONLY public.template_modules ALTER COLUMN id SET DEFAULT nextval('public.template_modules_id_seq'::regclass);


--
-- Name: templates id; Type: DEFAULT; Schema: public; Owner: yernazar
--

ALTER TABLE ONLY public.templates ALTER COLUMN id SET DEFAULT nextval('public.templates_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: yernazar
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: yernazar
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2019-07-05 17:16:19.172123	2019-07-05 17:16:19.172123
\.


--
-- Data for Name: ckeditor_assets; Type: TABLE DATA; Schema: public; Owner: yernazar
--

COPY public.ckeditor_assets (id, data_file_name, data_content_type, data_file_size, type, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: comments; Type: TABLE DATA; Schema: public; Owner: yernazar
--

COPY public.comments (id, user_id, lesson_id, text, created_at, updated_at) FROM stdin;
1	4	1	Классный урок, отвечаю. Четкий урок	2019-07-14 19:20:10.602374	2019-07-14 19:20:10.602374
2	4	1	Прикольная шняга	2019-07-14 19:36:45.934393	2019-07-14 19:36:45.934393
3	4	1	Прикольная шняга	2019-07-14 19:37:00.270118	2019-07-14 19:37:00.270118
\.


--
-- Data for Name: courses; Type: TABLE DATA; Schema: public; Owner: yernazar
--

COPY public.courses (id, title, image, description, created_at, updated_at, color, language_id) FROM stdin;
3	History	Screenshot_from_2019-06-26_01-23-59.png	Современная история Казахстана	2019-07-09 17:20:54.026743	2019-07-13 06:29:54.288852	linear-gradient(-225deg, #FF057C 0%, #7C64D5 48%, #4CC3FF 100%)	2
2	Motivation	Screenshot_from_2019-04-18_22-06-01.png	Вы нуждаетесь в мотивации? Этот курс вам поможет не нуждаться в нем и двигаться как настоящий мужик	2019-07-09 17:19:55.972418	2019-07-13 06:29:54.299488	linear-gradient(-225deg, #A445B2 0%, #D41872 52%, #FF0066 100%)	2
1	English	Screenshot_from_2018-12-28_01-26-07.png	English course for noobs	2019-07-09 13:36:47.805849	2019-07-13 06:30:06.00194	linear-gradient(-225deg, #FFE29F 0%, #FFA99F 48%, #FF719A 100%)	1
\.


--
-- Data for Name: courses_users; Type: TABLE DATA; Schema: public; Owner: yernazar
--

COPY public.courses_users (id, user_id, course_id) FROM stdin;
1	4	3
2	4	1
\.


--
-- Data for Name: faq_categories; Type: TABLE DATA; Schema: public; Owner: yernazar
--

COPY public.faq_categories (id, title, language_id) FROM stdin;
1	Платформаға қатысты сұрақтар	2
2	Оқу барысына қатысты сұрақтар	2
\.


--
-- Data for Name: faqs; Type: TABLE DATA; Schema: public; Owner: yernazar
--

COPY public.faqs (id, question, answer, faq_category_id) FROM stdin;
1	Аудиозапись-ті, видеоларды жүктей алмай жатырмын. Қалай жүктеп алса болады?	Авторлық құқық сақталу барысында, аудио, видео файлдарды жүктеп алуға болмайды.	1
2	Платформаға кірдім, пароль ауыстыру қажет пе?	Қиын парольмен кіру қиындық туғызғандықтан, қазір тек сандардан тұратын жеңіл пароль жіберудеміз. Сол себепті ауыстырған жөн.	1
3	Парольді қалай ауыстырамын?	Платформаға кірген соң, жоғарғы оң жақ бөлігінде есіміңіз тұрады. Есіміңіздің үстінен бассаңыз, шыққан менюде «Аккаунт» деген батырманы басасыз. Жаңа құпия сөз, ескі құпия сөз енгізіп «Сақтау» батырмасын басасыз.	1
4	Сұрақты кімге қоямыз?	Біз мейлінше барлығы түсінікті болатындай, текст түрінде де видеода да барлығын түсіндіріп өттік. Сол себепті сұрақ қоймас бұрін міндетті түрде барлығымен танысыңыз. Болмаса, екінші рет қарап шығыңыз. «Релаксация» деген не? Секілді Google дан сұрап білуге болатын сұрақтарға жауап бермейміз. Дұрыс сұрақ - жарты жауап. Бір-біріміздің уақытымызды бағалайық!	2
\.


--
-- Data for Name: hometasks; Type: TABLE DATA; Schema: public; Owner: yernazar
--

COPY public.hometasks (id, user_id, lesson_id, file, created_at, updated_at, rate, comment) FROM stdin;
16	4	1	askarovich_logo-05.jpg	2019-07-15 02:17:16.397625	2019-07-15 02:17:16.397625	\N	\N
\.


--
-- Data for Name: languages; Type: TABLE DATA; Schema: public; Owner: yernazar
--

COPY public.languages (id, title, abbr) FROM stdin;
1	Русский	ru
2	Қазақша	kk
\.


--
-- Data for Name: lessons; Type: TABLE DATA; Schema: public; Owner: yernazar
--

COPY public.lessons (id, title, content, course_id, created_at, updated_at, video) FROM stdin;
1	Первый урок	<h1><strong>Сәлеметсіз бе, Құрметті Shonbay online университетінің студенті.</strong></h1>\r\n\r\n<p><strong>Ұзақ күтіп, көптеген кедергілерден өтіп, 1 сабаққа да жеттік. Стресс жинадық, енді арылып үйренейік!</strong></p>\r\n\r\n<p>Ең алдымен Қуаныш мырзаның видео сабағын қарап шығыңыз.</p>\r\n\r\n<p>Видеода Қуаныш мырза Назерке ханымның видеосы туралы айтады. Ол видеоны міндетті түрде аласыздар, тек бүгін емес. Себебі, оқу процесі жеңіл болу үшін, біз оқу форматын өзгерттік. Осыған дейін алғашқы лек студенттері бірден 40 минуттық медитация алса, сіз осы айда күнделікті алып отырасыз. Алғашқы видеоны дүйсенбі күні береміз. Күннен күнге медитация күрделене бастайды. Басында 2-3 минуттан бастап, соңында 40 минут медитация жасайсыз.</p>\r\n\r\n<p>Жалпы медитация өту барысы келесі аудиофайлда да айтылған</p>\r\n\r\n<p>Күнделікті орындайтын медитацияны күнде алатындықтан, осы сабақ тапсырмасы Қуаныш мырза видеосын қарау, платформамен танысу, ережелер бөлімін оқу және осы сабақ астында пікір бөлімі бар екенін де ескертеміз. Өз ойларыңызбен бөлісіп отырыңыздар)</p>\r\n\r\n<p>Іске Сәт!</p>\r\n\r\n<p><a href="https://askarovich.kz">Askarovich</a></p>\r\n\r\n<hr />\r\n<h3><strong>Тапсырма:</strong></h3>\r\n\r\n<p>1. Қуаныш мырзаның сабағын қарап шығыңыз.</p>\r\n\r\n<p>2. Күнде берілетін медитация жаттығуларын орындаңыз. Әр жаттығу астында, жаттығуды жасаған соң, &ldquo;Медитация жаттығуларын жасадым&rdquo; деген жерге, орындағаныңызды растаңыз.</p>\r\n\r\n<p>3. Медитация бірінші күні берілген кестені өзіңіз үшін толтырып жүріңіз. Ол өзіңізде болып жатқан өзгерістерді байқау үшін.</p>\r\n\r\n<h3><strong>Есеп беру:</strong></h3>\r\n\r\n<p>Тапсырмаларды тиянақты орындаңыздар. 1 сабақтан алған әсерлеріңізді, өзгерістеріңізбен бөлісіңіздер. Кемінде 200 сөз жазыңыз. Есепті айдың соңына дейін жіберсеңіздер болады.</p>\r\n\r\n<p>Келесі айда есеп беру функциясы жабылады.</p>\r\n\r\n<p>Іске сәт!</p>\r\n	1	2019-07-14 04:27:28.629106	2019-07-14 17:36:13.818795	31.360.af2ed2d0928581c0.mp4
\.


--
-- Data for Name: news; Type: TABLE DATA; Schema: public; Owner: yernazar
--

COPY public.news (id, title, description_short, description, image, created_at, updated_at, image_dominant_color, content, language_id) FROM stdin;
2	Новость вторая	Лорем ипсум долор сит амет, ут нец видиссе перицулис, мел еу уллум алтерум волуптуа, цу иус цетерос интеллегат.	Лорем ипсум долор сит амет, ут нец видиссе перицулис, мел еу уллум алтерум волуптуа, цу иус цетерос интеллегат. Еи нам аетерно малорум денияуе. Ут мазим еррор тимеам нам, цу муциус волумус ратионибус еум. Сит ин пурто регионе сцаевола, алиа импедит те вис. Нам цу семпер номинави. Усу видиссе платонем ут. Цу сит яуем цибо вери, цу яуо вери дицит, но еум волуптариа цонсететур. Ут вис либрис импетус. Про ат детрацто адиписцинг. Цаусае орнатус еам ад, яуот цонгуе яуидам яуо ут. Не витае деленит вим, те утамур вивендо дуо. Меа еи утрояуе салутанди детерруиссет, толлит волумус репудиаре ин усу. Ех яуи сале детрахит, нам ассентиор реформиданс ад. Сед ид фугит латине ратионибус. Яуи аццусамус инструцтиор но, про ин цонсул цаусае перицула, сеа мунди моллис елеифенд те. Еи солеат ириуре еос, те нец тимеам оффендит. Ест еу мутат аппареат петентиум, пер воцибус опортере ут, еум мелиус пертинах садипсцинг ет. Ид дицант аргументум при, ад яуи яуот интерессет, еа цум садипсцинг цонтентионес. Сед ерос лобортис ин. Дицунт перципитур еос еи, ан хомеро пхаедрум сцрипторем иус. Тимеам репрехендунт цомпрехенсам еум ут, ут аутем партем евертитур усу. Дуо елитр утрояуе интеллегат ин, меи те яуаеяуе демоцритум. Еум цасе фацилис легендос еу, про ех утамур менандри. Вис видерер елояуентиам ех, те меи еирмод бландит персецути. Те алияуип перципит меа, ут граеци аццусам сенсибус меи. Про не дебет яуандо, алиенум цонсеяуунтур репрехендунт ут еам. Вис не ерант дицам сентентиае, цум ех епицури ехпетенда, но при мелиус аццусата. Меи яуем лаборе но, меи мунере фабеллас ад. Магна елецтрам иудицабит еум те, ат яуо убияуе ментитум инструцтиор. Граецис маиорум сенсерит сит ех, модус алияуам бландит хас не. Елеифенд делицата елецтрам нам ут, еос ин дицам медиоцритатем. Елит яуидам цум ин, еум цу легимус бландит пробатус. Номинави симилияуе ан нец. Еи пауло цоммодо сит, ех уллум дицант алияуид цум.\r\n	Screenshot_from_2019-06-19_17-29-49.png	2019-07-09 22:24:55.918053	2019-07-13 05:34:05.841131	#13193c	\N	1
3	Новость третья	Вы нуждаетесь в мотивации? Этот курс вам поможет не нуждаться в нем и двигаться как настоящий мужик	Вы нуждаетесь в мотивации? Этот курс вам поможет не нуждаться в нем и двигаться как настоящий мужик\r\nВы нуждаетесь в мотивации? Этот курс вам поможет не нуждаться в нем и двигаться как настоящий мужикВы нуждаетесь в мотивации? Этот курс вам поможет не нуждаться в нем и двигаться как настоящий мужикВы нуждаетесь в мотивации? Этот курс вам поможет не нуждаться в нем и двигаться как настоящий мужик	1435397110_577794048.png	2019-07-09 23:04:48.432698	2019-07-13 05:33:38.535615	#0086ff	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.	2
1	Новость первая	Лорем ипсум долор сит амет, ут нец видиссе перицулис, мел еу уллум алтерум волуптуа, цу иус цетерос интеллегат. 	Лорем ипсум долор сит амет, ут нец видиссе перицулис, мел еу уллум алтерум волуптуа, цу иус цетерос интеллегат. Еи нам аетерно малорум денияуе. Ут мазим еррор тимеам нам, цу муциус волумус ратионибус еум. Сит ин пурто регионе сцаевола, алиа импедит те вис. Нам цу семпер номинави.\r\nУсу видиссе платонем ут. Цу сит яуем цибо вери, цу яуо вери дицит, но еум волуптариа цонсететур. Ут вис либрис импетус. Про ат детрацто адиписцинг.\r\n\r\nЦаусае орнатус еам ад, яуот цонгуе яуидам яуо ут. Не витае деленит вим, те утамур вивендо дуо. Меа еи утрояуе салутанди детерруиссет, толлит волумус репудиаре ин усу. Ех яуи сале детрахит, нам ассентиор реформиданс ад. Сед ид фугит латине ратионибус. Яуи аццусамус инструцтиор но, про ин цонсул цаусае перицула, сеа мунди моллис елеифенд те.\r\n\r\nЕи солеат ириуре еос, те нец тимеам оффендит. Ест еу мутат аппареат петентиум, пер воцибус опортере ут, еум мелиус пертинах садипсцинг ет. Ид дицант аргументум при, ад яуи яуот интерессет, еа цум садипсцинг цонтентионес. Сед ерос лобортис ин.\r\n\r\nДицунт перципитур еос еи, ан хомеро пхаедрум сцрипторем иус. Тимеам репрехендунт цомпрехенсам еум ут, ут аутем партем евертитур усу. Дуо елитр утрояуе интеллегат ин, меи те яуаеяуе демоцритум. Еум цасе фацилис легендос еу, про ех утамур менандри.\r\n\r\nВис видерер елояуентиам ех, те меи еирмод бландит персецути. Те алияуип перципит меа, ут граеци аццусам сенсибус меи. Про не дебет яуандо, алиенум цонсеяуунтур репрехендунт ут еам. Вис не ерант дицам сентентиае, цум ех епицури ехпетенда, но при мелиус аццусата. Меи яуем лаборе но, меи мунере фабеллас ад. Магна елецтрам иудицабит еум те, ат яуо убияуе ментитум инструцтиор.\r\n\r\nГраецис маиорум сенсерит сит ех, модус алияуам бландит хас не. Елеифенд делицата елецтрам нам ут, еос ин дицам медиоцритатем. Елит яуидам цум ин, еум цу легимус бландит пробатус. Номинави симилияуе ан нец. Еи пауло цоммодо сит, ех уллум дицант алияуид цум.	planeta_kratery_kosmos_svet_61032_1600x1200.jpg	2019-07-09 22:23:45.923106	2019-07-13 05:34:05.845863	#904628	\N	1
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: yernazar
--

COPY public.schema_migrations (version) FROM stdin;
20190705171127
20190708123142
20190709110513
20190709134402
20190709171556
20190709180936
20190709221019
20190709225746
20190709230132
20190710040203
20190713043418
20190713043708
20190713044720
20190713044941
20190713045557
20190713050257
20190713083838
20190713084643
20190713085434
20190714025014
20190714045415
20190714050300
20190714190026
20190714232051
20190714233606
20190715014951
\.


--
-- Data for Name: template_modules; Type: TABLE DATA; Schema: public; Owner: yernazar
--

COPY public.template_modules (id, title, language_id, label) FROM stdin;
1	Шапка	1	header
2	Шапка kk	2	header
3	Footer	1	footer
4	Footer kk	2	footer
5	Главная страница	1	home
6	Главная страница kk	2	home
7	Общие шаблоны	1	common
8	Общие шаблоны kk	2	common
9	Курсы	1	courses
10	Курсы kk	2	courses
11	Новости	1	news
12	Новости kk	2	news
13	FAQ	1	faq
14	FAQ kk	2	faq
15	Регистрация	1	signup
16	Регистрация kk	2	signup
17	Авторизация	1	signin
18	Авторизация kk	2	signin
19	Аккаунт	1	account
20	Аккаунт kk	2	account
21	Восстановления пароля	1	reset
22	Восстановления пароля kk	2	reset
23	Комментарий	1	comment
24	Комментарий kk	2	comment
25	Правила	1	rules
26	Правила kk	2	rules
27	Домашки	1	hometask
28	Домашки kk	2	hometask
29	Landing	1	landing
30	Landing kk	2	landing
\.


--
-- Data for Name: templates; Type: TABLE DATA; Schema: public; Owner: yernazar
--

COPY public.templates (id, label, template_module_id, title) FROM stdin;
3	courses	1	Курсы
4	news	1	Новости
5	faq	1	Вопрос-Ответ
6	rules	1	Правила
7	logout	1	Выйти
8	courses	2	Курстар
9	news	2	Жаңалықтар
10	faq	2	Сұрақ-жауап
11	rules	2	Ережелер
12	logout	2	Шығу
13	login	2	Кіру
14	login	1	Войти
16	copyright	4	Барлық құқықтар қорғалған.
15	copyright	3	Все права защищены.
17	courses_last	5	Новые курсы
18	news_last	5	Последние новости
19	courses_more	5	Все курсы
20	news_more	5	Все новости
21	courses_last	6	Соңғы курстар
22	courses_more	6	Барлық курстар
23	news_last	6	Соңғы жаңалықтар
24	news_more	6	Барлық жаңалықтар
25	empty	7	Не найдено
26	empty	8	Табылмады
27	courses_all	9	Все курсы
28	courses_all	10	Барлық курстар
29	news_all	11	Все новости
30	news_all	12	Барлық жаңалықтар
31	faq_title	13	Вопрос-Ответ
32	faq_title	14	Сұрақ-жауап
33	signin_title	17	Войти
34	signin_title	18	Кіру
35	signin_email	17	Электронная почта
36	signin_email	18	Пошта
37	signin_password	17	Пароль
38	signin_password	18	Құпия сөз
39	signin_button	17	Войти
40	signin_button	18	Кіру
41	signin_register_link	17	Регистрация
42	signin_register_link	18	Тіркелу
43	signin_forgot	17	Забыли пароль?
44	signin_forgot	18	Құпия сөзіңізді ұмыттыңыз ба?
45	signin_remember	17	Запомнить меня
46	signin_remember	18	Мені есте сақта
47	signup_signin_link	15	Войти
48	signup_signin_link	16	Кіру
49	signup_title	15	Регистрация
50	signup_name	15	ФИО
51	signup_phone	15	Номер телефона
52	signup_email	15	Электронная почта
53	signup_gender	15	Ваш пол
54	signup_birthday	15	Дата рождения
55	signup_password	15	Задайте пароль
56	signup_password_new	15	Пароль
57	signup_password_confirm	15	Подтверждения пароля
58	signup_button	15	Зарегистрироваться
59	signup_title	16	Тіркелу
60	signup_name	16	Аты-Жөніңіз
61	signup_phone	16	Телефон
62	signup_email	16	Поштаңыз
63	signup_gender	16	Жынысыңыз
64	signup_birthday	16	Туған күніңіз
65	signup_password	16	Құпия сөз
66	signup_password_new	16	Құпия сөз
67	signup_password_confirm	16	Құпия сөзді қайталаңыз
68	signup_button	16	Тіркелу
69	reset_title	21	Восстановления пароля
70	reset_title	22	Құпия сөзді қалпына келтіру
71	reset_button	21	Восстановить
72	reset_button	22	Жалғастыру
73	comment_text	23	Введите текст
74	comment_title	23	Добавить комментарий
75	comment_text	24	Текст
76	comment_title	24	Комментарий жазу
77	comment_button	23	Добавить
78	comment_button	24	Жазу
79	rules_title	25	Правила
80	rules_title	26	Ережелер
81	rules_content	26	<h3><strong>Курс қалай өтеді?</strong></h3>\r\n\r\n<p>Университет аясындағы ақпарат, тапсырмалар, тапсырманың есебін беру, сабақ кестесі, жаңалықтарды оқу ыңғайлы болу үшін, арнайы сайт (алдығы уақытта&nbsp;<strong>платформа</strong>) құрастырдық. Барлық сабақ тек сол платформа арқылы жүреді. Сілтемесі: https://shou.kz/</p>\r\n\r\n<p>Оқу басталатын күні, бізге жіберген e-mail почтаңызға, немесе телефоныңызға смс түрінде платформаға кіруге қажетті &laquo;құпия сөзі&raquo; бар хат жібереміз. Сондықтан Ақпаратты&nbsp;<strong>ДҰРЫС</strong>&nbsp;жіберу өте маңызды! Ақпарат қате жіберілген жағдайда, платформаға уақытылы кіргеніңізге жауап бермейміз.</p>\r\n\r\n<p>Айлық төлем жасап, қатысып жатқан қатысушылар, сіздер платформаға әр айға доступ аласыздар. Төлем жасалмаған жағдайда, келесі айда курс сізге қолжетімсіз болады!</p>\r\n\r\n<p>Кейін почтаңызға ешнәрсе келмейді. Барлық сабақ тек платформа аясында болады.&nbsp;<br />\r\nПлатформаға 3-тен артық техника құралдары арқылы кірсеңіз, курс қолжетімсіз болып қалатынын ескертеміз.</p>\r\n\r\n<p>Құрметті студент, курс пайдасын арттырып, Сіздің назарыңызды дұрыс бағытқа бұру мақсатында курстың арнайы ережелерін бекіттік.</p>\r\n\r\n<p>1. Төлем жасалған соң, оқу ақысы мүлде қайтарылмайды!<br />\r\n2. Біз сіздің жеке ақпаратыңызды қате жазғаныңызға жауапты емеспіз, сол үшін мұқият толтыруды өтінеміз.<br />\r\n3. Барлық сабақтар, тапсырмалар Астана уақытымен беріледі/тексеріледі.<br />\r\n4. Біздің мамандарға сағат 9:00-21:00 аралығында ғана сұрақ қоюға болады.<br />\r\n5. Курс кураторлары мен администраторларын жексенбі күндері мазалауға болмайды. Телефон арқылы хабарлама жазуға да.<br />\r\n6. Ақпаратты, тапсырманы толық оқу (түсінбеген жағдайда тағы екі рет қайталап оқу)<br />\r\n7. Тапсырмаларды уақытылы орындауыңыз керек.&nbsp;<br />\r\n8. Сылтау қабылданбайды<br />\r\n9. Басқа қатысушыларға немесе курс ұйымдастырушыларына дөрекі сөйлеуге, дініне, жынысына, жеке басына, намысына тиесілі сөздер айтуға болмайды.<br />\r\n10. Оқу материалдарын, журналды жүктеуге, таратуға болмайды. Барлығы авторлық құқықпен қорғалған!<br />\r\n11. Барлық сұрақтарыңызды what&rsquo;s app -қа xат түрінде жіберу (қоңырау шалуға, аудио жазба жіберуге болмайды)<br />\r\n12. Айлық төлем (5000тг) жасап қатысып жатқан студенттер әр айдың 25 дейін келесі айдың төлемін төлеп отыру қажет.&nbsp;<br />\r\n13. Әр орындалмаған ереже шарты үшін ескерту аласыз, 3 ескерту алған студент оқудан шығарылады. Ережелерін сақтамаған қатысушыларды, модератор ақшаны қайтармай курстан шығара алады.</p>\r\n\r\n<p>Студенттер саны көп болғандықтан, қарапайым, Гууглдан іздеп табуға болатын сұрақтарға жауап бермейміз. Түсінушілікпен қарауларыңызды сұраймын.&nbsp;<br />\r\nПлатформаға қатысты сұрақтарыңызды +7775 071 3837 осы номерге Ватсапқа ХАТ түрінде жазыңыз.</p>\r\n
86	account_button	20	Сақтау\r\n
85	account_button	19	Сохранить\r\n
84	account_title	20	Менің аккаунтым
83	account_title	19	Редактировать аккаунт
82	rules_content	25	Текст правил на русском
87	account_avatar	19	Загрузить аватар
88	account_avatar	20	Аватарды жүктеу
89	account_password_current	19	Текущий пароль
90	account_password_current	20	Қазіргі құпия сөз
91	courses_mine	5	Мои курсы
92	courses_mine	6	Менің курстарым
93	courses_mine_no	5	У вас еще нет курсов. Выберите курс который вы хотите приобрести и свяжитесь с администратором.
94	courses_mine_no	6	Курстарды сатып алу үшін администратормен хабарласыңыз.
95	course_not_bought	7	Вы не приобрели этот курс.
96	course_not_bought	8	Сіз бұл курсты сатып алмадыңыз.
97	hometasks	1	Домашние задания
98	hometasks	2	Үй тапсырмалары
99	not_given	27	Вы не сдали. Хотите сдать?
100	not_given	28	Үй тапсырмасын тапсырмадыңыз. Тапсырғыңыз келе ме?
101	title	28	Үй тапсырмалары
102	title	27	Домашние задания
103	resend	27	Пересдать
104	resend	28	Қайта жіберу
105	send_button	27	Выбрать файл
106	send_button	28	Файлды таңдау
107	task_send	27	Сдать домашнее задание
108	task_send	28	Үй тапсырмасын тапсырғыңыз келе ме?
109	task_view	27	Перейти к домашнем заданию
110	task_view	28	Үй тапсырмасы
111	title	29	Онлайн курсы на казахском языке
112	title	30	Қазақ тіліндегі онлайн сабақтар
113	description	30	Тиімділікті арттыру, жаңа қабілеттерді меңгеру, даму курстары
114	description	29	Увеличение эффективности, приобретение новых навыков, курсы развития
115	courses	29	Наши курсы
116	courses	30	Біздің курстар
117	more	29	Подробнее
118	more	30	Курс жайлы толығырақ‍
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: yernazar
--

COPY public.users (id, email, encrypted_password, name_surname, phone, gender, reset_password_token, reset_password_sent_at, remember_created_at, created_at, updated_at, birthday, avatar, admin) FROM stdin;
4	soundsnick@gmail.com	$2a$11$rCWFnw5pix.VZ04TdGIKdeEr8vFWehYDAa8Ju1iELgo54oQPkqFgO	Ерназар Карабаев	+77052275715	2	60121e11142a85b73ded60b2494ff64db7b7065a8a222764333886a66d72a0dd	2019-07-13 21:53:00	\N	2019-07-08 16:10:12.675845	2019-07-14 23:50:28.990656	2001-02-05 00:00:00	GCtjKMpGbjI.jpg	t
\.


--
-- Name: ckeditor_assets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yernazar
--

SELECT pg_catalog.setval('public.ckeditor_assets_id_seq', 1, false);


--
-- Name: comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yernazar
--

SELECT pg_catalog.setval('public.comments_id_seq', 3, true);


--
-- Name: courses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yernazar
--

SELECT pg_catalog.setval('public.courses_id_seq', 3, true);


--
-- Name: courses_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yernazar
--

SELECT pg_catalog.setval('public.courses_users_id_seq', 2, true);


--
-- Name: faq_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yernazar
--

SELECT pg_catalog.setval('public.faq_categories_id_seq', 2, true);


--
-- Name: faqs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yernazar
--

SELECT pg_catalog.setval('public.faqs_id_seq', 4, true);


--
-- Name: hometasks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yernazar
--

SELECT pg_catalog.setval('public.hometasks_id_seq', 16, true);


--
-- Name: languages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yernazar
--

SELECT pg_catalog.setval('public.languages_id_seq', 2, true);


--
-- Name: lessons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yernazar
--

SELECT pg_catalog.setval('public.lessons_id_seq', 1, true);


--
-- Name: news_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yernazar
--

SELECT pg_catalog.setval('public.news_id_seq', 3, true);


--
-- Name: template_modules_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yernazar
--

SELECT pg_catalog.setval('public.template_modules_id_seq', 30, true);


--
-- Name: templates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yernazar
--

SELECT pg_catalog.setval('public.templates_id_seq', 118, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yernazar
--

SELECT pg_catalog.setval('public.users_id_seq', 4, true);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: yernazar
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: ckeditor_assets ckeditor_assets_pkey; Type: CONSTRAINT; Schema: public; Owner: yernazar
--

ALTER TABLE ONLY public.ckeditor_assets
    ADD CONSTRAINT ckeditor_assets_pkey PRIMARY KEY (id);


--
-- Name: comments comments_pkey; Type: CONSTRAINT; Schema: public; Owner: yernazar
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (id);


--
-- Name: courses courses_pkey; Type: CONSTRAINT; Schema: public; Owner: yernazar
--

ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_pkey PRIMARY KEY (id);


--
-- Name: courses_users courses_users_pkey; Type: CONSTRAINT; Schema: public; Owner: yernazar
--

ALTER TABLE ONLY public.courses_users
    ADD CONSTRAINT courses_users_pkey PRIMARY KEY (id);


--
-- Name: faq_categories faq_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: yernazar
--

ALTER TABLE ONLY public.faq_categories
    ADD CONSTRAINT faq_categories_pkey PRIMARY KEY (id);


--
-- Name: faqs faqs_pkey; Type: CONSTRAINT; Schema: public; Owner: yernazar
--

ALTER TABLE ONLY public.faqs
    ADD CONSTRAINT faqs_pkey PRIMARY KEY (id);


--
-- Name: hometasks hometasks_pkey; Type: CONSTRAINT; Schema: public; Owner: yernazar
--

ALTER TABLE ONLY public.hometasks
    ADD CONSTRAINT hometasks_pkey PRIMARY KEY (id);


--
-- Name: languages languages_pkey; Type: CONSTRAINT; Schema: public; Owner: yernazar
--

ALTER TABLE ONLY public.languages
    ADD CONSTRAINT languages_pkey PRIMARY KEY (id);


--
-- Name: lessons lessons_pkey; Type: CONSTRAINT; Schema: public; Owner: yernazar
--

ALTER TABLE ONLY public.lessons
    ADD CONSTRAINT lessons_pkey PRIMARY KEY (id);


--
-- Name: news news_pkey; Type: CONSTRAINT; Schema: public; Owner: yernazar
--

ALTER TABLE ONLY public.news
    ADD CONSTRAINT news_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: yernazar
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: template_modules template_modules_pkey; Type: CONSTRAINT; Schema: public; Owner: yernazar
--

ALTER TABLE ONLY public.template_modules
    ADD CONSTRAINT template_modules_pkey PRIMARY KEY (id);


--
-- Name: templates templates_pkey; Type: CONSTRAINT; Schema: public; Owner: yernazar
--

ALTER TABLE ONLY public.templates
    ADD CONSTRAINT templates_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: yernazar
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_ckeditor_assets_on_type; Type: INDEX; Schema: public; Owner: yernazar
--

CREATE INDEX index_ckeditor_assets_on_type ON public.ckeditor_assets USING btree (type);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: yernazar
--

CREATE UNIQUE INDEX index_users_on_email ON public.users USING btree (email);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: yernazar
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON public.users USING btree (reset_password_token);


--
-- PostgreSQL database dump complete
--

