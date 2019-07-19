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

SET default_tablespace = '';

SET default_with_oids = false;

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
-- Name: templates id; Type: DEFAULT; Schema: public; Owner: yernazar
--

ALTER TABLE ONLY public.templates ALTER COLUMN id SET DEFAULT nextval('public.templates_id_seq'::regclass);


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
118	more	30	Толығырақ‍
119	task	31	Домашнее задание
120	task	32	Тапсырма
121	button	33	Оформить подписку на курс
122	button	34	Подписаться
123	program	33	Программа
124	program	34	БАҒДАРЛАМА
126	forwho_title	34	КУРС КІМГЕ АРНАЛҒАН
127	program_title	34	КУРС  БАҒДАРЛАМАСЫ
128	program_title	33	Программа курса
125	forwho_title	33	Для кого предназначен
129	lesson	33	Урок
130	lesson	34	Сабақ
131	price_title	33	Цена курса
132	price_title	34	Курс бағасы:
133	name	33	Имя, фамилия
134	name	34	Аты жөніңіз
135	phone	33	Телефон
136	phone	34	Телефон
137	button	33	Подписаться
138	button	34	Жазылу
139	call	33	Мы вам перезвоним!
140	call	34	Сіздің өтініміңіз қабылданды
141	adress	7	+74561519555, Нур-Султан, адрес
142	adress	8	+74561519555, Нур-Султан, адрес
143	question	31	Что-то не поняли? Спросите.
144	question	32	Түсінбей қалған жерлер болса немесе сұрақ\r\nтуындаса
145	title	35	Мои вопросы
146	title	36	Менің сұрақтарым
147	empty	35	Вам еще не ответили
148	empty	36	Сұрағыңыз жауабын әлі алмады
149	first	37	dasdadasdasd
150	second	37	asdadsd
151	third	37	qwdasdad
152	first	38	asdad
153	second	38	asdadad
154	third	38	asdadsd
155	title	37	Обратная связь
156	title	38	Кері жауап
\.


--
-- Name: templates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yernazar
--

SELECT pg_catalog.setval('public.templates_id_seq', 156, true);


--
-- Name: templates templates_pkey; Type: CONSTRAINT; Schema: public; Owner: yernazar
--

ALTER TABLE ONLY public.templates
    ADD CONSTRAINT templates_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

