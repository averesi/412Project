--
-- PostgreSQL database dump
--

-- Dumped from database version 15.4
-- Dumped by pg_dump version 15.4

-- Started on 2023-12-04 20:36:54

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
-- TOC entry 214 (class 1259 OID 16793)
-- Name: footballclub; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.footballclub (
    club_id integer NOT NULL,
    club_name character varying,
    city_country character varying,
    estyear integer,
    playsintournament character varying
);


ALTER TABLE public.footballclub OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16824)
-- Name: managers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.managers (
    member_id integer NOT NULL,
    knownfortactics text
);


ALTER TABLE public.managers OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16800)
-- Name: members; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.members (
    member_id integer NOT NULL,
    fullname character varying,
    age integer,
    pastclub character varying,
    joinyear integer,
    transferfee integer,
    salary integer,
    club_id integer NOT NULL
);


ALTER TABLE public.members OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16849)
-- Name: nations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.nations (
    nation_id integer NOT NULL,
    nation_name character varying
);


ALTER TABLE public.nations OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16837)
-- Name: players; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.players (
    member_id integer NOT NULL,
    "position" text
);


ALTER TABLE public.players OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16888)
-- Name: playsnation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.playsnation (
    member_id integer NOT NULL,
    nation_id integer
);


ALTER TABLE public.playsnation OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16903)
-- Name: trophies; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.trophies (
    trophy_id integer NOT NULL,
    trophy_year integer NOT NULL,
    trophy_name character varying,
    organization_name character varying,
    club_id integer,
    nation_id integer
);


ALTER TABLE public.trophies OWNER TO postgres;

--
-- TOC entry 3359 (class 0 OID 16793)
-- Dependencies: 214
-- Data for Name: footballclub; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.footballclub (club_id, club_name, city_country, estyear, playsintournament) FROM stdin;
1001	Real Madrid	Madrid(Spain)	1902	La Liga
1002	FC Barcelona	Barcelona(Spain)	1899	La Liga
1003	Arsenal	London(England)	1886	Premier League
1004	Chelsea	London(England)	1905	Premier League
1005	Juventus	Turin(Italy)	1897	Serie A
1006	AC Milan	Milan(Italy)	1899	Serie A
1007	PSG	Paris(France)	1970	Ligue 1
1008	Manchester United	Manchester(England)	1878	Premier League
1009	Liverpool	Liverpool(England)	1892	Premier League
1010	Manchester City	Manchester(England)	1880	Premier League
\.


--
-- TOC entry 3361 (class 0 OID 16824)
-- Dependencies: 216
-- Data for Name: managers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.managers (member_id, knownfortactics) FROM stdin;
31	Four Four Two
32	Four Three Three
33	Four Two Three One
34	Three Five Two
35	Four Four Two
36	Four Three Three
37	Four Two Three One
38	Three Five Two
39	Four Four Two
40	Four Three Three
41	Four Two Three One
42	Three Five Two
43	Four Four Two
44	Four Three Three
45	Four Two Three One
46	Three Five Two
47	Four Four Two
48	Four Three Three
49	Four Two Three One
50	Three Five Two
\.


--
-- TOC entry 3360 (class 0 OID 16800)
-- Dependencies: 215
-- Data for Name: members; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.members (member_id, fullname, age, pastclub, joinyear, transferfee, salary, club_id) FROM stdin;
1	John Doe	25	Real Madrid	1995	150	30	1001
2	Jane Smith	30	FC Barcelona	1998	100	35	1002
3	Michael Johnson	26	Arsenal	2000	75	25	1003
4	Emily Davis	22	Chelsea	1997	120	28	1004
5	David Wilson	29	Juventus	1996	180	32	1005
6	Sarah Brown	31	AC Milan	1999	110	31	1006
7	James Lee	33	PSG	1994	190	34	1007
8	Lisa Taylor	28	Manchester United	1990	200	33	1008
9	Robert Clark	23	Real Madrid	1991	70	27	1009
10	Linda Lewis	27	FC Barcelona	1992	95	29	1010
11	William Hall	18	Chelsea	1993	55	22	1001
12	Patricia Harris	20	AC Milan	1905	65	21	1002
13	Charles Young	24	PSG	1908	75	23	1003
14	Dorothy Martin	21	Manchester United	1915	85	24	1004
15	Joseph Thompson	32	Real Madrid	1925	115	31	1005
16	Betty Anderson	28	FC Barcelona	1930	125	32	1006
17	George White	30	Arsenal	1940	150	35	1007
18	Elizabeth Miller	29	Chelsea	1950	170	39	1008
19	Edward Garcia	19	Juventus	1960	90	28	1009
20	Mary Martinez	22	AC Milan	1970	95	29	1010
21	Richard Robinson	26	PSG	1980	110	31	1001
22	Barbara Scott	24	Manchester United	1990	130	33	1002
23	Thomas Hall	23	Real Madrid	1995	150	35	1003
24	Margaret King	33	FC Barcelona	1999	180	40	1004
25	Josephine Wright	25	Arsenal	1988	95	29	1005
26	Robert Lewis	28	Chelsea	1990	105	31	1006
27	Dorothy Walker	20	Juventus	1994	110	32	1007
28	Pauline Perez	31	AC Milan	1998	120	34	1008
29	Donald Jackson	29	PSG	1993	100	30	1009
30	Betty Young	27	Manchester United	1992	95	29	1010
31	David Allen	26	Real Madrid	1991	90	28	1001
32	Carol Davis	33	FC Barcelona	1997	150	35	1002
33	James Turner	30	Arsenal	1996	120	33	1003
34	Joan Lewis	19	Chelsea	1995	100	30	1004
35	Richard Harris	28	Juventus	1994	135	34	1005
36	Nancy Wright	24	AC Milan	1993	110	31	1006
37	Michael Martinez	31	PSG	1992	125	32	1007
38	Carol Perez	27	Manchester United	1991	95	29	1008
39	William Clark	26	Real Madrid	1990	100	28	1009
40	Shirley White	29	FC Barcelona	1989	130	34	1010
41	Donald King	33	Chelsea	1988	120	33	1001
42	Mary Smith	30	Juventus	1987	115	31	1002
43	Richard Anderson	28	AC Milan	1986	110	30	1003
44	Barbara Garcia	27	PSG	1985	105	29	1004
45	Robert Brown	24	Manchester United	1984	100	28	1005
46	Margaret Harris	31	Real Madrid	1983	130	32	1006
47	James Taylor	29	FC Barcelona	1982	125	31	1007
48	Joseph Wilson	26	Arsenal	1981	120	30	1008
49	Betty Moore	25	Chelsea	1980	115	29	1009
50	David Martin	28	Juventus	1979	110	28	1010
\.


--
-- TOC entry 3363 (class 0 OID 16849)
-- Dependencies: 218
-- Data for Name: nations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.nations (nation_id, nation_name) FROM stdin;
2001	Portugal
2002	Brazil
2003	Argentina
2004	France
2005	Germany
2006	Croatia
2007	Egypt
2008	Spain
2009	England
2010	Austria
\.


--
-- TOC entry 3362 (class 0 OID 16837)
-- Dependencies: 217
-- Data for Name: players; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.players (member_id, "position") FROM stdin;
1	Defender
2	Midfielder
3	Forward
4	Goal Keeper
5	Defender
6	Midfielder
7	Forward
8	Goal Keeper
9	Defender
10	Midfielder
11	Forward
12	Goal Keeper
13	Defender
14	Midfielder
15	Forward
16	Goal Keeper
17	Defender
18	Midfielder
19	Forward
20	Goal Keeper
21	Defender
22	Midfielder
23	Forward
24	Goal Keeper
25	Defender
26	Midfielder
27	Forward
28	Goal Keeper
29	Defender
30	Midfielder
\.


--
-- TOC entry 3364 (class 0 OID 16888)
-- Dependencies: 219
-- Data for Name: playsnation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.playsnation (member_id, nation_id) FROM stdin;
2	2006
5	2003
6	2002
7	2007
10	2009
12	2010
14	2005
15	2001
16	2004
18	2008
20	2007
22	2002
23	2005
25	2003
26	2001
28	2009
29	2006
30	2004
3	2008
9	2003
13	2001
19	2007
\.


--
-- TOC entry 3365 (class 0 OID 16903)
-- Dependencies: 220
-- Data for Name: trophies; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.trophies (trophy_id, trophy_year, trophy_name, organization_name, club_id, nation_id) FROM stdin;
501	2000	La Liga	Esp_La Liga	1001	\N
502	2000	Premier League	FIA	1003	\N
503	2000	Serie A	Ita_Serie A	1005	\N
504	2000	League 1	Fra_League 1	1007	\N
505	2000	Champions League	UEFA	1001	\N
506	2000	World Cup	FIFA	\N	2001
501	2001	La Liga	Esp_La Liga	1002	\N
502	2001	Premier League	FIA	1004	\N
503	2001	Serie A	Ita_Serie A	1006	\N
504	2001	League 1	Fra_League 1	1007	\N
505	2001	Champions League	UEFA	1002	\N
506	2001	World Cup	FIFA	\N	2002
501	2002	La Liga	Esp_La Liga	1001	\N
502	2002	Premier League	FIA	1008	\N
503	2002	Serie A	Ita_Serie A	1005	\N
504	2002	League 1	Fra_League 1	1007	\N
505	2002	Champions League	UEFA	1003	\N
506	2002	World Cup	FIFA	\N	2003
501	2003	La Liga	Esp_La Liga	1002	\N
502	2003	Premier League	FIA	1004	\N
503	2003	Serie A	Ita_Serie A	1006	\N
504	2003	League 1	Fra_League 1	1007	\N
505	2003	Champions League	UEFA	1005	\N
506	2003	World Cup	FIFA	\N	2004
501	2004	La Liga	Esp_La Liga	1001	\N
502	2004	Premier League	FIA	1009	\N
503	2004	Serie A	Ita_Serie A	1005	\N
504	2004	League 1	Fra_League 1	1007	\N
505	2004	Champions League	UEFA	1006	\N
506	2004	World Cup	FIFA	\N	2005
501	2005	La Liga	Esp_La Liga	1002	\N
502	2005	Premier League	FIA	1010	\N
503	2005	Serie A	Ita_Serie A	1006	\N
504	2005	League 1	Fra_League 1	1007	\N
505	2005	Champions League	UEFA	1007	\N
506	2005	World Cup	FIFA	\N	2006
\.


--
-- TOC entry 3197 (class 2606 OID 16799)
-- Name: footballclub footballclub_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.footballclub
    ADD CONSTRAINT footballclub_pkey PRIMARY KEY (club_id);


--
-- TOC entry 3201 (class 2606 OID 16830)
-- Name: managers managers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.managers
    ADD CONSTRAINT managers_pkey PRIMARY KEY (member_id);


--
-- TOC entry 3199 (class 2606 OID 16806)
-- Name: members members_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.members
    ADD CONSTRAINT members_pkey PRIMARY KEY (member_id);


--
-- TOC entry 3205 (class 2606 OID 16855)
-- Name: nations nations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nations
    ADD CONSTRAINT nations_pkey PRIMARY KEY (nation_id);


--
-- TOC entry 3203 (class 2606 OID 16843)
-- Name: players players_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT players_pkey PRIMARY KEY (member_id);


--
-- TOC entry 3207 (class 2606 OID 16892)
-- Name: playsnation playsnation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.playsnation
    ADD CONSTRAINT playsnation_pkey PRIMARY KEY (member_id);


--
-- TOC entry 3209 (class 2606 OID 16909)
-- Name: trophies trophies_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trophies
    ADD CONSTRAINT trophies_pkey PRIMARY KEY (trophy_id, trophy_year);


--
-- TOC entry 3211 (class 2606 OID 16831)
-- Name: managers managers_member_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.managers
    ADD CONSTRAINT managers_member_id_fkey FOREIGN KEY (member_id) REFERENCES public.members(member_id);


--
-- TOC entry 3210 (class 2606 OID 16807)
-- Name: members members_club_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.members
    ADD CONSTRAINT members_club_id_fkey FOREIGN KEY (club_id) REFERENCES public.footballclub(club_id) ON DELETE CASCADE;


--
-- TOC entry 3212 (class 2606 OID 16844)
-- Name: players players_member_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT players_member_id_fkey FOREIGN KEY (member_id) REFERENCES public.members(member_id);


--
-- TOC entry 3213 (class 2606 OID 16893)
-- Name: playsnation playsnation_member_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.playsnation
    ADD CONSTRAINT playsnation_member_id_fkey FOREIGN KEY (member_id) REFERENCES public.members(member_id);


--
-- TOC entry 3214 (class 2606 OID 16898)
-- Name: playsnation playsnation_nation_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.playsnation
    ADD CONSTRAINT playsnation_nation_id_fkey FOREIGN KEY (nation_id) REFERENCES public.nations(nation_id) ON DELETE CASCADE;


--
-- TOC entry 3215 (class 2606 OID 16910)
-- Name: trophies trophies_club_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trophies
    ADD CONSTRAINT trophies_club_id_fkey FOREIGN KEY (club_id) REFERENCES public.footballclub(club_id) ON DELETE CASCADE;


--
-- TOC entry 3216 (class 2606 OID 16915)
-- Name: trophies trophies_nation_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trophies
    ADD CONSTRAINT trophies_nation_id_fkey FOREIGN KEY (nation_id) REFERENCES public.nations(nation_id) ON DELETE CASCADE;


-- Completed on 2023-12-04 20:36:54

--
-- PostgreSQL database dump complete
--

