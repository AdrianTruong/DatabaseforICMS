--
-- PostgreSQL database dump
--

-- Dumped from database version 15.7
-- Dumped by pg_dump version 16.3

-- Started on 2024-05-21 22:28:44

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'WIN1252';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 6 (class 2615 OID 16384)
-- Name: Claims; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA "Claims";


ALTER SCHEMA "Claims" OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 218 (class 1259 OID 40960)
-- Name: Accounts; Type: TABLE; Schema: Claims; Owner: postgres
--

CREATE TABLE "Claims"."Accounts" (
    "Accounts" character varying(255),
    "Passwords" character varying(255),
    "Role" text
);


ALTER TABLE "Claims"."Accounts" OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 40965)
-- Name: Claims; Type: TABLE; Schema: Claims; Owner: postgres
--

CREATE TABLE "Claims"."Claims" (
    "Claim ID" character varying(10) NOT NULL,
    "Claim Date" date,
    "Insured Person" text,
    "Cars Number" character varying(10),
    "Exam Date" date,
    "Documents" character varying(255),
    "Claim Amount" numeric(10,2),
    "Claim Status" text,
    "Receiver Banking Info" character varying(255),
    "Insured Person ID" character varying(10)
);


ALTER TABLE "Claims"."Claims" OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 40972)
-- Name: Customers; Type: TABLE; Schema: Claims; Owner: postgres
--

CREATE TABLE "Claims"."Customers" (
    "Customer ID" character varying(10) NOT NULL,
    "Customer Name" text,
    "Insurance Number" character varying(10),
    "Insurance Card Holder" text,
    "Policy Owner" text,
    "Insurance Expiration Date" date,
    "Family ID" character varying(10),
    "Phone Number" character varying(10),
    "Address" character varying(255),
    "Email" character varying(255)
);


ALTER TABLE "Claims"."Customers" OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 24607)
-- Name: Insurance Card; Type: TABLE; Schema: Claims; Owner: postgres
--

CREATE TABLE "Claims"."Insurance Card" (
    "cardNumber" character varying(10) NOT NULL,
    "cardHolder" text,
    "policyOwner" text,
    "expirationDate" date
);


ALTER TABLE "Claims"."Insurance Card" OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 24576)
-- Name: claims; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.claims (
    id character varying(10) NOT NULL,
    claimdate date,
    insuredperson character varying(255),
    cardnumber character varying(10),
    examdate date,
    documents text,
    claimamount numeric(10,2),
    status character varying(20),
    receiverbankinginfo character varying(255)
);


ALTER TABLE public.claims OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 24586)
-- Name: claims2; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.claims2 (
    id character varying(10) NOT NULL,
    claimdate date,
    insuredperson character varying(255),
    cardnumber character varying(10),
    examdate date,
    documents text,
    claimamount numeric(10,2),
    status character varying(20),
    receiverbankinginfo character varying(255)
);


ALTER TABLE public.claims2 OWNER TO postgres;

--
-- TOC entry 3348 (class 0 OID 40960)
-- Dependencies: 218
-- Data for Name: Accounts; Type: TABLE DATA; Schema: Claims; Owner: postgres
--

COPY "Claims"."Accounts" ("Accounts", "Passwords", "Role") FROM stdin;
admin	nopassword	admin
c1234567	032032032	policy holder
c2345678	292929292	policy owner
c3456789	1212	dependent
c4567890	20202020	dependent
c5678901	12121212	policy holder
c6789012	202020	policy owner
c7890123	abc	dependent
c8901234	adasdad	dependent
c9012345	adasdad	dependent
c0123456	adasdad	dependent
c1234567	12121212	policy holder
c2345678	292929292	policy owner
c3456789	adasdad	dependent
c4567890	adasdad	dependent
c5678901	032032032	policy holder
c1212121	292929292	policy owner
c6789012	032032032	policy holder
c7890123	292929292	policy owner
c8901234	adasdad	dependent
c9012345	adasdad	dependent
c0123436	032032032	policy holder
c1234567	292929292	policy owner
c2345678	032032032	policy holder
c3456789	292929292	policy owner
c4567890	adasdad	dependent
c5678901	adasdad	dependent
c6789012	adasdad	dependent
c7890123	032032032	policy holder
c8901234	292929292	policy owner
c9012345	adasdad	dependent
\.


--
-- TOC entry 3349 (class 0 OID 40965)
-- Dependencies: 219
-- Data for Name: Claims; Type: TABLE DATA; Schema: Claims; Owner: postgres
--

COPY "Claims"."Claims" ("Claim ID", "Claim Date", "Insured Person", "Cars Number", "Exam Date", "Documents", "Claim Amount", "Claim Status", "Receiver Banking Info", "Insured Person ID") FROM stdin;
f123456789	2024-04-01	John Doe	1234567890	2024-04-07	document1.pdf;document2.pdf	1000.00	New	BankA-ReceiverNameA-123456	c1234567
f234567890	2024-04-02	Jane Smith	2345678901	2024-04-08	document3.pdf	1500.00	Processing	BankB-ReceiverNameB-234567	c2345678
f345678901	2024-04-03	Alice Johnson	3456789012	2024-04-09	document4.pdf;document5.pdf	2000.00	Done	BankC-ReceiverNameC-345678	c3456789
f456789012	2024-04-04	Bob Williams	4567890123	2024-04-10	document6.pdf	2500.00	New	BankD-ReceiverNameD-456789	c4567890
f567890123	2024-04-05	Emily Davis	5678901234	2024-04-11	document7.pdf;document8.pdf	3000.00	Processing	BankE-ReceiverNameE-567890	c5678901
f678901234	2024-04-06	Michael Wilson	6789012345	2024-04-12	document9.pdf	3500.00	Done	BankF-ReceiverNameF-678901	c6789012
f789012345	2024-04-07	Sophia Brown	7890123456	2024-04-13	document10.pdf;document11.pdf	4000.00	New	BankG-ReceiverNameG-789012	c7890123
f890123456	2024-04-08	William Miller	8901234567	2024-04-14	document12.pdf	4500.00	Processing	BankH-ReceiverNameH-890123	c8901234
f901234567	2024-04-09	Olivia Garcia	9012345678	2024-04-15	document13.pdf;document14.pdf	5000.00	Done	BankI-ReceiverNameI-901234	c9012345
f012345678	2024-04-10	Liam Martinez	0123456789	2024-04-16	document15.pdf	5500.00	New	BankJ-ReceiverNameJ-012345	c0123456
f113456789	2024-04-11	Isabella Robinson	1234567890	2024-04-17	document16.pdf;document17.pdf	6000.00	Processing	BankK-ReceiverNameK-123456	c1234567
f224567890	2024-04-12	Ethan Clark	2345678901	2024-04-18	document18.pdf	6500.00	Done	BankL-ReceiverNameL-234567	c2345678
f335678901	2024-04-13	Amelia Rodriguez	3456789012	2024-04-19	document19.pdf;document20.pdf	7000.00	New	BankM-ReceiverNameM-345678	c3456789
f446789012	2024-04-14	Mason Lee	4567890123	2024-04-20	document21.pdf	7500.00	Processing	BankN-ReceiverNameN-456789	c4567890
f557890123	2024-04-15	Sofia Hernandez	5678901234	2024-04-21	document22.pdf;document23.pdf	8000.00	Done	BankO-ReceiverNameO-567890	c5678901
f162456789	2024-04-01	John Doe	1234567890	2024-02-01	document1.pdf;document2.pdf	1000.00	New	BankA-ReceiverNameA-232232323	c1234567
\.


--
-- TOC entry 3350 (class 0 OID 40972)
-- Dependencies: 220
-- Data for Name: Customers; Type: TABLE DATA; Schema: Claims; Owner: postgres
--

COPY "Claims"."Customers" ("Customer ID", "Customer Name", "Insurance Number", "Insurance Card Holder", "Policy Owner", "Insurance Expiration Date", "Family ID", "Phone Number", "Address", "Email") FROM stdin;
c1234567	John Doe	1234567890	John Doe	jane Smith	2024-01-01	n001	0985376219	27 Nguyen Trai.Phuong 3.Quan 5.Thanh pho Ho Chi Minh	JohnDoe@example.com
c2345678	Jane Smith	2345678901	John Doe	Jane Smith	2024-01-01	n001	0349857612	27 Nguyen Trai.Phuong 3.Quan 5.Thanh pho Ho Chi Minh	JaneSmith@example.com
c3456789	Alice Johnson	345678902	John Doe	Jane Smith	2024-03-01	n001	0968104735	27 Nguyen Trai.Phuong 3.Quan 5.Thanh pho Ho Chi Minh	AliceJohnson@example.com
c4567890	Bob Williams	4567890123	John Doe	Jane Smith	2024-04-01	n001	0792519846	27 Nguyen Trai.Phuong 3.Quan 5.Thanh pho Ho Chi Minh	BobWilliams@example.com
c5678901	Emily Davis	5678901234	Emily Davis	Michael Wilson	2024-05-01	002	0375261970	164 Tran Phu.Phuong Binh Thuan.Quan Hai Chau.Da Nang	EmilyDavis@example.com
c6789012	Michael Wilson	6789012345	Emily Davis	Michael Wilson	2024-05-01	n002	0703487152	164 Tran Phu.Phuong Binh Thuan.Quan Hai Chau.Da Nang	MichaelWilson@example.com
c7890123	Sophia Brown	7890123456	Emily Davis	Michael Wilson	2024-05-01	n002	0916829364	164 Tran Phu.Phuong Binh Thuan.Quan Hai Chau.Da Nang	MichaelWilson@example.com
c8901234	William Miller	8901234567	Emily Davis	Michael Wilson	2024-05-01	n002	0778645291	164 Tran Phu.Phuong Binh Thuan.Quan Hai Chau.Da Nang	WilliamMiller@example.com
c9012345	Olivia Garcia	9012345678	Emily Davis	Michael Wilson	2024-05-01	n002	0356172608	164 Tran Phu.Phuong Binh Thuan.Quan Hai Chau.Da Nang	WilliamMiller@example.com
c0123456	Liam Martinez	0123456789	Emily Davis	Michael Wilson	2024-05-01	n002	0945783420	164 Tran Phu.Phuong Binh Thuan.Quan Hai Chau.Da Nang	LiamMartinez@example.com
c1234566	Isabella Robinson	1234567890	Isabella Robinson	Ethan Clark	2024-11-01	n003	0389296751	89 Le Loi.Phuong Ben Nghe.Quan 1.Thanh pho Ho Chi Minh	IsabellaRobinson@example.com
c2345677	Ethan Clark	2345678901	Isabella Robinson	Ethan Clark	2024-12-01	n003	0765418963	89 Le Loi.Phuong Ben Nghe.Quan 1.Thanh pho Ho Chi Minh	EthanClark@example.com
c3456788	Amelia Rodriguez	3456789012	Isabella Robinson	Ethan Clark	2025-01-01	003	0902635174	89 Le Loi.Phuong Ben Nghe.Quan 1.Thanh pho Ho Chi Minh	AmeliaRodriguez@example.com
c4567899	Mason Lee	4567890123	Isabella Robinson	Ethan Clark	2025-02-01	n003	0337879206	89 Le Loi.Phuong Ben Nghe.Quan 1.Thanh pho Ho Chi Minh	MasonLee@example.com
c5678906	Sofia Hernandez	5678901234	Sofia Hernandez	hugo alo	2025-03-01	n004	0724591487	23 Nguyen Van Linh.Phuong Hung Dung.Quan Vinh.Nghe An	SofiaHernandez@example.com
c1212125	Hugo Alo	1010101010	Sofia Hernandez	Hugo Alo	2006-03-01	n004	0983742619	23 Nguyen Van Linh.Phuong Hung Dung.Quan Vinh.Nghe An	HugoAlo@example.com
c6789015	Emma Garcia	6789012345	Emma Garcia	Daniel Ramirez	2024-06-01	n005	0348165930	105 Ly Thuong Kiet.Phuong Tan Thanh.Quan Tan Phu.Thanh pho Ho Chi Minh	EmmaGarcia@example.com
c7890129	Daniel Ramirez	7890123456	Emma Garcia	Daniel Ramirez	2024-07-01	n005	0796273481	105 Ly Thuong Kiet.Phuong Tan Thanh.Quan Tan Phu.Thanh pho Ho Chi Minh	DanielRamirez@example.com
c8901237	Ava Gonzalez	8901234567	Emma Garcia	Daniel Ramirez	2024-07-01	n005	0915684752	105 Ly Thuong Kiet.Phuong Tan Thanh.Quan Tan Phu.Thanh pho Ho Chi Minh	AvaGonzalez@example.com
c9012347	Jacob Torres	9012345678	Emma Garcia	Daniel Ramirez	2024-07-01	n005	0373897245	105 Ly Thuong Kiet.Phuong Tan Thanh.Quan Tan Phu.Thanh pho Ho Chi Minh	JacobTorres@example.com
c0123536	Mia Perez	0123456789	Mia Perez	Matthew Flores	2024-10-01	n006	0788561930	47 Tran Hung Dao.Phuong Phu Nhuan.Quan Hue.Thua Thien Hue	MiaPerez@example.com
c1234667	Matthew Flores	1234567890	Mia Perez	Matthew Flores	2024-11-01	n006	0949273618	47 Tran Hung Dao.Phuong Phu Nhuan.Quan Hue.Thua Thien Hue	MatthewFlores@example.com
c2345978	Abigail Sanchez	2345678901	Abigail Sanchez	Alexander Rivera	2024-12-01	n007	0358784691	119 Ham Nghi.Phuong Ben Nghe.Quan 1.Thanh pho Ho Chi Minh	AbigailSanchez@example.com
c3456689	Alexander Rivera	3456789012	Abigail Sanchez	Alexander Rivera	2025-01-01	n007	0703925476	119 Ham Nghi.Phuong Ben Nghe.Quan 1.Thanh pho Ho Chi Minh	AlexanderRivera@example.com
c4561890	Sophia Gutierrez	4567890123	Abigail Sanchez	Alexander Rivera	2024-12-01	n007	0978361852	119 Ham Nghi.Phuong Ben Nghe.Quan 1.Thanh pho Ho Chi Minh	SophiaGutierrez@example.com
c5680901	Benjamin Jimenez	5678901234	Abigail Sanchez	Alexander Rivera	2024-12-01	n007	0345697123	119 Ham Nghi.Phuong Ben Nghe.Quan 1.Thanh pho Ho Chi Minh	BenjaminJimenez@example.com
c6789092	Isabella Castillo	6789012345	Abigail Sanchez	Alexander Rivera	2024-12-01	n007	0916258749	119 Ham Nghi.Phuong Ben Nghe.Quan 1.Thanh pho Ho Chi Minh	IsabellaCastillo@example.com
c7890523	Samuel Morales	7890123456	Samuel Morales	Michael Gomez	2025-05-01	n008	0777483196	32 Tran Phu.Phuong Hai Chau 1.Quan Hai Chau.Da Nang	SamuelMorales@example.com
c8901934	Michael Gomez	8901234567	Samuel Morales	Michael Gomez	2025-05-01	n008	0383671905	32 Tran Phu.Phuong Hai Chau 1.Quan Hai Chau.Da Nang	MichaelGomez@example.com
c9612345	Victoria Reyes	9012345678	Samuel Morales	Michael Gomez	2025-05-01	n008	0705924368	32 Tran Phu.Phuong Hai Chau 1.Quan Hai Chau.Da Nang	VictoriaReyes@example.com
\.


--
-- TOC entry 3347 (class 0 OID 24607)
-- Dependencies: 217
-- Data for Name: Insurance Card; Type: TABLE DATA; Schema: Claims; Owner: postgres
--

COPY "Claims"."Insurance Card" ("cardNumber", "cardHolder", "policyOwner", "expirationDate") FROM stdin;
1234567890	John Doe	jane Smith	2024-01-01
5678901234	Emily Davis	Michael Wilson	2024-05-01
1234567880	Isabella Robinson	Ethan Clark	2024-11-01
5678901264	Sofia Hernandez	hugo alo	2025-03-01
6789012345	Emma Garcia	Daniel Ramirez	2024-06-01
0123456789	Mia Perez	Matthew Flores	2024-10-01
2345678901	Abigail Sanchez	Alexander Rivera	2024-12-01
7890123456	Samuel Morales	Michael Gomez	2025-05-01
\.


--
-- TOC entry 3345 (class 0 OID 24576)
-- Dependencies: 215
-- Data for Name: claims; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.claims (id, claimdate, insuredperson, cardnumber, examdate, documents, claimamount, status, receiverbankinginfo) FROM stdin;
\.


--
-- TOC entry 3346 (class 0 OID 24586)
-- Dependencies: 216
-- Data for Name: claims2; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.claims2 (id, claimdate, insuredperson, cardnumber, examdate, documents, claimamount, status, receiverbankinginfo) FROM stdin;
\.


--
-- TOC entry 3200 (class 2606 OID 40971)
-- Name: Claims Claims_pkey; Type: CONSTRAINT; Schema: Claims; Owner: postgres
--

ALTER TABLE ONLY "Claims"."Claims"
    ADD CONSTRAINT "Claims_pkey" PRIMARY KEY ("Claim ID");


--
-- TOC entry 3202 (class 2606 OID 40978)
-- Name: Customers Customers_pkey; Type: CONSTRAINT; Schema: Claims; Owner: postgres
--

ALTER TABLE ONLY "Claims"."Customers"
    ADD CONSTRAINT "Customers_pkey" PRIMARY KEY ("Customer ID");


--
-- TOC entry 3198 (class 2606 OID 24613)
-- Name: Insurance Card Insurance Card_pkey; Type: CONSTRAINT; Schema: Claims; Owner: postgres
--

ALTER TABLE ONLY "Claims"."Insurance Card"
    ADD CONSTRAINT "Insurance Card_pkey" PRIMARY KEY ("cardNumber");


--
-- TOC entry 3196 (class 2606 OID 24592)
-- Name: claims2 claims2_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.claims2
    ADD CONSTRAINT claims2_pkey PRIMARY KEY (id);


--
-- TOC entry 3194 (class 2606 OID 24582)
-- Name: claims claims_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.claims
    ADD CONSTRAINT claims_pkey PRIMARY KEY (id);


-- Completed on 2024-05-21 22:28:45

--
-- PostgreSQL database dump complete
--

