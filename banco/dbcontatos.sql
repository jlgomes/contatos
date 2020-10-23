--
-- PostgreSQL database dump
--

-- Dumped from database version 12.4
-- Dumped by pg_dump version 12.4

-- Started on 2020-10-23 10:36:19

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

SET default_table_access_method = heap;

--
-- TOC entry 202 (class 1259 OID 17798)
-- Name: contatos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.contatos (
    id bigint NOT NULL,
    email character varying(255),
    nome character varying(255),
    sexo integer,
    telefone character varying(255)
);


ALTER TABLE public.contatos OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 17806)
-- Name: contatos_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.contatos_seq
    START WITH 5
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.contatos_seq OWNER TO postgres;

--
-- TOC entry 2816 (class 0 OID 17798)
-- Dependencies: 202
-- Data for Name: contatos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.contatos (id, email, nome, sexo, telefone) FROM stdin;
5	josias_lima2@hotmail.com	Josias Gomes Lima	0	(92) 99382-2411
\.


--
-- TOC entry 2823 (class 0 OID 0)
-- Dependencies: 203
-- Name: contatos_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.contatos_seq', 7, true);


--
-- TOC entry 2689 (class 2606 OID 17805)
-- Name: contatos contatos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contatos
    ADD CONSTRAINT contatos_pkey PRIMARY KEY (id);


-- Completed on 2020-10-23 10:36:19

--
-- PostgreSQL database dump complete
--

