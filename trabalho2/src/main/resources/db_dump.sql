--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5 (Debian 14.5-1.pgdg110+1)
-- Dumped by pg_dump version 14.5 (Debian 14.5-1.pgdg110+1)

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
-- Name: actors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.actors (
    id integer NOT NULL,
    birth_date date,
    name character varying(255)
);


ALTER TABLE public.actors OWNER TO postgres;

--
-- Name: actors_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.actors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.actors_id_seq OWNER TO postgres;

--
-- Name: actors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.actors_id_seq OWNED BY public.actors.id;


--
-- Name: movie_actor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.movie_actor (
    actor_id integer NOT NULL,
    movie_id integer NOT NULL
);


ALTER TABLE public.movie_actor OWNER TO postgres;

--
-- Name: movies; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.movies (
    id integer NOT NULL,
    release_year integer,
    title character varying(255)
);


ALTER TABLE public.movies OWNER TO postgres;

--
-- Name: movies_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.movies_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.movies_id_seq OWNER TO postgres;

--
-- Name: movies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.movies_id_seq OWNED BY public.movies.id;


--
-- Name: actors id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.actors ALTER COLUMN id SET DEFAULT nextval('public.actors_id_seq'::regclass);


--
-- Name: movies id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movies ALTER COLUMN id SET DEFAULT nextval('public.movies_id_seq'::regclass);


--
-- Data for Name: actors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.actors (id, birth_date, name) FROM stdin;
1	1979-06-21	Chris Pratt
2	1967-07-18	Vin Diesel
3	1975-01-05	Bradley Cooper
4	1978-06-19	Zoe Saldana
5	1979-12-28	Noomi Rapace
6	1977-04-02	Michael Fassbender
7	1975-08-07	Charlize Theron
8	1968-09-25	Will Smith
9	1971-12-26	Jared Leto
10	1990-07-02	Margot Robbie
11	1965-08-11	Viola Davis
12	1979-06-21	Chris Pratt
13	1967-07-18	Vin Diesel
14	1975-01-05	Bradley Cooper
15	1978-06-19	Zoe Saldana
16	1979-12-28	Noomi Rapace
17	1977-04-02	Michael Fassbender
18	1975-08-07	Charlize Theron
19	1968-09-25	Will Smith
20	1971-12-26	Jared Leto
21	1990-07-02	Margot Robbie
22	1965-08-11	Viola Davis
23	1979-06-21	Chris Pratt
24	1967-07-18	Vin Diesel
25	1975-01-05	Bradley Cooper
26	1978-06-19	Zoe Saldana
27	1979-12-28	Noomi Rapace
28	1977-04-02	Michael Fassbender
29	1975-08-07	Charlize Theron
30	1968-09-25	Will Smith
31	1971-12-26	Jared Leto
32	1990-07-02	Margot Robbie
33	1965-08-11	Viola Davis
34	1979-06-21	Chris Pratt
35	1967-07-18	Vin Diesel
36	1975-01-05	Bradley Cooper
37	1978-06-19	Zoe Saldana
38	1979-12-28	Noomi Rapace
39	1977-04-02	Michael Fassbender
40	1975-08-07	Charlize Theron
41	1968-09-25	Will Smith
42	1971-12-26	Jared Leto
43	1990-07-02	Margot Robbie
44	1965-08-11	Viola Davis
\.


--
-- Data for Name: movie_actor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.movie_actor (actor_id, movie_id) FROM stdin;
1	1
2	1
3	1
4	1
5	2
6	2
7	2
8	3
9	3
10	3
11	3
1	1
2	1
3	1
4	1
5	2
6	2
7	2
8	3
9	3
10	3
11	3
1	1
2	1
3	1
4	1
5	2
6	2
7	2
8	3
9	3
10	3
11	3
1	1
2	1
3	1
4	1
5	2
6	2
7	2
8	3
9	3
10	3
11	3
\.


--
-- Data for Name: movies; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.movies (id, release_year, title) FROM stdin;
1	2014	Guardians of the Galaxy
2	2012	Prometheus
3	2016	Split
4	2016	Sing
5	2016	Suicide Squad
6	2016	The Great Wall
7	2016	La La Land
8	2016	Mindhorn
9	2016	The Lost City of Z
10	2016	Passengers
11	2016	Fantastic Beasts and Where to Find Them
12	2016	Hidden Figures
13	2016	Rogue One
14	2016	Moana
15	2016	Colossal
16	2016	The Secret Life of Pets
17	2016	Hacksaw Ridge
18	2016	Jason Bourne
19	2016	Lion
20	2016	Arrival
21	2016	Gold
22	2016	Manchester by the Sea
23	2016	Hounds of Love
24	2016	Trolls
25	2016	Independence Day: Resurgence
26	2016	Paris pieds nus
27	2015	Bahubali: The Beginning
28	2016	Dead Awake
29	2016	Bad Moms
30	2016	Assassins Creed
31	2014	Guardians of the Galaxy
32	2012	Prometheus
33	2016	Split
34	2016	Sing
35	2016	Suicide Squad
36	2016	The Great Wall
37	2016	La La Land
38	2016	Mindhorn
39	2016	The Lost City of Z
40	2016	Passengers
41	2016	Fantastic Beasts and Where to Find Them
42	2016	Hidden Figures
43	2016	Rogue One
44	2016	Moana
45	2016	Colossal
46	2016	The Secret Life of Pets
47	2016	Hacksaw Ridge
48	2016	Jason Bourne
49	2016	Lion
50	2016	Arrival
51	2016	Gold
52	2016	Manchester by the Sea
53	2016	Hounds of Love
54	2016	Trolls
55	2016	Independence Day: Resurgence
56	2016	Paris pieds nus
57	2015	Bahubali: The Beginning
58	2016	Dead Awake
59	2016	Bad Moms
60	2016	Assassins Creed
61	2014	Guardians of the Galaxy
62	2012	Prometheus
63	2016	Split
64	2016	Sing
65	2016	Suicide Squad
66	2016	The Great Wall
67	2016	La La Land
68	2016	Mindhorn
69	2016	The Lost City of Z
70	2016	Passengers
71	2016	Fantastic Beasts and Where to Find Them
72	2016	Hidden Figures
73	2016	Rogue One
74	2016	Moana
75	2016	Colossal
76	2016	The Secret Life of Pets
77	2016	Hacksaw Ridge
78	2016	Jason Bourne
79	2016	Lion
80	2016	Arrival
81	2016	Gold
82	2016	Manchester by the Sea
83	2016	Hounds of Love
84	2016	Trolls
85	2016	Independence Day: Resurgence
86	2016	Paris pieds nus
87	2015	Bahubali: The Beginning
88	2016	Dead Awake
89	2016	Bad Moms
90	2016	Assassins Creed
91	2014	Guardians of the Galaxy
92	2012	Prometheus
93	2016	Split
94	2016	Sing
95	2016	Suicide Squad
96	2016	The Great Wall
97	2016	La La Land
98	2016	Mindhorn
99	2016	The Lost City of Z
100	2016	Passengers
101	2016	Fantastic Beasts and Where to Find Them
102	2016	Hidden Figures
103	2016	Rogue One
104	2016	Moana
105	2016	Colossal
106	2016	The Secret Life of Pets
107	2016	Hacksaw Ridge
108	2016	Jason Bourne
109	2016	Lion
110	2016	Arrival
111	2016	Gold
112	2016	Manchester by the Sea
113	2016	Hounds of Love
114	2016	Trolls
115	2016	Independence Day: Resurgence
116	2016	Paris pieds nus
117	2015	Bahubali: The Beginning
118	2016	Dead Awake
119	2016	Bad Moms
120	2016	Assassins Creed
\.


--
-- Name: actors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.actors_id_seq', 44, true);


--
-- Name: movies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.movies_id_seq', 120, true);


--
-- Name: actors actors_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.actors
    ADD CONSTRAINT actors_pkey PRIMARY KEY (id);


--
-- Name: movies movies_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movies
    ADD CONSTRAINT movies_pkey PRIMARY KEY (id);


--
-- Name: movie_actor fk90bbe6vpr6eoahw20ta95nkta; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movie_actor
    ADD CONSTRAINT fk90bbe6vpr6eoahw20ta95nkta FOREIGN KEY (movie_id) REFERENCES public.movies(id);


--
-- Name: movie_actor fkr5wsak3io275nfc8jc5mtup2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movie_actor
    ADD CONSTRAINT fkr5wsak3io275nfc8jc5mtup2 FOREIGN KEY (actor_id) REFERENCES public.actors(id);


--
-- PostgreSQL database dump complete
--

