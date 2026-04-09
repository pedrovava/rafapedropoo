--
-- PostgreSQL database dump
--

\restrict 5Gz6RhMI2B1hJP5pjLJwYtefCibF9b41Jqeisw6wXKJ9ddrcag5n4wUKGkKIYul

-- Dumped from database version 18.3
-- Dumped by pg_dump version 18.3

-- Started on 2026-04-09 09:12:55

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 220 (class 1259 OID 24647)
-- Name: leitor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.leitor (
    nome character varying(100),
    id_leitor integer NOT NULL
);


ALTER TABLE public.leitor OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 24646)
-- Name: leitor_id_leitor_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.leitor_id_leitor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.leitor_id_leitor_seq OWNER TO postgres;

--
-- TOC entry 4946 (class 0 OID 0)
-- Dependencies: 219
-- Name: leitor_id_leitor_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.leitor_id_leitor_seq OWNED BY public.leitor.id_leitor;


--
-- TOC entry 225 (class 1259 OID 24670)
-- Name: leitor_livro; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.leitor_livro (
    id_leitor integer,
    id_livro integer
);


ALTER TABLE public.leitor_livro OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 24655)
-- Name: livro; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.livro (
    id_livro integer NOT NULL,
    nome character varying(100),
    autor character varying(100),
    editora character varying(100)
);


ALTER TABLE public.livro OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 24654)
-- Name: livro_id_livro_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.livro_id_livro_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.livro_id_livro_seq OWNER TO postgres;

--
-- TOC entry 4947 (class 0 OID 0)
-- Dependencies: 221
-- Name: livro_id_livro_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.livro_id_livro_seq OWNED BY public.livro.id_livro;


--
-- TOC entry 226 (class 1259 OID 24683)
-- Name: livro_publicador; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.livro_publicador (
    id_livro integer,
    id_publicador integer
);


ALTER TABLE public.livro_publicador OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 24663)
-- Name: publicador; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.publicador (
    nome character varying(100),
    id_publicador integer NOT NULL
);


ALTER TABLE public.publicador OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 24662)
-- Name: publicador_id_publicador_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.publicador_id_publicador_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.publicador_id_publicador_seq OWNER TO postgres;

--
-- TOC entry 4948 (class 0 OID 0)
-- Dependencies: 223
-- Name: publicador_id_publicador_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.publicador_id_publicador_seq OWNED BY public.publicador.id_publicador;


--
-- TOC entry 4773 (class 2604 OID 24650)
-- Name: leitor id_leitor; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.leitor ALTER COLUMN id_leitor SET DEFAULT nextval('public.leitor_id_leitor_seq'::regclass);


--
-- TOC entry 4774 (class 2604 OID 24658)
-- Name: livro id_livro; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.livro ALTER COLUMN id_livro SET DEFAULT nextval('public.livro_id_livro_seq'::regclass);


--
-- TOC entry 4775 (class 2604 OID 24666)
-- Name: publicador id_publicador; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.publicador ALTER COLUMN id_publicador SET DEFAULT nextval('public.publicador_id_publicador_seq'::regclass);


--
-- TOC entry 4934 (class 0 OID 24647)
-- Dependencies: 220
-- Data for Name: leitor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.leitor (nome, id_leitor) FROM stdin;
\.


--
-- TOC entry 4939 (class 0 OID 24670)
-- Dependencies: 225
-- Data for Name: leitor_livro; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.leitor_livro (id_leitor, id_livro) FROM stdin;
\.


--
-- TOC entry 4936 (class 0 OID 24655)
-- Dependencies: 222
-- Data for Name: livro; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.livro (id_livro, nome, autor, editora) FROM stdin;
\.


--
-- TOC entry 4940 (class 0 OID 24683)
-- Dependencies: 226
-- Data for Name: livro_publicador; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.livro_publicador (id_livro, id_publicador) FROM stdin;
\.


--
-- TOC entry 4938 (class 0 OID 24663)
-- Dependencies: 224
-- Data for Name: publicador; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.publicador (nome, id_publicador) FROM stdin;
\.


--
-- TOC entry 4949 (class 0 OID 0)
-- Dependencies: 219
-- Name: leitor_id_leitor_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.leitor_id_leitor_seq', 1, false);


--
-- TOC entry 4950 (class 0 OID 0)
-- Dependencies: 221
-- Name: livro_id_livro_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.livro_id_livro_seq', 1, false);


--
-- TOC entry 4951 (class 0 OID 0)
-- Dependencies: 223
-- Name: publicador_id_publicador_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.publicador_id_publicador_seq', 1, false);


--
-- TOC entry 4777 (class 2606 OID 24653)
-- Name: leitor leitor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.leitor
    ADD CONSTRAINT leitor_pkey PRIMARY KEY (id_leitor);


--
-- TOC entry 4779 (class 2606 OID 24661)
-- Name: livro livro_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.livro
    ADD CONSTRAINT livro_pkey PRIMARY KEY (id_livro);


--
-- TOC entry 4781 (class 2606 OID 24669)
-- Name: publicador publicador_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.publicador
    ADD CONSTRAINT publicador_pkey PRIMARY KEY (id_publicador);


--
-- TOC entry 4782 (class 2606 OID 24673)
-- Name: leitor_livro leitor_livro_id_leitor_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.leitor_livro
    ADD CONSTRAINT leitor_livro_id_leitor_fkey FOREIGN KEY (id_leitor) REFERENCES public.leitor(id_leitor);


--
-- TOC entry 4783 (class 2606 OID 24678)
-- Name: leitor_livro leitor_livro_id_livro_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.leitor_livro
    ADD CONSTRAINT leitor_livro_id_livro_fkey FOREIGN KEY (id_livro) REFERENCES public.livro(id_livro);


--
-- TOC entry 4784 (class 2606 OID 24686)
-- Name: livro_publicador livro_publicador_id_livro_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.livro_publicador
    ADD CONSTRAINT livro_publicador_id_livro_fkey FOREIGN KEY (id_livro) REFERENCES public.livro(id_livro);


--
-- TOC entry 4785 (class 2606 OID 24691)
-- Name: livro_publicador livro_publicador_id_publicador_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.livro_publicador
    ADD CONSTRAINT livro_publicador_id_publicador_fkey FOREIGN KEY (id_publicador) REFERENCES public.publicador(id_publicador);


-- Completed on 2026-04-09 09:12:55

--
-- PostgreSQL database dump complete
--

\unrestrict 5Gz6RhMI2B1hJP5pjLJwYtefCibF9b41Jqeisw6wXKJ9ddrcag5n4wUKGkKIYul

