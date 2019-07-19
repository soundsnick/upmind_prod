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
-- Name: template_modules id; Type: DEFAULT; Schema: public; Owner: yernazar
--

ALTER TABLE ONLY public.template_modules ALTER COLUMN id SET DEFAULT nextval('public.template_modules_id_seq'::regclass);


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
31	Уроки	1	lesson
32	Уроки kk	2	lesson
33	Курс Landing	1	course-landing
34	Курс Landing kk	2	course-landing
35	Мои вопросы	1	questions
36	Мои вопросы kk	2	questions
37	3 вопроса	1	feedback
38	3 вопроса kk	2	feedback
\.


--
-- Name: template_modules_id_seq; Type: SEQUENCE SET; Schema: public; Owner: yernazar
--

SELECT pg_catalog.setval('public.template_modules_id_seq', 38, true);


--
-- Name: template_modules template_modules_pkey; Type: CONSTRAINT; Schema: public; Owner: yernazar
--

ALTER TABLE ONLY public.template_modules
    ADD CONSTRAINT template_modules_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

