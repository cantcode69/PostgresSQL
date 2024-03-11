--
-- PostgreSQL database dump
--

-- Dumped from database version 15.6 (Ubuntu 15.6-1.pgdg22.04+1)
-- Dumped by pg_dump version 16.2 (Ubuntu 16.2-1.pgdg22.04+1)

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
-- Name: pokemon; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pokemon (
    pokemon_id integer NOT NULL,
    name character varying(255),
    type_1 character varying(50),
    type_2 character varying(30),
    total_count integer,
    health_points integer,
    attack integer,
    defense integer,
    sp_attack integer,
    sp_defense integer,
    speed integer,
    evolution integer,
    legendary character varying(10)
);


ALTER TABLE public.pokemon OWNER TO postgres;

--
-- Name: pokemon_pokemon_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pokemon_pokemon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pokemon_pokemon_id_seq OWNER TO postgres;

--
-- Name: pokemon_pokemon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pokemon_pokemon_id_seq OWNED BY public.pokemon.pokemon_id;


--
-- Name: pokemon pokemon_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pokemon ALTER COLUMN pokemon_id SET DEFAULT nextval('public.pokemon_pokemon_id_seq'::regclass);


--
-- Data for Name: pokemon; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pokemon (pokemon_id, name, type_1, type_2, total_count, health_points, attack, defense, sp_attack, sp_defense, speed, evolution, legendary) FROM stdin;
1	Ivysaur	Grass	Poison	405	60	62	63	80	80	60	1	FALSE
2	VenusaurMega Venusaur	Grass	Poison	625	80	100	123	122	120	80	1	FALSE
3	Venusaur	Grass	Poison	525	80	82	83	100	100	80	1	FALSE
4	Charmander	Fire		309	39	52	43	60	50	65	1	FALSE
5	Charmeleon	Fire		405	58	64	58	80	65	80	1	FALSE
6	CharizardMega Charizard Y	Fire	Flying	634	78	104	78	159	115	100	1	FALSE
7	CharizardMega Charizard X	Fire	Dragon	634	78	130	111	130	85	100	1	FALSE
8	Charizard	Fire	Flying	534	78	84	78	109	85	100	1	FALSE
9	Squirtle	Water		314	44	48	65	50	64	43	1	FALSE
10	Wartortle	Water		405	59	63	80	65	80	58	1	FALSE
11	BlastoiseMega Blastoise	Water		630	79	103	120	135	115	78	1	FALSE
12	Blastoise	Water		530	79	83	100	85	105	78	1	FALSE
13	Caterpie	Bug		195	45	30	35	20	20	45	1	FALSE
14	Metapod	Bug		205	50	20	55	25	25	30	1	FALSE
15	Butterfree	Bug	Flying	395	60	45	50	90	80	70	1	FALSE
16	Weedle	Bug	Poison	195	40	35	30	20	20	50	1	FALSE
17	Kakuna	Bug	Poison	205	45	25	50	25	25	35	1	FALSE
18	BeedrillMega Beedrill	Bug	Poison	495	65	150	40	15	80	145	1	FALSE
19	Beedrill	Bug	Poison	395	65	90	40	45	80	75	1	FALSE
20	Pidgey	Normal	Flying	251	40	45	40	35	35	56	1	FALSE
21	Pidgeotto	Normal	Flying	349	63	60	55	50	50	71	1	FALSE
22	PidgeotMega Pidgeot	Normal	Flying	579	83	80	80	135	80	121	1	FALSE
23	Pidgeot	Normal	Flying	479	83	80	75	70	70	101	1	FALSE
24	Rattata	Normal		253	30	56	35	25	35	72	1	FALSE
25	Raticate	Normal		413	55	81	60	50	70	97	1	FALSE
26	Spearow	Normal	Flying	262	40	60	30	31	31	70	1	FALSE
27	Fearow	Normal	Flying	442	65	90	65	61	61	100	1	FALSE
28	Ekans	Poison		288	35	60	44	40	54	55	1	FALSE
29	Arbok	Poison		438	60	85	69	65	79	80	1	FALSE
30	Pikachu	Electric		320	35	55	40	50	50	90	1	FALSE
31	Raichu	Electric		485	60	90	55	90	80	110	1	FALSE
32	Sandshrew	Ground		300	50	75	85	20	30	40	1	FALSE
33	Sandslash	Ground		450	75	100	110	45	55	65	1	FALSE
34	Nidoran♀	Poison		275	55	47	52	40	40	41	1	FALSE
35	Nidorina	Poison		365	70	62	67	55	55	56	1	FALSE
36	Nidoqueen	Poison	Ground	505	90	92	87	75	85	76	1	FALSE
37	Nidoran♂	Poison		273	46	57	40	40	40	50	1	FALSE
38	Nidorino	Poison		365	61	72	57	55	55	65	1	FALSE
39	Nidoking	Poison	Ground	505	81	102	77	85	75	85	1	FALSE
40	Clefairy	Fairy		323	70	45	48	60	65	35	1	FALSE
41	Clefable	Fairy		483	95	70	73	95	90	60	1	FALSE
42	Vulpix	Fire		299	38	41	40	50	65	65	1	FALSE
43	Ninetales	Fire		505	73	76	75	81	100	100	1	FALSE
44	Jigglypuff	Normal	Fairy	270	115	45	20	45	25	20	1	FALSE
45	Wigglytuff	Normal	Fairy	435	140	70	45	85	50	45	1	FALSE
46	Zubat	Poison	Flying	245	40	45	35	30	40	55	1	FALSE
47	Golbat	Poison	Flying	455	75	80	70	65	75	90	1	FALSE
48	Oddish	Grass	Poison	320	45	50	55	75	65	30	1	FALSE
49	Gloom	Grass	Poison	395	60	65	70	85	75	40	1	FALSE
50	Vileplume	Grass	Poison	490	75	80	85	110	90	50	1	FALSE
51	Paras	Bug	Grass	285	35	70	55	45	55	25	1	FALSE
52	Parasect	Bug	Grass	405	60	95	80	60	80	30	1	FALSE
53	Venonat	Bug	Poison	305	60	55	50	40	55	45	1	FALSE
54	Venomoth	Bug	Poison	450	70	65	60	90	75	90	1	FALSE
55	Diglett	Ground		265	10	55	25	35	45	95	1	FALSE
56	Dugtrio	Ground		405	35	80	50	50	70	120	1	FALSE
57	Meowth	Normal		290	40	45	35	40	40	90	1	FALSE
58	Persian	Normal		440	65	70	60	65	65	115	1	FALSE
59	Psyduck	Water		320	50	52	48	65	50	55	1	FALSE
60	Golduck	Water		500	80	82	78	95	80	85	1	FALSE
61	Mankey	Fighting		305	40	80	35	35	45	70	1	FALSE
62	Primeape	Fighting		455	65	105	60	60	70	95	1	FALSE
63	Growlithe	Fire		350	55	70	45	70	50	60	1	FALSE
64	Arcanine	Fire		555	90	110	80	100	80	95	1	FALSE
65	Poliwag	Water		300	40	50	40	40	40	90	1	FALSE
66	Poliwhirl	Water		385	65	65	65	50	50	90	1	FALSE
67	Poliwrath	Water	Fighting	510	90	95	95	70	90	70	1	FALSE
68	Abra	Psychic		310	25	20	15	105	55	90	1	FALSE
69	Kadabra	Psychic		400	40	35	30	120	70	105	1	FALSE
70	AlakazamMega Alakazam	Psychic		590	55	50	65	175	95	150	1	FALSE
71	Alakazam	Psychic		500	55	50	45	135	95	120	1	FALSE
72	Machop	Fighting		305	70	80	50	35	35	35	1	FALSE
73	Machoke	Fighting		405	80	100	70	50	60	45	1	FALSE
74	Machamp	Fighting		505	90	130	80	65	85	55	1	FALSE
75	Bellsprout	Grass	Poison	300	50	75	35	70	30	40	1	FALSE
76	Weepinbell	Grass	Poison	390	65	90	50	85	45	55	1	FALSE
77	Victreebel	Grass	Poison	490	80	105	65	100	70	70	1	FALSE
78	Tentacool	Water	Poison	335	40	40	35	50	100	70	1	FALSE
79	Tentacruel	Water	Poison	515	80	70	65	80	120	100	1	FALSE
80	Geodude	Rock	Ground	300	40	80	100	30	30	20	1	FALSE
81	Graveler	Rock	Ground	390	55	95	115	45	45	35	1	FALSE
82	Golem	Rock	Ground	495	80	120	130	55	65	45	1	FALSE
83	Ponyta	Fire		410	50	85	55	65	65	90	1	FALSE
84	Rapidash	Fire		500	65	100	70	80	80	105	1	FALSE
85	Slowpoke	Water	Psychic	315	90	65	65	40	40	15	1	FALSE
86	SlowbroMega Slowbro	Water	Psychic	590	95	75	180	130	80	30	1	FALSE
87	Slowbro	Water	Psychic	490	95	75	110	100	80	30	1	FALSE
88	Magnemite	Electric	Steel	325	25	35	70	95	55	45	1	FALSE
89	Magneton	Electric	Steel	465	50	60	95	120	70	70	1	FALSE
90	Farfetch	Normal	Flying	352	52	65	55	58	62	60	1	FALSE
91	Doduo	Normal	Flying	310	35	85	45	35	35	75	1	FALSE
92	Dodrio	Normal	Flying	460	60	110	70	60	60	100	1	FALSE
93	Seel	Water		325	65	45	55	45	70	45	1	FALSE
94	Dewgong	Water	Ice	475	90	70	80	70	95	70	1	FALSE
95	Grimer	Poison		325	80	80	50	40	50	25	1	FALSE
96	Muk	Poison		500	105	105	75	65	100	50	1	FALSE
97	Shellder	Water		305	30	65	100	45	25	40	1	FALSE
98	Cloyster	Water	Ice	525	50	95	180	85	45	70	1	FALSE
99	Gastly	Ghost	Poison	310	30	35	30	100	35	80	1	FALSE
100	Haunter	Ghost	Poison	405	45	50	45	115	55	95	1	FALSE
101	GengarMega Gengar	Ghost	Poison	600	60	65	80	170	95	130	1	FALSE
102	Gengar	Ghost	Poison	500	60	65	60	130	75	110	1	FALSE
103	Onix	Rock	Ground	385	35	45	160	30	45	70	1	FALSE
104	Drowzee	Psychic		328	60	48	45	43	90	42	1	FALSE
105	Hypno	Psychic		483	85	73	70	73	115	67	1	FALSE
106	Krabby	Water		325	30	105	90	25	25	50	1	FALSE
107	Kingler	Water		475	55	130	115	50	50	75	1	FALSE
108	Voltorb	Electric		330	40	30	50	55	55	100	1	FALSE
109	Electrode	Electric		480	60	50	70	80	80	140	1	FALSE
110	Exeggcute	Grass	Psychic	325	60	40	80	60	45	40	1	FALSE
111	Exeggutor	Grass	Psychic	520	95	95	85	125	65	55	1	FALSE
112	Cubone	Ground		320	50	50	95	40	50	35	1	FALSE
113	Marowak	Ground		425	60	80	110	50	80	45	1	FALSE
114	Hitmonlee	Fighting		455	50	120	53	35	110	87	1	FALSE
115	Hitmonchan	Fighting		455	50	105	79	35	110	76	1	FALSE
116	Lickitung	Normal		385	90	55	75	60	75	30	1	FALSE
117	Koffing	Poison		340	40	65	95	60	45	35	1	FALSE
118	Weezing	Poison		490	65	90	120	85	70	60	1	FALSE
119	Rhyhorn	Ground	Rock	345	80	85	95	30	30	25	1	FALSE
120	Rhydon	Ground	Rock	485	105	130	120	45	45	40	1	FALSE
121	Chansey	Normal		450	250	5	5	35	105	50	1	FALSE
122	Tangela	Grass		435	65	55	115	100	40	60	1	FALSE
123	KangaskhanMega Kangaskhan	Normal		590	105	125	100	60	100	100	1	FALSE
124	Kangaskhan	Normal		490	105	95	80	40	80	90	1	FALSE
125	Horsea	Water		295	30	40	70	70	25	60	1	FALSE
126	Seadra	Water		440	55	65	95	95	45	85	1	FALSE
127	Goldeen	Water		320	45	67	60	35	50	63	1	FALSE
128	Seaking	Water		450	80	92	65	65	80	68	1	FALSE
129	Staryu	Water		340	30	45	55	70	55	85	1	FALSE
130	Starmie	Water	Psychic	520	60	75	85	100	85	115	1	FALSE
131	Mr. Mime	Psychic	Fairy	460	40	45	65	100	120	90	1	FALSE
132	Scyther	Bug	Flying	500	70	110	80	55	80	105	1	FALSE
133	Jynx	Ice	Psychic	455	65	50	35	115	95	95	1	FALSE
134	Electabuzz	Electric		490	65	83	57	95	85	105	1	FALSE
135	Magmar	Fire		495	65	95	57	100	85	93	1	FALSE
136	PinsirMega Pinsir	Bug	Flying	600	65	155	120	65	90	105	1	FALSE
137	Pinsir	Bug		500	65	125	100	55	70	85	1	FALSE
138	Tauros	Normal		490	75	100	95	40	70	110	1	FALSE
139	Magikarp	Water		200	20	10	55	15	20	80	1	FALSE
140	GyaradosMega Gyarados	Water	Dark	640	95	155	109	70	130	81	1	FALSE
141	Gyarados	Water	Flying	540	95	125	79	60	100	81	1	FALSE
142	Lapras	Water	Ice	535	130	85	80	85	95	60	1	FALSE
143	Ditto	Normal		288	48	48	48	48	48	48	1	FALSE
144	Eevee	Normal		325	55	55	50	45	65	55	1	FALSE
145	Vaporeon	Water		525	130	65	60	110	95	65	1	FALSE
146	Jolteon	Electric		525	65	65	60	110	95	130	1	FALSE
147	Flareon	Fire		525	65	130	60	95	110	65	1	FALSE
148	Porygon	Normal		395	65	60	70	85	75	40	1	FALSE
149	Omanyte	Rock	Water	355	35	40	100	90	55	35	1	FALSE
150	Omastar	Rock	Water	495	70	60	125	115	70	55	1	FALSE
151	Kabuto	Rock	Water	355	30	80	90	55	45	55	1	FALSE
152	Kabutops	Rock	Water	495	60	115	105	65	70	80	1	FALSE
153	AerodactylMega Aerodactyl	Rock	Flying	615	80	135	85	70	95	150	1	FALSE
154	Aerodactyl	Rock	Flying	515	80	105	65	60	75	130	1	FALSE
155	Snorlax	Normal		540	160	110	65	65	110	30	1	FALSE
156	Articuno	Ice	Flying	580	90	85	100	95	125	85	1	TRUE
157	Zapdos	Electric	Flying	580	90	90	85	125	90	100	1	TRUE
158	Moltres	Fire	Flying	580	90	100	90	125	85	90	1	TRUE
159	Dratini	Dragon		300	41	64	45	50	50	50	1	FALSE
160	Dragonair	Dragon		420	61	84	65	70	70	70	1	FALSE
161	Dragonite	Dragon	Flying	600	91	134	95	100	100	80	1	FALSE
162	MewtwoMega Mewtwo Y	Psychic		780	106	150	70	194	120	140	1	TRUE
163	MewtwoMega Mewtwo X	Psychic	Fighting	780	106	190	100	154	100	130	1	TRUE
164	Mewtwo	Psychic		680	106	110	90	154	90	130	1	TRUE
165	Mew	Psychic		600	100	100	100	100	100	100	1	FALSE
166	Chikorita	Grass		318	45	49	65	49	65	45	2	FALSE
167	Bayleef	Grass		405	60	62	80	63	80	60	2	FALSE
168	Meganium	Grass		525	80	82	100	83	100	80	2	FALSE
169	Cyndaquil	Fire		309	39	52	43	60	50	65	2	FALSE
170	Quilava	Fire		405	58	64	58	80	65	80	2	FALSE
171	Typhlosion	Fire		534	78	84	78	109	85	100	2	FALSE
172	Totodile	Water		314	50	65	64	44	48	43	2	FALSE
173	Croconaw	Water		405	65	80	80	59	63	58	2	FALSE
174	Feraligatr	Water		530	85	105	100	79	83	78	2	FALSE
175	Sentret	Normal		215	35	46	34	35	45	20	2	FALSE
176	Furret	Normal		415	85	76	64	45	55	90	2	FALSE
177	Hoothoot	Normal	Flying	262	60	30	30	36	56	50	2	FALSE
178	Noctowl	Normal	Flying	442	100	50	50	76	96	70	2	FALSE
179	Ledyba	Bug	Flying	265	40	20	30	40	80	55	2	FALSE
180	Ledian	Bug	Flying	390	55	35	50	55	110	85	2	FALSE
181	Spinarak	Bug	Poison	250	40	60	40	40	40	30	2	FALSE
182	Ariados	Bug	Poison	390	70	90	70	60	60	40	2	FALSE
183	Crobat	Poison	Flying	535	85	90	80	70	80	130	2	FALSE
184	Chinchou	Water	Electric	330	75	38	38	56	56	67	2	FALSE
185	Lanturn	Water	Electric	460	125	58	58	76	76	67	2	FALSE
186	Pichu	Electric		205	20	40	15	35	35	60	2	FALSE
187	Cleffa	Fairy		218	50	25	28	45	55	15	2	FALSE
188	Igglybuff	Normal	Fairy	210	90	30	15	40	20	15	2	FALSE
189	Togepi	Fairy		245	35	20	65	40	65	20	2	FALSE
190	Togetic	Fairy	Flying	405	55	40	85	80	105	40	2	FALSE
191	Natu	Psychic	Flying	320	40	50	45	70	45	70	2	FALSE
192	Xatu	Psychic	Flying	470	65	75	70	95	70	95	2	FALSE
193	Mareep	Electric		280	55	40	40	65	45	35	2	FALSE
194	Flaaffy	Electric		365	70	55	55	80	60	45	2	FALSE
195	AmpharosMega Ampharos	Electric	Dragon	610	90	95	105	165	110	45	2	FALSE
196	Ampharos	Electric		510	90	75	85	115	90	55	2	FALSE
197	Bellossom	Grass		490	75	80	95	90	100	50	2	FALSE
198	Marill	Water	Fairy	250	70	20	50	20	50	40	2	FALSE
199	Azumarill	Water	Fairy	420	100	50	80	60	80	50	2	FALSE
200	Sudowoodo	Rock		410	70	100	115	30	65	30	2	FALSE
201	Politoed	Water		500	90	75	75	90	100	70	2	FALSE
202	Hoppip	Grass	Flying	250	35	35	40	35	55	50	2	FALSE
203	Skiploom	Grass	Flying	340	55	45	50	45	65	80	2	FALSE
204	Jumpluff	Grass	Flying	460	75	55	70	55	95	110	2	FALSE
205	Aipom	Normal		360	55	70	55	40	55	85	2	FALSE
206	Sunkern	Grass		180	30	30	30	30	30	30	2	FALSE
207	Sunflora	Grass		425	75	75	55	105	85	30	2	FALSE
208	Yanma	Bug	Flying	390	65	65	45	75	45	95	2	FALSE
209	Wooper	Water	Ground	210	55	45	45	25	25	15	2	FALSE
210	Quagsire	Water	Ground	430	95	85	85	65	65	35	2	FALSE
211	Espeon	Psychic		525	65	65	60	130	95	110	2	FALSE
212	Umbreon	Dark		525	95	65	110	60	130	65	2	FALSE
213	Murkrow	Dark	Flying	405	60	85	42	85	42	91	2	FALSE
214	Slowking	Water	Psychic	490	95	75	80	100	110	30	2	FALSE
215	Misdreavus	Ghost		435	60	60	60	85	85	85	2	FALSE
216	Unown	Psychic		336	48	72	48	72	48	48	2	FALSE
217	Wobbuffet	Psychic		405	190	33	58	33	58	33	2	FALSE
218	Girafarig	Normal	Psychic	455	70	80	65	90	65	85	2	FALSE
219	Pineco	Bug		290	50	65	90	35	35	15	2	FALSE
220	Forretress	Bug	Steel	465	75	90	140	60	60	40	2	FALSE
221	Dunsparce	Normal		415	100	70	70	65	65	45	2	FALSE
222	Gligar	Ground	Flying	430	65	75	105	35	65	85	2	FALSE
223	SteelixMega Steelix	Steel	Ground	610	75	125	230	55	95	30	2	FALSE
224	Steelix	Steel	Ground	510	75	85	200	55	65	30	2	FALSE
225	Snubbull	Fairy		300	60	80	50	40	40	30	2	FALSE
226	Granbull	Fairy		450	90	120	75	60	60	45	2	FALSE
227	Qwilfish	Water	Poison	430	65	95	75	55	55	85	2	FALSE
228	ScizorMega Scizor	Bug	Steel	600	70	150	140	65	100	75	2	FALSE
229	Scizor	Bug	Steel	500	70	130	100	55	80	65	2	FALSE
230	Shuckle	Bug	Rock	505	20	10	230	10	230	5	2	FALSE
231	HeracrossMega Heracross	Bug	Fighting	600	80	185	115	40	105	75	2	FALSE
232	Heracross	Bug	Fighting	500	80	125	75	40	95	85	2	FALSE
233	Sneasel	Dark	Ice	430	55	95	55	35	75	115	2	FALSE
234	Teddiursa	Normal		330	60	80	50	50	50	40	2	FALSE
235	Ursaring	Normal		500	90	130	75	75	75	55	2	FALSE
236	Slugma	Fire		250	40	40	40	70	40	20	2	FALSE
237	Magcargo	Fire	Rock	410	50	50	120	80	80	30	2	FALSE
238	Swinub	Ice	Ground	250	50	50	40	30	30	50	2	FALSE
239	Piloswine	Ice	Ground	450	100	100	80	60	60	50	2	FALSE
240	Corsola	Water	Rock	380	55	55	85	65	85	35	2	FALSE
241	Remoraid	Water		300	35	65	35	65	35	65	2	FALSE
242	Octillery	Water		480	75	105	75	105	75	45	2	FALSE
243	Delibird	Ice	Flying	330	45	55	45	65	45	75	2	FALSE
244	Mantine	Water	Flying	465	65	40	70	80	140	70	2	FALSE
245	Skarmory	Steel	Flying	465	65	80	140	40	70	70	2	FALSE
246	Houndour	Dark	Fire	330	45	60	30	80	50	65	2	FALSE
247	HoundoomMega Houndoom	Dark	Fire	600	75	90	90	140	90	115	2	FALSE
248	Houndoom	Dark	Fire	500	75	90	50	110	80	95	2	FALSE
249	Kingdra	Water	Dragon	540	75	95	95	95	95	85	2	FALSE
250	Phanpy	Ground		330	90	60	60	40	40	40	2	FALSE
251	Donphan	Ground		500	90	120	120	60	60	50	2	FALSE
252	Porygon2	Normal		515	85	80	90	105	95	60	2	FALSE
253	Stantler	Normal		465	73	95	62	85	65	85	2	FALSE
254	Smeargle	Normal		250	55	20	35	20	45	75	2	FALSE
255	Tyrogue	Fighting		210	35	35	35	35	35	35	2	FALSE
256	Hitmontop	Fighting		455	50	95	95	35	110	70	2	FALSE
257	Smoochum	Ice	Psychic	305	45	30	15	85	65	65	2	FALSE
258	Elekid	Electric		360	45	63	37	65	55	95	2	FALSE
259	Magby	Fire		365	45	75	37	70	55	83	2	FALSE
260	Miltank	Normal		490	95	80	105	40	70	100	2	FALSE
261	Blissey	Normal		540	255	10	10	75	135	55	2	FALSE
262	Raikou	Electric		580	90	85	75	115	100	115	2	TRUE
263	Entei	Fire		580	115	115	85	90	75	100	2	TRUE
264	Suicune	Water		580	100	75	115	90	115	85	2	TRUE
265	Larvitar	Rock	Ground	300	50	64	50	45	50	41	2	FALSE
266	Pupitar	Rock	Ground	410	70	84	70	65	70	51	2	FALSE
267	TyranitarMega Tyranitar	Rock	Dark	700	100	164	150	95	120	71	2	FALSE
268	Tyranitar	Rock	Dark	600	100	134	110	95	100	61	2	FALSE
269	Lugia	Psychic	Flying	680	106	90	130	90	154	110	2	TRUE
270	Ho-oh	Fire	Flying	680	106	130	90	110	154	90	2	TRUE
271	Celebi	Psychic	Grass	600	100	100	100	100	100	100	2	FALSE
272	Treecko	Grass		310	40	45	35	65	55	70	3	FALSE
273	Grovyle	Grass		405	50	65	45	85	65	95	3	FALSE
274	SceptileMega Sceptile	Grass	Dragon	630	70	110	75	145	85	145	3	FALSE
275	Sceptile	Grass		530	70	85	65	105	85	120	3	FALSE
276	Torchic	Fire		310	45	60	40	70	50	45	3	FALSE
277	Combusken	Fire	Fighting	405	60	85	60	85	60	55	3	FALSE
278	BlazikenMega Blaziken	Fire	Fighting	630	80	160	80	130	80	100	3	FALSE
279	Blaziken	Fire	Fighting	530	80	120	70	110	70	80	3	FALSE
280	Mudkip	Water		310	50	70	50	50	50	40	3	FALSE
281	Marshtomp	Water	Ground	405	70	85	70	60	70	50	3	FALSE
282	SwampertMega Swampert	Water	Ground	635	100	150	110	95	110	70	3	FALSE
283	Swampert	Water	Ground	535	100	110	90	85	90	60	3	FALSE
284	Poochyena	Dark		220	35	55	35	30	30	35	3	FALSE
285	Mightyena	Dark		420	70	90	70	60	60	70	3	FALSE
286	Zigzagoon	Normal		240	38	30	41	30	41	60	3	FALSE
287	Linoone	Normal		420	78	70	61	50	61	100	3	FALSE
288	Wurmple	Bug		195	45	45	35	20	30	20	3	FALSE
289	Silcoon	Bug		205	50	35	55	25	25	15	3	FALSE
290	Beautifly	Bug	Flying	395	60	70	50	100	50	65	3	FALSE
291	Cascoon	Bug		205	50	35	55	25	25	15	3	FALSE
292	Dustox	Bug	Poison	385	60	50	70	50	90	65	3	FALSE
293	Lotad	Water	Grass	220	40	30	30	40	50	30	3	FALSE
294	Lombre	Water	Grass	340	60	50	50	60	70	50	3	FALSE
295	Ludicolo	Water	Grass	480	80	70	70	90	100	70	3	FALSE
296	Seedot	Grass		220	40	40	50	30	30	30	3	FALSE
297	Nuzleaf	Grass	Dark	340	70	70	40	60	40	60	3	FALSE
298	Shiftry	Grass	Dark	480	90	100	60	90	60	80	3	FALSE
299	Taillow	Normal	Flying	270	40	55	30	30	30	85	3	FALSE
300	Swellow	Normal	Flying	430	60	85	60	50	50	125	3	FALSE
301	Wingull	Water	Flying	270	40	30	30	55	30	85	3	FALSE
302	Pelipper	Water	Flying	430	60	50	100	85	70	65	3	FALSE
303	Ralts	Psychic	Fairy	198	28	25	25	45	35	40	3	FALSE
304	Kirlia	Psychic	Fairy	278	38	35	35	65	55	50	3	FALSE
305	GardevoirMega Gardevoir	Psychic	Fairy	618	68	85	65	165	135	100	3	FALSE
306	Gardevoir	Psychic	Fairy	518	68	65	65	125	115	80	3	FALSE
307	Surskit	Bug	Water	269	40	30	32	50	52	65	3	FALSE
308	Masquerain	Bug	Flying	414	70	60	62	80	82	60	3	FALSE
309	Shroomish	Grass		295	60	40	60	40	60	35	3	FALSE
310	Breloom	Grass	Fighting	460	60	130	80	60	60	70	3	FALSE
311	Slakoth	Normal		280	60	60	60	35	35	30	3	FALSE
312	Vigoroth	Normal		440	80	80	80	55	55	90	3	FALSE
313	Slaking	Normal		670	150	160	100	95	65	100	3	FALSE
314	Nincada	Bug	Ground	266	31	45	90	30	30	40	3	FALSE
315	Ninjask	Bug	Flying	456	61	90	45	50	50	160	3	FALSE
316	Shedinja	Bug	Ghost	236	1	90	45	30	30	40	3	FALSE
317	Whismur	Normal		240	64	51	23	51	23	28	3	FALSE
318	Loudred	Normal		360	84	71	43	71	43	48	3	FALSE
319	Exploud	Normal		490	104	91	63	91	73	68	3	FALSE
320	Makuhita	Fighting		237	72	60	30	20	30	25	3	FALSE
321	Hariyama	Fighting		474	144	120	60	40	60	50	3	FALSE
322	Azurill	Normal	Fairy	190	50	20	40	20	40	20	3	FALSE
323	Nosepass	Rock		375	30	45	135	45	90	30	3	FALSE
324	Skitty	Normal		260	50	45	45	35	35	50	3	FALSE
325	Delcatty	Normal		380	70	65	65	55	55	70	3	FALSE
326	SableyeMega Sableye	Dark	Ghost	480	50	85	125	85	115	20	3	FALSE
327	Sableye	Dark	Ghost	380	50	75	75	65	65	50	3	FALSE
328	MawileMega Mawile	Steel	Fairy	480	50	105	125	55	95	50	3	FALSE
329	Mawile	Steel	Fairy	380	50	85	85	55	55	50	3	FALSE
330	Aron	Steel	Rock	330	50	70	100	40	40	30	3	FALSE
331	Lairon	Steel	Rock	430	60	90	140	50	50	40	3	FALSE
332	AggronMega Aggron	Steel		630	70	140	230	60	80	50	3	FALSE
333	Aggron	Steel	Rock	530	70	110	180	60	60	50	3	FALSE
334	Meditite	Fighting	Psychic	280	30	40	55	40	55	60	3	FALSE
335	MedichamMega Medicham	Fighting	Psychic	510	60	100	85	80	85	100	3	FALSE
336	Medicham	Fighting	Psychic	410	60	60	75	60	75	80	3	FALSE
337	Electrike	Electric		295	40	45	40	65	40	65	3	FALSE
338	ManectricMega Manectric	Electric		575	70	75	80	135	80	135	3	FALSE
339	Manectric	Electric		475	70	75	60	105	60	105	3	FALSE
340	Plusle	Electric		405	60	50	40	85	75	95	3	FALSE
341	Minun	Electric		405	60	40	50	75	85	95	3	FALSE
342	Volbeat	Bug		400	65	73	55	47	75	85	3	FALSE
343	Illumise	Bug		400	65	47	55	73	75	85	3	FALSE
344	Roselia	Grass	Poison	400	50	60	45	100	80	65	3	FALSE
345	Gulpin	Poison		302	70	43	53	43	53	40	3	FALSE
346	Swalot	Poison		467	100	73	83	73	83	55	3	FALSE
347	Carvanha	Water	Dark	305	45	90	20	65	20	65	3	FALSE
348	SharpedoMega Sharpedo	Water	Dark	560	70	140	70	110	65	105	3	FALSE
349	Sharpedo	Water	Dark	460	70	120	40	95	40	95	3	FALSE
350	Wailmer	Water		400	130	70	35	70	35	60	3	FALSE
351	Wailord	Water		500	170	90	45	90	45	60	3	FALSE
352	Numel	Fire	Ground	305	60	60	40	65	45	35	3	FALSE
353	CameruptMega Camerupt	Fire	Ground	560	70	120	100	145	105	20	3	FALSE
354	Camerupt	Fire	Ground	460	70	100	70	105	75	40	3	FALSE
355	Torkoal	Fire		470	70	85	140	85	70	20	3	FALSE
356	Spoink	Psychic		330	60	25	35	70	80	60	3	FALSE
357	Grumpig	Psychic		470	80	45	65	90	110	80	3	FALSE
358	Spinda	Normal		360	60	60	60	60	60	60	3	FALSE
359	Trapinch	Ground		290	45	100	45	45	45	10	3	FALSE
360	Vibrava	Ground	Dragon	340	50	70	50	50	50	70	3	FALSE
361	Flygon	Ground	Dragon	520	80	100	80	80	80	100	3	FALSE
362	Cacnea	Grass		335	50	85	40	85	40	35	3	FALSE
363	Cacturne	Grass	Dark	475	70	115	60	115	60	55	3	FALSE
364	Swablu	Normal	Flying	310	45	40	60	40	75	50	3	FALSE
365	AltariaMega Altaria	Dragon	Fairy	590	75	110	110	110	105	80	3	FALSE
366	Altaria	Dragon	Flying	490	75	70	90	70	105	80	3	FALSE
367	Zangoose	Normal		458	73	115	60	60	60	90	3	FALSE
368	Seviper	Poison		458	73	100	60	100	60	65	3	FALSE
369	Lunatone	Rock	Psychic	440	70	55	65	95	85	70	3	FALSE
370	Solrock	Rock	Psychic	440	70	95	85	55	65	70	3	FALSE
371	Barboach	Water	Ground	288	50	48	43	46	41	60	3	FALSE
372	Whiscash	Water	Ground	468	110	78	73	76	71	60	3	FALSE
373	Corphish	Water		308	43	80	65	50	35	35	3	FALSE
374	Crawdaunt	Water	Dark	468	63	120	85	90	55	55	3	FALSE
375	Baltoy	Ground	Psychic	300	40	40	55	40	70	55	3	FALSE
376	Claydol	Ground	Psychic	500	60	70	105	70	120	75	3	FALSE
377	Lileep	Rock	Grass	355	66	41	77	61	87	23	3	FALSE
378	Cradily	Rock	Grass	495	86	81	97	81	107	43	3	FALSE
379	Anorith	Rock	Bug	355	45	95	50	40	50	75	3	FALSE
380	Armaldo	Rock	Bug	495	75	125	100	70	80	45	3	FALSE
381	Feebas	Water		200	20	15	20	10	55	80	3	FALSE
382	Milotic	Water		540	95	60	79	100	125	81	3	FALSE
383	Castform	Normal		420	70	70	70	70	70	70	3	FALSE
384	Kecleon	Normal		440	60	90	70	60	120	40	3	FALSE
385	Shuppet	Ghost		295	44	75	35	63	33	45	3	FALSE
386	BanetteMega Banette	Ghost		555	64	165	75	93	83	75	3	FALSE
387	Banette	Ghost		455	64	115	65	83	63	65	3	FALSE
388	Duskull	Ghost		295	20	40	90	30	90	25	3	FALSE
389	Dusclops	Ghost		455	40	70	130	60	130	25	3	FALSE
390	Tropius	Grass	Flying	460	99	68	83	72	87	51	3	FALSE
391	Chimecho	Psychic		425	65	50	70	95	80	65	3	FALSE
392	AbsolMega Absol	Dark		565	65	150	60	115	60	115	3	FALSE
393	Absol	Dark		465	65	130	60	75	60	75	3	FALSE
394	Wynaut	Psychic		260	95	23	48	23	48	23	3	FALSE
395	Snorunt	Ice		300	50	50	50	50	50	50	3	FALSE
396	GlalieMega Glalie	Ice		580	80	120	80	120	80	100	3	FALSE
397	Glalie	Ice		480	80	80	80	80	80	80	3	FALSE
398	Spheal	Ice	Water	290	70	40	50	55	50	25	3	FALSE
399	Sealeo	Ice	Water	410	90	60	70	75	70	45	3	FALSE
400	Walrein	Ice	Water	530	110	80	90	95	90	65	3	FALSE
401	Clamperl	Water		345	35	64	85	74	55	32	3	FALSE
402	Huntail	Water		485	55	104	105	94	75	52	3	FALSE
403	Gorebyss	Water		485	55	84	105	114	75	52	3	FALSE
404	Relicanth	Water	Rock	485	100	90	130	45	65	55	3	FALSE
405	Luvdisc	Water		330	43	30	55	40	65	97	3	FALSE
406	Bagon	Dragon		300	45	75	60	40	30	50	3	FALSE
407	Shelgon	Dragon		420	65	95	100	60	50	50	3	FALSE
408	SalamenceMega Salamence	Dragon	Flying	700	95	145	130	120	90	120	3	FALSE
409	Salamence	Dragon	Flying	600	95	135	80	110	80	100	3	FALSE
410	Beldum	Steel	Psychic	300	40	55	80	35	60	30	3	FALSE
411	Metang	Steel	Psychic	420	60	75	100	55	80	50	3	FALSE
412	MetagrossMega Metagross	Steel	Psychic	700	80	145	150	105	110	110	3	FALSE
413	Metagross	Steel	Psychic	600	80	135	130	95	90	70	3	FALSE
414	Regirock	Rock		580	80	100	200	50	100	50	3	TRUE
415	Regice	Ice		580	80	50	100	100	200	50	3	TRUE
416	Registeel	Steel		580	80	75	150	75	150	50	3	TRUE
417	LatiasMega Latias	Dragon	Psychic	700	80	100	120	140	150	110	3	TRUE
418	Latias	Dragon	Psychic	600	80	80	90	110	130	110	3	TRUE
419	LatiosMega Latios	Dragon	Psychic	700	80	130	100	160	120	110	3	TRUE
420	Latios	Dragon	Psychic	600	80	90	80	130	110	110	3	TRUE
421	KyogrePrimal Kyogre	Water		770	100	150	90	180	160	90	3	TRUE
422	Kyogre	Water		670	100	100	90	150	140	90	3	TRUE
423	GroudonPrimal Groudon	Ground	Fire	770	100	180	160	150	90	90	3	TRUE
424	Groudon	Ground		670	100	150	140	100	90	90	3	TRUE
425	RayquazaMega Rayquaza	Dragon	Flying	780	105	180	100	180	100	115	3	TRUE
426	Rayquaza	Dragon	Flying	680	105	150	90	150	90	95	3	TRUE
427	Jirachi	Steel	Psychic	600	100	100	100	100	100	100	3	TRUE
428	DeoxysSpeed Forme	Psychic		600	50	95	90	95	90	180	3	TRUE
429	DeoxysNormal Forme	Psychic		600	50	150	50	150	50	150	3	TRUE
430	DeoxysDefense Forme	Psychic		600	50	70	160	70	160	90	3	TRUE
431	DeoxysAttack Forme	Psychic		600	50	180	20	180	20	150	3	TRUE
432	Turtwig	Grass		318	55	68	64	45	55	31	4	FALSE
433	Grotle	Grass		405	75	89	85	55	65	36	4	FALSE
434	Torterra	Grass	Ground	525	95	109	105	75	85	56	4	FALSE
435	Chimchar	Fire		309	44	58	44	58	44	61	4	FALSE
436	Monferno	Fire	Fighting	405	64	78	52	78	52	81	4	FALSE
437	Infernape	Fire	Fighting	534	76	104	71	104	71	108	4	FALSE
438	Piplup	Water		314	53	51	53	61	56	40	4	FALSE
439	Prinplup	Water		405	64	66	68	81	76	50	4	FALSE
440	Empoleon	Water	Steel	530	84	86	88	111	101	60	4	FALSE
441	Starly	Normal	Flying	245	40	55	30	30	30	60	4	FALSE
442	Staravia	Normal	Flying	340	55	75	50	40	40	80	4	FALSE
443	Staraptor	Normal	Flying	485	85	120	70	50	60	100	4	FALSE
444	Bidoof	Normal		250	59	45	40	35	40	31	4	FALSE
445	Bibarel	Normal	Water	410	79	85	60	55	60	71	4	FALSE
446	Kricketot	Bug		194	37	25	41	25	41	25	4	FALSE
447	Kricketune	Bug		384	77	85	51	55	51	65	4	FALSE
448	Shinx	Electric		263	45	65	34	40	34	45	4	FALSE
449	Luxio	Electric		363	60	85	49	60	49	60	4	FALSE
450	Luxray	Electric		523	80	120	79	95	79	70	4	FALSE
451	Budew	Grass	Poison	280	40	30	35	50	70	55	4	FALSE
452	Roserade	Grass	Poison	515	60	70	65	125	105	90	4	FALSE
453	Cranidos	Rock		350	67	125	40	30	30	58	4	FALSE
454	Rampardos	Rock		495	97	165	60	65	50	58	4	FALSE
455	Shieldon	Rock	Steel	350	30	42	118	42	88	30	4	FALSE
456	Bastiodon	Rock	Steel	495	60	52	168	47	138	30	4	FALSE
457	Burmy	Bug		224	40	29	45	29	45	36	4	FALSE
458	WormadamTrash Cloak	Bug	Steel	424	60	69	95	69	95	36	4	FALSE
459	WormadamSandy Cloak	Bug	Ground	424	60	79	105	59	85	36	4	FALSE
460	WormadamPlant Cloak	Bug	Grass	424	60	59	85	79	105	36	4	FALSE
461	Mothim	Bug	Flying	424	70	94	50	94	50	66	4	FALSE
462	Combee	Bug	Flying	244	30	30	42	30	42	70	4	FALSE
463	Vespiquen	Bug	Flying	474	70	80	102	80	102	40	4	FALSE
464	Pachirisu	Electric		405	60	45	70	45	90	95	4	FALSE
465	Buizel	Water		330	55	65	35	60	30	85	4	FALSE
466	Floatzel	Water		495	85	105	55	85	50	115	4	FALSE
467	Cherubi	Grass		275	45	35	45	62	53	35	4	FALSE
468	Cherrim	Grass		450	70	60	70	87	78	85	4	FALSE
469	Shellos	Water		325	76	48	48	57	62	34	4	FALSE
470	Gastrodon	Water	Ground	475	111	83	68	92	82	39	4	FALSE
471	Ambipom	Normal		482	75	100	66	60	66	115	4	FALSE
472	Drifloon	Ghost	Flying	348	90	50	34	60	44	70	4	FALSE
473	Drifblim	Ghost	Flying	498	150	80	44	90	54	80	4	FALSE
474	Buneary	Normal		350	55	66	44	44	56	85	4	FALSE
475	LopunnyMega Lopunny	Normal	Fighting	580	65	136	94	54	96	135	4	FALSE
476	Lopunny	Normal		480	65	76	84	54	96	105	4	FALSE
477	Mismagius	Ghost		495	60	60	60	105	105	105	4	FALSE
478	Honchkrow	Dark	Flying	505	100	125	52	105	52	71	4	FALSE
479	Glameow	Normal		310	49	55	42	42	37	85	4	FALSE
480	Purugly	Normal		452	71	82	64	64	59	112	4	FALSE
481	Chingling	Psychic		285	45	30	50	65	50	45	4	FALSE
482	Stunky	Poison	Dark	329	63	63	47	41	41	74	4	FALSE
483	Skuntank	Poison	Dark	479	103	93	67	71	61	84	4	FALSE
484	Bronzor	Steel	Psychic	300	57	24	86	24	86	23	4	FALSE
485	Bronzong	Steel	Psychic	500	67	89	116	79	116	33	4	FALSE
486	Bonsly	Rock		290	50	80	95	10	45	10	4	FALSE
487	Mime Jr.	Psychic	Fairy	310	20	25	45	70	90	60	4	FALSE
488	Happiny	Normal		220	100	5	5	15	65	30	4	FALSE
489	Chatot	Normal	Flying	411	76	65	45	92	42	91	4	FALSE
490	Spiritomb	Ghost	Dark	485	50	92	108	92	108	35	4	FALSE
491	Gible	Dragon	Ground	300	58	70	45	40	45	42	4	FALSE
492	Gabite	Dragon	Ground	410	68	90	65	50	55	82	4	FALSE
493	GarchompMega Garchomp	Dragon	Ground	700	108	170	115	120	95	92	4	FALSE
494	Garchomp	Dragon	Ground	600	108	130	95	80	85	102	4	FALSE
495	Munchlax	Normal		390	135	85	40	40	85	5	4	FALSE
496	Riolu	Fighting		285	40	70	40	35	40	60	4	FALSE
497	LucarioMega Lucario	Fighting	Steel	625	70	145	88	140	70	112	4	FALSE
498	Lucario	Fighting	Steel	525	70	110	70	115	70	90	4	FALSE
499	Hippopotas	Ground		330	68	72	78	38	42	32	4	FALSE
500	Hippowdon	Ground		525	108	112	118	68	72	47	4	FALSE
501	Skorupi	Poison	Bug	330	40	50	90	30	55	65	4	FALSE
502	Drapion	Poison	Dark	500	70	90	110	60	75	95	4	FALSE
503	Croagunk	Poison	Fighting	300	48	61	40	61	40	50	4	FALSE
504	Toxicroak	Poison	Fighting	490	83	106	65	86	65	85	4	FALSE
505	Carnivine	Grass		454	74	100	72	90	72	46	4	FALSE
506	Finneon	Water		330	49	49	56	49	61	66	4	FALSE
507	Lumineon	Water		460	69	69	76	69	86	91	4	FALSE
508	Mantyke	Water	Flying	345	45	20	50	60	120	50	4	FALSE
509	Snover	Grass	Ice	334	60	62	50	62	60	40	4	FALSE
510	AbomasnowMega Abomasnow	Grass	Ice	594	90	132	105	132	105	30	4	FALSE
511	Abomasnow	Grass	Ice	494	90	92	75	92	85	60	4	FALSE
512	Weavile	Dark	Ice	510	70	120	65	45	85	125	4	FALSE
513	Magnezone	Electric	Steel	535	70	70	115	130	90	60	4	FALSE
514	Lickilicky	Normal		515	110	85	95	80	95	50	4	FALSE
515	Rhyperior	Ground	Rock	535	115	140	130	55	55	40	4	FALSE
516	Tangrowth	Grass		535	100	100	125	110	50	50	4	FALSE
517	Electivire	Electric		540	75	123	67	95	85	95	4	FALSE
518	Magmortar	Fire		540	75	95	67	125	95	83	4	FALSE
519	Togekiss	Fairy	Flying	545	85	50	95	120	115	80	4	FALSE
520	Yanmega	Bug	Flying	515	86	76	86	116	56	95	4	FALSE
521	Leafeon	Grass		525	65	110	130	60	65	95	4	FALSE
522	Glaceon	Ice		525	65	60	110	130	95	65	4	FALSE
523	Gliscor	Ground	Flying	510	75	95	125	45	75	95	4	FALSE
524	Mamoswine	Ice	Ground	530	110	130	80	70	60	80	4	FALSE
525	Porygon-Z	Normal		535	85	80	70	135	75	90	4	FALSE
526	GalladeMega Gallade	Psychic	Fighting	618	68	165	95	65	115	110	4	FALSE
527	Gallade	Psychic	Fighting	518	68	125	65	65	115	80	4	FALSE
528	Probopass	Rock	Steel	525	60	55	145	75	150	40	4	FALSE
529	Dusknoir	Ghost		525	45	100	135	65	135	45	4	FALSE
530	Froslass	Ice	Ghost	480	70	80	70	80	70	110	4	FALSE
531	RotomWash Rotom	Electric	Water	520	50	65	107	105	107	86	4	FALSE
532	RotomMow Rotom	Electric	Grass	520	50	65	107	105	107	86	4	FALSE
533	RotomHeat Rotom	Electric	Fire	520	50	65	107	105	107	86	4	FALSE
534	RotomFrost Rotom	Electric	Ice	520	50	65	107	105	107	86	4	FALSE
535	RotomFan Rotom	Electric	Flying	520	50	65	107	105	107	86	4	FALSE
536	Rotom	Electric	Ghost	440	50	50	77	95	77	91	4	FALSE
537	Uxie	Psychic		580	75	75	130	75	130	95	4	TRUE
538	Mesprit	Psychic		580	80	105	105	105	105	80	4	TRUE
539	Azelf	Psychic		580	75	125	70	125	70	115	4	TRUE
540	Dialga	Steel	Dragon	680	100	120	120	150	100	90	4	TRUE
541	Palkia	Water	Dragon	680	90	120	100	150	120	100	4	TRUE
542	Heatran	Fire	Steel	600	91	90	106	130	106	77	4	TRUE
543	Regigigas	Normal		670	110	160	110	80	110	100	4	TRUE
544	GiratinaOrigin Forme	Ghost	Dragon	680	150	120	100	120	100	90	4	TRUE
545	GiratinaAltered Forme	Ghost	Dragon	680	150	100	120	100	120	90	4	TRUE
546	Cresselia	Psychic		600	120	70	120	75	130	85	4	FALSE
547	Phione	Water		480	80	80	80	80	80	80	4	FALSE
548	Manaphy	Water		600	100	100	100	100	100	100	4	FALSE
549	Darkrai	Dark		600	70	90	90	135	90	125	4	TRUE
550	ShayminSky Forme	Grass	Flying	600	100	103	75	120	75	127	4	TRUE
551	ShayminLand Forme	Grass		600	100	100	100	100	100	100	4	TRUE
552	Arceus	Normal		720	120	120	120	120	120	120	4	TRUE
553	Victini	Psychic	Fire	600	100	100	100	100	100	100	5	TRUE
554	Snivy	Grass		308	45	45	55	45	55	63	5	FALSE
555	Servine	Grass		413	60	60	75	60	75	83	5	FALSE
556	Serperior	Grass		528	75	75	95	75	95	113	5	FALSE
557	Tepig	Fire		308	65	63	45	45	45	45	5	FALSE
558	Pignite	Fire	Fighting	418	90	93	55	70	55	55	5	FALSE
559	Emboar	Fire	Fighting	528	110	123	65	100	65	65	5	FALSE
560	Oshawott	Water		308	55	55	45	63	45	45	5	FALSE
561	Dewott	Water		413	75	75	60	83	60	60	5	FALSE
562	Samurott	Water		528	95	100	85	108	70	70	5	FALSE
563	Patrat	Normal		255	45	55	39	35	39	42	5	FALSE
564	Watchog	Normal		420	60	85	69	60	69	77	5	FALSE
565	Lillipup	Normal		275	45	60	45	25	45	55	5	FALSE
566	Herdier	Normal		370	65	80	65	35	65	60	5	FALSE
567	Stoutland	Normal		500	85	110	90	45	90	80	5	FALSE
568	Purrloin	Dark		281	41	50	37	50	37	66	5	FALSE
569	Liepard	Dark		446	64	88	50	88	50	106	5	FALSE
570	Pansage	Grass		316	50	53	48	53	48	64	5	FALSE
571	Simisage	Grass		498	75	98	63	98	63	101	5	FALSE
572	Pansear	Fire		316	50	53	48	53	48	64	5	FALSE
573	Simisear	Fire		498	75	98	63	98	63	101	5	FALSE
574	Panpour	Water		316	50	53	48	53	48	64	5	FALSE
575	Simipour	Water		498	75	98	63	98	63	101	5	FALSE
576	Munna	Psychic		292	76	25	45	67	55	24	5	FALSE
577	Musharna	Psychic		487	116	55	85	107	95	29	5	FALSE
578	Pidove	Normal	Flying	264	50	55	50	36	30	43	5	FALSE
579	Tranquill	Normal	Flying	358	62	77	62	50	42	65	5	FALSE
580	Unfezant	Normal	Flying	488	80	115	80	65	55	93	5	FALSE
581	Blitzle	Electric		295	45	60	32	50	32	76	5	FALSE
582	Zebstrika	Electric		497	75	100	63	80	63	116	5	FALSE
583	Roggenrola	Rock		280	55	75	85	25	25	15	5	FALSE
584	Boldore	Rock		390	70	105	105	50	40	20	5	FALSE
585	Gigalith	Rock		515	85	135	130	60	80	25	5	FALSE
586	Woobat	Psychic	Flying	313	55	45	43	55	43	72	5	FALSE
587	Swoobat	Psychic	Flying	425	67	57	55	77	55	114	5	FALSE
588	Drilbur	Ground		328	60	85	40	30	45	68	5	FALSE
589	Excadrill	Ground	Steel	508	110	135	60	50	65	88	5	FALSE
590	AudinoMega Audino	Normal	Fairy	545	103	60	126	80	126	50	5	FALSE
591	Audino	Normal		445	103	60	86	60	86	50	5	FALSE
592	Timburr	Fighting		305	75	80	55	25	35	35	5	FALSE
593	Gurdurr	Fighting		405	85	105	85	40	50	40	5	FALSE
594	Conkeldurr	Fighting		505	105	140	95	55	65	45	5	FALSE
595	Tympole	Water		294	50	50	40	50	40	64	5	FALSE
596	Palpitoad	Water	Ground	384	75	65	55	65	55	69	5	FALSE
597	Seismitoad	Water	Ground	509	105	95	75	85	75	74	5	FALSE
598	Throh	Fighting		465	120	100	85	30	85	45	5	FALSE
599	Sawk	Fighting		465	75	125	75	30	75	85	5	FALSE
600	Sewaddle	Bug	Grass	310	45	53	70	40	60	42	5	FALSE
601	Swadloon	Bug	Grass	380	55	63	90	50	80	42	5	FALSE
602	Leavanny	Bug	Grass	500	75	103	80	70	80	92	5	FALSE
603	Venipede	Bug	Poison	260	30	45	59	30	39	57	5	FALSE
604	Whirlipede	Bug	Poison	360	40	55	99	40	79	47	5	FALSE
605	Scolipede	Bug	Poison	485	60	100	89	55	69	112	5	FALSE
606	Cottonee	Grass	Fairy	280	40	27	60	37	50	66	5	FALSE
607	Whimsicott	Grass	Fairy	480	60	67	85	77	75	116	5	FALSE
608	Petilil	Grass		280	45	35	50	70	50	30	5	FALSE
609	Lilligant	Grass		480	70	60	75	110	75	90	5	FALSE
610	Basculin	Water		460	70	92	65	80	55	98	5	FALSE
611	Sandile	Ground	Dark	292	50	72	35	35	35	65	5	FALSE
612	Krokorok	Ground	Dark	351	60	82	45	45	45	74	5	FALSE
613	Krookodile	Ground	Dark	519	95	117	80	65	70	92	5	FALSE
614	Darumaka	Fire		315	70	90	45	15	45	50	5	FALSE
615	DarmanitanZen Mode	Fire	Psychic	540	105	30	105	140	105	55	5	FALSE
616	DarmanitanStandard Mode	Fire		480	105	140	55	30	55	95	5	FALSE
617	Maractus	Grass		461	75	86	67	106	67	60	5	FALSE
618	Dwebble	Bug	Rock	325	50	65	85	35	35	55	5	FALSE
619	Crustle	Bug	Rock	475	70	95	125	65	75	45	5	FALSE
620	Scraggy	Dark	Fighting	348	50	75	70	35	70	48	5	FALSE
621	Scrafty	Dark	Fighting	488	65	90	115	45	115	58	5	FALSE
622	Sigilyph	Psychic	Flying	490	72	58	80	103	80	97	5	FALSE
623	Yamask	Ghost		303	38	30	85	55	65	30	5	FALSE
624	Cofagrigus	Ghost		483	58	50	145	95	105	30	5	FALSE
625	Tirtouga	Water	Rock	355	54	78	103	53	45	22	5	FALSE
626	Carracosta	Water	Rock	495	74	108	133	83	65	32	5	FALSE
627	Archen	Rock	Flying	401	55	112	45	74	45	70	5	FALSE
628	Archeops	Rock	Flying	567	75	140	65	112	65	110	5	FALSE
629	Trubbish	Poison		329	50	50	62	40	62	65	5	FALSE
630	Garbodor	Poison		474	80	95	82	60	82	75	5	FALSE
631	Zorua	Dark		330	40	65	40	80	40	65	5	FALSE
632	Zoroark	Dark		510	60	105	60	120	60	105	5	FALSE
633	Minccino	Normal		300	55	50	40	40	40	75	5	FALSE
634	Cinccino	Normal		470	75	95	60	65	60	115	5	FALSE
635	Gothita	Psychic		290	45	30	50	55	65	45	5	FALSE
636	Gothorita	Psychic		390	60	45	70	75	85	55	5	FALSE
637	Gothitelle	Psychic		490	70	55	95	95	110	65	5	FALSE
638	Solosis	Psychic		290	45	30	40	105	50	20	5	FALSE
639	Duosion	Psychic		370	65	40	50	125	60	30	5	FALSE
640	Reuniclus	Psychic		490	110	65	75	125	85	30	5	FALSE
641	Ducklett	Water	Flying	305	62	44	50	44	50	55	5	FALSE
642	Swanna	Water	Flying	473	75	87	63	87	63	98	5	FALSE
643	Vanillite	Ice		305	36	50	50	65	60	44	5	FALSE
644	Vanillish	Ice		395	51	65	65	80	75	59	5	FALSE
645	Vanilluxe	Ice		535	71	95	85	110	95	79	5	FALSE
646	Deerling	Normal	Grass	335	60	60	50	40	50	75	5	FALSE
647	Sawsbuck	Normal	Grass	475	80	100	70	60	70	95	5	FALSE
648	Emolga	Electric	Flying	428	55	75	60	75	60	103	5	FALSE
649	Karrablast	Bug		315	50	75	45	40	45	60	5	FALSE
650	Escavalier	Bug	Steel	495	70	135	105	60	105	20	5	FALSE
651	Foongus	Grass	Poison	294	69	55	45	55	55	15	5	FALSE
652	Amoonguss	Grass	Poison	464	114	85	70	85	80	30	5	FALSE
653	Frillish	Water	Ghost	335	55	40	50	65	85	40	5	FALSE
654	Jellicent	Water	Ghost	480	100	60	70	85	105	60	5	FALSE
655	Alomomola	Water		470	165	75	80	40	45	65	5	FALSE
656	Joltik	Bug	Electric	319	50	47	50	57	50	65	5	FALSE
657	Galvantula	Bug	Electric	472	70	77	60	97	60	108	5	FALSE
658	Ferroseed	Grass	Steel	305	44	50	91	24	86	10	5	FALSE
659	Ferrothorn	Grass	Steel	489	74	94	131	54	116	20	5	FALSE
660	Klink	Steel		300	40	55	70	45	60	30	5	FALSE
661	Klang	Steel		440	60	80	95	70	85	50	5	FALSE
662	Klinklang	Steel		520	60	100	115	70	85	90	5	FALSE
663	Tynamo	Electric		275	35	55	40	45	40	60	5	FALSE
664	Eelektrik	Electric		405	65	85	70	75	70	40	5	FALSE
665	Eelektross	Electric		515	85	115	80	105	80	50	5	FALSE
666	Elgyem	Psychic		335	55	55	55	85	55	30	5	FALSE
667	Beheeyem	Psychic		485	75	75	75	125	95	40	5	FALSE
668	Litwick	Ghost	Fire	275	50	30	55	65	55	20	5	FALSE
669	Lampent	Ghost	Fire	370	60	40	60	95	60	55	5	FALSE
670	Chandelure	Ghost	Fire	520	60	55	90	145	90	80	5	FALSE
671	Axew	Dragon		320	46	87	60	30	40	57	5	FALSE
672	Fraxure	Dragon		410	66	117	70	40	50	67	5	FALSE
673	Haxorus	Dragon		540	76	147	90	60	70	97	5	FALSE
674	Cubchoo	Ice		305	55	70	40	60	40	40	5	FALSE
675	Beartic	Ice		485	95	110	80	70	80	50	5	FALSE
676	Cryogonal	Ice		485	70	50	30	95	135	105	5	FALSE
677	Shelmet	Bug		305	50	40	85	40	65	25	5	FALSE
678	Accelgor	Bug		495	80	70	40	100	60	145	5	FALSE
679	Stunfisk	Ground	Electric	471	109	66	84	81	99	32	5	FALSE
680	Mienfoo	Fighting		350	45	85	50	55	50	65	5	FALSE
681	Mienshao	Fighting		510	65	125	60	95	60	105	5	FALSE
682	Druddigon	Dragon		485	77	120	90	60	90	48	5	FALSE
683	Golett	Ground	Ghost	303	59	74	50	35	50	35	5	FALSE
684	Golurk	Ground	Ghost	483	89	124	80	55	80	55	5	FALSE
685	Pawniard	Dark	Steel	340	45	85	70	40	40	60	5	FALSE
686	Bisharp	Dark	Steel	490	65	125	100	60	70	70	5	FALSE
687	Bouffalant	Normal		490	95	110	95	40	95	55	5	FALSE
688	Rufflet	Normal	Flying	350	70	83	50	37	50	60	5	FALSE
689	Braviary	Normal	Flying	510	100	123	75	57	75	80	5	FALSE
690	Vullaby	Dark	Flying	370	70	55	75	45	65	60	5	FALSE
691	Mandibuzz	Dark	Flying	510	110	65	105	55	95	80	5	FALSE
692	Heatmor	Fire		484	85	97	66	105	66	65	5	FALSE
693	Durant	Bug	Steel	484	58	109	112	48	48	109	5	FALSE
694	Deino	Dark	Dragon	300	52	65	50	45	50	38	5	FALSE
695	Zweilous	Dark	Dragon	420	72	85	70	65	70	58	5	FALSE
696	Hydreigon	Dark	Dragon	600	92	105	90	125	90	98	5	FALSE
697	Larvesta	Bug	Fire	360	55	85	55	50	55	60	5	FALSE
698	Volcarona	Bug	Fire	550	85	60	65	135	105	100	5	FALSE
699	Cobalion	Steel	Fighting	580	91	90	129	90	72	108	5	TRUE
700	Terrakion	Rock	Fighting	580	91	129	90	72	90	108	5	TRUE
701	Virizion	Grass	Fighting	580	91	90	72	90	129	108	5	TRUE
702	TornadusTherian Forme	Flying		580	79	100	80	110	90	121	5	TRUE
703	TornadusIncarnate Forme	Flying		580	79	115	70	125	80	111	5	TRUE
704	ThundurusTherian Forme	Electric	Flying	580	79	105	70	145	80	101	5	TRUE
705	ThundurusIncarnate Forme	Electric	Flying	580	79	115	70	125	80	111	5	TRUE
706	Reshiram	Dragon	Fire	680	100	120	100	150	120	90	5	TRUE
707	Zekrom	Dragon	Electric	680	100	150	120	120	100	90	5	TRUE
708	LandorusTherian Forme	Ground	Flying	600	89	145	90	105	80	91	5	TRUE
709	LandorusIncarnate Forme	Ground	Flying	600	89	125	90	115	80	101	5	TRUE
710	KyuremWhite Kyurem	Dragon	Ice	700	125	120	90	170	100	95	5	TRUE
711	KyuremBlack Kyurem	Dragon	Ice	700	125	170	100	120	90	95	5	TRUE
712	Kyurem	Dragon	Ice	660	125	130	90	130	90	95	5	TRUE
713	KeldeoResolute Forme	Water	Fighting	580	91	72	90	129	90	108	5	FALSE
714	KeldeoOrdinary Forme	Water	Fighting	580	91	72	90	129	90	108	5	FALSE
715	MeloettaPirouette Forme	Normal	Fighting	600	100	128	90	77	77	128	5	FALSE
716	MeloettaAria Forme	Normal	Psychic	600	100	77	77	128	128	90	5	FALSE
717	Genesect	Bug	Steel	600	71	120	95	120	95	99	5	FALSE
718	Chespin	Grass		313	56	61	65	48	45	38	6	FALSE
719	Quilladin	Grass		405	61	78	95	56	58	57	6	FALSE
720	Chesnaught	Grass	Fighting	530	88	107	122	74	75	64	6	FALSE
721	Fennekin	Fire		307	40	45	40	62	60	60	6	FALSE
722	Braixen	Fire		409	59	59	58	90	70	73	6	FALSE
723	Delphox	Fire	Psychic	534	75	69	72	114	100	104	6	FALSE
724	Froakie	Water		314	41	56	40	62	44	71	6	FALSE
725	Frogadier	Water		405	54	63	52	83	56	97	6	FALSE
726	Greninja	Water	Dark	530	72	95	67	103	71	122	6	FALSE
727	Bunnelby	Normal		237	38	36	38	32	36	57	6	FALSE
728	Diggersby	Normal	Ground	423	85	56	77	50	77	78	6	FALSE
729	Fletchling	Normal	Flying	278	45	50	43	40	38	62	6	FALSE
730	Fletchinder	Fire	Flying	382	62	73	55	56	52	84	6	FALSE
731	Talonflame	Fire	Flying	499	78	81	71	74	69	126	6	FALSE
732	Scatterbug	Bug		200	38	35	40	27	25	35	6	FALSE
733	Spewpa	Bug		213	45	22	60	27	30	29	6	FALSE
734	Vivillon	Bug	Flying	411	80	52	50	90	50	89	6	FALSE
735	Litleo	Fire	Normal	369	62	50	58	73	54	72	6	FALSE
736	Pyroar	Fire	Normal	507	86	68	72	109	66	106	6	FALSE
737	Flabébé	Fairy		303	44	38	39	61	79	42	6	FALSE
738	Floette	Fairy		371	54	45	47	75	98	52	6	FALSE
739	Florges	Fairy		552	78	65	68	112	154	75	6	FALSE
740	Skiddo	Grass		350	66	65	48	62	57	52	6	FALSE
741	Gogoat	Grass		531	123	100	62	97	81	68	6	FALSE
742	Pancham	Fighting		348	67	82	62	46	48	43	6	FALSE
743	Pangoro	Fighting	Dark	495	95	124	78	69	71	58	6	FALSE
744	Furfrou	Normal		472	75	80	60	65	90	102	6	FALSE
745	Espurr	Psychic		355	62	48	54	63	60	68	6	FALSE
746	MeowsticMale	Psychic		466	74	48	76	83	81	104	6	FALSE
747	MeowsticFemale	Psychic		466	74	48	76	83	81	104	6	FALSE
748	Honedge	Steel	Ghost	325	45	80	100	35	37	28	6	FALSE
749	Doublade	Steel	Ghost	448	59	110	150	45	49	35	6	FALSE
750	AegislashShield Forme	Steel	Ghost	520	60	50	150	50	150	60	6	FALSE
751	AegislashBlade Forme	Steel	Ghost	520	60	150	50	150	50	60	6	FALSE
752	Spritzee	Fairy		341	78	52	60	63	65	23	6	FALSE
753	Aromatisse	Fairy		462	101	72	72	99	89	29	6	FALSE
754	Swirlix	Fairy		341	62	48	66	59	57	49	6	FALSE
755	Slurpuff	Fairy		480	82	80	86	85	75	72	6	FALSE
756	Inkay	Dark	Psychic	288	53	54	53	37	46	45	6	FALSE
757	Malamar	Dark	Psychic	482	86	92	88	68	75	73	6	FALSE
758	Binacle	Rock	Water	306	42	52	67	39	56	50	6	FALSE
759	Barbaracle	Rock	Water	500	72	105	115	54	86	68	6	FALSE
760	Skrelp	Poison	Water	320	50	60	60	60	60	30	6	FALSE
761	Dragalge	Poison	Dragon	494	65	75	90	97	123	44	6	FALSE
762	Clauncher	Water		330	50	53	62	58	63	44	6	FALSE
763	Clawitzer	Water		500	71	73	88	120	89	59	6	FALSE
764	Helioptile	Electric	Normal	289	44	38	33	61	43	70	6	FALSE
765	Heliolisk	Electric	Normal	481	62	55	52	109	94	109	6	FALSE
766	Tyrunt	Rock	Dragon	362	58	89	77	45	45	48	6	FALSE
767	Tyrantrum	Rock	Dragon	521	82	121	119	69	59	71	6	FALSE
768	Amaura	Rock	Ice	362	77	59	50	67	63	46	6	FALSE
769	Aurorus	Rock	Ice	521	123	77	72	99	92	58	6	FALSE
770	Sylveon	Fairy		525	95	65	65	110	130	60	6	FALSE
771	Hawlucha	Fighting	Flying	500	78	92	75	74	63	118	6	FALSE
772	Dedenne	Electric	Fairy	431	67	58	57	81	67	101	6	FALSE
773	Carbink	Rock	Fairy	500	50	50	150	50	150	50	6	FALSE
774	Goomy	Dragon		300	45	50	35	55	75	40	6	FALSE
775	Sliggoo	Dragon		452	68	75	53	83	113	60	6	FALSE
776	Goodra	Dragon		600	90	100	70	110	150	80	6	FALSE
777	Klefki	Steel	Fairy	470	57	80	91	80	87	75	6	FALSE
778	Phantump	Ghost	Grass	309	43	70	48	50	60	38	6	FALSE
779	Trevenant	Ghost	Grass	474	85	110	76	65	82	56	6	FALSE
780	PumpkabooSuper Size	Ghost	Grass	335	59	66	70	44	55	41	6	FALSE
781	PumpkabooSmall Size	Ghost	Grass	335	44	66	70	44	55	56	6	FALSE
782	PumpkabooLarge Size	Ghost	Grass	335	54	66	70	44	55	46	6	FALSE
783	PumpkabooAverage Size	Ghost	Grass	335	49	66	70	44	55	51	6	FALSE
784	GourgeistSuper Size	Ghost	Grass	494	85	100	122	58	75	54	6	FALSE
785	GourgeistSmall Size	Ghost	Grass	494	55	85	122	58	75	99	6	FALSE
786	GourgeistLarge Size	Ghost	Grass	494	75	95	122	58	75	69	6	FALSE
787	GourgeistAverage Size	Ghost	Grass	494	65	90	122	58	75	84	6	FALSE
788	Bergmite	Ice		304	55	69	85	32	35	28	6	FALSE
789	Avalugg	Ice		514	95	117	184	44	46	28	6	FALSE
790	Noibat	Flying	Dragon	245	40	30	35	45	40	55	6	FALSE
791	Noivern	Flying	Dragon	535	85	70	80	97	80	123	6	FALSE
792	Xerneas	Fairy		680	126	131	95	131	98	99	6	TRUE
793	Yveltal	Dark	Flying	680	126	131	95	131	98	99	6	TRUE
794	Zygarde50% Forme	Dragon	Ground	600	108	100	121	81	95	95	6	TRUE
795	DiancieMega Diancie	Rock	Fairy	700	50	160	110	160	110	110	6	TRUE
796	Diancie	Rock	Fairy	600	50	100	150	100	150	50	6	TRUE
797	HoopaHoopa Unbound	Psychic	Dark	680	80	160	60	170	130	80	6	TRUE
798	HoopaHoopa Confined	Psychic	Ghost	600	80	110	60	150	130	70	6	TRUE
799	Volcanion	Fire	Water	600	80	110	120	130	90	70	6	TRUE
800	Rowlet	Grass	Flying	320	68	55	55	50	50	42	7	FALSE
801	Dartrix	Grass	Flying	420	78	75	75	70	70	52	7	FALSE
802	Decidueye	Grass	Ghost	530	78	107	75	100	100	70	7	FALSE
803	Litten	Fire		320	45	65	40	60	40	70	7	FALSE
804	Torracat	Fire		420	65	85	50	80	50	90	7	FALSE
805	Incineroar	Fire	Dark	530	95	115	90	80	90	60	7	FALSE
806	Popplio	Water		320	50	54	54	66	56	40	7	FALSE
807	Brionne	Water		420	60	69	69	91	81	50	7	FALSE
808	Primarina	Water	Fairy	530	80	74	74	126	116	60	7	FALSE
809	Pikipek	Normal	Flying	265	35	75	30	30	30	65	7	FALSE
810	Trumbeak	Normal	Flying	355	55	85	50	40	50	75	7	FALSE
811	Toucannon	Normal	Flying	485	80	120	75	75	75	60	7	FALSE
812	Yungoos	Normal		253	48	70	30	30	30	45	7	FALSE
813	Gumshoos	Normal		418	88	110	60	55	60	45	7	FALSE
814	Grubbin	Bug		300	47	62	45	55	45	46	7	FALSE
815	Charabug	Bug	Electric	400	57	82	95	55	75	36	7	FALSE
816	Vikavolt	Bug	Electric	500	77	70	90	145	75	43	7	FALSE
817	Carbrawler	Fighting		338	47	82	57	42	47	63	7	FALSE
818	Crabominable	Fighting	Ice	478	97	132	77	62	67	43	7	FALSE
819	Oricorio	Fire	Flying	476	75	70	70	98	70	93	7	FALSE
820	Cutiefly	Bug	Fairy	304	40	45	40	55	40	84	7	FALSE
821	Ribombee	Bug	Fairy	464	60	55	60	95	70	124	7	FALSE
822	Rockruff	Rock		280	45	65	40	30	40	60	7	FALSE
823	Lycanroc	Rock		487	75	115	65	55	65	112	7	FALSE
824	Wishiwashi	Water		175	45	20	20	25	25	40	7	FALSE
825	Mareanie	Poison	Water	305	50	53	62	43	52	45	7	FALSE
826	Toxapex	Poison	Water	495	50	63	152	53	142	35	7	FALSE
827	Mudbray	Ground		385	70	100	70	45	55	45	7	FALSE
828	Mudsdate	Ground		500	100	125	100	55	85	35	7	FALSE
829	Dewpider	Water	Bug	269	38	40	52	40	72	27	7	FALSE
830	Araquanid	Water	Bug	454	68	70	92	50	132	42	7	FALSE
831	Fomantis	Grass		250	40	55	35	50	35	35	7	FALSE
832	Lurantis	Grass		480	70	105	90	80	90	45	7	FALSE
833	Morelull	Grass	Fairy	285	40	35	55	65	75	15	7	FALSE
834	Shiinotic	Grass	Fairy	405	60	45	80	90	100	30	7	FALSE
835	Salandit	Poison	Fire	320	48	44	40	71	40	77	7	FALSE
836	Salazzle	Poison	Fire	480	68	64	60	111	60	117	7	FALSE
837	Stufful	Normal	Fighting	340	70	75	50	45	50	50	7	FALSE
838	Bewear	Normal	Fighting	500	120	125	80	55	60	60	7	FALSE
839	Bounsweet	Grass		210	42	30	38	30	38	32	7	FALSE
840	Steenee	Grass		290	52	40	48	40	48	62	7	FALSE
841	Tsarenna	Grass		510	72	120	98	50	98	72	7	FALSE
842	Comfey	Fairy		485	51	52	90	82	110	100	7	FALSE
843	Oranguru	Normal	Psychic	490	90	60	80	90	110	60	7	FALSE
844	Passimian	Fighting		490	100	120	90	40	60	80	7	FALSE
845	Wimpod	bug	Water	230	25	35	40	20	30	80	7	FALSE
846	Golisopod	Bug	Water	530	75	125	140	60	90	40	7	FALSE
847	Sandygast	Ghost	Ground	320	55	55	80	70	45	15	7	FALSE
848	Palossand	Ghost	Ground	480	85	75	110	100	75	35	7	FALSE
849	Pyukumuku	Water		410	55	60	130	30	130	5	7	FALSE
850	Type Null	Normal		534	95	95	95	95	95	59	7	FALSE
851	Silvally	Normal		570	95	95	95	95	95	95	7	FALSE
852	Minior	Rock	Flying	440	60	60	100	60	100	60	7	FALSE
853	Komala	Normal		480	65	115	65	75	95	65	7	FALSE
854	Turtonator	Fire	Dragon	485	60	75	135	91	85	36	7	FALSE
855	Togedemaru	Electric	Steel	435	65	98	63	40	73	96	7	FALSE
856	Mimikyu	Ghost	Fairy	476	55	90	80	50	105	96	7	FALSE
857	Bruxish	Water	Psychic	475	68	105	70	70	70	92	7	FALSE
858	Drampa	Normal	Dragon	485	78	60	85	135	91	36	7	FALSE
859	Dhelmise	Ghost	Grass	517	70	131	100	86	90	40	7	FALSE
860	Jangmo-o	Dragon		300	45	55	65	45	45	45	7	FALSE
861	Hakamo-o	Dragon	Fighting	420	55	75	90	65	70	65	7	FALSE
862	Kommo-o	Dragon	Fighting	600	75	110	125	100	105	85	7	FALSE
863	Tapu Koko	Electric	Fairy	570	70	115	85	95	75	130	7	TRUE
864	Tapu Lele	Psychic	Fairy	570	70	85	75	130	115	95	7	TRUE
865	Tapu Bulu	Grass	Fairy	570	70	130	115	85	95	75	7	TRUE
866	Tapu Fini	Water	Fairy	570	70	75	115	95	130	85	7	TRUE
867	Cosmog	Psychic		200	43	29	31	29	31	37	7	TRUE
868	Cosmoem	Psychic		400	43	29	131	29	131	37	7	TRUE
869	Solgaleo	Psychic	Steel	680	137	137	107	113	89	97	7	TRUE
870	Lunala	Psychic	Ghost	680	137	113	89	137	107	97	7	TRUE
871	Nihilego	Rock	Poison	570	109	53	47	127	131	103	7	FALSE
872	Buzzwole	Bug	Fighting	570	107	139	139	53	53	79	7	FALSE
873	Pheromosa	Bug	Fighting	570	71	137	37	137	37	151	7	FALSE
874	Xurkitree	Electric		570	83	89	71	173	71	83	7	FALSE
875	Celesteela	Steel	Flying	570	97	101	103	107	101	61	7	FALSE
876	Kartana	Grass	Steel	570	59	181	131	59	31	109	7	FALSE
877	Guzzlord	Dark	Dragon	570	223	101	53	97	53	43	7	FALSE
878	Necrozma	Psychic		600	97	107	101	127	89	79	7	TRUE
879	Magearna	Steel	Fairy	600	80	95	115	130	115	65	7	TRUE
880	Marshadow	Fighting	Ghost	600	90	125	80	90	90	125	7	TRUE
881	Poipole	Poison		420	67	73	67	73	67	73	7	TRUE
882	Naganadel	Poison	Dragon	540	73	73	73	127	73	121	7	TRUE
883	Stakataka	Rock	Steel	570	61	131	211	53	101	13	7	TRUE
884	Blacephalon	Fire	Ghost	570	53	127	53	151	79	107	7	TRUE
885	Zeraora	Electric		600	88	112	75	102	80	143	7	TRUE
886	Meltan	Steel		300	46	65	65	55	35	34	7	TRUE
887	Melmetal	Steel		600	135	143	143	80	65	34	7	TRUE
888	Grookey	Grass		310	50	65	50	40	40	65	8	FALSE
889	Thwackey	Grass		420	70	85	70	55	60	80	8	FALSE
890	Rillaboom	Grass		530	100	125	90	60	70	85	8	FALSE
891	Scorbunny	Grass		310	50	71	40	40	40	96	8	FALSE
892	Raboot	Fire		420	65	86	60	55	60	94	8	FALSE
893	Cinderace	Fire		530	80	116	75	65	75	119	8	FALSE
894	Sobble	Water		310	50	40	40	70	40	70	8	FALSE
895	Drizzile	Water		420	65	60	55	95	55	90	8	FALSE
896	Inteleon	Water		530	70	85	65	125	65	120	8	FALSE
897	Skwovet	Normal		275	70	55	55	35	35	25	8	FALSE
898	Greedent	Normal		460	120	95	95	55	75	20	8	FALSE
899	Rookidee	Flying		245	38	47	35	33	35	57	8	FALSE
900	Corvisquire	Flying		365	68	67	55	43	55	77	8	FALSE
901	Corviknight	Flying	Steel	495	98	87	105	53	85	67	8	FALSE
902	Blipbug	Bug		180	25	20	20	25	45	45	8	FALSE
903	Dottler	Bug	Psychic	335	50	35	80	50	90	30	8	FALSE
904	Orbeetle	Bug	Psychic	505	60	45	110	80	120	90	8	FALSE
905	Nickit	Dark		245	40	28	28	47	52	50	8	FALSE
906	Thievul	Dark		455	70	58	58	87	92	90	8	FALSE
907	Gossifleur	Grass		250	40	40	60	40	60	10	8	FALSE
908	Eldengoss	Grass		460	60	50	90	80	120	60	8	FALSE
909	Wooloo	Normal		270	42	40	55	40	45	48	8	FALSE
910	Dubwool	Normal		490	72	80	100	60	90	88	8	FALSE
911	Chewtle	Water		284	50	64	50	38	38	44	8	FALSE
912	Drednaw	Water	Rock	485	90	115	90	48	68	74	8	FALSE
913	Yamper	Electric		270	59	45	50	40	50	26	8	FALSE
914	Boltund	Electric		490	69	90	60	90	60	121	8	FALSE
915	Rolycoly	Rock		240	30	40	50	40	50	30	8	FALSE
916	Carkol	Rock	Fire	410	80	60	90	60	70	50	8	FALSE
917	Coalossal	Rock	Fire	510	110	80	120	80	90	30	8	FALSE
918	Applin	Grass	Dragon	260	40	40	80	40	40	20	8	FALSE
919	Flapple	Grass	Dragon	485	70	110	80	95	60	70	8	FALSE
920	Appletun	Grass	Dragon	485	110	85	80	100	80	30	8	FALSE
921	Silicobra	Ground		315	52	57	75	35	50	46	8	FALSE
922	Sandaconda	Ground		510	72	107	125	65	70	71	8	FALSE
923	Cramorant	Flying	Water	475	70	85	55	85	95	85	8	FALSE
924	Arrokuda	Water		280	41	63	40	40	30	66	8	FALSE
925	Barraskewda	Water		490	61	123	60	60	50	136	8	FALSE
926	Toxel	Electric	Poison	242	40	38	35	54	35	40	8	FALSE
927	Toxtricity	Electric	Poison	502	75	98	70	114	70	75	8	FALSE
928	Sizzlipede	Fire	Bug	305	50	65	45	50	50	45	8	FALSE
929	Centiskorch	Fire	Bug	525	100	115	65	90	90	65	8	FALSE
930	Clobbopus	Fighting		310	50	68	60	50	50	32	8	FALSE
931	Grapploct	Fighting		480	80	118	90	70	80	42	8	FALSE
932	Sinistea	Ghost		308	40	45	45	74	54	50	8	FALSE
933	Polteageist	Ghost		508	60	65	65	134	114	70	8	FALSE
934	Hatenna	Psychic		265	42	30	45	56	53	39	8	FALSE
935	Hattrem	Psychic		370	57	40	65	86	73	49	8	FALSE
936	Hatterene	Psychic	Fairy	510	57	90	95	136	103	29	8	FALSE
937	Impidimp	Dark	Fairy	265	45	45	30	55	40	50	8	FALSE
938	Morgem	Dark	Fairy	370	65	60	45	75	55	70	8	FALSE
939	Grimmsnarl	Dark	Fairy	510	95	120	65	95	75	60	8	FALSE
940	Obstagoon	Dark	Normal	520	93	90	101	60	81	95	8	FALSE
941	Perrserker	Steel		440	70	110	100	50	60	50	8	FALSE
942	Cursola	Ghost		510	60	95	50	145	130	30	8	FALSE
943	Sirfetch d	Fighting		507	62	135	95	68	82	65	8	FALSE
944	Mr Rime	Ice	Psychic	520	80	85	75	110	100	70	8	FALSE
945	Runerigus	Ground	Ghost	483	58	95	145	50	105	30	8	FALSE
946	Milcery	Fairy		270	45	40	40	50	61	34	8	FALSE
947	Alcremie	Fairy		495	65	60	75	110	121	64	8	FALSE
948	Falinks	Fighting		470	65	100	100	70	60	75	8	FALSE
949	Pincurchin	Electric		435	48	101	95	91	85	15	8	FALSE
950	Snom	ice	Bug	185	30	25	35	45	30	20	8	FALSE
951	Frosmoth	Ice	Bug	475	70	65	60	125	90	65	8	FALSE
952	Stonjourner	Rock		470	100	125	135	20	20	70	8	FALSE
953	Eiscue	Ice		470	75	80	110	65	90	50	8	FALSE
954	Indeedee	Psychic	Normal	475	60	65	55	105	95	95	8	FALSE
955	Morpeko	Electric	Dark	476	58	95	58	70	58	97	8	FALSE
956	Cufant	Steel		330	72	80	49	40	49	40	8	FALSE
957	Copperajah	Steel		500	122	130	69	80	69	30	8	FALSE
958	Dracozolt	Electric	Dragon	505	90	100	90	80	70	75	8	FALSE
959	Arctozolt	Electric	Ice	505	90	100	90	90	80	55	8	FALSE
960	Dracovish	Water	Dragon	505	90	90	100	70	80	75	8	FALSE
961	Arctovish	Water	ice	505	90	90	100	80	90	55	8	FALSE
962	Duraludon	Steel	Dragon	535	70	95	115	120	50	85	8	FALSE
963	Dreepy	Dragon	Ghost	270	28	60	30	40	30	82	8	FALSE
964	Drakloak	Dragon	Ghost	410	68	80	50	60	50	102	8	FALSE
965	Dragapult	Dragon	Ghost	600	88	120	75	100	75	142	8	FALSE
966	Zacian	Fairy	Steel	700	92	150	115	80	115	148	8	TRUE
967	Zamazenta	Fighting	Steel	700	92	120	140	80	140	128	8	TRUE
968	Eternatus	Poison	Dragon	690	140	85	95	145	95	130	8	TRUE
969	Kubfu	Fighting		385	60	90	60	53	50	72	8	TRUE
970	Urshifu	Fighting	Dark	550	100	130	100	63	60	97	8	TRUE
971	Zarude	Dark	Grass	600	105	120	105	70	95	105	8	TRUE
972	Regieleki	Electric		580	80	100	50	100	50	200	8	TRUE
973	Regidrago	Dragon		580	200	100	50	100	50	80	8	TRUE
974	Glastrier	Ice		580	100	145	130	65	110	30	8	TRUE
975	Spectrier	Ghost		580	100	65	60	145	80	130	8	TRUE
976	Calyrex	Psychic	Grass	500	100	80	80	80	80	80	8	TRUE
977	Wyrdeer	Normal	Psychic	525	103	105	72	105	75	65	8	TRUE
978	Kleavor	Bug	Rock	500	70	135	95	45	70	85	8	TRUE
979	Ursaluna	Ground	Normal	550	130	140	105	45	80	50	8	TRUE
980	Basculegion	Water	Ghost	530	120	112	65	80	75	78	8	FALSE
981	Sneasler	Fighting	Poison	510	80	130	60	40	80	120	8	FALSE
982	Overqwil	Dark	Poison	510	85	115	95	65	65	85	8	FALSE
983	Enamorous	Fairy	Flying	580	74	115	70	135	80	106	8	TRUE
984	Sprigatito	Grass		310	40	61	54	45	45	65	9	FALSE
985	Floragato	Grass		410	61	80	63	60	63	83	9	FALSE
986	Meowscarada	Grass	Dark	530	76	110	70	81	70	123	9	FALSE
987	Fuecoco	Fire		310	67	45	59	63	40	36	9	FALSE
988	Crocalor	Fire		411	81	55	78	90	58	49	9	FALSE
989	Skeledirge	Fire	Ghost	530	104	75	100	110	75	66	9	FALSE
990	Quaxly	Water		310	55	65	45	50	45	50	9	FALSE
991	Quaxwell	Water		410	70	85	65	65	60	65	9	FALSE
992	Quaquaval	Water	Fighting	530	85	120	80	85	75	85	9	FALSE
993	Lechonk	Normal		254	54	45	40	35	45	35	9	FALSE
994	Onikologne	Normal		489	110	100	75	59	80	65	9	FALSE
995	Tarountula	Bug		210	35	41	45	29	40	20	9	FALSE
996	Sidops	Bug		404	60	79	92	52	86	35	9	FALSE
997	Nymble	Bug		210	33	46	40	21	25	45	9	FALSE
998	Lokix	Bug	Dark	450	71	102	78	52	55	92	9	FALSE
999	Pawmi	Electric		240	45	50	20	40	25	60	9	FALSE
1000	Pawmo	Electric	Fighting	350	60	75	40	50	40	85	9	FALSE
1001	Pawmot	Electric	Fighting	490	70	115	70	70	60	105	9	FALSE
1002	Tandemaus	Normal		305	50	50	45	40	45	75	9	FALSE
1003	Maushold	Normal		470	74	75	70	65	75	111	9	FALSE
1004	Fidough	Fairy		312	37	55	70	30	55	65	9	FALSE
1005	Dachsbun	Fairy		477	57	80	115	50	80	95	9	FALSE
1006	Smoliv	Grass	Normal	260	41	35	45	58	51	30	9	FALSE
1007	Dolliv	Grass	Normal	354	52	53	60	78	78	33	9	FALSE
1008	Arboliva	Grass	Normal	510	78	69	90	125	109	39	9	FALSE
1009	Squawkabilly	Normal	Flying	417	82	96	51	45	51	92	9	FALSE
1010	Nacli	Rock		280	55	55	75	35	35	25	9	FALSE
1011	Naclstack	Rock		355	60	60	100	35	65	35	9	FALSE
1012	Gargancl	Rock		500	100	100	130	45	90	35	9	FALSE
1013	Charcadet	Fire		255	40	50	40	50	40	35	9	FALSE
1014	Armarouge	Fire	Psychic	525	85	60	100	125	80	75	9	FALSE
1015	Ceruledge	Fire	Ghost	525	75	125	80	60	100	85	9	FALSE
1016	Tadbulb	Electric		272	61	31	41	59	35	45	9	FALSE
1017	Bellibolt	Electric		495	109	64	91	103	83	45	9	FALSE
1018	Wattrel	Electric	Flying	280	40	40	35	55	40	70	9	FALSE
1019	Kilowatteral	Electric	Flying	490	70	70	60	105	60	125	9	FALSE
1020	Maschiff	Dark		340	60	78	60	40	51	51	9	FALSE
1021	Mabosstiff	Dark		505	80	120	90	60	70	85	9	FALSE
1022	Shroodle	Poison	Normal	290	40	65	35	40	35	75	9	FALSE
1023	Grafaiai	Poison	Normal	485	63	95	65	80	72	110	9	FALSE
1024	Bramblin	Grass	Ghost	275	40	65	30	45	35	60	9	FALSE
1025	Brambleghast	Grass	Ghost	480	55	115	70	80	70	90	9	FALSE
1026	Toedscool	Ground	Grass	335	40	40	35	50	100	70	9	FALSE
1027	Todescruel	Ground	Grass	515	80	70	65	80	120	100	9	FALSE
1028	Klawf	Rock		450	70	100	115	35	55	75	9	FALSE
1029	Capsakid	Grass		304	50	62	40	62	40	50	9	FALSE
1030	Scovillain	Bug	Fire	486	65	108	65	108	65	75	9	FALSE
1031	Rellor	Bug		270	41	50	60	31	58	30	9	FALSE
1032	Rabsca	Bug	Psychic	470	75	50	85	115	100	45	9	FALSE
1033	Flittle	Psychic		255	30	35	30	55	30	75	9	FALSE
1034	Espathra	Psychic		481	95	60	60	101	60	105	9	FALSE
1035	Tinkatink	Fairy	Steel	297	50	45	45	35	64	58	9	FALSE
1036	Tinkatuff	Fairy	Steel	380	65	55	55	45	82	78	9	FALSE
1037	Tinkaton	Fairy	Steel	506	85	75	77	70	105	94	9	FALSE
1038	Wiglett	Water		245	10	55	25	35	25	95	9	FALSE
1039	Wugtrio	Water		425	35	100	50	50	70	120	9	FALSE
1040	Bombirdier	Flying	Dark	485	70	103	85	60	85	82	9	FALSE
1041	Finizen	Water		315	70	45	40	45	40	75	9	FALSE
1042	Palafin	Water		457	100	70	72	53	62	100	9	FALSE
1043	Varoom	Steel	Poison	300	45	70	63	30	45	47	9	FALSE
1044	Revaroom	Steel	Poison	500	80	70	90	54	67	90	9	FALSE
1045	Cyclizar	Dragon	Normal	501	70	119	65	85	65	121	9	FALSE
1046	Orthworm	Steel		480	70	95	145	60	55	65	9	FALSE
1047	Glimmet	Rock	Poison	350	48	35	42	105	60	60	9	FALSE
1048	Glimmora	Rock	Poison	525	83	55	90	130	81	86	9	FALSE
1049	Greavard	Ghost		290	50	61	60	30	55	34	9	FALSE
1050	Houndstone	Ghost		488	72	101	100	50	97	68	9	FALSE
1051	Flamigo	Flying	Fighting	500	82	115	74	75	64	90	9	FALSE
1052	Cetoddle	Ice		334	108	68	45	30	40	43	9	FALSE
1053	Cetitan	Ice		521	170	113	65	45	55	73	9	FALSE
1054	Veluza	Water	Psychic	478	90	102	73	78	65	70	9	FALSE
1055	Dondozo	Water		530	150	100	115	65	65	35	9	FALSE
1056	Tatsugiri	Dragon	Water	475	68	50	60	120	95	82	9	FALSE
1057	Annihilape	Fighting	Ghost	535	110	115	80	50	90	90	9	FALSE
1058	Clodsire	Poison	Ground	430	130	75	60	45	100	20	9	FALSE
1059	Farigiraf	Normal	Psychic	520	120	90	70	110	70	60	9	FALSE
1060	Dudunsparce	Normal		520	125	100	80	85	75	55	9	FALSE
1061	Kingambit	Dark	Steel	550	100	135	120	60	85	50	9	FALSE
1062	Great Tusk	Ground	Fighting	570	115	131	131	53	53	87	9	FALSE
1063	Scream Tail	Fairy	Psychic	570	115	65	99	65	115	111	9	FALSE
1064	Brute Bonnet	Grass	Dark	570	111	127	99	79	99	55	9	FALSE
1065	Flutter Mane	Ghost	Fairy	570	55	55	55	135	135	135	9	FALSE
1066	Slither Wing	Bug	Fighting	570	85	135	79	85	105	81	9	FALSE
1067	Sandy Shocks	Electric	Ground	570	85	81	97	121	85	101	9	FALSE
1068	Iron Treads	Ground	Steel	570	90	112	120	72	70	106	9	FALSE
1069	Iron Bundle	Ice	Water	570	56	80	114	124	60	136	9	FALSE
1070	Iron Hand	Fighting	Electric	570	154	140	108	50	68	50	9	FALSE
1071	Iron Jugulis	Dark	Flying	570	94	80	86	122	80	108	9	FALSE
1072	Iron Moth	Fire	Poison	570	80	70	60	140	110	110	9	FALSE
1073	Iron Thorns	Rock	Electric	570	100	134	110	70	84	72	9	FALSE
1074	Frigibax	Dragon	Ice	320	65	75	45	35	45	55	9	FALSE
1075	Arctibax	Dragon	Ice	423	90	95	66	45	65	62	9	FALSE
1076	Baxcalibur	Dragon	Ice	600	115	145	92	75	86	87	9	FALSE
1077	Gimmighoul	Ghost		300	45	30	25	75	45	80	9	FALSE
1078	Gholdengo	Steel	Ghost	550	87	60	95	133	91	84	9	FALSE
1079	Wo Chien	Dark	Grass	570	85	85	100	95	135	70	9	FALSE
1080	Chien Pao	Dark	Ice	570	80	120	80	90	65	135	9	FALSE
1081	Ting Lu	Dark	Ground	570	155	110	125	55	80	45	9	FALSE
1082	Chi Yu	Dark	Fire	570	55	80	80	135	120	100	9	FALSE
1083	Roaring Moon	Dragon	Dark	590	105	139	71	55	101	119	9	FALSE
1084	Iron Valiant	Fairy	Fighting	590	74	130	90	120	60	116	9	FALSE
1085	Koraidon	Fighting	Dragon	670	100	135	115	85	100	135	9	TRUE
1086	Miraidon	Electric	Dragon	670	100	85	100	135	115	135	9	TRUE
1087	Walking Wake	Grass	Water	590	99	83	91	125	83	109	9	TRUE
1088	Irong Leaves	Grass	Psychic	590	90	130	88	70	108	104	9	TRUE
1089	Dipplin	Grass	Dragon	485	80	80	110	95	80	40	9	FALSE
1090	Poltchageist	Grass	Ghost	308	40	45	45	74	54	50	9	FALSE
1091	Sinischa	Grass	Ghost	508	71	60	106	121	80	70	9	FALSE
1092	Okidogi	Poison	Fighting	555	88	128	115	58	86	80	9	TRUE
1093	Munkidori	Poison	Psychic	555	88	75	66	130	90	106	9	TRUE
1094	Fezandipiti	Poison	Fairy	555	88	91	82	70	125	99	9	TRUE
1095	Ogerpon	Grass		550	80	120	84	60	96	110	9	TRUE
1096	Archaludon	Steel	Dragon	600	90	105	130	125	65	85	9	TRUE
1097	Hydrapple	Grass	Dragon	540	106	80	110	120	80	44	9	TRUE
1098	Gouging Fire	Fire	Dragon	590	105	115	121	65	93	91	9	TRUE
1099	Raging Bolt	Electric	Dragon	590	125	73	91	137	89	75	9	TRUE
1100	Iron Boulder	Rock	Dragon	590	90	120	80	68	108	124	9	TRUE
1101	Iron Crown	Steel	Psychic	590	90	72	100	122	108	98	9	TRUE
1102	Terapagos	Normal		700	160	105	110	130	110	85	9	TRUE
1103	Pecharunt	Poison	Ghost	600	88	88	160	88	88	88	9	TRUE
1104	VenusaurMega Venusaur	Grass	Poison	625	80	100	123	122	120	80	1	FALSE
1105	Venusaur	Grass	Poison	525	80	82	83	100	100	80	1	FALSE
1106	Charmander	Fire		309	39	52	43	60	50	65	1	FALSE
1107	Charmeleon	Fire		405	58	64	58	80	65	80	1	FALSE
1108	CharizardMega Charizard Y	Fire	Flying	634	78	104	78	159	115	100	1	FALSE
1109	CharizardMega Charizard X	Fire	Dragon	634	78	130	111	130	85	100	1	FALSE
1110	Charizard	Fire	Flying	534	78	84	78	109	85	100	1	FALSE
1111	Squirtle	Water		314	44	48	65	50	64	43	1	FALSE
1112	Wartortle	Water		405	59	63	80	65	80	58	1	FALSE
1113	BlastoiseMega Blastoise	Water		630	79	103	120	135	115	78	1	FALSE
1114	Blastoise	Water		530	79	83	100	85	105	78	1	FALSE
1115	Caterpie	Bug		195	45	30	35	20	20	45	1	FALSE
1116	Metapod	Bug		205	50	20	55	25	25	30	1	FALSE
1117	Butterfree	Bug	Flying	395	60	45	50	90	80	70	1	FALSE
1118	Weedle	Bug	Poison	195	40	35	30	20	20	50	1	FALSE
1119	Kakuna	Bug	Poison	205	45	25	50	25	25	35	1	FALSE
1120	BeedrillMega Beedrill	Bug	Poison	495	65	150	40	15	80	145	1	FALSE
1121	Beedrill	Bug	Poison	395	65	90	40	45	80	75	1	FALSE
1122	Pidgey	Normal	Flying	251	40	45	40	35	35	56	1	FALSE
1123	Pidgeotto	Normal	Flying	349	63	60	55	50	50	71	1	FALSE
1124	PidgeotMega Pidgeot	Normal	Flying	579	83	80	80	135	80	121	1	FALSE
1125	Pidgeot	Normal	Flying	479	83	80	75	70	70	101	1	FALSE
1126	Rattata	Normal		253	30	56	35	25	35	72	1	FALSE
1127	Raticate	Normal		413	55	81	60	50	70	97	1	FALSE
1128	Spearow	Normal	Flying	262	40	60	30	31	31	70	1	FALSE
1129	Fearow	Normal	Flying	442	65	90	65	61	61	100	1	FALSE
1130	Ekans	Poison		288	35	60	44	40	54	55	1	FALSE
1131	Arbok	Poison		438	60	85	69	65	79	80	1	FALSE
1132	Pikachu	Electric		320	35	55	40	50	50	90	1	FALSE
1133	Raichu	Electric		485	60	90	55	90	80	110	1	FALSE
1134	Sandshrew	Ground		300	50	75	85	20	30	40	1	FALSE
1135	Sandslash	Ground		450	75	100	110	45	55	65	1	FALSE
1136	Nidoran♀	Poison		275	55	47	52	40	40	41	1	FALSE
1137	Nidorina	Poison		365	70	62	67	55	55	56	1	FALSE
1138	Nidoqueen	Poison	Ground	505	90	92	87	75	85	76	1	FALSE
1139	Nidoran♂	Poison		273	46	57	40	40	40	50	1	FALSE
1140	Nidorino	Poison		365	61	72	57	55	55	65	1	FALSE
1141	Nidoking	Poison	Ground	505	81	102	77	85	75	85	1	FALSE
1142	Clefairy	Fairy		323	70	45	48	60	65	35	1	FALSE
1143	Clefable	Fairy		483	95	70	73	95	90	60	1	FALSE
1144	Vulpix	Fire		299	38	41	40	50	65	65	1	FALSE
1145	Ninetales	Fire		505	73	76	75	81	100	100	1	FALSE
1146	Jigglypuff	Normal	Fairy	270	115	45	20	45	25	20	1	FALSE
1147	Wigglytuff	Normal	Fairy	435	140	70	45	85	50	45	1	FALSE
1148	Zubat	Poison	Flying	245	40	45	35	30	40	55	1	FALSE
1149	Golbat	Poison	Flying	455	75	80	70	65	75	90	1	FALSE
1150	Oddish	Grass	Poison	320	45	50	55	75	65	30	1	FALSE
1151	Gloom	Grass	Poison	395	60	65	70	85	75	40	1	FALSE
1152	Vileplume	Grass	Poison	490	75	80	85	110	90	50	1	FALSE
1153	Paras	Bug	Grass	285	35	70	55	45	55	25	1	FALSE
1154	Parasect	Bug	Grass	405	60	95	80	60	80	30	1	FALSE
1155	Venonat	Bug	Poison	305	60	55	50	40	55	45	1	FALSE
1156	Venomoth	Bug	Poison	450	70	65	60	90	75	90	1	FALSE
1157	Diglett	Ground		265	10	55	25	35	45	95	1	FALSE
1158	Dugtrio	Ground		405	35	80	50	50	70	120	1	FALSE
1159	Meowth	Normal		290	40	45	35	40	40	90	1	FALSE
1160	Persian	Normal		440	65	70	60	65	65	115	1	FALSE
1161	Psyduck	Water		320	50	52	48	65	50	55	1	FALSE
1162	Golduck	Water		500	80	82	78	95	80	85	1	FALSE
1163	Mankey	Fighting		305	40	80	35	35	45	70	1	FALSE
1164	Primeape	Fighting		455	65	105	60	60	70	95	1	FALSE
1165	Growlithe	Fire		350	55	70	45	70	50	60	1	FALSE
1166	Arcanine	Fire		555	90	110	80	100	80	95	1	FALSE
1167	Poliwag	Water		300	40	50	40	40	40	90	1	FALSE
1168	Poliwhirl	Water		385	65	65	65	50	50	90	1	FALSE
1169	Poliwrath	Water	Fighting	510	90	95	95	70	90	70	1	FALSE
1170	Abra	Psychic		310	25	20	15	105	55	90	1	FALSE
1171	Kadabra	Psychic		400	40	35	30	120	70	105	1	FALSE
1172	AlakazamMega Alakazam	Psychic		590	55	50	65	175	95	150	1	FALSE
1173	Alakazam	Psychic		500	55	50	45	135	95	120	1	FALSE
1174	Machop	Fighting		305	70	80	50	35	35	35	1	FALSE
1175	Machoke	Fighting		405	80	100	70	50	60	45	1	FALSE
1176	Machamp	Fighting		505	90	130	80	65	85	55	1	FALSE
1177	Bellsprout	Grass	Poison	300	50	75	35	70	30	40	1	FALSE
1178	Weepinbell	Grass	Poison	390	65	90	50	85	45	55	1	FALSE
1179	Victreebel	Grass	Poison	490	80	105	65	100	70	70	1	FALSE
1180	Tentacool	Water	Poison	335	40	40	35	50	100	70	1	FALSE
1181	Tentacruel	Water	Poison	515	80	70	65	80	120	100	1	FALSE
1182	Geodude	Rock	Ground	300	40	80	100	30	30	20	1	FALSE
1183	Graveler	Rock	Ground	390	55	95	115	45	45	35	1	FALSE
1184	Golem	Rock	Ground	495	80	120	130	55	65	45	1	FALSE
1185	Ponyta	Fire		410	50	85	55	65	65	90	1	FALSE
1186	Rapidash	Fire		500	65	100	70	80	80	105	1	FALSE
1187	Slowpoke	Water	Psychic	315	90	65	65	40	40	15	1	FALSE
1188	SlowbroMega Slowbro	Water	Psychic	590	95	75	180	130	80	30	1	FALSE
1189	Slowbro	Water	Psychic	490	95	75	110	100	80	30	1	FALSE
1190	Magnemite	Electric	Steel	325	25	35	70	95	55	45	1	FALSE
1191	Magneton	Electric	Steel	465	50	60	95	120	70	70	1	FALSE
1192	Farfetch	Normal	Flying	352	52	65	55	58	62	60	1	FALSE
1193	Doduo	Normal	Flying	310	35	85	45	35	35	75	1	FALSE
1194	Dodrio	Normal	Flying	460	60	110	70	60	60	100	1	FALSE
1195	Seel	Water		325	65	45	55	45	70	45	1	FALSE
1196	Dewgong	Water	Ice	475	90	70	80	70	95	70	1	FALSE
1197	Grimer	Poison		325	80	80	50	40	50	25	1	FALSE
1198	Muk	Poison		500	105	105	75	65	100	50	1	FALSE
1199	Shellder	Water		305	30	65	100	45	25	40	1	FALSE
1200	Cloyster	Water	Ice	525	50	95	180	85	45	70	1	FALSE
1201	Gastly	Ghost	Poison	310	30	35	30	100	35	80	1	FALSE
1202	Haunter	Ghost	Poison	405	45	50	45	115	55	95	1	FALSE
1203	GengarMega Gengar	Ghost	Poison	600	60	65	80	170	95	130	1	FALSE
1204	Gengar	Ghost	Poison	500	60	65	60	130	75	110	1	FALSE
1205	Onix	Rock	Ground	385	35	45	160	30	45	70	1	FALSE
1206	Drowzee	Psychic		328	60	48	45	43	90	42	1	FALSE
1207	Hypno	Psychic		483	85	73	70	73	115	67	1	FALSE
1208	Krabby	Water		325	30	105	90	25	25	50	1	FALSE
1209	Kingler	Water		475	55	130	115	50	50	75	1	FALSE
1210	Voltorb	Electric		330	40	30	50	55	55	100	1	FALSE
1211	Electrode	Electric		480	60	50	70	80	80	140	1	FALSE
1212	Exeggcute	Grass	Psychic	325	60	40	80	60	45	40	1	FALSE
1213	Exeggutor	Grass	Psychic	520	95	95	85	125	65	55	1	FALSE
1214	Cubone	Ground		320	50	50	95	40	50	35	1	FALSE
1215	Marowak	Ground		425	60	80	110	50	80	45	1	FALSE
1216	Hitmonlee	Fighting		455	50	120	53	35	110	87	1	FALSE
1217	Hitmonchan	Fighting		455	50	105	79	35	110	76	1	FALSE
1218	Lickitung	Normal		385	90	55	75	60	75	30	1	FALSE
1219	Koffing	Poison		340	40	65	95	60	45	35	1	FALSE
1220	Weezing	Poison		490	65	90	120	85	70	60	1	FALSE
1221	Rhyhorn	Ground	Rock	345	80	85	95	30	30	25	1	FALSE
1222	Rhydon	Ground	Rock	485	105	130	120	45	45	40	1	FALSE
1223	Chansey	Normal		450	250	5	5	35	105	50	1	FALSE
1224	Tangela	Grass		435	65	55	115	100	40	60	1	FALSE
1225	KangaskhanMega Kangaskhan	Normal		590	105	125	100	60	100	100	1	FALSE
1226	Kangaskhan	Normal		490	105	95	80	40	80	90	1	FALSE
1227	Horsea	Water		295	30	40	70	70	25	60	1	FALSE
1228	Seadra	Water		440	55	65	95	95	45	85	1	FALSE
1229	Goldeen	Water		320	45	67	60	35	50	63	1	FALSE
1230	Seaking	Water		450	80	92	65	65	80	68	1	FALSE
1231	Staryu	Water		340	30	45	55	70	55	85	1	FALSE
1232	Starmie	Water	Psychic	520	60	75	85	100	85	115	1	FALSE
1233	Mr. Mime	Psychic	Fairy	460	40	45	65	100	120	90	1	FALSE
1234	Scyther	Bug	Flying	500	70	110	80	55	80	105	1	FALSE
1235	Jynx	Ice	Psychic	455	65	50	35	115	95	95	1	FALSE
1236	Electabuzz	Electric		490	65	83	57	95	85	105	1	FALSE
1237	Magmar	Fire		495	65	95	57	100	85	93	1	FALSE
1238	PinsirMega Pinsir	Bug	Flying	600	65	155	120	65	90	105	1	FALSE
1239	Pinsir	Bug		500	65	125	100	55	70	85	1	FALSE
1240	Tauros	Normal		490	75	100	95	40	70	110	1	FALSE
1241	Magikarp	Water		200	20	10	55	15	20	80	1	FALSE
1242	GyaradosMega Gyarados	Water	Dark	640	95	155	109	70	130	81	1	FALSE
1243	Gyarados	Water	Flying	540	95	125	79	60	100	81	1	FALSE
1244	Lapras	Water	Ice	535	130	85	80	85	95	60	1	FALSE
1245	Ditto	Normal		288	48	48	48	48	48	48	1	FALSE
1246	Eevee	Normal		325	55	55	50	45	65	55	1	FALSE
1247	Vaporeon	Water		525	130	65	60	110	95	65	1	FALSE
1248	Jolteon	Electric		525	65	65	60	110	95	130	1	FALSE
1249	Flareon	Fire		525	65	130	60	95	110	65	1	FALSE
1250	Porygon	Normal		395	65	60	70	85	75	40	1	FALSE
1251	Omanyte	Rock	Water	355	35	40	100	90	55	35	1	FALSE
1252	Omastar	Rock	Water	495	70	60	125	115	70	55	1	FALSE
1253	Kabuto	Rock	Water	355	30	80	90	55	45	55	1	FALSE
1254	Kabutops	Rock	Water	495	60	115	105	65	70	80	1	FALSE
1255	AerodactylMega Aerodactyl	Rock	Flying	615	80	135	85	70	95	150	1	FALSE
1256	Aerodactyl	Rock	Flying	515	80	105	65	60	75	130	1	FALSE
1257	Snorlax	Normal		540	160	110	65	65	110	30	1	FALSE
1258	Articuno	Ice	Flying	580	90	85	100	95	125	85	1	TRUE
1259	Zapdos	Electric	Flying	580	90	90	85	125	90	100	1	TRUE
1260	Moltres	Fire	Flying	580	90	100	90	125	85	90	1	TRUE
1261	Dratini	Dragon		300	41	64	45	50	50	50	1	FALSE
1262	Dragonair	Dragon		420	61	84	65	70	70	70	1	FALSE
1263	Dragonite	Dragon	Flying	600	91	134	95	100	100	80	1	FALSE
1264	MewtwoMega Mewtwo Y	Psychic		780	106	150	70	194	120	140	1	TRUE
1265	MewtwoMega Mewtwo X	Psychic	Fighting	780	106	190	100	154	100	130	1	TRUE
1266	Mewtwo	Psychic		680	106	110	90	154	90	130	1	TRUE
1267	Mew	Psychic		600	100	100	100	100	100	100	1	FALSE
1268	Chikorita	Grass		318	45	49	65	49	65	45	2	FALSE
1269	Bayleef	Grass		405	60	62	80	63	80	60	2	FALSE
1270	Meganium	Grass		525	80	82	100	83	100	80	2	FALSE
1271	Cyndaquil	Fire		309	39	52	43	60	50	65	2	FALSE
1272	Quilava	Fire		405	58	64	58	80	65	80	2	FALSE
1273	Typhlosion	Fire		534	78	84	78	109	85	100	2	FALSE
1274	Totodile	Water		314	50	65	64	44	48	43	2	FALSE
1275	Croconaw	Water		405	65	80	80	59	63	58	2	FALSE
1276	Feraligatr	Water		530	85	105	100	79	83	78	2	FALSE
1277	Sentret	Normal		215	35	46	34	35	45	20	2	FALSE
1278	Furret	Normal		415	85	76	64	45	55	90	2	FALSE
1279	Hoothoot	Normal	Flying	262	60	30	30	36	56	50	2	FALSE
1280	Noctowl	Normal	Flying	442	100	50	50	76	96	70	2	FALSE
1281	Ledyba	Bug	Flying	265	40	20	30	40	80	55	2	FALSE
1282	Ledian	Bug	Flying	390	55	35	50	55	110	85	2	FALSE
1283	Spinarak	Bug	Poison	250	40	60	40	40	40	30	2	FALSE
1284	Ariados	Bug	Poison	390	70	90	70	60	60	40	2	FALSE
1285	Crobat	Poison	Flying	535	85	90	80	70	80	130	2	FALSE
1286	Chinchou	Water	Electric	330	75	38	38	56	56	67	2	FALSE
1287	Lanturn	Water	Electric	460	125	58	58	76	76	67	2	FALSE
1288	Pichu	Electric		205	20	40	15	35	35	60	2	FALSE
1289	Cleffa	Fairy		218	50	25	28	45	55	15	2	FALSE
1290	Igglybuff	Normal	Fairy	210	90	30	15	40	20	15	2	FALSE
1291	Togepi	Fairy		245	35	20	65	40	65	20	2	FALSE
1292	Togetic	Fairy	Flying	405	55	40	85	80	105	40	2	FALSE
1293	Natu	Psychic	Flying	320	40	50	45	70	45	70	2	FALSE
1294	Xatu	Psychic	Flying	470	65	75	70	95	70	95	2	FALSE
1295	Mareep	Electric		280	55	40	40	65	45	35	2	FALSE
1296	Flaaffy	Electric		365	70	55	55	80	60	45	2	FALSE
1297	AmpharosMega Ampharos	Electric	Dragon	610	90	95	105	165	110	45	2	FALSE
1298	Ampharos	Electric		510	90	75	85	115	90	55	2	FALSE
1299	Bellossom	Grass		490	75	80	95	90	100	50	2	FALSE
1300	Marill	Water	Fairy	250	70	20	50	20	50	40	2	FALSE
1301	Azumarill	Water	Fairy	420	100	50	80	60	80	50	2	FALSE
1302	Sudowoodo	Rock		410	70	100	115	30	65	30	2	FALSE
1303	Politoed	Water		500	90	75	75	90	100	70	2	FALSE
1304	Hoppip	Grass	Flying	250	35	35	40	35	55	50	2	FALSE
1305	Skiploom	Grass	Flying	340	55	45	50	45	65	80	2	FALSE
1306	Jumpluff	Grass	Flying	460	75	55	70	55	95	110	2	FALSE
1307	Aipom	Normal		360	55	70	55	40	55	85	2	FALSE
1308	Sunkern	Grass		180	30	30	30	30	30	30	2	FALSE
1309	Sunflora	Grass		425	75	75	55	105	85	30	2	FALSE
1310	Yanma	Bug	Flying	390	65	65	45	75	45	95	2	FALSE
1311	Wooper	Water	Ground	210	55	45	45	25	25	15	2	FALSE
1312	Quagsire	Water	Ground	430	95	85	85	65	65	35	2	FALSE
1313	Espeon	Psychic		525	65	65	60	130	95	110	2	FALSE
1314	Umbreon	Dark		525	95	65	110	60	130	65	2	FALSE
1315	Murkrow	Dark	Flying	405	60	85	42	85	42	91	2	FALSE
1316	Slowking	Water	Psychic	490	95	75	80	100	110	30	2	FALSE
1317	Misdreavus	Ghost		435	60	60	60	85	85	85	2	FALSE
1318	Unown	Psychic		336	48	72	48	72	48	48	2	FALSE
1319	Wobbuffet	Psychic		405	190	33	58	33	58	33	2	FALSE
1320	Girafarig	Normal	Psychic	455	70	80	65	90	65	85	2	FALSE
1321	Pineco	Bug		290	50	65	90	35	35	15	2	FALSE
1322	Forretress	Bug	Steel	465	75	90	140	60	60	40	2	FALSE
1323	Dunsparce	Normal		415	100	70	70	65	65	45	2	FALSE
1324	Gligar	Ground	Flying	430	65	75	105	35	65	85	2	FALSE
1325	SteelixMega Steelix	Steel	Ground	610	75	125	230	55	95	30	2	FALSE
1326	Steelix	Steel	Ground	510	75	85	200	55	65	30	2	FALSE
1327	Snubbull	Fairy		300	60	80	50	40	40	30	2	FALSE
1328	Granbull	Fairy		450	90	120	75	60	60	45	2	FALSE
1329	Qwilfish	Water	Poison	430	65	95	75	55	55	85	2	FALSE
1330	ScizorMega Scizor	Bug	Steel	600	70	150	140	65	100	75	2	FALSE
1331	Scizor	Bug	Steel	500	70	130	100	55	80	65	2	FALSE
1332	Shuckle	Bug	Rock	505	20	10	230	10	230	5	2	FALSE
1333	HeracrossMega Heracross	Bug	Fighting	600	80	185	115	40	105	75	2	FALSE
1334	Heracross	Bug	Fighting	500	80	125	75	40	95	85	2	FALSE
1335	Sneasel	Dark	Ice	430	55	95	55	35	75	115	2	FALSE
1336	Teddiursa	Normal		330	60	80	50	50	50	40	2	FALSE
1337	Ursaring	Normal		500	90	130	75	75	75	55	2	FALSE
1338	Slugma	Fire		250	40	40	40	70	40	20	2	FALSE
1339	Magcargo	Fire	Rock	410	50	50	120	80	80	30	2	FALSE
1340	Swinub	Ice	Ground	250	50	50	40	30	30	50	2	FALSE
1341	Piloswine	Ice	Ground	450	100	100	80	60	60	50	2	FALSE
1342	Corsola	Water	Rock	380	55	55	85	65	85	35	2	FALSE
1343	Remoraid	Water		300	35	65	35	65	35	65	2	FALSE
1344	Octillery	Water		480	75	105	75	105	75	45	2	FALSE
1345	Delibird	Ice	Flying	330	45	55	45	65	45	75	2	FALSE
1346	Mantine	Water	Flying	465	65	40	70	80	140	70	2	FALSE
1347	Skarmory	Steel	Flying	465	65	80	140	40	70	70	2	FALSE
1348	Houndour	Dark	Fire	330	45	60	30	80	50	65	2	FALSE
1349	HoundoomMega Houndoom	Dark	Fire	600	75	90	90	140	90	115	2	FALSE
1350	Houndoom	Dark	Fire	500	75	90	50	110	80	95	2	FALSE
1351	Kingdra	Water	Dragon	540	75	95	95	95	95	85	2	FALSE
1352	Phanpy	Ground		330	90	60	60	40	40	40	2	FALSE
1353	Donphan	Ground		500	90	120	120	60	60	50	2	FALSE
1354	Porygon2	Normal		515	85	80	90	105	95	60	2	FALSE
1355	Stantler	Normal		465	73	95	62	85	65	85	2	FALSE
1356	Smeargle	Normal		250	55	20	35	20	45	75	2	FALSE
1357	Tyrogue	Fighting		210	35	35	35	35	35	35	2	FALSE
1358	Hitmontop	Fighting		455	50	95	95	35	110	70	2	FALSE
1359	Smoochum	Ice	Psychic	305	45	30	15	85	65	65	2	FALSE
1360	Elekid	Electric		360	45	63	37	65	55	95	2	FALSE
1361	Magby	Fire		365	45	75	37	70	55	83	2	FALSE
1362	Miltank	Normal		490	95	80	105	40	70	100	2	FALSE
1363	Blissey	Normal		540	255	10	10	75	135	55	2	FALSE
1364	Raikou	Electric		580	90	85	75	115	100	115	2	TRUE
1365	Entei	Fire		580	115	115	85	90	75	100	2	TRUE
1366	Suicune	Water		580	100	75	115	90	115	85	2	TRUE
1367	Larvitar	Rock	Ground	300	50	64	50	45	50	41	2	FALSE
1368	Pupitar	Rock	Ground	410	70	84	70	65	70	51	2	FALSE
1369	TyranitarMega Tyranitar	Rock	Dark	700	100	164	150	95	120	71	2	FALSE
1370	Tyranitar	Rock	Dark	600	100	134	110	95	100	61	2	FALSE
1371	Lugia	Psychic	Flying	680	106	90	130	90	154	110	2	TRUE
1372	Ho-oh	Fire	Flying	680	106	130	90	110	154	90	2	TRUE
1373	Celebi	Psychic	Grass	600	100	100	100	100	100	100	2	FALSE
1374	Treecko	Grass		310	40	45	35	65	55	70	3	FALSE
1375	Grovyle	Grass		405	50	65	45	85	65	95	3	FALSE
1376	SceptileMega Sceptile	Grass	Dragon	630	70	110	75	145	85	145	3	FALSE
1377	Sceptile	Grass		530	70	85	65	105	85	120	3	FALSE
1378	Torchic	Fire		310	45	60	40	70	50	45	3	FALSE
1379	Combusken	Fire	Fighting	405	60	85	60	85	60	55	3	FALSE
1380	BlazikenMega Blaziken	Fire	Fighting	630	80	160	80	130	80	100	3	FALSE
1381	Blaziken	Fire	Fighting	530	80	120	70	110	70	80	3	FALSE
1382	Mudkip	Water		310	50	70	50	50	50	40	3	FALSE
1383	Marshtomp	Water	Ground	405	70	85	70	60	70	50	3	FALSE
1384	SwampertMega Swampert	Water	Ground	635	100	150	110	95	110	70	3	FALSE
1385	Swampert	Water	Ground	535	100	110	90	85	90	60	3	FALSE
1386	Poochyena	Dark		220	35	55	35	30	30	35	3	FALSE
1387	Mightyena	Dark		420	70	90	70	60	60	70	3	FALSE
1388	Zigzagoon	Normal		240	38	30	41	30	41	60	3	FALSE
1389	Linoone	Normal		420	78	70	61	50	61	100	3	FALSE
1390	Wurmple	Bug		195	45	45	35	20	30	20	3	FALSE
1391	Silcoon	Bug		205	50	35	55	25	25	15	3	FALSE
1392	Beautifly	Bug	Flying	395	60	70	50	100	50	65	3	FALSE
1393	Cascoon	Bug		205	50	35	55	25	25	15	3	FALSE
1394	Dustox	Bug	Poison	385	60	50	70	50	90	65	3	FALSE
1395	Lotad	Water	Grass	220	40	30	30	40	50	30	3	FALSE
1396	Lombre	Water	Grass	340	60	50	50	60	70	50	3	FALSE
1397	Ludicolo	Water	Grass	480	80	70	70	90	100	70	3	FALSE
1398	Seedot	Grass		220	40	40	50	30	30	30	3	FALSE
1399	Nuzleaf	Grass	Dark	340	70	70	40	60	40	60	3	FALSE
1400	Shiftry	Grass	Dark	480	90	100	60	90	60	80	3	FALSE
1401	Taillow	Normal	Flying	270	40	55	30	30	30	85	3	FALSE
1402	Swellow	Normal	Flying	430	60	85	60	50	50	125	3	FALSE
1403	Wingull	Water	Flying	270	40	30	30	55	30	85	3	FALSE
1404	Pelipper	Water	Flying	430	60	50	100	85	70	65	3	FALSE
1405	Ralts	Psychic	Fairy	198	28	25	25	45	35	40	3	FALSE
1406	Kirlia	Psychic	Fairy	278	38	35	35	65	55	50	3	FALSE
1407	GardevoirMega Gardevoir	Psychic	Fairy	618	68	85	65	165	135	100	3	FALSE
1408	Gardevoir	Psychic	Fairy	518	68	65	65	125	115	80	3	FALSE
1409	Surskit	Bug	Water	269	40	30	32	50	52	65	3	FALSE
1410	Masquerain	Bug	Flying	414	70	60	62	80	82	60	3	FALSE
1411	Shroomish	Grass		295	60	40	60	40	60	35	3	FALSE
1412	Breloom	Grass	Fighting	460	60	130	80	60	60	70	3	FALSE
1413	Slakoth	Normal		280	60	60	60	35	35	30	3	FALSE
1414	Vigoroth	Normal		440	80	80	80	55	55	90	3	FALSE
1415	Slaking	Normal		670	150	160	100	95	65	100	3	FALSE
1416	Nincada	Bug	Ground	266	31	45	90	30	30	40	3	FALSE
1417	Ninjask	Bug	Flying	456	61	90	45	50	50	160	3	FALSE
1418	Shedinja	Bug	Ghost	236	1	90	45	30	30	40	3	FALSE
1419	Whismur	Normal		240	64	51	23	51	23	28	3	FALSE
1420	Loudred	Normal		360	84	71	43	71	43	48	3	FALSE
1421	Exploud	Normal		490	104	91	63	91	73	68	3	FALSE
1422	Makuhita	Fighting		237	72	60	30	20	30	25	3	FALSE
1423	Hariyama	Fighting		474	144	120	60	40	60	50	3	FALSE
1424	Azurill	Normal	Fairy	190	50	20	40	20	40	20	3	FALSE
1425	Nosepass	Rock		375	30	45	135	45	90	30	3	FALSE
1426	Skitty	Normal		260	50	45	45	35	35	50	3	FALSE
1427	Delcatty	Normal		380	70	65	65	55	55	70	3	FALSE
1428	SableyeMega Sableye	Dark	Ghost	480	50	85	125	85	115	20	3	FALSE
1429	Sableye	Dark	Ghost	380	50	75	75	65	65	50	3	FALSE
1430	MawileMega Mawile	Steel	Fairy	480	50	105	125	55	95	50	3	FALSE
1431	Mawile	Steel	Fairy	380	50	85	85	55	55	50	3	FALSE
1432	Aron	Steel	Rock	330	50	70	100	40	40	30	3	FALSE
1433	Lairon	Steel	Rock	430	60	90	140	50	50	40	3	FALSE
1434	AggronMega Aggron	Steel		630	70	140	230	60	80	50	3	FALSE
1435	Aggron	Steel	Rock	530	70	110	180	60	60	50	3	FALSE
1436	Meditite	Fighting	Psychic	280	30	40	55	40	55	60	3	FALSE
1437	MedichamMega Medicham	Fighting	Psychic	510	60	100	85	80	85	100	3	FALSE
1438	Medicham	Fighting	Psychic	410	60	60	75	60	75	80	3	FALSE
1439	Electrike	Electric		295	40	45	40	65	40	65	3	FALSE
1440	ManectricMega Manectric	Electric		575	70	75	80	135	80	135	3	FALSE
1441	Manectric	Electric		475	70	75	60	105	60	105	3	FALSE
1442	Plusle	Electric		405	60	50	40	85	75	95	3	FALSE
1443	Minun	Electric		405	60	40	50	75	85	95	3	FALSE
1444	Volbeat	Bug		400	65	73	55	47	75	85	3	FALSE
1445	Illumise	Bug		400	65	47	55	73	75	85	3	FALSE
1446	Roselia	Grass	Poison	400	50	60	45	100	80	65	3	FALSE
1447	Gulpin	Poison		302	70	43	53	43	53	40	3	FALSE
1448	Swalot	Poison		467	100	73	83	73	83	55	3	FALSE
1449	Carvanha	Water	Dark	305	45	90	20	65	20	65	3	FALSE
1450	SharpedoMega Sharpedo	Water	Dark	560	70	140	70	110	65	105	3	FALSE
1451	Sharpedo	Water	Dark	460	70	120	40	95	40	95	3	FALSE
1452	Wailmer	Water		400	130	70	35	70	35	60	3	FALSE
1453	Wailord	Water		500	170	90	45	90	45	60	3	FALSE
1454	Numel	Fire	Ground	305	60	60	40	65	45	35	3	FALSE
1455	CameruptMega Camerupt	Fire	Ground	560	70	120	100	145	105	20	3	FALSE
1456	Camerupt	Fire	Ground	460	70	100	70	105	75	40	3	FALSE
1457	Torkoal	Fire		470	70	85	140	85	70	20	3	FALSE
1458	Spoink	Psychic		330	60	25	35	70	80	60	3	FALSE
1459	Grumpig	Psychic		470	80	45	65	90	110	80	3	FALSE
1460	Spinda	Normal		360	60	60	60	60	60	60	3	FALSE
1461	Trapinch	Ground		290	45	100	45	45	45	10	3	FALSE
1462	Vibrava	Ground	Dragon	340	50	70	50	50	50	70	3	FALSE
1463	Flygon	Ground	Dragon	520	80	100	80	80	80	100	3	FALSE
1464	Cacnea	Grass		335	50	85	40	85	40	35	3	FALSE
1465	Cacturne	Grass	Dark	475	70	115	60	115	60	55	3	FALSE
1466	Swablu	Normal	Flying	310	45	40	60	40	75	50	3	FALSE
1467	AltariaMega Altaria	Dragon	Fairy	590	75	110	110	110	105	80	3	FALSE
1468	Altaria	Dragon	Flying	490	75	70	90	70	105	80	3	FALSE
1469	Zangoose	Normal		458	73	115	60	60	60	90	3	FALSE
1470	Seviper	Poison		458	73	100	60	100	60	65	3	FALSE
1471	Lunatone	Rock	Psychic	440	70	55	65	95	85	70	3	FALSE
1472	Solrock	Rock	Psychic	440	70	95	85	55	65	70	3	FALSE
1473	Barboach	Water	Ground	288	50	48	43	46	41	60	3	FALSE
1474	Whiscash	Water	Ground	468	110	78	73	76	71	60	3	FALSE
1475	Corphish	Water		308	43	80	65	50	35	35	3	FALSE
1476	Crawdaunt	Water	Dark	468	63	120	85	90	55	55	3	FALSE
1477	Baltoy	Ground	Psychic	300	40	40	55	40	70	55	3	FALSE
1478	Claydol	Ground	Psychic	500	60	70	105	70	120	75	3	FALSE
1479	Lileep	Rock	Grass	355	66	41	77	61	87	23	3	FALSE
1480	Cradily	Rock	Grass	495	86	81	97	81	107	43	3	FALSE
1481	Anorith	Rock	Bug	355	45	95	50	40	50	75	3	FALSE
1482	Armaldo	Rock	Bug	495	75	125	100	70	80	45	3	FALSE
1483	Feebas	Water		200	20	15	20	10	55	80	3	FALSE
1484	Milotic	Water		540	95	60	79	100	125	81	3	FALSE
1485	Castform	Normal		420	70	70	70	70	70	70	3	FALSE
1486	Kecleon	Normal		440	60	90	70	60	120	40	3	FALSE
1487	Shuppet	Ghost		295	44	75	35	63	33	45	3	FALSE
1488	BanetteMega Banette	Ghost		555	64	165	75	93	83	75	3	FALSE
1489	Banette	Ghost		455	64	115	65	83	63	65	3	FALSE
1490	Duskull	Ghost		295	20	40	90	30	90	25	3	FALSE
1491	Dusclops	Ghost		455	40	70	130	60	130	25	3	FALSE
1492	Tropius	Grass	Flying	460	99	68	83	72	87	51	3	FALSE
1493	Chimecho	Psychic		425	65	50	70	95	80	65	3	FALSE
1494	AbsolMega Absol	Dark		565	65	150	60	115	60	115	3	FALSE
1495	Absol	Dark		465	65	130	60	75	60	75	3	FALSE
1496	Wynaut	Psychic		260	95	23	48	23	48	23	3	FALSE
1497	Snorunt	Ice		300	50	50	50	50	50	50	3	FALSE
1498	GlalieMega Glalie	Ice		580	80	120	80	120	80	100	3	FALSE
1499	Glalie	Ice		480	80	80	80	80	80	80	3	FALSE
1500	Spheal	Ice	Water	290	70	40	50	55	50	25	3	FALSE
1501	Sealeo	Ice	Water	410	90	60	70	75	70	45	3	FALSE
1502	Walrein	Ice	Water	530	110	80	90	95	90	65	3	FALSE
1503	Clamperl	Water		345	35	64	85	74	55	32	3	FALSE
1504	Huntail	Water		485	55	104	105	94	75	52	3	FALSE
1505	Gorebyss	Water		485	55	84	105	114	75	52	3	FALSE
1506	Relicanth	Water	Rock	485	100	90	130	45	65	55	3	FALSE
1507	Luvdisc	Water		330	43	30	55	40	65	97	3	FALSE
1508	Bagon	Dragon		300	45	75	60	40	30	50	3	FALSE
1509	Shelgon	Dragon		420	65	95	100	60	50	50	3	FALSE
1510	SalamenceMega Salamence	Dragon	Flying	700	95	145	130	120	90	120	3	FALSE
1511	Salamence	Dragon	Flying	600	95	135	80	110	80	100	3	FALSE
1512	Beldum	Steel	Psychic	300	40	55	80	35	60	30	3	FALSE
1513	Metang	Steel	Psychic	420	60	75	100	55	80	50	3	FALSE
1514	MetagrossMega Metagross	Steel	Psychic	700	80	145	150	105	110	110	3	FALSE
1515	Metagross	Steel	Psychic	600	80	135	130	95	90	70	3	FALSE
1516	Regirock	Rock		580	80	100	200	50	100	50	3	TRUE
1517	Regice	Ice		580	80	50	100	100	200	50	3	TRUE
1518	Registeel	Steel		580	80	75	150	75	150	50	3	TRUE
1519	LatiasMega Latias	Dragon	Psychic	700	80	100	120	140	150	110	3	TRUE
1520	Latias	Dragon	Psychic	600	80	80	90	110	130	110	3	TRUE
1521	LatiosMega Latios	Dragon	Psychic	700	80	130	100	160	120	110	3	TRUE
1522	Latios	Dragon	Psychic	600	80	90	80	130	110	110	3	TRUE
1523	KyogrePrimal Kyogre	Water		770	100	150	90	180	160	90	3	TRUE
1524	Kyogre	Water		670	100	100	90	150	140	90	3	TRUE
1525	GroudonPrimal Groudon	Ground	Fire	770	100	180	160	150	90	90	3	TRUE
1526	Groudon	Ground		670	100	150	140	100	90	90	3	TRUE
1527	RayquazaMega Rayquaza	Dragon	Flying	780	105	180	100	180	100	115	3	TRUE
1528	Rayquaza	Dragon	Flying	680	105	150	90	150	90	95	3	TRUE
1529	Jirachi	Steel	Psychic	600	100	100	100	100	100	100	3	TRUE
1530	DeoxysSpeed Forme	Psychic		600	50	95	90	95	90	180	3	TRUE
1531	DeoxysNormal Forme	Psychic		600	50	150	50	150	50	150	3	TRUE
1532	DeoxysDefense Forme	Psychic		600	50	70	160	70	160	90	3	TRUE
1533	DeoxysAttack Forme	Psychic		600	50	180	20	180	20	150	3	TRUE
1534	Turtwig	Grass		318	55	68	64	45	55	31	4	FALSE
1535	Grotle	Grass		405	75	89	85	55	65	36	4	FALSE
1536	Torterra	Grass	Ground	525	95	109	105	75	85	56	4	FALSE
1537	Chimchar	Fire		309	44	58	44	58	44	61	4	FALSE
1538	Monferno	Fire	Fighting	405	64	78	52	78	52	81	4	FALSE
1539	Infernape	Fire	Fighting	534	76	104	71	104	71	108	4	FALSE
1540	Piplup	Water		314	53	51	53	61	56	40	4	FALSE
1541	Prinplup	Water		405	64	66	68	81	76	50	4	FALSE
1542	Empoleon	Water	Steel	530	84	86	88	111	101	60	4	FALSE
1543	Starly	Normal	Flying	245	40	55	30	30	30	60	4	FALSE
1544	Staravia	Normal	Flying	340	55	75	50	40	40	80	4	FALSE
1545	Staraptor	Normal	Flying	485	85	120	70	50	60	100	4	FALSE
1546	Bidoof	Normal		250	59	45	40	35	40	31	4	FALSE
1547	Bibarel	Normal	Water	410	79	85	60	55	60	71	4	FALSE
1548	Kricketot	Bug		194	37	25	41	25	41	25	4	FALSE
1549	Kricketune	Bug		384	77	85	51	55	51	65	4	FALSE
1550	Shinx	Electric		263	45	65	34	40	34	45	4	FALSE
1551	Luxio	Electric		363	60	85	49	60	49	60	4	FALSE
1552	Luxray	Electric		523	80	120	79	95	79	70	4	FALSE
1553	Budew	Grass	Poison	280	40	30	35	50	70	55	4	FALSE
1554	Roserade	Grass	Poison	515	60	70	65	125	105	90	4	FALSE
1555	Cranidos	Rock		350	67	125	40	30	30	58	4	FALSE
1556	Rampardos	Rock		495	97	165	60	65	50	58	4	FALSE
1557	Shieldon	Rock	Steel	350	30	42	118	42	88	30	4	FALSE
1558	Bastiodon	Rock	Steel	495	60	52	168	47	138	30	4	FALSE
1559	Burmy	Bug		224	40	29	45	29	45	36	4	FALSE
1560	WormadamTrash Cloak	Bug	Steel	424	60	69	95	69	95	36	4	FALSE
1561	WormadamSandy Cloak	Bug	Ground	424	60	79	105	59	85	36	4	FALSE
1562	WormadamPlant Cloak	Bug	Grass	424	60	59	85	79	105	36	4	FALSE
1563	Mothim	Bug	Flying	424	70	94	50	94	50	66	4	FALSE
1564	Combee	Bug	Flying	244	30	30	42	30	42	70	4	FALSE
1565	Vespiquen	Bug	Flying	474	70	80	102	80	102	40	4	FALSE
1566	Pachirisu	Electric		405	60	45	70	45	90	95	4	FALSE
1567	Buizel	Water		330	55	65	35	60	30	85	4	FALSE
1568	Floatzel	Water		495	85	105	55	85	50	115	4	FALSE
1569	Cherubi	Grass		275	45	35	45	62	53	35	4	FALSE
1570	Cherrim	Grass		450	70	60	70	87	78	85	4	FALSE
1571	Shellos	Water		325	76	48	48	57	62	34	4	FALSE
1572	Gastrodon	Water	Ground	475	111	83	68	92	82	39	4	FALSE
1573	Ambipom	Normal		482	75	100	66	60	66	115	4	FALSE
1574	Drifloon	Ghost	Flying	348	90	50	34	60	44	70	4	FALSE
1575	Drifblim	Ghost	Flying	498	150	80	44	90	54	80	4	FALSE
1576	Buneary	Normal		350	55	66	44	44	56	85	4	FALSE
1577	LopunnyMega Lopunny	Normal	Fighting	580	65	136	94	54	96	135	4	FALSE
1578	Lopunny	Normal		480	65	76	84	54	96	105	4	FALSE
1579	Mismagius	Ghost		495	60	60	60	105	105	105	4	FALSE
1580	Honchkrow	Dark	Flying	505	100	125	52	105	52	71	4	FALSE
1581	Glameow	Normal		310	49	55	42	42	37	85	4	FALSE
1582	Purugly	Normal		452	71	82	64	64	59	112	4	FALSE
1583	Chingling	Psychic		285	45	30	50	65	50	45	4	FALSE
1584	Stunky	Poison	Dark	329	63	63	47	41	41	74	4	FALSE
1585	Skuntank	Poison	Dark	479	103	93	67	71	61	84	4	FALSE
1586	Bronzor	Steel	Psychic	300	57	24	86	24	86	23	4	FALSE
1587	Bronzong	Steel	Psychic	500	67	89	116	79	116	33	4	FALSE
1588	Bonsly	Rock		290	50	80	95	10	45	10	4	FALSE
1589	Mime Jr.	Psychic	Fairy	310	20	25	45	70	90	60	4	FALSE
1590	Happiny	Normal		220	100	5	5	15	65	30	4	FALSE
1591	Chatot	Normal	Flying	411	76	65	45	92	42	91	4	FALSE
1592	Spiritomb	Ghost	Dark	485	50	92	108	92	108	35	4	FALSE
1593	Gible	Dragon	Ground	300	58	70	45	40	45	42	4	FALSE
1594	Gabite	Dragon	Ground	410	68	90	65	50	55	82	4	FALSE
1595	GarchompMega Garchomp	Dragon	Ground	700	108	170	115	120	95	92	4	FALSE
1596	Garchomp	Dragon	Ground	600	108	130	95	80	85	102	4	FALSE
1597	Munchlax	Normal		390	135	85	40	40	85	5	4	FALSE
1598	Riolu	Fighting		285	40	70	40	35	40	60	4	FALSE
1599	LucarioMega Lucario	Fighting	Steel	625	70	145	88	140	70	112	4	FALSE
1600	Lucario	Fighting	Steel	525	70	110	70	115	70	90	4	FALSE
1601	Hippopotas	Ground		330	68	72	78	38	42	32	4	FALSE
1602	Hippowdon	Ground		525	108	112	118	68	72	47	4	FALSE
1603	Skorupi	Poison	Bug	330	40	50	90	30	55	65	4	FALSE
1604	Drapion	Poison	Dark	500	70	90	110	60	75	95	4	FALSE
1605	Croagunk	Poison	Fighting	300	48	61	40	61	40	50	4	FALSE
1606	Toxicroak	Poison	Fighting	490	83	106	65	86	65	85	4	FALSE
1607	Carnivine	Grass		454	74	100	72	90	72	46	4	FALSE
1608	Finneon	Water		330	49	49	56	49	61	66	4	FALSE
1609	Lumineon	Water		460	69	69	76	69	86	91	4	FALSE
1610	Mantyke	Water	Flying	345	45	20	50	60	120	50	4	FALSE
1611	Snover	Grass	Ice	334	60	62	50	62	60	40	4	FALSE
1612	AbomasnowMega Abomasnow	Grass	Ice	594	90	132	105	132	105	30	4	FALSE
1613	Abomasnow	Grass	Ice	494	90	92	75	92	85	60	4	FALSE
1614	Weavile	Dark	Ice	510	70	120	65	45	85	125	4	FALSE
1615	Magnezone	Electric	Steel	535	70	70	115	130	90	60	4	FALSE
1616	Lickilicky	Normal		515	110	85	95	80	95	50	4	FALSE
1617	Rhyperior	Ground	Rock	535	115	140	130	55	55	40	4	FALSE
1618	Tangrowth	Grass		535	100	100	125	110	50	50	4	FALSE
1619	Electivire	Electric		540	75	123	67	95	85	95	4	FALSE
1620	Magmortar	Fire		540	75	95	67	125	95	83	4	FALSE
1621	Togekiss	Fairy	Flying	545	85	50	95	120	115	80	4	FALSE
1622	Yanmega	Bug	Flying	515	86	76	86	116	56	95	4	FALSE
1623	Leafeon	Grass		525	65	110	130	60	65	95	4	FALSE
1624	Glaceon	Ice		525	65	60	110	130	95	65	4	FALSE
1625	Gliscor	Ground	Flying	510	75	95	125	45	75	95	4	FALSE
1626	Mamoswine	Ice	Ground	530	110	130	80	70	60	80	4	FALSE
1627	Porygon-Z	Normal		535	85	80	70	135	75	90	4	FALSE
1628	GalladeMega Gallade	Psychic	Fighting	618	68	165	95	65	115	110	4	FALSE
1629	Gallade	Psychic	Fighting	518	68	125	65	65	115	80	4	FALSE
1630	Probopass	Rock	Steel	525	60	55	145	75	150	40	4	FALSE
1631	Dusknoir	Ghost		525	45	100	135	65	135	45	4	FALSE
1632	Froslass	Ice	Ghost	480	70	80	70	80	70	110	4	FALSE
1633	RotomWash Rotom	Electric	Water	520	50	65	107	105	107	86	4	FALSE
1634	RotomMow Rotom	Electric	Grass	520	50	65	107	105	107	86	4	FALSE
1635	RotomHeat Rotom	Electric	Fire	520	50	65	107	105	107	86	4	FALSE
1636	RotomFrost Rotom	Electric	Ice	520	50	65	107	105	107	86	4	FALSE
1637	RotomFan Rotom	Electric	Flying	520	50	65	107	105	107	86	4	FALSE
1638	Rotom	Electric	Ghost	440	50	50	77	95	77	91	4	FALSE
1639	Uxie	Psychic		580	75	75	130	75	130	95	4	TRUE
1640	Mesprit	Psychic		580	80	105	105	105	105	80	4	TRUE
1641	Azelf	Psychic		580	75	125	70	125	70	115	4	TRUE
1642	Dialga	Steel	Dragon	680	100	120	120	150	100	90	4	TRUE
1643	Palkia	Water	Dragon	680	90	120	100	150	120	100	4	TRUE
1644	Heatran	Fire	Steel	600	91	90	106	130	106	77	4	TRUE
1645	Regigigas	Normal		670	110	160	110	80	110	100	4	TRUE
1646	GiratinaOrigin Forme	Ghost	Dragon	680	150	120	100	120	100	90	4	TRUE
1647	GiratinaAltered Forme	Ghost	Dragon	680	150	100	120	100	120	90	4	TRUE
1648	Cresselia	Psychic		600	120	70	120	75	130	85	4	FALSE
1649	Phione	Water		480	80	80	80	80	80	80	4	FALSE
1650	Manaphy	Water		600	100	100	100	100	100	100	4	FALSE
1651	Darkrai	Dark		600	70	90	90	135	90	125	4	TRUE
1652	ShayminSky Forme	Grass	Flying	600	100	103	75	120	75	127	4	TRUE
1653	ShayminLand Forme	Grass		600	100	100	100	100	100	100	4	TRUE
1654	Arceus	Normal		720	120	120	120	120	120	120	4	TRUE
1655	Victini	Psychic	Fire	600	100	100	100	100	100	100	5	TRUE
1656	Snivy	Grass		308	45	45	55	45	55	63	5	FALSE
1657	Servine	Grass		413	60	60	75	60	75	83	5	FALSE
1658	Serperior	Grass		528	75	75	95	75	95	113	5	FALSE
1659	Tepig	Fire		308	65	63	45	45	45	45	5	FALSE
1660	Pignite	Fire	Fighting	418	90	93	55	70	55	55	5	FALSE
1661	Emboar	Fire	Fighting	528	110	123	65	100	65	65	5	FALSE
1662	Oshawott	Water		308	55	55	45	63	45	45	5	FALSE
1663	Dewott	Water		413	75	75	60	83	60	60	5	FALSE
1664	Samurott	Water		528	95	100	85	108	70	70	5	FALSE
1665	Patrat	Normal		255	45	55	39	35	39	42	5	FALSE
1666	Watchog	Normal		420	60	85	69	60	69	77	5	FALSE
1667	Lillipup	Normal		275	45	60	45	25	45	55	5	FALSE
1668	Herdier	Normal		370	65	80	65	35	65	60	5	FALSE
1669	Stoutland	Normal		500	85	110	90	45	90	80	5	FALSE
1670	Purrloin	Dark		281	41	50	37	50	37	66	5	FALSE
1671	Liepard	Dark		446	64	88	50	88	50	106	5	FALSE
1672	Pansage	Grass		316	50	53	48	53	48	64	5	FALSE
1673	Simisage	Grass		498	75	98	63	98	63	101	5	FALSE
1674	Pansear	Fire		316	50	53	48	53	48	64	5	FALSE
1675	Simisear	Fire		498	75	98	63	98	63	101	5	FALSE
1676	Panpour	Water		316	50	53	48	53	48	64	5	FALSE
1677	Simipour	Water		498	75	98	63	98	63	101	5	FALSE
1678	Munna	Psychic		292	76	25	45	67	55	24	5	FALSE
1679	Musharna	Psychic		487	116	55	85	107	95	29	5	FALSE
1680	Pidove	Normal	Flying	264	50	55	50	36	30	43	5	FALSE
1681	Tranquill	Normal	Flying	358	62	77	62	50	42	65	5	FALSE
1682	Unfezant	Normal	Flying	488	80	115	80	65	55	93	5	FALSE
1683	Blitzle	Electric		295	45	60	32	50	32	76	5	FALSE
1684	Zebstrika	Electric		497	75	100	63	80	63	116	5	FALSE
1685	Roggenrola	Rock		280	55	75	85	25	25	15	5	FALSE
1686	Boldore	Rock		390	70	105	105	50	40	20	5	FALSE
1687	Gigalith	Rock		515	85	135	130	60	80	25	5	FALSE
1688	Woobat	Psychic	Flying	313	55	45	43	55	43	72	5	FALSE
1689	Swoobat	Psychic	Flying	425	67	57	55	77	55	114	5	FALSE
1690	Drilbur	Ground		328	60	85	40	30	45	68	5	FALSE
1691	Excadrill	Ground	Steel	508	110	135	60	50	65	88	5	FALSE
1692	AudinoMega Audino	Normal	Fairy	545	103	60	126	80	126	50	5	FALSE
1693	Audino	Normal		445	103	60	86	60	86	50	5	FALSE
1694	Timburr	Fighting		305	75	80	55	25	35	35	5	FALSE
1695	Gurdurr	Fighting		405	85	105	85	40	50	40	5	FALSE
1696	Conkeldurr	Fighting		505	105	140	95	55	65	45	5	FALSE
1697	Tympole	Water		294	50	50	40	50	40	64	5	FALSE
1698	Palpitoad	Water	Ground	384	75	65	55	65	55	69	5	FALSE
1699	Seismitoad	Water	Ground	509	105	95	75	85	75	74	5	FALSE
1700	Throh	Fighting		465	120	100	85	30	85	45	5	FALSE
1701	Sawk	Fighting		465	75	125	75	30	75	85	5	FALSE
1702	Sewaddle	Bug	Grass	310	45	53	70	40	60	42	5	FALSE
1703	Swadloon	Bug	Grass	380	55	63	90	50	80	42	5	FALSE
1704	Leavanny	Bug	Grass	500	75	103	80	70	80	92	5	FALSE
1705	Venipede	Bug	Poison	260	30	45	59	30	39	57	5	FALSE
1706	Whirlipede	Bug	Poison	360	40	55	99	40	79	47	5	FALSE
1707	Scolipede	Bug	Poison	485	60	100	89	55	69	112	5	FALSE
1708	Cottonee	Grass	Fairy	280	40	27	60	37	50	66	5	FALSE
1709	Whimsicott	Grass	Fairy	480	60	67	85	77	75	116	5	FALSE
1710	Petilil	Grass		280	45	35	50	70	50	30	5	FALSE
1711	Lilligant	Grass		480	70	60	75	110	75	90	5	FALSE
1712	Basculin	Water		460	70	92	65	80	55	98	5	FALSE
1713	Sandile	Ground	Dark	292	50	72	35	35	35	65	5	FALSE
1714	Krokorok	Ground	Dark	351	60	82	45	45	45	74	5	FALSE
1715	Krookodile	Ground	Dark	519	95	117	80	65	70	92	5	FALSE
1716	Darumaka	Fire		315	70	90	45	15	45	50	5	FALSE
1717	DarmanitanZen Mode	Fire	Psychic	540	105	30	105	140	105	55	5	FALSE
1718	DarmanitanStandard Mode	Fire		480	105	140	55	30	55	95	5	FALSE
1719	Maractus	Grass		461	75	86	67	106	67	60	5	FALSE
1720	Dwebble	Bug	Rock	325	50	65	85	35	35	55	5	FALSE
1721	Crustle	Bug	Rock	475	70	95	125	65	75	45	5	FALSE
1722	Scraggy	Dark	Fighting	348	50	75	70	35	70	48	5	FALSE
1723	Scrafty	Dark	Fighting	488	65	90	115	45	115	58	5	FALSE
1724	Sigilyph	Psychic	Flying	490	72	58	80	103	80	97	5	FALSE
1725	Yamask	Ghost		303	38	30	85	55	65	30	5	FALSE
1726	Cofagrigus	Ghost		483	58	50	145	95	105	30	5	FALSE
1727	Tirtouga	Water	Rock	355	54	78	103	53	45	22	5	FALSE
1728	Carracosta	Water	Rock	495	74	108	133	83	65	32	5	FALSE
1729	Archen	Rock	Flying	401	55	112	45	74	45	70	5	FALSE
1730	Archeops	Rock	Flying	567	75	140	65	112	65	110	5	FALSE
1731	Trubbish	Poison		329	50	50	62	40	62	65	5	FALSE
1732	Garbodor	Poison		474	80	95	82	60	82	75	5	FALSE
1733	Zorua	Dark		330	40	65	40	80	40	65	5	FALSE
1734	Zoroark	Dark		510	60	105	60	120	60	105	5	FALSE
1735	Minccino	Normal		300	55	50	40	40	40	75	5	FALSE
1736	Cinccino	Normal		470	75	95	60	65	60	115	5	FALSE
1737	Gothita	Psychic		290	45	30	50	55	65	45	5	FALSE
1738	Gothorita	Psychic		390	60	45	70	75	85	55	5	FALSE
1739	Gothitelle	Psychic		490	70	55	95	95	110	65	5	FALSE
1740	Solosis	Psychic		290	45	30	40	105	50	20	5	FALSE
1741	Duosion	Psychic		370	65	40	50	125	60	30	5	FALSE
1742	Reuniclus	Psychic		490	110	65	75	125	85	30	5	FALSE
1743	Ducklett	Water	Flying	305	62	44	50	44	50	55	5	FALSE
1744	Swanna	Water	Flying	473	75	87	63	87	63	98	5	FALSE
1745	Vanillite	Ice		305	36	50	50	65	60	44	5	FALSE
1746	Vanillish	Ice		395	51	65	65	80	75	59	5	FALSE
1747	Vanilluxe	Ice		535	71	95	85	110	95	79	5	FALSE
1748	Deerling	Normal	Grass	335	60	60	50	40	50	75	5	FALSE
1749	Sawsbuck	Normal	Grass	475	80	100	70	60	70	95	5	FALSE
1750	Emolga	Electric	Flying	428	55	75	60	75	60	103	5	FALSE
1751	Karrablast	Bug		315	50	75	45	40	45	60	5	FALSE
1752	Escavalier	Bug	Steel	495	70	135	105	60	105	20	5	FALSE
1753	Foongus	Grass	Poison	294	69	55	45	55	55	15	5	FALSE
1754	Amoonguss	Grass	Poison	464	114	85	70	85	80	30	5	FALSE
1755	Frillish	Water	Ghost	335	55	40	50	65	85	40	5	FALSE
1756	Jellicent	Water	Ghost	480	100	60	70	85	105	60	5	FALSE
1757	Alomomola	Water		470	165	75	80	40	45	65	5	FALSE
1758	Joltik	Bug	Electric	319	50	47	50	57	50	65	5	FALSE
1759	Galvantula	Bug	Electric	472	70	77	60	97	60	108	5	FALSE
1760	Ferroseed	Grass	Steel	305	44	50	91	24	86	10	5	FALSE
1761	Ferrothorn	Grass	Steel	489	74	94	131	54	116	20	5	FALSE
1762	Klink	Steel		300	40	55	70	45	60	30	5	FALSE
1763	Klang	Steel		440	60	80	95	70	85	50	5	FALSE
1764	Klinklang	Steel		520	60	100	115	70	85	90	5	FALSE
1765	Tynamo	Electric		275	35	55	40	45	40	60	5	FALSE
1766	Eelektrik	Electric		405	65	85	70	75	70	40	5	FALSE
1767	Eelektross	Electric		515	85	115	80	105	80	50	5	FALSE
1768	Elgyem	Psychic		335	55	55	55	85	55	30	5	FALSE
1769	Beheeyem	Psychic		485	75	75	75	125	95	40	5	FALSE
1770	Litwick	Ghost	Fire	275	50	30	55	65	55	20	5	FALSE
1771	Lampent	Ghost	Fire	370	60	40	60	95	60	55	5	FALSE
1772	Chandelure	Ghost	Fire	520	60	55	90	145	90	80	5	FALSE
1773	Axew	Dragon		320	46	87	60	30	40	57	5	FALSE
1774	Fraxure	Dragon		410	66	117	70	40	50	67	5	FALSE
1775	Haxorus	Dragon		540	76	147	90	60	70	97	5	FALSE
1776	Cubchoo	Ice		305	55	70	40	60	40	40	5	FALSE
1777	Beartic	Ice		485	95	110	80	70	80	50	5	FALSE
1778	Cryogonal	Ice		485	70	50	30	95	135	105	5	FALSE
1779	Shelmet	Bug		305	50	40	85	40	65	25	5	FALSE
1780	Accelgor	Bug		495	80	70	40	100	60	145	5	FALSE
1781	Stunfisk	Ground	Electric	471	109	66	84	81	99	32	5	FALSE
1782	Mienfoo	Fighting		350	45	85	50	55	50	65	5	FALSE
1783	Mienshao	Fighting		510	65	125	60	95	60	105	5	FALSE
1784	Druddigon	Dragon		485	77	120	90	60	90	48	5	FALSE
1785	Golett	Ground	Ghost	303	59	74	50	35	50	35	5	FALSE
1786	Golurk	Ground	Ghost	483	89	124	80	55	80	55	5	FALSE
1787	Pawniard	Dark	Steel	340	45	85	70	40	40	60	5	FALSE
1788	Bisharp	Dark	Steel	490	65	125	100	60	70	70	5	FALSE
1789	Bouffalant	Normal		490	95	110	95	40	95	55	5	FALSE
1790	Rufflet	Normal	Flying	350	70	83	50	37	50	60	5	FALSE
1791	Braviary	Normal	Flying	510	100	123	75	57	75	80	5	FALSE
1792	Vullaby	Dark	Flying	370	70	55	75	45	65	60	5	FALSE
1793	Mandibuzz	Dark	Flying	510	110	65	105	55	95	80	5	FALSE
1794	Heatmor	Fire		484	85	97	66	105	66	65	5	FALSE
1795	Durant	Bug	Steel	484	58	109	112	48	48	109	5	FALSE
1796	Deino	Dark	Dragon	300	52	65	50	45	50	38	5	FALSE
1797	Zweilous	Dark	Dragon	420	72	85	70	65	70	58	5	FALSE
1798	Hydreigon	Dark	Dragon	600	92	105	90	125	90	98	5	FALSE
1799	Larvesta	Bug	Fire	360	55	85	55	50	55	60	5	FALSE
1800	Volcarona	Bug	Fire	550	85	60	65	135	105	100	5	FALSE
1801	Cobalion	Steel	Fighting	580	91	90	129	90	72	108	5	TRUE
1802	Terrakion	Rock	Fighting	580	91	129	90	72	90	108	5	TRUE
1803	Virizion	Grass	Fighting	580	91	90	72	90	129	108	5	TRUE
1804	TornadusTherian Forme	Flying		580	79	100	80	110	90	121	5	TRUE
1805	TornadusIncarnate Forme	Flying		580	79	115	70	125	80	111	5	TRUE
1806	ThundurusTherian Forme	Electric	Flying	580	79	105	70	145	80	101	5	TRUE
1807	ThundurusIncarnate Forme	Electric	Flying	580	79	115	70	125	80	111	5	TRUE
1808	Reshiram	Dragon	Fire	680	100	120	100	150	120	90	5	TRUE
1809	Zekrom	Dragon	Electric	680	100	150	120	120	100	90	5	TRUE
1810	LandorusTherian Forme	Ground	Flying	600	89	145	90	105	80	91	5	TRUE
1811	LandorusIncarnate Forme	Ground	Flying	600	89	125	90	115	80	101	5	TRUE
1812	KyuremWhite Kyurem	Dragon	Ice	700	125	120	90	170	100	95	5	TRUE
1813	KyuremBlack Kyurem	Dragon	Ice	700	125	170	100	120	90	95	5	TRUE
1814	Kyurem	Dragon	Ice	660	125	130	90	130	90	95	5	TRUE
1815	KeldeoResolute Forme	Water	Fighting	580	91	72	90	129	90	108	5	FALSE
1816	KeldeoOrdinary Forme	Water	Fighting	580	91	72	90	129	90	108	5	FALSE
1817	MeloettaPirouette Forme	Normal	Fighting	600	100	128	90	77	77	128	5	FALSE
1818	MeloettaAria Forme	Normal	Psychic	600	100	77	77	128	128	90	5	FALSE
1819	Genesect	Bug	Steel	600	71	120	95	120	95	99	5	FALSE
1820	Chespin	Grass		313	56	61	65	48	45	38	6	FALSE
1821	Quilladin	Grass		405	61	78	95	56	58	57	6	FALSE
1822	Chesnaught	Grass	Fighting	530	88	107	122	74	75	64	6	FALSE
1823	Fennekin	Fire		307	40	45	40	62	60	60	6	FALSE
1824	Braixen	Fire		409	59	59	58	90	70	73	6	FALSE
1825	Delphox	Fire	Psychic	534	75	69	72	114	100	104	6	FALSE
1826	Froakie	Water		314	41	56	40	62	44	71	6	FALSE
1827	Frogadier	Water		405	54	63	52	83	56	97	6	FALSE
1828	Greninja	Water	Dark	530	72	95	67	103	71	122	6	FALSE
1829	Bunnelby	Normal		237	38	36	38	32	36	57	6	FALSE
1830	Diggersby	Normal	Ground	423	85	56	77	50	77	78	6	FALSE
1831	Fletchling	Normal	Flying	278	45	50	43	40	38	62	6	FALSE
1832	Fletchinder	Fire	Flying	382	62	73	55	56	52	84	6	FALSE
1833	Talonflame	Fire	Flying	499	78	81	71	74	69	126	6	FALSE
1834	Scatterbug	Bug		200	38	35	40	27	25	35	6	FALSE
1835	Spewpa	Bug		213	45	22	60	27	30	29	6	FALSE
1836	Vivillon	Bug	Flying	411	80	52	50	90	50	89	6	FALSE
1837	Litleo	Fire	Normal	369	62	50	58	73	54	72	6	FALSE
1838	Pyroar	Fire	Normal	507	86	68	72	109	66	106	6	FALSE
1839	Flabébé	Fairy		303	44	38	39	61	79	42	6	FALSE
1840	Floette	Fairy		371	54	45	47	75	98	52	6	FALSE
1841	Florges	Fairy		552	78	65	68	112	154	75	6	FALSE
1842	Skiddo	Grass		350	66	65	48	62	57	52	6	FALSE
1843	Gogoat	Grass		531	123	100	62	97	81	68	6	FALSE
1844	Pancham	Fighting		348	67	82	62	46	48	43	6	FALSE
1845	Pangoro	Fighting	Dark	495	95	124	78	69	71	58	6	FALSE
1846	Furfrou	Normal		472	75	80	60	65	90	102	6	FALSE
1847	Espurr	Psychic		355	62	48	54	63	60	68	6	FALSE
1848	MeowsticMale	Psychic		466	74	48	76	83	81	104	6	FALSE
1849	MeowsticFemale	Psychic		466	74	48	76	83	81	104	6	FALSE
1850	Honedge	Steel	Ghost	325	45	80	100	35	37	28	6	FALSE
1851	Doublade	Steel	Ghost	448	59	110	150	45	49	35	6	FALSE
1852	AegislashShield Forme	Steel	Ghost	520	60	50	150	50	150	60	6	FALSE
1853	AegislashBlade Forme	Steel	Ghost	520	60	150	50	150	50	60	6	FALSE
1854	Spritzee	Fairy		341	78	52	60	63	65	23	6	FALSE
1855	Aromatisse	Fairy		462	101	72	72	99	89	29	6	FALSE
1856	Swirlix	Fairy		341	62	48	66	59	57	49	6	FALSE
1857	Slurpuff	Fairy		480	82	80	86	85	75	72	6	FALSE
1858	Inkay	Dark	Psychic	288	53	54	53	37	46	45	6	FALSE
1859	Malamar	Dark	Psychic	482	86	92	88	68	75	73	6	FALSE
1860	Binacle	Rock	Water	306	42	52	67	39	56	50	6	FALSE
1861	Barbaracle	Rock	Water	500	72	105	115	54	86	68	6	FALSE
1862	Skrelp	Poison	Water	320	50	60	60	60	60	30	6	FALSE
1863	Dragalge	Poison	Dragon	494	65	75	90	97	123	44	6	FALSE
1864	Clauncher	Water		330	50	53	62	58	63	44	6	FALSE
1865	Clawitzer	Water		500	71	73	88	120	89	59	6	FALSE
1866	Helioptile	Electric	Normal	289	44	38	33	61	43	70	6	FALSE
1867	Heliolisk	Electric	Normal	481	62	55	52	109	94	109	6	FALSE
1868	Tyrunt	Rock	Dragon	362	58	89	77	45	45	48	6	FALSE
1869	Tyrantrum	Rock	Dragon	521	82	121	119	69	59	71	6	FALSE
1870	Amaura	Rock	Ice	362	77	59	50	67	63	46	6	FALSE
1871	Aurorus	Rock	Ice	521	123	77	72	99	92	58	6	FALSE
1872	Sylveon	Fairy		525	95	65	65	110	130	60	6	FALSE
1873	Hawlucha	Fighting	Flying	500	78	92	75	74	63	118	6	FALSE
1874	Dedenne	Electric	Fairy	431	67	58	57	81	67	101	6	FALSE
1875	Carbink	Rock	Fairy	500	50	50	150	50	150	50	6	FALSE
1876	Goomy	Dragon		300	45	50	35	55	75	40	6	FALSE
1877	Sliggoo	Dragon		452	68	75	53	83	113	60	6	FALSE
1878	Goodra	Dragon		600	90	100	70	110	150	80	6	FALSE
1879	Klefki	Steel	Fairy	470	57	80	91	80	87	75	6	FALSE
1880	Phantump	Ghost	Grass	309	43	70	48	50	60	38	6	FALSE
1881	Trevenant	Ghost	Grass	474	85	110	76	65	82	56	6	FALSE
1882	PumpkabooSuper Size	Ghost	Grass	335	59	66	70	44	55	41	6	FALSE
1883	PumpkabooSmall Size	Ghost	Grass	335	44	66	70	44	55	56	6	FALSE
1884	PumpkabooLarge Size	Ghost	Grass	335	54	66	70	44	55	46	6	FALSE
1885	PumpkabooAverage Size	Ghost	Grass	335	49	66	70	44	55	51	6	FALSE
1886	GourgeistSuper Size	Ghost	Grass	494	85	100	122	58	75	54	6	FALSE
1887	GourgeistSmall Size	Ghost	Grass	494	55	85	122	58	75	99	6	FALSE
1888	GourgeistLarge Size	Ghost	Grass	494	75	95	122	58	75	69	6	FALSE
1889	GourgeistAverage Size	Ghost	Grass	494	65	90	122	58	75	84	6	FALSE
1890	Bergmite	Ice		304	55	69	85	32	35	28	6	FALSE
1891	Avalugg	Ice		514	95	117	184	44	46	28	6	FALSE
1892	Noibat	Flying	Dragon	245	40	30	35	45	40	55	6	FALSE
1893	Noivern	Flying	Dragon	535	85	70	80	97	80	123	6	FALSE
1894	Xerneas	Fairy		680	126	131	95	131	98	99	6	TRUE
1895	Yveltal	Dark	Flying	680	126	131	95	131	98	99	6	TRUE
1896	Zygarde50% Forme	Dragon	Ground	600	108	100	121	81	95	95	6	TRUE
1897	DiancieMega Diancie	Rock	Fairy	700	50	160	110	160	110	110	6	TRUE
1898	Diancie	Rock	Fairy	600	50	100	150	100	150	50	6	TRUE
1899	HoopaHoopa Unbound	Psychic	Dark	680	80	160	60	170	130	80	6	TRUE
1900	HoopaHoopa Confined	Psychic	Ghost	600	80	110	60	150	130	70	6	TRUE
1901	Volcanion	Fire	Water	600	80	110	120	130	90	70	6	TRUE
1902	Rowlet	Grass	Flying	320	68	55	55	50	50	42	7	FALSE
1903	Dartrix	Grass	Flying	420	78	75	75	70	70	52	7	FALSE
1904	Decidueye	Grass	Ghost	530	78	107	75	100	100	70	7	FALSE
1905	Litten	Fire		320	45	65	40	60	40	70	7	FALSE
1906	Torracat	Fire		420	65	85	50	80	50	90	7	FALSE
1907	Incineroar	Fire	Dark	530	95	115	90	80	90	60	7	FALSE
1908	Popplio	Water		320	50	54	54	66	56	40	7	FALSE
1909	Brionne	Water		420	60	69	69	91	81	50	7	FALSE
1910	Primarina	Water	Fairy	530	80	74	74	126	116	60	7	FALSE
1911	Pikipek	Normal	Flying	265	35	75	30	30	30	65	7	FALSE
1912	Trumbeak	Normal	Flying	355	55	85	50	40	50	75	7	FALSE
1913	Toucannon	Normal	Flying	485	80	120	75	75	75	60	7	FALSE
1914	Yungoos	Normal		253	48	70	30	30	30	45	7	FALSE
1915	Gumshoos	Normal		418	88	110	60	55	60	45	7	FALSE
1916	Grubbin	Bug		300	47	62	45	55	45	46	7	FALSE
1917	Charabug	Bug	Electric	400	57	82	95	55	75	36	7	FALSE
1918	Vikavolt	Bug	Electric	500	77	70	90	145	75	43	7	FALSE
1919	Carbrawler	Fighting		338	47	82	57	42	47	63	7	FALSE
1920	Crabominable	Fighting	Ice	478	97	132	77	62	67	43	7	FALSE
1921	Oricorio	Fire	Flying	476	75	70	70	98	70	93	7	FALSE
1922	Cutiefly	Bug	Fairy	304	40	45	40	55	40	84	7	FALSE
1923	Ribombee	Bug	Fairy	464	60	55	60	95	70	124	7	FALSE
1924	Rockruff	Rock		280	45	65	40	30	40	60	7	FALSE
1925	Lycanroc	Rock		487	75	115	65	55	65	112	7	FALSE
1926	Wishiwashi	Water		175	45	20	20	25	25	40	7	FALSE
1927	Mareanie	Poison	Water	305	50	53	62	43	52	45	7	FALSE
1928	Toxapex	Poison	Water	495	50	63	152	53	142	35	7	FALSE
1929	Mudbray	Ground		385	70	100	70	45	55	45	7	FALSE
1930	Mudsdate	Ground		500	100	125	100	55	85	35	7	FALSE
1931	Dewpider	Water	Bug	269	38	40	52	40	72	27	7	FALSE
1932	Araquanid	Water	Bug	454	68	70	92	50	132	42	7	FALSE
1933	Fomantis	Grass		250	40	55	35	50	35	35	7	FALSE
1934	Lurantis	Grass		480	70	105	90	80	90	45	7	FALSE
1935	Morelull	Grass	Fairy	285	40	35	55	65	75	15	7	FALSE
1936	Shiinotic	Grass	Fairy	405	60	45	80	90	100	30	7	FALSE
1937	Salandit	Poison	Fire	320	48	44	40	71	40	77	7	FALSE
1938	Salazzle	Poison	Fire	480	68	64	60	111	60	117	7	FALSE
1939	Stufful	Normal	Fighting	340	70	75	50	45	50	50	7	FALSE
1940	Bewear	Normal	Fighting	500	120	125	80	55	60	60	7	FALSE
1941	Bounsweet	Grass		210	42	30	38	30	38	32	7	FALSE
1942	Steenee	Grass		290	52	40	48	40	48	62	7	FALSE
1943	Tsarenna	Grass		510	72	120	98	50	98	72	7	FALSE
1944	Comfey	Fairy		485	51	52	90	82	110	100	7	FALSE
1945	Oranguru	Normal	Psychic	490	90	60	80	90	110	60	7	FALSE
1946	Passimian	Fighting		490	100	120	90	40	60	80	7	FALSE
1947	Wimpod	bug	Water	230	25	35	40	20	30	80	7	FALSE
1948	Golisopod	Bug	Water	530	75	125	140	60	90	40	7	FALSE
1949	Sandygast	Ghost	Ground	320	55	55	80	70	45	15	7	FALSE
1950	Palossand	Ghost	Ground	480	85	75	110	100	75	35	7	FALSE
1951	Pyukumuku	Water		410	55	60	130	30	130	5	7	FALSE
1952	Type Null	Normal		534	95	95	95	95	95	59	7	FALSE
1953	Silvally	Normal		570	95	95	95	95	95	95	7	FALSE
1954	Minior	Rock	Flying	440	60	60	100	60	100	60	7	FALSE
1955	Komala	Normal		480	65	115	65	75	95	65	7	FALSE
1956	Turtonator	Fire	Dragon	485	60	75	135	91	85	36	7	FALSE
1957	Togedemaru	Electric	Steel	435	65	98	63	40	73	96	7	FALSE
1958	Mimikyu	Ghost	Fairy	476	55	90	80	50	105	96	7	FALSE
1959	Bruxish	Water	Psychic	475	68	105	70	70	70	92	7	FALSE
1960	Drampa	Normal	Dragon	485	78	60	85	135	91	36	7	FALSE
1961	Dhelmise	Ghost	Grass	517	70	131	100	86	90	40	7	FALSE
1962	Jangmo-o	Dragon		300	45	55	65	45	45	45	7	FALSE
1963	Hakamo-o	Dragon	Fighting	420	55	75	90	65	70	65	7	FALSE
1964	Kommo-o	Dragon	Fighting	600	75	110	125	100	105	85	7	FALSE
1965	Tapu Koko	Electric	Fairy	570	70	115	85	95	75	130	7	TRUE
1966	Tapu Lele	Psychic	Fairy	570	70	85	75	130	115	95	7	TRUE
1967	Tapu Bulu	Grass	Fairy	570	70	130	115	85	95	75	7	TRUE
1968	Tapu Fini	Water	Fairy	570	70	75	115	95	130	85	7	TRUE
1969	Cosmog	Psychic		200	43	29	31	29	31	37	7	TRUE
1970	Cosmoem	Psychic		400	43	29	131	29	131	37	7	TRUE
1971	Solgaleo	Psychic	Steel	680	137	137	107	113	89	97	7	TRUE
1972	Lunala	Psychic	Ghost	680	137	113	89	137	107	97	7	TRUE
1973	Nihilego	Rock	Poison	570	109	53	47	127	131	103	7	FALSE
1974	Buzzwole	Bug	Fighting	570	107	139	139	53	53	79	7	FALSE
1975	Pheromosa	Bug	Fighting	570	71	137	37	137	37	151	7	FALSE
1976	Xurkitree	Electric		570	83	89	71	173	71	83	7	FALSE
1977	Celesteela	Steel	Flying	570	97	101	103	107	101	61	7	FALSE
1978	Kartana	Grass	Steel	570	59	181	131	59	31	109	7	FALSE
1979	Guzzlord	Dark	Dragon	570	223	101	53	97	53	43	7	FALSE
1980	Necrozma	Psychic		600	97	107	101	127	89	79	7	TRUE
1981	Magearna	Steel	Fairy	600	80	95	115	130	115	65	7	TRUE
1982	Marshadow	Fighting	Ghost	600	90	125	80	90	90	125	7	TRUE
1983	Poipole	Poison		420	67	73	67	73	67	73	7	TRUE
1984	Naganadel	Poison	Dragon	540	73	73	73	127	73	121	7	TRUE
1985	Stakataka	Rock	Steel	570	61	131	211	53	101	13	7	TRUE
1986	Blacephalon	Fire	Ghost	570	53	127	53	151	79	107	7	TRUE
1987	Zeraora	Electric		600	88	112	75	102	80	143	7	TRUE
1988	Meltan	Steel		300	46	65	65	55	35	34	7	TRUE
1989	Melmetal	Steel		600	135	143	143	80	65	34	7	TRUE
1990	Grookey	Grass		310	50	65	50	40	40	65	8	FALSE
1991	Thwackey	Grass		420	70	85	70	55	60	80	8	FALSE
1992	Rillaboom	Grass		530	100	125	90	60	70	85	8	FALSE
1993	Scorbunny	Grass		310	50	71	40	40	40	96	8	FALSE
1994	Raboot	Fire		420	65	86	60	55	60	94	8	FALSE
1995	Cinderace	Fire		530	80	116	75	65	75	119	8	FALSE
1996	Sobble	Water		310	50	40	40	70	40	70	8	FALSE
1997	Drizzile	Water		420	65	60	55	95	55	90	8	FALSE
1998	Inteleon	Water		530	70	85	65	125	65	120	8	FALSE
1999	Skwovet	Normal		275	70	55	55	35	35	25	8	FALSE
2000	Greedent	Normal		460	120	95	95	55	75	20	8	FALSE
2001	Rookidee	Flying		245	38	47	35	33	35	57	8	FALSE
2002	Corvisquire	Flying		365	68	67	55	43	55	77	8	FALSE
2003	Corviknight	Flying	Steel	495	98	87	105	53	85	67	8	FALSE
2004	Blipbug	Bug		180	25	20	20	25	45	45	8	FALSE
2005	Dottler	Bug	Psychic	335	50	35	80	50	90	30	8	FALSE
2006	Orbeetle	Bug	Psychic	505	60	45	110	80	120	90	8	FALSE
2007	Nickit	Dark		245	40	28	28	47	52	50	8	FALSE
2008	Thievul	Dark		455	70	58	58	87	92	90	8	FALSE
2009	Gossifleur	Grass		250	40	40	60	40	60	10	8	FALSE
2010	Eldengoss	Grass		460	60	50	90	80	120	60	8	FALSE
2011	Wooloo	Normal		270	42	40	55	40	45	48	8	FALSE
2012	Dubwool	Normal		490	72	80	100	60	90	88	8	FALSE
2013	Chewtle	Water		284	50	64	50	38	38	44	8	FALSE
2014	Drednaw	Water	Rock	485	90	115	90	48	68	74	8	FALSE
2015	Yamper	Electric		270	59	45	50	40	50	26	8	FALSE
2016	Boltund	Electric		490	69	90	60	90	60	121	8	FALSE
2017	Rolycoly	Rock		240	30	40	50	40	50	30	8	FALSE
2018	Carkol	Rock	Fire	410	80	60	90	60	70	50	8	FALSE
2019	Coalossal	Rock	Fire	510	110	80	120	80	90	30	8	FALSE
2020	Applin	Grass	Dragon	260	40	40	80	40	40	20	8	FALSE
2021	Flapple	Grass	Dragon	485	70	110	80	95	60	70	8	FALSE
2022	Appletun	Grass	Dragon	485	110	85	80	100	80	30	8	FALSE
2023	Silicobra	Ground		315	52	57	75	35	50	46	8	FALSE
2024	Sandaconda	Ground		510	72	107	125	65	70	71	8	FALSE
2025	Cramorant	Flying	Water	475	70	85	55	85	95	85	8	FALSE
2026	Arrokuda	Water		280	41	63	40	40	30	66	8	FALSE
2027	Barraskewda	Water		490	61	123	60	60	50	136	8	FALSE
2028	Toxel	Electric	Poison	242	40	38	35	54	35	40	8	FALSE
2029	Toxtricity	Electric	Poison	502	75	98	70	114	70	75	8	FALSE
2030	Sizzlipede	Fire	Bug	305	50	65	45	50	50	45	8	FALSE
2031	Centiskorch	Fire	Bug	525	100	115	65	90	90	65	8	FALSE
2032	Clobbopus	Fighting		310	50	68	60	50	50	32	8	FALSE
2033	Grapploct	Fighting		480	80	118	90	70	80	42	8	FALSE
2034	Sinistea	Ghost		308	40	45	45	74	54	50	8	FALSE
2035	Polteageist	Ghost		508	60	65	65	134	114	70	8	FALSE
2036	Hatenna	Psychic		265	42	30	45	56	53	39	8	FALSE
2037	Hattrem	Psychic		370	57	40	65	86	73	49	8	FALSE
2038	Hatterene	Psychic	Fairy	510	57	90	95	136	103	29	8	FALSE
2039	Impidimp	Dark	Fairy	265	45	45	30	55	40	50	8	FALSE
2040	Morgem	Dark	Fairy	370	65	60	45	75	55	70	8	FALSE
2041	Grimmsnarl	Dark	Fairy	510	95	120	65	95	75	60	8	FALSE
2042	Obstagoon	Dark	Normal	520	93	90	101	60	81	95	8	FALSE
2043	Perrserker	Steel		440	70	110	100	50	60	50	8	FALSE
2044	Cursola	Ghost		510	60	95	50	145	130	30	8	FALSE
2045	Sirfetch d	Fighting		507	62	135	95	68	82	65	8	FALSE
2046	Mr Rime	Ice	Psychic	520	80	85	75	110	100	70	8	FALSE
2047	Runerigus	Ground	Ghost	483	58	95	145	50	105	30	8	FALSE
2048	Milcery	Fairy		270	45	40	40	50	61	34	8	FALSE
2049	Alcremie	Fairy		495	65	60	75	110	121	64	8	FALSE
2050	Falinks	Fighting		470	65	100	100	70	60	75	8	FALSE
2051	Pincurchin	Electric		435	48	101	95	91	85	15	8	FALSE
2052	Snom	ice	Bug	185	30	25	35	45	30	20	8	FALSE
2053	Frosmoth	Ice	Bug	475	70	65	60	125	90	65	8	FALSE
2054	Stonjourner	Rock		470	100	125	135	20	20	70	8	FALSE
2055	Eiscue	Ice		470	75	80	110	65	90	50	8	FALSE
2056	Indeedee	Psychic	Normal	475	60	65	55	105	95	95	8	FALSE
2057	Morpeko	Electric	Dark	476	58	95	58	70	58	97	8	FALSE
2058	Cufant	Steel		330	72	80	49	40	49	40	8	FALSE
2059	Copperajah	Steel		500	122	130	69	80	69	30	8	FALSE
2060	Dracozolt	Electric	Dragon	505	90	100	90	80	70	75	8	FALSE
2061	Arctozolt	Electric	Ice	505	90	100	90	90	80	55	8	FALSE
2062	Dracovish	Water	Dragon	505	90	90	100	70	80	75	8	FALSE
2063	Arctovish	Water	ice	505	90	90	100	80	90	55	8	FALSE
2064	Duraludon	Steel	Dragon	535	70	95	115	120	50	85	8	FALSE
2065	Dreepy	Dragon	Ghost	270	28	60	30	40	30	82	8	FALSE
2066	Drakloak	Dragon	Ghost	410	68	80	50	60	50	102	8	FALSE
2067	Dragapult	Dragon	Ghost	600	88	120	75	100	75	142	8	FALSE
2068	Zacian	Fairy	Steel	700	92	150	115	80	115	148	8	TRUE
2069	Zamazenta	Fighting	Steel	700	92	120	140	80	140	128	8	TRUE
2070	Eternatus	Poison	Dragon	690	140	85	95	145	95	130	8	TRUE
2071	Kubfu	Fighting		385	60	90	60	53	50	72	8	TRUE
2072	Urshifu	Fighting	Dark	550	100	130	100	63	60	97	8	TRUE
2073	Zarude	Dark	Grass	600	105	120	105	70	95	105	8	TRUE
2074	Regieleki	Electric		580	80	100	50	100	50	200	8	TRUE
2075	Regidrago	Dragon		580	200	100	50	100	50	80	8	TRUE
2076	Glastrier	Ice		580	100	145	130	65	110	30	8	TRUE
2077	Spectrier	Ghost		580	100	65	60	145	80	130	8	TRUE
2078	Calyrex	Psychic	Grass	500	100	80	80	80	80	80	8	TRUE
2079	Wyrdeer	Normal	Psychic	525	103	105	72	105	75	65	8	TRUE
2080	Kleavor	Bug	Rock	500	70	135	95	45	70	85	8	TRUE
2081	Ursaluna	Ground	Normal	550	130	140	105	45	80	50	8	TRUE
2082	Basculegion	Water	Ghost	530	120	112	65	80	75	78	8	FALSE
2083	Sneasler	Fighting	Poison	510	80	130	60	40	80	120	8	FALSE
2084	Overqwil	Dark	Poison	510	85	115	95	65	65	85	8	FALSE
2085	Enamorous	Fairy	Flying	580	74	115	70	135	80	106	8	TRUE
2086	Sprigatito	Grass		310	40	61	54	45	45	65	9	FALSE
2087	Floragato	Grass		410	61	80	63	60	63	83	9	FALSE
2088	Meowscarada	Grass	Dark	530	76	110	70	81	70	123	9	FALSE
2089	Fuecoco	Fire		310	67	45	59	63	40	36	9	FALSE
2090	Crocalor	Fire		411	81	55	78	90	58	49	9	FALSE
2091	Skeledirge	Fire	Ghost	530	104	75	100	110	75	66	9	FALSE
2092	Quaxly	Water		310	55	65	45	50	45	50	9	FALSE
2093	Quaxwell	Water		410	70	85	65	65	60	65	9	FALSE
2094	Quaquaval	Water	Fighting	530	85	120	80	85	75	85	9	FALSE
2095	Lechonk	Normal		254	54	45	40	35	45	35	9	FALSE
2096	Onikologne	Normal		489	110	100	75	59	80	65	9	FALSE
2097	Tarountula	Bug		210	35	41	45	29	40	20	9	FALSE
2098	Sidops	Bug		404	60	79	92	52	86	35	9	FALSE
2099	Nymble	Bug		210	33	46	40	21	25	45	9	FALSE
2100	Lokix	Bug	Dark	450	71	102	78	52	55	92	9	FALSE
2101	Pawmi	Electric		240	45	50	20	40	25	60	9	FALSE
2102	Pawmo	Electric	Fighting	350	60	75	40	50	40	85	9	FALSE
2103	Pawmot	Electric	Fighting	490	70	115	70	70	60	105	9	FALSE
2104	Tandemaus	Normal		305	50	50	45	40	45	75	9	FALSE
2105	Maushold	Normal		470	74	75	70	65	75	111	9	FALSE
2106	Fidough	Fairy		312	37	55	70	30	55	65	9	FALSE
2107	Dachsbun	Fairy		477	57	80	115	50	80	95	9	FALSE
2108	Smoliv	Grass	Normal	260	41	35	45	58	51	30	9	FALSE
2109	Dolliv	Grass	Normal	354	52	53	60	78	78	33	9	FALSE
2110	Arboliva	Grass	Normal	510	78	69	90	125	109	39	9	FALSE
2111	Squawkabilly	Normal	Flying	417	82	96	51	45	51	92	9	FALSE
2112	Nacli	Rock		280	55	55	75	35	35	25	9	FALSE
2113	Naclstack	Rock		355	60	60	100	35	65	35	9	FALSE
2114	Gargancl	Rock		500	100	100	130	45	90	35	9	FALSE
2115	Charcadet	Fire		255	40	50	40	50	40	35	9	FALSE
2116	Armarouge	Fire	Psychic	525	85	60	100	125	80	75	9	FALSE
2117	Ceruledge	Fire	Ghost	525	75	125	80	60	100	85	9	FALSE
2118	Tadbulb	Electric		272	61	31	41	59	35	45	9	FALSE
2119	Bellibolt	Electric		495	109	64	91	103	83	45	9	FALSE
2120	Wattrel	Electric	Flying	280	40	40	35	55	40	70	9	FALSE
2121	Kilowatteral	Electric	Flying	490	70	70	60	105	60	125	9	FALSE
2122	Maschiff	Dark		340	60	78	60	40	51	51	9	FALSE
2123	Mabosstiff	Dark		505	80	120	90	60	70	85	9	FALSE
2124	Shroodle	Poison	Normal	290	40	65	35	40	35	75	9	FALSE
2125	Grafaiai	Poison	Normal	485	63	95	65	80	72	110	9	FALSE
2126	Bramblin	Grass	Ghost	275	40	65	30	45	35	60	9	FALSE
2127	Brambleghast	Grass	Ghost	480	55	115	70	80	70	90	9	FALSE
2128	Toedscool	Ground	Grass	335	40	40	35	50	100	70	9	FALSE
2129	Todescruel	Ground	Grass	515	80	70	65	80	120	100	9	FALSE
2130	Klawf	Rock		450	70	100	115	35	55	75	9	FALSE
2131	Capsakid	Grass		304	50	62	40	62	40	50	9	FALSE
2132	Scovillain	Bug	Fire	486	65	108	65	108	65	75	9	FALSE
2133	Rellor	Bug		270	41	50	60	31	58	30	9	FALSE
2134	Rabsca	Bug	Psychic	470	75	50	85	115	100	45	9	FALSE
2135	Flittle	Psychic		255	30	35	30	55	30	75	9	FALSE
2136	Espathra	Psychic		481	95	60	60	101	60	105	9	FALSE
2137	Tinkatink	Fairy	Steel	297	50	45	45	35	64	58	9	FALSE
2138	Tinkatuff	Fairy	Steel	380	65	55	55	45	82	78	9	FALSE
2139	Tinkaton	Fairy	Steel	506	85	75	77	70	105	94	9	FALSE
2140	Wiglett	Water		245	10	55	25	35	25	95	9	FALSE
2141	Wugtrio	Water		425	35	100	50	50	70	120	9	FALSE
2142	Bombirdier	Flying	Dark	485	70	103	85	60	85	82	9	FALSE
2143	Finizen	Water		315	70	45	40	45	40	75	9	FALSE
2144	Palafin	Water		457	100	70	72	53	62	100	9	FALSE
2145	Varoom	Steel	Poison	300	45	70	63	30	45	47	9	FALSE
2146	Revaroom	Steel	Poison	500	80	70	90	54	67	90	9	FALSE
2147	Cyclizar	Dragon	Normal	501	70	119	65	85	65	121	9	FALSE
2148	Orthworm	Steel		480	70	95	145	60	55	65	9	FALSE
2149	Glimmet	Rock	Poison	350	48	35	42	105	60	60	9	FALSE
2150	Glimmora	Rock	Poison	525	83	55	90	130	81	86	9	FALSE
2151	Greavard	Ghost		290	50	61	60	30	55	34	9	FALSE
2152	Houndstone	Ghost		488	72	101	100	50	97	68	9	FALSE
2153	Flamigo	Flying	Fighting	500	82	115	74	75	64	90	9	FALSE
2154	Cetoddle	Ice		334	108	68	45	30	40	43	9	FALSE
2155	Cetitan	Ice		521	170	113	65	45	55	73	9	FALSE
2156	Veluza	Water	Psychic	478	90	102	73	78	65	70	9	FALSE
2157	Dondozo	Water		530	150	100	115	65	65	35	9	FALSE
2158	Tatsugiri	Dragon	Water	475	68	50	60	120	95	82	9	FALSE
2159	Annihilape	Fighting	Ghost	535	110	115	80	50	90	90	9	FALSE
2160	Clodsire	Poison	Ground	430	130	75	60	45	100	20	9	FALSE
2161	Farigiraf	Normal	Psychic	520	120	90	70	110	70	60	9	FALSE
2162	Dudunsparce	Normal		520	125	100	80	85	75	55	9	FALSE
2163	Kingambit	Dark	Steel	550	100	135	120	60	85	50	9	FALSE
2164	Great Tusk	Ground	Fighting	570	115	131	131	53	53	87	9	FALSE
2165	Scream Tail	Fairy	Psychic	570	115	65	99	65	115	111	9	FALSE
2166	Brute Bonnet	Grass	Dark	570	111	127	99	79	99	55	9	FALSE
2167	Flutter Mane	Ghost	Fairy	570	55	55	55	135	135	135	9	FALSE
2168	Slither Wing	Bug	Fighting	570	85	135	79	85	105	81	9	FALSE
2169	Sandy Shocks	Electric	Ground	570	85	81	97	121	85	101	9	FALSE
2170	Iron Treads	Ground	Steel	570	90	112	120	72	70	106	9	FALSE
2171	Iron Bundle	Ice	Water	570	56	80	114	124	60	136	9	FALSE
2172	Iron Hand	Fighting	Electric	570	154	140	108	50	68	50	9	FALSE
2173	Iron Jugulis	Dark	Flying	570	94	80	86	122	80	108	9	FALSE
2174	Iron Moth	Fire	Poison	570	80	70	60	140	110	110	9	FALSE
2175	Iron Thorns	Rock	Electric	570	100	134	110	70	84	72	9	FALSE
2176	Frigibax	Dragon	Ice	320	65	75	45	35	45	55	9	FALSE
2177	Arctibax	Dragon	Ice	423	90	95	66	45	65	62	9	FALSE
2178	Baxcalibur	Dragon	Ice	600	115	145	92	75	86	87	9	FALSE
2179	Gimmighoul	Ghost		300	45	30	25	75	45	80	9	FALSE
2180	Gholdengo	Steel	Ghost	550	87	60	95	133	91	84	9	FALSE
2181	Wo Chien	Dark	Grass	570	85	85	100	95	135	70	9	FALSE
2182	Chien Pao	Dark	Ice	570	80	120	80	90	65	135	9	FALSE
2183	Ting Lu	Dark	Ground	570	155	110	125	55	80	45	9	FALSE
2184	Chi Yu	Dark	Fire	570	55	80	80	135	120	100	9	FALSE
2185	Roaring Moon	Dragon	Dark	590	105	139	71	55	101	119	9	FALSE
2186	Iron Valiant	Fairy	Fighting	590	74	130	90	120	60	116	9	FALSE
2187	Koraidon	Fighting	Dragon	670	100	135	115	85	100	135	9	TRUE
2188	Miraidon	Electric	Dragon	670	100	85	100	135	115	135	9	TRUE
2189	Walking Wake	Grass	Water	590	99	83	91	125	83	109	9	TRUE
2190	Irong Leaves	Grass	Psychic	590	90	130	88	70	108	104	9	TRUE
2191	Dipplin	Grass	Dragon	485	80	80	110	95	80	40	9	FALSE
2192	Poltchageist	Grass	Ghost	308	40	45	45	74	54	50	9	FALSE
2193	Sinischa	Grass	Ghost	508	71	60	106	121	80	70	9	FALSE
2194	Okidogi	Poison	Fighting	555	88	128	115	58	86	80	9	TRUE
2195	Munkidori	Poison	Psychic	555	88	75	66	130	90	106	9	TRUE
2196	Fezandipiti	Poison	Fairy	555	88	91	82	70	125	99	9	TRUE
2197	Ogerpon	Grass		550	80	120	84	60	96	110	9	TRUE
2198	Archaludon	Steel	Dragon	600	90	105	130	125	65	85	9	TRUE
2199	Hydrapple	Grass	Dragon	540	106	80	110	120	80	44	9	TRUE
2200	Gouging Fire	Fire	Dragon	590	105	115	121	65	93	91	9	TRUE
2201	Raging Bolt	Electric	Dragon	590	125	73	91	137	89	75	9	TRUE
2202	Iron Boulder	Rock	Dragon	590	90	120	80	68	108	124	9	TRUE
2203	Iron Crown	Steel	Psychic	590	90	72	100	122	108	98	9	TRUE
2204	Terapagos	Normal		700	160	105	110	130	110	85	9	TRUE
2205	Pecharunt	Poison	Ghost	600	88	88	160	88	88	88	9	TRUE
2206	Ivysaur	Grass	Poison	405	60	62	63	80	80	60	1	FALSE
2207	VenusaurMega Venusaur	Grass	Poison	625	80	100	123	122	120	80	1	FALSE
2208	Venusaur	Grass	Poison	525	80	82	83	100	100	80	1	FALSE
2209	Charmander	Fire	NA	309	39	52	43	60	50	65	1	FALSE
2210	Charmeleon	Fire	NA	405	58	64	58	80	65	80	1	FALSE
2211	CharizardMega Charizard Y	Fire	Flying	634	78	104	78	159	115	100	1	FALSE
2212	CharizardMega Charizard X	Fire	Dragon	634	78	130	111	130	85	100	1	FALSE
2213	Charizard	Fire	Flying	534	78	84	78	109	85	100	1	FALSE
2214	Squirtle	Water	NA	314	44	48	65	50	64	43	1	FALSE
2215	Wartortle	Water	NA	405	59	63	80	65	80	58	1	FALSE
2216	BlastoiseMega Blastoise	Water	NA	630	79	103	120	135	115	78	1	FALSE
2217	Blastoise	Water	NA	530	79	83	100	85	105	78	1	FALSE
2218	Caterpie	Bug	NA	195	45	30	35	20	20	45	1	FALSE
2219	Metapod	Bug	NA	205	50	20	55	25	25	30	1	FALSE
2220	Butterfree	Bug	Flying	395	60	45	50	90	80	70	1	FALSE
2221	Weedle	Bug	Poison	195	40	35	30	20	20	50	1	FALSE
2222	Kakuna	Bug	Poison	205	45	25	50	25	25	35	1	FALSE
2223	BeedrillMega Beedrill	Bug	Poison	495	65	150	40	15	80	145	1	FALSE
2224	Beedrill	Bug	Poison	395	65	90	40	45	80	75	1	FALSE
2225	Pidgey	Normal	Flying	251	40	45	40	35	35	56	1	FALSE
2226	Pidgeotto	Normal	Flying	349	63	60	55	50	50	71	1	FALSE
2227	PidgeotMega Pidgeot	Normal	Flying	579	83	80	80	135	80	121	1	FALSE
2228	Pidgeot	Normal	Flying	479	83	80	75	70	70	101	1	FALSE
2229	Rattata	Normal	NA	253	30	56	35	25	35	72	1	FALSE
2230	Raticate	Normal	NA	413	55	81	60	50	70	97	1	FALSE
2231	Spearow	Normal	Flying	262	40	60	30	31	31	70	1	FALSE
2232	Fearow	Normal	Flying	442	65	90	65	61	61	100	1	FALSE
2233	Ekans	Poison	NA	288	35	60	44	40	54	55	1	FALSE
2234	Arbok	Poison	NA	438	60	85	69	65	79	80	1	FALSE
2235	Pikachu	Electric	NA	320	35	55	40	50	50	90	1	FALSE
2236	Raichu	Electric	NA	485	60	90	55	90	80	110	1	FALSE
2237	Sandshrew	Ground	NA	300	50	75	85	20	30	40	1	FALSE
2238	Sandslash	Ground	NA	450	75	100	110	45	55	65	1	FALSE
2239	Nidoran♀	Poison	NA	275	55	47	52	40	40	41	1	FALSE
2240	Nidorina	Poison	NA	365	70	62	67	55	55	56	1	FALSE
2241	Nidoqueen	Poison	Ground	505	90	92	87	75	85	76	1	FALSE
2242	Nidoran♂	Poison	NA	273	46	57	40	40	40	50	1	FALSE
2243	Nidorino	Poison	NA	365	61	72	57	55	55	65	1	FALSE
2244	Nidoking	Poison	Ground	505	81	102	77	85	75	85	1	FALSE
2245	Clefairy	Fairy	NA	323	70	45	48	60	65	35	1	FALSE
2246	Clefable	Fairy	NA	483	95	70	73	95	90	60	1	FALSE
2247	Vulpix	Fire	NA	299	38	41	40	50	65	65	1	FALSE
2248	Ninetales	Fire	NA	505	73	76	75	81	100	100	1	FALSE
2249	Jigglypuff	Normal	Fairy	270	115	45	20	45	25	20	1	FALSE
2250	Wigglytuff	Normal	Fairy	435	140	70	45	85	50	45	1	FALSE
2251	Zubat	Poison	Flying	245	40	45	35	30	40	55	1	FALSE
2252	Golbat	Poison	Flying	455	75	80	70	65	75	90	1	FALSE
2253	Oddish	Grass	Poison	320	45	50	55	75	65	30	1	FALSE
2254	Gloom	Grass	Poison	395	60	65	70	85	75	40	1	FALSE
2255	Vileplume	Grass	Poison	490	75	80	85	110	90	50	1	FALSE
2256	Paras	Bug	Grass	285	35	70	55	45	55	25	1	FALSE
2257	Parasect	Bug	Grass	405	60	95	80	60	80	30	1	FALSE
2258	Venonat	Bug	Poison	305	60	55	50	40	55	45	1	FALSE
2259	Venomoth	Bug	Poison	450	70	65	60	90	75	90	1	FALSE
2260	Diglett	Ground	NA	265	10	55	25	35	45	95	1	FALSE
2261	Dugtrio	Ground	NA	405	35	80	50	50	70	120	1	FALSE
2262	Meowth	Normal	NA	290	40	45	35	40	40	90	1	FALSE
2263	Persian	Normal	NA	440	65	70	60	65	65	115	1	FALSE
2264	Psyduck	Water	NA	320	50	52	48	65	50	55	1	FALSE
2265	Golduck	Water	NA	500	80	82	78	95	80	85	1	FALSE
2266	Mankey	Fighting	NA	305	40	80	35	35	45	70	1	FALSE
2267	Primeape	Fighting	NA	455	65	105	60	60	70	95	1	FALSE
2268	Growlithe	Fire	NA	350	55	70	45	70	50	60	1	FALSE
2269	Arcanine	Fire	NA	555	90	110	80	100	80	95	1	FALSE
2270	Poliwag	Water	NA	300	40	50	40	40	40	90	1	FALSE
2271	Poliwhirl	Water	NA	385	65	65	65	50	50	90	1	FALSE
2272	Poliwrath	Water	Fighting	510	90	95	95	70	90	70	1	FALSE
2273	Abra	Psychic	NA	310	25	20	15	105	55	90	1	FALSE
2274	Kadabra	Psychic	NA	400	40	35	30	120	70	105	1	FALSE
2275	AlakazamMega Alakazam	Psychic	NA	590	55	50	65	175	95	150	1	FALSE
2276	Alakazam	Psychic	NA	500	55	50	45	135	95	120	1	FALSE
2277	Machop	Fighting	NA	305	70	80	50	35	35	35	1	FALSE
2278	Machoke	Fighting	NA	405	80	100	70	50	60	45	1	FALSE
2279	Machamp	Fighting	NA	505	90	130	80	65	85	55	1	FALSE
2280	Bellsprout	Grass	Poison	300	50	75	35	70	30	40	1	FALSE
2281	Weepinbell	Grass	Poison	390	65	90	50	85	45	55	1	FALSE
2282	Victreebel	Grass	Poison	490	80	105	65	100	70	70	1	FALSE
2283	Tentacool	Water	Poison	335	40	40	35	50	100	70	1	FALSE
2284	Tentacruel	Water	Poison	515	80	70	65	80	120	100	1	FALSE
2285	Geodude	Rock	Ground	300	40	80	100	30	30	20	1	FALSE
2286	Graveler	Rock	Ground	390	55	95	115	45	45	35	1	FALSE
2287	Golem	Rock	Ground	495	80	120	130	55	65	45	1	FALSE
2288	Ponyta	Fire	NA	410	50	85	55	65	65	90	1	FALSE
2289	Rapidash	Fire	NA	500	65	100	70	80	80	105	1	FALSE
2290	Slowpoke	Water	Psychic	315	90	65	65	40	40	15	1	FALSE
2291	SlowbroMega Slowbro	Water	Psychic	590	95	75	180	130	80	30	1	FALSE
2292	Slowbro	Water	Psychic	490	95	75	110	100	80	30	1	FALSE
2293	Magnemite	Electric	Steel	325	25	35	70	95	55	45	1	FALSE
2294	Magneton	Electric	Steel	465	50	60	95	120	70	70	1	FALSE
2295	Farfetch	Normal	Flying	352	52	65	55	58	62	60	1	FALSE
2296	Doduo	Normal	Flying	310	35	85	45	35	35	75	1	FALSE
2297	Dodrio	Normal	Flying	460	60	110	70	60	60	100	1	FALSE
2298	Seel	Water	NA	325	65	45	55	45	70	45	1	FALSE
2299	Dewgong	Water	Ice	475	90	70	80	70	95	70	1	FALSE
2300	Grimer	Poison	NA	325	80	80	50	40	50	25	1	FALSE
2301	Muk	Poison	NA	500	105	105	75	65	100	50	1	FALSE
2302	Shellder	Water	NA	305	30	65	100	45	25	40	1	FALSE
2303	Cloyster	Water	Ice	525	50	95	180	85	45	70	1	FALSE
2304	Gastly	Ghost	Poison	310	30	35	30	100	35	80	1	FALSE
2305	Haunter	Ghost	Poison	405	45	50	45	115	55	95	1	FALSE
2306	GengarMega Gengar	Ghost	Poison	600	60	65	80	170	95	130	1	FALSE
2307	Gengar	Ghost	Poison	500	60	65	60	130	75	110	1	FALSE
2308	Onix	Rock	Ground	385	35	45	160	30	45	70	1	FALSE
2309	Drowzee	Psychic	NA	328	60	48	45	43	90	42	1	FALSE
2310	Hypno	Psychic	NA	483	85	73	70	73	115	67	1	FALSE
2311	Krabby	Water	NA	325	30	105	90	25	25	50	1	FALSE
2312	Kingler	Water	NA	475	55	130	115	50	50	75	1	FALSE
2313	Voltorb	Electric	NA	330	40	30	50	55	55	100	1	FALSE
2314	Electrode	Electric	NA	480	60	50	70	80	80	140	1	FALSE
2315	Exeggcute	Grass	Psychic	325	60	40	80	60	45	40	1	FALSE
2316	Exeggutor	Grass	Psychic	520	95	95	85	125	65	55	1	FALSE
2317	Cubone	Ground	NA	320	50	50	95	40	50	35	1	FALSE
2318	Marowak	Ground	NA	425	60	80	110	50	80	45	1	FALSE
2319	Hitmonlee	Fighting	NA	455	50	120	53	35	110	87	1	FALSE
2320	Hitmonchan	Fighting	NA	455	50	105	79	35	110	76	1	FALSE
2321	Lickitung	Normal	NA	385	90	55	75	60	75	30	1	FALSE
2322	Koffing	Poison	NA	340	40	65	95	60	45	35	1	FALSE
2323	Weezing	Poison	NA	490	65	90	120	85	70	60	1	FALSE
2324	Rhyhorn	Ground	Rock	345	80	85	95	30	30	25	1	FALSE
2325	Rhydon	Ground	Rock	485	105	130	120	45	45	40	1	FALSE
2326	Chansey	Normal	NA	450	250	5	5	35	105	50	1	FALSE
2327	Tangela	Grass	NA	435	65	55	115	100	40	60	1	FALSE
2328	KangaskhanMega Kangaskhan	Normal	NA	590	105	125	100	60	100	100	1	FALSE
2329	Kangaskhan	Normal	NA	490	105	95	80	40	80	90	1	FALSE
2330	Horsea	Water	NA	295	30	40	70	70	25	60	1	FALSE
2331	Seadra	Water	NA	440	55	65	95	95	45	85	1	FALSE
2332	Goldeen	Water	NA	320	45	67	60	35	50	63	1	FALSE
2333	Seaking	Water	NA	450	80	92	65	65	80	68	1	FALSE
2334	Staryu	Water	NA	340	30	45	55	70	55	85	1	FALSE
2335	Starmie	Water	Psychic	520	60	75	85	100	85	115	1	FALSE
2336	Mr. Mime	Psychic	Fairy	460	40	45	65	100	120	90	1	FALSE
2337	Scyther	Bug	Flying	500	70	110	80	55	80	105	1	FALSE
2338	Jynx	Ice	Psychic	455	65	50	35	115	95	95	1	FALSE
2339	Electabuzz	Electric	NA	490	65	83	57	95	85	105	1	FALSE
2340	Magmar	Fire	NA	495	65	95	57	100	85	93	1	FALSE
2341	PinsirMega Pinsir	Bug	Flying	600	65	155	120	65	90	105	1	FALSE
2342	Pinsir	Bug	NA	500	65	125	100	55	70	85	1	FALSE
2343	Tauros	Normal	NA	490	75	100	95	40	70	110	1	FALSE
2344	Magikarp	Water	NA	200	20	10	55	15	20	80	1	FALSE
2345	GyaradosMega Gyarados	Water	Dark	640	95	155	109	70	130	81	1	FALSE
2346	Gyarados	Water	Flying	540	95	125	79	60	100	81	1	FALSE
2347	Lapras	Water	Ice	535	130	85	80	85	95	60	1	FALSE
2348	Ditto	Normal	NA	288	48	48	48	48	48	48	1	FALSE
2349	Eevee	Normal	NA	325	55	55	50	45	65	55	1	FALSE
2350	Vaporeon	Water	NA	525	130	65	60	110	95	65	1	FALSE
2351	Jolteon	Electric	NA	525	65	65	60	110	95	130	1	FALSE
2352	Flareon	Fire	NA	525	65	130	60	95	110	65	1	FALSE
2353	Porygon	Normal	NA	395	65	60	70	85	75	40	1	FALSE
2354	Omanyte	Rock	Water	355	35	40	100	90	55	35	1	FALSE
2355	Omastar	Rock	Water	495	70	60	125	115	70	55	1	FALSE
2356	Kabuto	Rock	Water	355	30	80	90	55	45	55	1	FALSE
2357	Kabutops	Rock	Water	495	60	115	105	65	70	80	1	FALSE
2358	AerodactylMega Aerodactyl	Rock	Flying	615	80	135	85	70	95	150	1	FALSE
2359	Aerodactyl	Rock	Flying	515	80	105	65	60	75	130	1	FALSE
2360	Snorlax	Normal	NA	540	160	110	65	65	110	30	1	FALSE
2361	Articuno	Ice	Flying	580	90	85	100	95	125	85	1	TRUE
2362	Zapdos	Electric	Flying	580	90	90	85	125	90	100	1	TRUE
2363	Moltres	Fire	Flying	580	90	100	90	125	85	90	1	TRUE
2364	Dratini	Dragon	NA	300	41	64	45	50	50	50	1	FALSE
2365	Dragonair	Dragon	NA	420	61	84	65	70	70	70	1	FALSE
2366	Dragonite	Dragon	Flying	600	91	134	95	100	100	80	1	FALSE
2367	MewtwoMega Mewtwo Y	Psychic	NA	780	106	150	70	194	120	140	1	TRUE
2368	MewtwoMega Mewtwo X	Psychic	Fighting	780	106	190	100	154	100	130	1	TRUE
2369	Mewtwo	Psychic	NA	680	106	110	90	154	90	130	1	TRUE
2370	Mew	Psychic	NA	600	100	100	100	100	100	100	1	FALSE
2371	Chikorita	Grass	NA	318	45	49	65	49	65	45	2	FALSE
2372	Bayleef	Grass	NA	405	60	62	80	63	80	60	2	FALSE
2373	Meganium	Grass	NA	525	80	82	100	83	100	80	2	FALSE
2374	Cyndaquil	Fire	NA	309	39	52	43	60	50	65	2	FALSE
2375	Quilava	Fire	NA	405	58	64	58	80	65	80	2	FALSE
2376	Typhlosion	Fire	NA	534	78	84	78	109	85	100	2	FALSE
2377	Totodile	Water	NA	314	50	65	64	44	48	43	2	FALSE
2378	Croconaw	Water	NA	405	65	80	80	59	63	58	2	FALSE
2379	Feraligatr	Water	NA	530	85	105	100	79	83	78	2	FALSE
2380	Sentret	Normal	NA	215	35	46	34	35	45	20	2	FALSE
2381	Furret	Normal	NA	415	85	76	64	45	55	90	2	FALSE
2382	Hoothoot	Normal	Flying	262	60	30	30	36	56	50	2	FALSE
2383	Noctowl	Normal	Flying	442	100	50	50	76	96	70	2	FALSE
2384	Ledyba	Bug	Flying	265	40	20	30	40	80	55	2	FALSE
2385	Ledian	Bug	Flying	390	55	35	50	55	110	85	2	FALSE
2386	Spinarak	Bug	Poison	250	40	60	40	40	40	30	2	FALSE
2387	Ariados	Bug	Poison	390	70	90	70	60	60	40	2	FALSE
2388	Crobat	Poison	Flying	535	85	90	80	70	80	130	2	FALSE
2389	Chinchou	Water	Electric	330	75	38	38	56	56	67	2	FALSE
2390	Lanturn	Water	Electric	460	125	58	58	76	76	67	2	FALSE
2391	Pichu	Electric	NA	205	20	40	15	35	35	60	2	FALSE
2392	Cleffa	Fairy	NA	218	50	25	28	45	55	15	2	FALSE
2393	Igglybuff	Normal	Fairy	210	90	30	15	40	20	15	2	FALSE
2394	Togepi	Fairy	NA	245	35	20	65	40	65	20	2	FALSE
2395	Togetic	Fairy	Flying	405	55	40	85	80	105	40	2	FALSE
2396	Natu	Psychic	Flying	320	40	50	45	70	45	70	2	FALSE
2397	Xatu	Psychic	Flying	470	65	75	70	95	70	95	2	FALSE
2398	Mareep	Electric	NA	280	55	40	40	65	45	35	2	FALSE
2399	Flaaffy	Electric	NA	365	70	55	55	80	60	45	2	FALSE
2400	AmpharosMega Ampharos	Electric	Dragon	610	90	95	105	165	110	45	2	FALSE
2401	Ampharos	Electric	NA	510	90	75	85	115	90	55	2	FALSE
2402	Bellossom	Grass	NA	490	75	80	95	90	100	50	2	FALSE
2403	Marill	Water	Fairy	250	70	20	50	20	50	40	2	FALSE
2404	Azumarill	Water	Fairy	420	100	50	80	60	80	50	2	FALSE
2405	Sudowoodo	Rock	NA	410	70	100	115	30	65	30	2	FALSE
2406	Politoed	Water	NA	500	90	75	75	90	100	70	2	FALSE
2407	Hoppip	Grass	Flying	250	35	35	40	35	55	50	2	FALSE
2408	Skiploom	Grass	Flying	340	55	45	50	45	65	80	2	FALSE
2409	Jumpluff	Grass	Flying	460	75	55	70	55	95	110	2	FALSE
2410	Aipom	Normal	NA	360	55	70	55	40	55	85	2	FALSE
2411	Sunkern	Grass	NA	180	30	30	30	30	30	30	2	FALSE
2412	Sunflora	Grass	NA	425	75	75	55	105	85	30	2	FALSE
2413	Yanma	Bug	Flying	390	65	65	45	75	45	95	2	FALSE
2414	Wooper	Water	Ground	210	55	45	45	25	25	15	2	FALSE
2415	Quagsire	Water	Ground	430	95	85	85	65	65	35	2	FALSE
2416	Espeon	Psychic	NA	525	65	65	60	130	95	110	2	FALSE
2417	Umbreon	Dark	NA	525	95	65	110	60	130	65	2	FALSE
2418	Murkrow	Dark	Flying	405	60	85	42	85	42	91	2	FALSE
2419	Slowking	Water	Psychic	490	95	75	80	100	110	30	2	FALSE
2420	Misdreavus	Ghost	NA	435	60	60	60	85	85	85	2	FALSE
2421	Unown	Psychic	NA	336	48	72	48	72	48	48	2	FALSE
2422	Wobbuffet	Psychic	NA	405	190	33	58	33	58	33	2	FALSE
2423	Girafarig	Normal	Psychic	455	70	80	65	90	65	85	2	FALSE
2424	Pineco	Bug	NA	290	50	65	90	35	35	15	2	FALSE
2425	Forretress	Bug	Steel	465	75	90	140	60	60	40	2	FALSE
2426	Dunsparce	Normal	NA	415	100	70	70	65	65	45	2	FALSE
2427	Gligar	Ground	Flying	430	65	75	105	35	65	85	2	FALSE
2428	SteelixMega Steelix	Steel	Ground	610	75	125	230	55	95	30	2	FALSE
2429	Steelix	Steel	Ground	510	75	85	200	55	65	30	2	FALSE
2430	Snubbull	Fairy	NA	300	60	80	50	40	40	30	2	FALSE
2431	Granbull	Fairy	NA	450	90	120	75	60	60	45	2	FALSE
2432	Qwilfish	Water	Poison	430	65	95	75	55	55	85	2	FALSE
2433	ScizorMega Scizor	Bug	Steel	600	70	150	140	65	100	75	2	FALSE
2434	Scizor	Bug	Steel	500	70	130	100	55	80	65	2	FALSE
2435	Shuckle	Bug	Rock	505	20	10	230	10	230	5	2	FALSE
2436	HeracrossMega Heracross	Bug	Fighting	600	80	185	115	40	105	75	2	FALSE
2437	Heracross	Bug	Fighting	500	80	125	75	40	95	85	2	FALSE
2438	Sneasel	Dark	Ice	430	55	95	55	35	75	115	2	FALSE
2439	Teddiursa	Normal	NA	330	60	80	50	50	50	40	2	FALSE
2440	Ursaring	Normal	NA	500	90	130	75	75	75	55	2	FALSE
2441	Slugma	Fire	NA	250	40	40	40	70	40	20	2	FALSE
2442	Magcargo	Fire	Rock	410	50	50	120	80	80	30	2	FALSE
2443	Swinub	Ice	Ground	250	50	50	40	30	30	50	2	FALSE
2444	Piloswine	Ice	Ground	450	100	100	80	60	60	50	2	FALSE
2445	Corsola	Water	Rock	380	55	55	85	65	85	35	2	FALSE
2446	Remoraid	Water	NA	300	35	65	35	65	35	65	2	FALSE
2447	Octillery	Water	NA	480	75	105	75	105	75	45	2	FALSE
2448	Delibird	Ice	Flying	330	45	55	45	65	45	75	2	FALSE
2449	Mantine	Water	Flying	465	65	40	70	80	140	70	2	FALSE
2450	Skarmory	Steel	Flying	465	65	80	140	40	70	70	2	FALSE
2451	Houndour	Dark	Fire	330	45	60	30	80	50	65	2	FALSE
2452	HoundoomMega Houndoom	Dark	Fire	600	75	90	90	140	90	115	2	FALSE
2453	Houndoom	Dark	Fire	500	75	90	50	110	80	95	2	FALSE
2454	Kingdra	Water	Dragon	540	75	95	95	95	95	85	2	FALSE
2455	Phanpy	Ground	NA	330	90	60	60	40	40	40	2	FALSE
2456	Donphan	Ground	NA	500	90	120	120	60	60	50	2	FALSE
2457	Porygon2	Normal	NA	515	85	80	90	105	95	60	2	FALSE
2458	Stantler	Normal	NA	465	73	95	62	85	65	85	2	FALSE
2459	Smeargle	Normal	NA	250	55	20	35	20	45	75	2	FALSE
2460	Tyrogue	Fighting	NA	210	35	35	35	35	35	35	2	FALSE
2461	Hitmontop	Fighting	NA	455	50	95	95	35	110	70	2	FALSE
2462	Smoochum	Ice	Psychic	305	45	30	15	85	65	65	2	FALSE
2463	Elekid	Electric	NA	360	45	63	37	65	55	95	2	FALSE
2464	Magby	Fire	NA	365	45	75	37	70	55	83	2	FALSE
2465	Miltank	Normal	NA	490	95	80	105	40	70	100	2	FALSE
2466	Blissey	Normal	NA	540	255	10	10	75	135	55	2	FALSE
2467	Raikou	Electric	NA	580	90	85	75	115	100	115	2	TRUE
2468	Entei	Fire	NA	580	115	115	85	90	75	100	2	TRUE
2469	Suicune	Water	NA	580	100	75	115	90	115	85	2	TRUE
2470	Larvitar	Rock	Ground	300	50	64	50	45	50	41	2	FALSE
2471	Pupitar	Rock	Ground	410	70	84	70	65	70	51	2	FALSE
2472	TyranitarMega Tyranitar	Rock	Dark	700	100	164	150	95	120	71	2	FALSE
2473	Tyranitar	Rock	Dark	600	100	134	110	95	100	61	2	FALSE
2474	Lugia	Psychic	Flying	680	106	90	130	90	154	110	2	TRUE
2475	Ho-oh	Fire	Flying	680	106	130	90	110	154	90	2	TRUE
2476	Celebi	Psychic	Grass	600	100	100	100	100	100	100	2	FALSE
2477	Treecko	Grass	NA	310	40	45	35	65	55	70	3	FALSE
2478	Grovyle	Grass	NA	405	50	65	45	85	65	95	3	FALSE
2479	SceptileMega Sceptile	Grass	Dragon	630	70	110	75	145	85	145	3	FALSE
2480	Sceptile	Grass	NA	530	70	85	65	105	85	120	3	FALSE
2481	Torchic	Fire	NA	310	45	60	40	70	50	45	3	FALSE
2482	Combusken	Fire	Fighting	405	60	85	60	85	60	55	3	FALSE
2483	BlazikenMega Blaziken	Fire	Fighting	630	80	160	80	130	80	100	3	FALSE
2484	Blaziken	Fire	Fighting	530	80	120	70	110	70	80	3	FALSE
2485	Mudkip	Water	NA	310	50	70	50	50	50	40	3	FALSE
2486	Marshtomp	Water	Ground	405	70	85	70	60	70	50	3	FALSE
2487	SwampertMega Swampert	Water	Ground	635	100	150	110	95	110	70	3	FALSE
2488	Swampert	Water	Ground	535	100	110	90	85	90	60	3	FALSE
2489	Poochyena	Dark	NA	220	35	55	35	30	30	35	3	FALSE
2490	Mightyena	Dark	NA	420	70	90	70	60	60	70	3	FALSE
2491	Zigzagoon	Normal	NA	240	38	30	41	30	41	60	3	FALSE
2492	Linoone	Normal	NA	420	78	70	61	50	61	100	3	FALSE
2493	Wurmple	Bug	NA	195	45	45	35	20	30	20	3	FALSE
2494	Silcoon	Bug	NA	205	50	35	55	25	25	15	3	FALSE
2495	Beautifly	Bug	Flying	395	60	70	50	100	50	65	3	FALSE
2496	Cascoon	Bug	NA	205	50	35	55	25	25	15	3	FALSE
2497	Dustox	Bug	Poison	385	60	50	70	50	90	65	3	FALSE
2498	Lotad	Water	Grass	220	40	30	30	40	50	30	3	FALSE
2499	Lombre	Water	Grass	340	60	50	50	60	70	50	3	FALSE
2500	Ludicolo	Water	Grass	480	80	70	70	90	100	70	3	FALSE
2501	Seedot	Grass	NA	220	40	40	50	30	30	30	3	FALSE
2502	Nuzleaf	Grass	Dark	340	70	70	40	60	40	60	3	FALSE
2503	Shiftry	Grass	Dark	480	90	100	60	90	60	80	3	FALSE
2504	Taillow	Normal	Flying	270	40	55	30	30	30	85	3	FALSE
2505	Swellow	Normal	Flying	430	60	85	60	50	50	125	3	FALSE
2506	Wingull	Water	Flying	270	40	30	30	55	30	85	3	FALSE
2507	Pelipper	Water	Flying	430	60	50	100	85	70	65	3	FALSE
2508	Ralts	Psychic	Fairy	198	28	25	25	45	35	40	3	FALSE
2509	Kirlia	Psychic	Fairy	278	38	35	35	65	55	50	3	FALSE
2510	GardevoirMega Gardevoir	Psychic	Fairy	618	68	85	65	165	135	100	3	FALSE
2511	Gardevoir	Psychic	Fairy	518	68	65	65	125	115	80	3	FALSE
2512	Surskit	Bug	Water	269	40	30	32	50	52	65	3	FALSE
2513	Masquerain	Bug	Flying	414	70	60	62	80	82	60	3	FALSE
2514	Shroomish	Grass	NA	295	60	40	60	40	60	35	3	FALSE
2515	Breloom	Grass	Fighting	460	60	130	80	60	60	70	3	FALSE
2516	Slakoth	Normal	NA	280	60	60	60	35	35	30	3	FALSE
2517	Vigoroth	Normal	NA	440	80	80	80	55	55	90	3	FALSE
2518	Slaking	Normal	NA	670	150	160	100	95	65	100	3	FALSE
2519	Nincada	Bug	Ground	266	31	45	90	30	30	40	3	FALSE
2520	Ninjask	Bug	Flying	456	61	90	45	50	50	160	3	FALSE
2521	Shedinja	Bug	Ghost	236	1	90	45	30	30	40	3	FALSE
2522	Whismur	Normal	NA	240	64	51	23	51	23	28	3	FALSE
2523	Loudred	Normal	NA	360	84	71	43	71	43	48	3	FALSE
2524	Exploud	Normal	NA	490	104	91	63	91	73	68	3	FALSE
2525	Makuhita	Fighting	NA	237	72	60	30	20	30	25	3	FALSE
2526	Hariyama	Fighting	NA	474	144	120	60	40	60	50	3	FALSE
2527	Azurill	Normal	Fairy	190	50	20	40	20	40	20	3	FALSE
2528	Nosepass	Rock	NA	375	30	45	135	45	90	30	3	FALSE
2529	Skitty	Normal	NA	260	50	45	45	35	35	50	3	FALSE
2530	Delcatty	Normal	NA	380	70	65	65	55	55	70	3	FALSE
2531	SableyeMega Sableye	Dark	Ghost	480	50	85	125	85	115	20	3	FALSE
2532	Sableye	Dark	Ghost	380	50	75	75	65	65	50	3	FALSE
2533	MawileMega Mawile	Steel	Fairy	480	50	105	125	55	95	50	3	FALSE
2534	Mawile	Steel	Fairy	380	50	85	85	55	55	50	3	FALSE
2535	Aron	Steel	Rock	330	50	70	100	40	40	30	3	FALSE
2536	Lairon	Steel	Rock	430	60	90	140	50	50	40	3	FALSE
2537	AggronMega Aggron	Steel	NA	630	70	140	230	60	80	50	3	FALSE
2538	Aggron	Steel	Rock	530	70	110	180	60	60	50	3	FALSE
2539	Meditite	Fighting	Psychic	280	30	40	55	40	55	60	3	FALSE
2540	MedichamMega Medicham	Fighting	Psychic	510	60	100	85	80	85	100	3	FALSE
2541	Medicham	Fighting	Psychic	410	60	60	75	60	75	80	3	FALSE
2542	Electrike	Electric	NA	295	40	45	40	65	40	65	3	FALSE
2543	ManectricMega Manectric	Electric	NA	575	70	75	80	135	80	135	3	FALSE
2544	Manectric	Electric	NA	475	70	75	60	105	60	105	3	FALSE
2545	Plusle	Electric	NA	405	60	50	40	85	75	95	3	FALSE
2546	Minun	Electric	NA	405	60	40	50	75	85	95	3	FALSE
2547	Volbeat	Bug	NA	400	65	73	55	47	75	85	3	FALSE
2548	Illumise	Bug	NA	400	65	47	55	73	75	85	3	FALSE
2549	Roselia	Grass	Poison	400	50	60	45	100	80	65	3	FALSE
2550	Gulpin	Poison	NA	302	70	43	53	43	53	40	3	FALSE
2551	Swalot	Poison	NA	467	100	73	83	73	83	55	3	FALSE
2552	Carvanha	Water	Dark	305	45	90	20	65	20	65	3	FALSE
2553	SharpedoMega Sharpedo	Water	Dark	560	70	140	70	110	65	105	3	FALSE
2554	Sharpedo	Water	Dark	460	70	120	40	95	40	95	3	FALSE
2555	Wailmer	Water	NA	400	130	70	35	70	35	60	3	FALSE
2556	Wailord	Water	NA	500	170	90	45	90	45	60	3	FALSE
2557	Numel	Fire	Ground	305	60	60	40	65	45	35	3	FALSE
2558	CameruptMega Camerupt	Fire	Ground	560	70	120	100	145	105	20	3	FALSE
2559	Camerupt	Fire	Ground	460	70	100	70	105	75	40	3	FALSE
2560	Torkoal	Fire	NA	470	70	85	140	85	70	20	3	FALSE
2561	Spoink	Psychic	NA	330	60	25	35	70	80	60	3	FALSE
2562	Grumpig	Psychic	NA	470	80	45	65	90	110	80	3	FALSE
2563	Spinda	Normal	NA	360	60	60	60	60	60	60	3	FALSE
2564	Trapinch	Ground	NA	290	45	100	45	45	45	10	3	FALSE
2565	Vibrava	Ground	Dragon	340	50	70	50	50	50	70	3	FALSE
2566	Flygon	Ground	Dragon	520	80	100	80	80	80	100	3	FALSE
2567	Cacnea	Grass	NA	335	50	85	40	85	40	35	3	FALSE
2568	Cacturne	Grass	Dark	475	70	115	60	115	60	55	3	FALSE
2569	Swablu	Normal	Flying	310	45	40	60	40	75	50	3	FALSE
2570	AltariaMega Altaria	Dragon	Fairy	590	75	110	110	110	105	80	3	FALSE
2571	Altaria	Dragon	Flying	490	75	70	90	70	105	80	3	FALSE
2572	Zangoose	Normal	NA	458	73	115	60	60	60	90	3	FALSE
2573	Seviper	Poison	NA	458	73	100	60	100	60	65	3	FALSE
2574	Lunatone	Rock	Psychic	440	70	55	65	95	85	70	3	FALSE
2575	Solrock	Rock	Psychic	440	70	95	85	55	65	70	3	FALSE
2576	Barboach	Water	Ground	288	50	48	43	46	41	60	3	FALSE
2577	Whiscash	Water	Ground	468	110	78	73	76	71	60	3	FALSE
2578	Corphish	Water	NA	308	43	80	65	50	35	35	3	FALSE
2579	Crawdaunt	Water	Dark	468	63	120	85	90	55	55	3	FALSE
2580	Baltoy	Ground	Psychic	300	40	40	55	40	70	55	3	FALSE
2581	Claydol	Ground	Psychic	500	60	70	105	70	120	75	3	FALSE
2582	Lileep	Rock	Grass	355	66	41	77	61	87	23	3	FALSE
2583	Cradily	Rock	Grass	495	86	81	97	81	107	43	3	FALSE
2584	Anorith	Rock	Bug	355	45	95	50	40	50	75	3	FALSE
2585	Armaldo	Rock	Bug	495	75	125	100	70	80	45	3	FALSE
2586	Feebas	Water	NA	200	20	15	20	10	55	80	3	FALSE
2587	Milotic	Water	NA	540	95	60	79	100	125	81	3	FALSE
2588	Castform	Normal	NA	420	70	70	70	70	70	70	3	FALSE
2589	Kecleon	Normal	NA	440	60	90	70	60	120	40	3	FALSE
2590	Shuppet	Ghost	NA	295	44	75	35	63	33	45	3	FALSE
2591	BanetteMega Banette	Ghost	NA	555	64	165	75	93	83	75	3	FALSE
2592	Banette	Ghost	NA	455	64	115	65	83	63	65	3	FALSE
2593	Duskull	Ghost	NA	295	20	40	90	30	90	25	3	FALSE
2594	Dusclops	Ghost	NA	455	40	70	130	60	130	25	3	FALSE
2595	Tropius	Grass	Flying	460	99	68	83	72	87	51	3	FALSE
2596	Chimecho	Psychic	NA	425	65	50	70	95	80	65	3	FALSE
2597	AbsolMega Absol	Dark	NA	565	65	150	60	115	60	115	3	FALSE
2598	Absol	Dark	NA	465	65	130	60	75	60	75	3	FALSE
2599	Wynaut	Psychic	NA	260	95	23	48	23	48	23	3	FALSE
2600	Snorunt	Ice	NA	300	50	50	50	50	50	50	3	FALSE
2601	GlalieMega Glalie	Ice	NA	580	80	120	80	120	80	100	3	FALSE
2602	Glalie	Ice	NA	480	80	80	80	80	80	80	3	FALSE
2603	Spheal	Ice	Water	290	70	40	50	55	50	25	3	FALSE
2604	Sealeo	Ice	Water	410	90	60	70	75	70	45	3	FALSE
2605	Walrein	Ice	Water	530	110	80	90	95	90	65	3	FALSE
2606	Clamperl	Water	NA	345	35	64	85	74	55	32	3	FALSE
2607	Huntail	Water	NA	485	55	104	105	94	75	52	3	FALSE
2608	Gorebyss	Water	NA	485	55	84	105	114	75	52	3	FALSE
2609	Relicanth	Water	Rock	485	100	90	130	45	65	55	3	FALSE
2610	Luvdisc	Water	NA	330	43	30	55	40	65	97	3	FALSE
2611	Bagon	Dragon	NA	300	45	75	60	40	30	50	3	FALSE
2612	Shelgon	Dragon	NA	420	65	95	100	60	50	50	3	FALSE
2613	SalamenceMega Salamence	Dragon	Flying	700	95	145	130	120	90	120	3	FALSE
2614	Salamence	Dragon	Flying	600	95	135	80	110	80	100	3	FALSE
2615	Beldum	Steel	Psychic	300	40	55	80	35	60	30	3	FALSE
2616	Metang	Steel	Psychic	420	60	75	100	55	80	50	3	FALSE
2617	MetagrossMega Metagross	Steel	Psychic	700	80	145	150	105	110	110	3	FALSE
2618	Metagross	Steel	Psychic	600	80	135	130	95	90	70	3	FALSE
2619	Regirock	Rock	NA	580	80	100	200	50	100	50	3	TRUE
2620	Regice	Ice	NA	580	80	50	100	100	200	50	3	TRUE
2621	Registeel	Steel	NA	580	80	75	150	75	150	50	3	TRUE
2622	LatiasMega Latias	Dragon	Psychic	700	80	100	120	140	150	110	3	TRUE
2623	Latias	Dragon	Psychic	600	80	80	90	110	130	110	3	TRUE
2624	LatiosMega Latios	Dragon	Psychic	700	80	130	100	160	120	110	3	TRUE
2625	Latios	Dragon	Psychic	600	80	90	80	130	110	110	3	TRUE
2626	KyogrePrimal Kyogre	Water	NA	770	100	150	90	180	160	90	3	TRUE
2627	Kyogre	Water	NA	670	100	100	90	150	140	90	3	TRUE
2628	GroudonPrimal Groudon	Ground	Fire	770	100	180	160	150	90	90	3	TRUE
2629	Groudon	Ground	NA	670	100	150	140	100	90	90	3	TRUE
2630	RayquazaMega Rayquaza	Dragon	Flying	780	105	180	100	180	100	115	3	TRUE
2631	Rayquaza	Dragon	Flying	680	105	150	90	150	90	95	3	TRUE
2632	Jirachi	Steel	Psychic	600	100	100	100	100	100	100	3	TRUE
2633	DeoxysSpeed Forme	Psychic	NA	600	50	95	90	95	90	180	3	TRUE
2634	DeoxysNormal Forme	Psychic	NA	600	50	150	50	150	50	150	3	TRUE
2635	DeoxysDefense Forme	Psychic	NA	600	50	70	160	70	160	90	3	TRUE
2636	DeoxysAttack Forme	Psychic	NA	600	50	180	20	180	20	150	3	TRUE
2637	Turtwig	Grass	NA	318	55	68	64	45	55	31	4	FALSE
2638	Grotle	Grass	NA	405	75	89	85	55	65	36	4	FALSE
2639	Torterra	Grass	Ground	525	95	109	105	75	85	56	4	FALSE
2640	Chimchar	Fire	NA	309	44	58	44	58	44	61	4	FALSE
2641	Monferno	Fire	Fighting	405	64	78	52	78	52	81	4	FALSE
2642	Infernape	Fire	Fighting	534	76	104	71	104	71	108	4	FALSE
2643	Piplup	Water	NA	314	53	51	53	61	56	40	4	FALSE
2644	Prinplup	Water	NA	405	64	66	68	81	76	50	4	FALSE
2645	Empoleon	Water	Steel	530	84	86	88	111	101	60	4	FALSE
2646	Starly	Normal	Flying	245	40	55	30	30	30	60	4	FALSE
2647	Staravia	Normal	Flying	340	55	75	50	40	40	80	4	FALSE
2648	Staraptor	Normal	Flying	485	85	120	70	50	60	100	4	FALSE
2649	Bidoof	Normal	NA	250	59	45	40	35	40	31	4	FALSE
2650	Bibarel	Normal	Water	410	79	85	60	55	60	71	4	FALSE
2651	Kricketot	Bug	NA	194	37	25	41	25	41	25	4	FALSE
2652	Kricketune	Bug	NA	384	77	85	51	55	51	65	4	FALSE
2653	Shinx	Electric	NA	263	45	65	34	40	34	45	4	FALSE
2654	Luxio	Electric	NA	363	60	85	49	60	49	60	4	FALSE
2655	Luxray	Electric	NA	523	80	120	79	95	79	70	4	FALSE
2656	Budew	Grass	Poison	280	40	30	35	50	70	55	4	FALSE
2657	Roserade	Grass	Poison	515	60	70	65	125	105	90	4	FALSE
2658	Cranidos	Rock	NA	350	67	125	40	30	30	58	4	FALSE
2659	Rampardos	Rock	NA	495	97	165	60	65	50	58	4	FALSE
2660	Shieldon	Rock	Steel	350	30	42	118	42	88	30	4	FALSE
2661	Bastiodon	Rock	Steel	495	60	52	168	47	138	30	4	FALSE
2662	Burmy	Bug	NA	224	40	29	45	29	45	36	4	FALSE
2663	WormadamTrash Cloak	Bug	Steel	424	60	69	95	69	95	36	4	FALSE
2664	WormadamSandy Cloak	Bug	Ground	424	60	79	105	59	85	36	4	FALSE
2665	WormadamPlant Cloak	Bug	Grass	424	60	59	85	79	105	36	4	FALSE
2666	Mothim	Bug	Flying	424	70	94	50	94	50	66	4	FALSE
2667	Combee	Bug	Flying	244	30	30	42	30	42	70	4	FALSE
2668	Vespiquen	Bug	Flying	474	70	80	102	80	102	40	4	FALSE
2669	Pachirisu	Electric	NA	405	60	45	70	45	90	95	4	FALSE
2670	Buizel	Water	NA	330	55	65	35	60	30	85	4	FALSE
2671	Floatzel	Water	NA	495	85	105	55	85	50	115	4	FALSE
2672	Cherubi	Grass	NA	275	45	35	45	62	53	35	4	FALSE
2673	Cherrim	Grass	NA	450	70	60	70	87	78	85	4	FALSE
2674	Shellos	Water	NA	325	76	48	48	57	62	34	4	FALSE
2675	Gastrodon	Water	Ground	475	111	83	68	92	82	39	4	FALSE
2676	Ambipom	Normal	NA	482	75	100	66	60	66	115	4	FALSE
2677	Drifloon	Ghost	Flying	348	90	50	34	60	44	70	4	FALSE
2678	Drifblim	Ghost	Flying	498	150	80	44	90	54	80	4	FALSE
2679	Buneary	Normal	NA	350	55	66	44	44	56	85	4	FALSE
2680	LopunnyMega Lopunny	Normal	Fighting	580	65	136	94	54	96	135	4	FALSE
2681	Lopunny	Normal	NA	480	65	76	84	54	96	105	4	FALSE
2682	Mismagius	Ghost	NA	495	60	60	60	105	105	105	4	FALSE
2683	Honchkrow	Dark	Flying	505	100	125	52	105	52	71	4	FALSE
2684	Glameow	Normal	NA	310	49	55	42	42	37	85	4	FALSE
2685	Purugly	Normal	NA	452	71	82	64	64	59	112	4	FALSE
2686	Chingling	Psychic	NA	285	45	30	50	65	50	45	4	FALSE
2687	Stunky	Poison	Dark	329	63	63	47	41	41	74	4	FALSE
2688	Skuntank	Poison	Dark	479	103	93	67	71	61	84	4	FALSE
2689	Bronzor	Steel	Psychic	300	57	24	86	24	86	23	4	FALSE
2690	Bronzong	Steel	Psychic	500	67	89	116	79	116	33	4	FALSE
2691	Bonsly	Rock	NA	290	50	80	95	10	45	10	4	FALSE
2692	Mime Jr.	Psychic	Fairy	310	20	25	45	70	90	60	4	FALSE
2693	Happiny	Normal	NA	220	100	5	5	15	65	30	4	FALSE
2694	Chatot	Normal	Flying	411	76	65	45	92	42	91	4	FALSE
2695	Spiritomb	Ghost	Dark	485	50	92	108	92	108	35	4	FALSE
2696	Gible	Dragon	Ground	300	58	70	45	40	45	42	4	FALSE
2697	Gabite	Dragon	Ground	410	68	90	65	50	55	82	4	FALSE
2698	GarchompMega Garchomp	Dragon	Ground	700	108	170	115	120	95	92	4	FALSE
2699	Garchomp	Dragon	Ground	600	108	130	95	80	85	102	4	FALSE
2700	Munchlax	Normal	NA	390	135	85	40	40	85	5	4	FALSE
2701	Riolu	Fighting	NA	285	40	70	40	35	40	60	4	FALSE
2702	LucarioMega Lucario	Fighting	Steel	625	70	145	88	140	70	112	4	FALSE
2703	Lucario	Fighting	Steel	525	70	110	70	115	70	90	4	FALSE
2704	Hippopotas	Ground	NA	330	68	72	78	38	42	32	4	FALSE
2705	Hippowdon	Ground	NA	525	108	112	118	68	72	47	4	FALSE
2706	Skorupi	Poison	Bug	330	40	50	90	30	55	65	4	FALSE
2707	Drapion	Poison	Dark	500	70	90	110	60	75	95	4	FALSE
2708	Croagunk	Poison	Fighting	300	48	61	40	61	40	50	4	FALSE
2709	Toxicroak	Poison	Fighting	490	83	106	65	86	65	85	4	FALSE
2710	Carnivine	Grass	NA	454	74	100	72	90	72	46	4	FALSE
2711	Finneon	Water	NA	330	49	49	56	49	61	66	4	FALSE
2712	Lumineon	Water	NA	460	69	69	76	69	86	91	4	FALSE
2713	Mantyke	Water	Flying	345	45	20	50	60	120	50	4	FALSE
2714	Snover	Grass	Ice	334	60	62	50	62	60	40	4	FALSE
2715	AbomasnowMega Abomasnow	Grass	Ice	594	90	132	105	132	105	30	4	FALSE
2716	Abomasnow	Grass	Ice	494	90	92	75	92	85	60	4	FALSE
2717	Weavile	Dark	Ice	510	70	120	65	45	85	125	4	FALSE
2718	Magnezone	Electric	Steel	535	70	70	115	130	90	60	4	FALSE
2719	Lickilicky	Normal	NA	515	110	85	95	80	95	50	4	FALSE
2720	Rhyperior	Ground	Rock	535	115	140	130	55	55	40	4	FALSE
2721	Tangrowth	Grass	NA	535	100	100	125	110	50	50	4	FALSE
2722	Electivire	Electric	NA	540	75	123	67	95	85	95	4	FALSE
2723	Magmortar	Fire	NA	540	75	95	67	125	95	83	4	FALSE
2724	Togekiss	Fairy	Flying	545	85	50	95	120	115	80	4	FALSE
2725	Yanmega	Bug	Flying	515	86	76	86	116	56	95	4	FALSE
2726	Leafeon	Grass	NA	525	65	110	130	60	65	95	4	FALSE
2727	Glaceon	Ice	NA	525	65	60	110	130	95	65	4	FALSE
2728	Gliscor	Ground	Flying	510	75	95	125	45	75	95	4	FALSE
2729	Mamoswine	Ice	Ground	530	110	130	80	70	60	80	4	FALSE
2730	Porygon-Z	Normal	NA	535	85	80	70	135	75	90	4	FALSE
2731	GalladeMega Gallade	Psychic	Fighting	618	68	165	95	65	115	110	4	FALSE
2732	Gallade	Psychic	Fighting	518	68	125	65	65	115	80	4	FALSE
2733	Probopass	Rock	Steel	525	60	55	145	75	150	40	4	FALSE
2734	Dusknoir	Ghost	NA	525	45	100	135	65	135	45	4	FALSE
2735	Froslass	Ice	Ghost	480	70	80	70	80	70	110	4	FALSE
2736	RotomWash Rotom	Electric	Water	520	50	65	107	105	107	86	4	FALSE
2737	RotomMow Rotom	Electric	Grass	520	50	65	107	105	107	86	4	FALSE
2738	RotomHeat Rotom	Electric	Fire	520	50	65	107	105	107	86	4	FALSE
2739	RotomFrost Rotom	Electric	Ice	520	50	65	107	105	107	86	4	FALSE
2740	RotomFan Rotom	Electric	Flying	520	50	65	107	105	107	86	4	FALSE
2741	Rotom	Electric	Ghost	440	50	50	77	95	77	91	4	FALSE
2742	Uxie	Psychic	NA	580	75	75	130	75	130	95	4	TRUE
2743	Mesprit	Psychic	NA	580	80	105	105	105	105	80	4	TRUE
2744	Azelf	Psychic	NA	580	75	125	70	125	70	115	4	TRUE
2745	Dialga	Steel	Dragon	680	100	120	120	150	100	90	4	TRUE
2746	Palkia	Water	Dragon	680	90	120	100	150	120	100	4	TRUE
2747	Heatran	Fire	Steel	600	91	90	106	130	106	77	4	TRUE
2748	Regigigas	Normal	NA	670	110	160	110	80	110	100	4	TRUE
2749	GiratinaOrigin Forme	Ghost	Dragon	680	150	120	100	120	100	90	4	TRUE
2750	GiratinaAltered Forme	Ghost	Dragon	680	150	100	120	100	120	90	4	TRUE
2751	Cresselia	Psychic	NA	600	120	70	120	75	130	85	4	FALSE
2752	Phione	Water	NA	480	80	80	80	80	80	80	4	FALSE
2753	Manaphy	Water	NA	600	100	100	100	100	100	100	4	FALSE
2754	Darkrai	Dark	NA	600	70	90	90	135	90	125	4	TRUE
2755	ShayminSky Forme	Grass	Flying	600	100	103	75	120	75	127	4	TRUE
2756	ShayminLand Forme	Grass	NA	600	100	100	100	100	100	100	4	TRUE
2757	Arceus	Normal	NA	720	120	120	120	120	120	120	4	TRUE
2758	Victini	Psychic	Fire	600	100	100	100	100	100	100	5	TRUE
2759	Snivy	Grass	NA	308	45	45	55	45	55	63	5	FALSE
2760	Servine	Grass	NA	413	60	60	75	60	75	83	5	FALSE
2761	Serperior	Grass	NA	528	75	75	95	75	95	113	5	FALSE
2762	Tepig	Fire	NA	308	65	63	45	45	45	45	5	FALSE
2763	Pignite	Fire	Fighting	418	90	93	55	70	55	55	5	FALSE
2764	Emboar	Fire	Fighting	528	110	123	65	100	65	65	5	FALSE
2765	Oshawott	Water	NA	308	55	55	45	63	45	45	5	FALSE
2766	Dewott	Water	NA	413	75	75	60	83	60	60	5	FALSE
2767	Samurott	Water	NA	528	95	100	85	108	70	70	5	FALSE
2768	Patrat	Normal	NA	255	45	55	39	35	39	42	5	FALSE
2769	Watchog	Normal	NA	420	60	85	69	60	69	77	5	FALSE
2770	Lillipup	Normal	NA	275	45	60	45	25	45	55	5	FALSE
2771	Herdier	Normal	NA	370	65	80	65	35	65	60	5	FALSE
2772	Stoutland	Normal	NA	500	85	110	90	45	90	80	5	FALSE
2773	Purrloin	Dark	NA	281	41	50	37	50	37	66	5	FALSE
2774	Liepard	Dark	NA	446	64	88	50	88	50	106	5	FALSE
2775	Pansage	Grass	NA	316	50	53	48	53	48	64	5	FALSE
2776	Simisage	Grass	NA	498	75	98	63	98	63	101	5	FALSE
2777	Pansear	Fire	NA	316	50	53	48	53	48	64	5	FALSE
2778	Simisear	Fire	NA	498	75	98	63	98	63	101	5	FALSE
2779	Panpour	Water	NA	316	50	53	48	53	48	64	5	FALSE
2780	Simipour	Water	NA	498	75	98	63	98	63	101	5	FALSE
2781	Munna	Psychic	NA	292	76	25	45	67	55	24	5	FALSE
2782	Musharna	Psychic	NA	487	116	55	85	107	95	29	5	FALSE
2783	Pidove	Normal	Flying	264	50	55	50	36	30	43	5	FALSE
2784	Tranquill	Normal	Flying	358	62	77	62	50	42	65	5	FALSE
2785	Unfezant	Normal	Flying	488	80	115	80	65	55	93	5	FALSE
2786	Blitzle	Electric	NA	295	45	60	32	50	32	76	5	FALSE
2787	Zebstrika	Electric	NA	497	75	100	63	80	63	116	5	FALSE
2788	Roggenrola	Rock	NA	280	55	75	85	25	25	15	5	FALSE
2789	Boldore	Rock	NA	390	70	105	105	50	40	20	5	FALSE
2790	Gigalith	Rock	NA	515	85	135	130	60	80	25	5	FALSE
2791	Woobat	Psychic	Flying	313	55	45	43	55	43	72	5	FALSE
2792	Swoobat	Psychic	Flying	425	67	57	55	77	55	114	5	FALSE
2793	Drilbur	Ground	NA	328	60	85	40	30	45	68	5	FALSE
2794	Excadrill	Ground	Steel	508	110	135	60	50	65	88	5	FALSE
2795	AudinoMega Audino	Normal	Fairy	545	103	60	126	80	126	50	5	FALSE
2796	Audino	Normal	NA	445	103	60	86	60	86	50	5	FALSE
2797	Timburr	Fighting	NA	305	75	80	55	25	35	35	5	FALSE
2798	Gurdurr	Fighting	NA	405	85	105	85	40	50	40	5	FALSE
2799	Conkeldurr	Fighting	NA	505	105	140	95	55	65	45	5	FALSE
2800	Tympole	Water	NA	294	50	50	40	50	40	64	5	FALSE
2801	Palpitoad	Water	Ground	384	75	65	55	65	55	69	5	FALSE
2802	Seismitoad	Water	Ground	509	105	95	75	85	75	74	5	FALSE
2803	Throh	Fighting	NA	465	120	100	85	30	85	45	5	FALSE
2804	Sawk	Fighting	NA	465	75	125	75	30	75	85	5	FALSE
2805	Sewaddle	Bug	Grass	310	45	53	70	40	60	42	5	FALSE
2806	Swadloon	Bug	Grass	380	55	63	90	50	80	42	5	FALSE
2807	Leavanny	Bug	Grass	500	75	103	80	70	80	92	5	FALSE
2808	Venipede	Bug	Poison	260	30	45	59	30	39	57	5	FALSE
2809	Whirlipede	Bug	Poison	360	40	55	99	40	79	47	5	FALSE
2810	Scolipede	Bug	Poison	485	60	100	89	55	69	112	5	FALSE
2811	Cottonee	Grass	Fairy	280	40	27	60	37	50	66	5	FALSE
2812	Whimsicott	Grass	Fairy	480	60	67	85	77	75	116	5	FALSE
2813	Petilil	Grass	NA	280	45	35	50	70	50	30	5	FALSE
2814	Lilligant	Grass	NA	480	70	60	75	110	75	90	5	FALSE
2815	Basculin	Water	NA	460	70	92	65	80	55	98	5	FALSE
2816	Sandile	Ground	Dark	292	50	72	35	35	35	65	5	FALSE
2817	Krokorok	Ground	Dark	351	60	82	45	45	45	74	5	FALSE
2818	Krookodile	Ground	Dark	519	95	117	80	65	70	92	5	FALSE
2819	Darumaka	Fire	NA	315	70	90	45	15	45	50	5	FALSE
2820	DarmanitanZen Mode	Fire	Psychic	540	105	30	105	140	105	55	5	FALSE
2821	DarmanitanStandard Mode	Fire	NA	480	105	140	55	30	55	95	5	FALSE
2822	Maractus	Grass	NA	461	75	86	67	106	67	60	5	FALSE
2823	Dwebble	Bug	Rock	325	50	65	85	35	35	55	5	FALSE
2824	Crustle	Bug	Rock	475	70	95	125	65	75	45	5	FALSE
2825	Scraggy	Dark	Fighting	348	50	75	70	35	70	48	5	FALSE
2826	Scrafty	Dark	Fighting	488	65	90	115	45	115	58	5	FALSE
2827	Sigilyph	Psychic	Flying	490	72	58	80	103	80	97	5	FALSE
2828	Yamask	Ghost	NA	303	38	30	85	55	65	30	5	FALSE
2829	Cofagrigus	Ghost	NA	483	58	50	145	95	105	30	5	FALSE
2830	Tirtouga	Water	Rock	355	54	78	103	53	45	22	5	FALSE
2831	Carracosta	Water	Rock	495	74	108	133	83	65	32	5	FALSE
2832	Archen	Rock	Flying	401	55	112	45	74	45	70	5	FALSE
2833	Archeops	Rock	Flying	567	75	140	65	112	65	110	5	FALSE
2834	Trubbish	Poison	NA	329	50	50	62	40	62	65	5	FALSE
2835	Garbodor	Poison	NA	474	80	95	82	60	82	75	5	FALSE
2836	Zorua	Dark	NA	330	40	65	40	80	40	65	5	FALSE
2837	Zoroark	Dark	NA	510	60	105	60	120	60	105	5	FALSE
2838	Minccino	Normal	NA	300	55	50	40	40	40	75	5	FALSE
2839	Cinccino	Normal	NA	470	75	95	60	65	60	115	5	FALSE
2840	Gothita	Psychic	NA	290	45	30	50	55	65	45	5	FALSE
2841	Gothorita	Psychic	NA	390	60	45	70	75	85	55	5	FALSE
2842	Gothitelle	Psychic	NA	490	70	55	95	95	110	65	5	FALSE
2843	Solosis	Psychic	NA	290	45	30	40	105	50	20	5	FALSE
2844	Duosion	Psychic	NA	370	65	40	50	125	60	30	5	FALSE
2845	Reuniclus	Psychic	NA	490	110	65	75	125	85	30	5	FALSE
2846	Ducklett	Water	Flying	305	62	44	50	44	50	55	5	FALSE
2847	Swanna	Water	Flying	473	75	87	63	87	63	98	5	FALSE
2848	Vanillite	Ice	NA	305	36	50	50	65	60	44	5	FALSE
2849	Vanillish	Ice	NA	395	51	65	65	80	75	59	5	FALSE
2850	Vanilluxe	Ice	NA	535	71	95	85	110	95	79	5	FALSE
2851	Deerling	Normal	Grass	335	60	60	50	40	50	75	5	FALSE
2852	Sawsbuck	Normal	Grass	475	80	100	70	60	70	95	5	FALSE
2853	Emolga	Electric	Flying	428	55	75	60	75	60	103	5	FALSE
2854	Karrablast	Bug	NA	315	50	75	45	40	45	60	5	FALSE
2855	Escavalier	Bug	Steel	495	70	135	105	60	105	20	5	FALSE
2856	Foongus	Grass	Poison	294	69	55	45	55	55	15	5	FALSE
2857	Amoonguss	Grass	Poison	464	114	85	70	85	80	30	5	FALSE
2858	Frillish	Water	Ghost	335	55	40	50	65	85	40	5	FALSE
2859	Jellicent	Water	Ghost	480	100	60	70	85	105	60	5	FALSE
2860	Alomomola	Water	NA	470	165	75	80	40	45	65	5	FALSE
2861	Joltik	Bug	Electric	319	50	47	50	57	50	65	5	FALSE
2862	Galvantula	Bug	Electric	472	70	77	60	97	60	108	5	FALSE
2863	Ferroseed	Grass	Steel	305	44	50	91	24	86	10	5	FALSE
2864	Ferrothorn	Grass	Steel	489	74	94	131	54	116	20	5	FALSE
2865	Klink	Steel	NA	300	40	55	70	45	60	30	5	FALSE
2866	Klang	Steel	NA	440	60	80	95	70	85	50	5	FALSE
2867	Klinklang	Steel	NA	520	60	100	115	70	85	90	5	FALSE
2868	Tynamo	Electric	NA	275	35	55	40	45	40	60	5	FALSE
2869	Eelektrik	Electric	NA	405	65	85	70	75	70	40	5	FALSE
2870	Eelektross	Electric	NA	515	85	115	80	105	80	50	5	FALSE
2871	Elgyem	Psychic	NA	335	55	55	55	85	55	30	5	FALSE
2872	Beheeyem	Psychic	NA	485	75	75	75	125	95	40	5	FALSE
2873	Litwick	Ghost	Fire	275	50	30	55	65	55	20	5	FALSE
2874	Lampent	Ghost	Fire	370	60	40	60	95	60	55	5	FALSE
2875	Chandelure	Ghost	Fire	520	60	55	90	145	90	80	5	FALSE
2876	Axew	Dragon	NA	320	46	87	60	30	40	57	5	FALSE
2877	Fraxure	Dragon	NA	410	66	117	70	40	50	67	5	FALSE
2878	Haxorus	Dragon	NA	540	76	147	90	60	70	97	5	FALSE
2879	Cubchoo	Ice	NA	305	55	70	40	60	40	40	5	FALSE
2880	Beartic	Ice	NA	485	95	110	80	70	80	50	5	FALSE
2881	Cryogonal	Ice	NA	485	70	50	30	95	135	105	5	FALSE
2882	Shelmet	Bug	NA	305	50	40	85	40	65	25	5	FALSE
2883	Accelgor	Bug	NA	495	80	70	40	100	60	145	5	FALSE
2884	Stunfisk	Ground	Electric	471	109	66	84	81	99	32	5	FALSE
2885	Mienfoo	Fighting	NA	350	45	85	50	55	50	65	5	FALSE
2886	Mienshao	Fighting	NA	510	65	125	60	95	60	105	5	FALSE
2887	Druddigon	Dragon	NA	485	77	120	90	60	90	48	5	FALSE
2888	Golett	Ground	Ghost	303	59	74	50	35	50	35	5	FALSE
2889	Golurk	Ground	Ghost	483	89	124	80	55	80	55	5	FALSE
2890	Pawniard	Dark	Steel	340	45	85	70	40	40	60	5	FALSE
2891	Bisharp	Dark	Steel	490	65	125	100	60	70	70	5	FALSE
2892	Bouffalant	Normal	NA	490	95	110	95	40	95	55	5	FALSE
2893	Rufflet	Normal	Flying	350	70	83	50	37	50	60	5	FALSE
2894	Braviary	Normal	Flying	510	100	123	75	57	75	80	5	FALSE
2895	Vullaby	Dark	Flying	370	70	55	75	45	65	60	5	FALSE
2896	Mandibuzz	Dark	Flying	510	110	65	105	55	95	80	5	FALSE
2897	Heatmor	Fire	NA	484	85	97	66	105	66	65	5	FALSE
2898	Durant	Bug	Steel	484	58	109	112	48	48	109	5	FALSE
2899	Deino	Dark	Dragon	300	52	65	50	45	50	38	5	FALSE
2900	Zweilous	Dark	Dragon	420	72	85	70	65	70	58	5	FALSE
2901	Hydreigon	Dark	Dragon	600	92	105	90	125	90	98	5	FALSE
2902	Larvesta	Bug	Fire	360	55	85	55	50	55	60	5	FALSE
2903	Volcarona	Bug	Fire	550	85	60	65	135	105	100	5	FALSE
2904	Cobalion	Steel	Fighting	580	91	90	129	90	72	108	5	TRUE
2905	Terrakion	Rock	Fighting	580	91	129	90	72	90	108	5	TRUE
2906	Virizion	Grass	Fighting	580	91	90	72	90	129	108	5	TRUE
2907	TornadusTherian Forme	Flying	NA	580	79	100	80	110	90	121	5	TRUE
2908	TornadusIncarnate Forme	Flying	NA	580	79	115	70	125	80	111	5	TRUE
2909	ThundurusTherian Forme	Electric	Flying	580	79	105	70	145	80	101	5	TRUE
2910	ThundurusIncarnate Forme	Electric	Flying	580	79	115	70	125	80	111	5	TRUE
2911	Reshiram	Dragon	Fire	680	100	120	100	150	120	90	5	TRUE
2912	Zekrom	Dragon	Electric	680	100	150	120	120	100	90	5	TRUE
2913	LandorusTherian Forme	Ground	Flying	600	89	145	90	105	80	91	5	TRUE
2914	LandorusIncarnate Forme	Ground	Flying	600	89	125	90	115	80	101	5	TRUE
2915	KyuremWhite Kyurem	Dragon	Ice	700	125	120	90	170	100	95	5	TRUE
2916	KyuremBlack Kyurem	Dragon	Ice	700	125	170	100	120	90	95	5	TRUE
2917	Kyurem	Dragon	Ice	660	125	130	90	130	90	95	5	TRUE
2918	KeldeoResolute Forme	Water	Fighting	580	91	72	90	129	90	108	5	FALSE
2919	KeldeoOrdinary Forme	Water	Fighting	580	91	72	90	129	90	108	5	FALSE
2920	MeloettaPirouette Forme	Normal	Fighting	600	100	128	90	77	77	128	5	FALSE
2921	MeloettaAria Forme	Normal	Psychic	600	100	77	77	128	128	90	5	FALSE
2922	Genesect	Bug	Steel	600	71	120	95	120	95	99	5	FALSE
2923	Chespin	Grass	NA	313	56	61	65	48	45	38	6	FALSE
2924	Quilladin	Grass	NA	405	61	78	95	56	58	57	6	FALSE
2925	Chesnaught	Grass	Fighting	530	88	107	122	74	75	64	6	FALSE
2926	Fennekin	Fire	NA	307	40	45	40	62	60	60	6	FALSE
2927	Braixen	Fire	NA	409	59	59	58	90	70	73	6	FALSE
2928	Delphox	Fire	Psychic	534	75	69	72	114	100	104	6	FALSE
2929	Froakie	Water	NA	314	41	56	40	62	44	71	6	FALSE
2930	Frogadier	Water	NA	405	54	63	52	83	56	97	6	FALSE
2931	Greninja	Water	Dark	530	72	95	67	103	71	122	6	FALSE
2932	Bunnelby	Normal	NA	237	38	36	38	32	36	57	6	FALSE
2933	Diggersby	Normal	Ground	423	85	56	77	50	77	78	6	FALSE
2934	Fletchling	Normal	Flying	278	45	50	43	40	38	62	6	FALSE
2935	Fletchinder	Fire	Flying	382	62	73	55	56	52	84	6	FALSE
2936	Talonflame	Fire	Flying	499	78	81	71	74	69	126	6	FALSE
2937	Scatterbug	Bug	NA	200	38	35	40	27	25	35	6	FALSE
2938	Spewpa	Bug	NA	213	45	22	60	27	30	29	6	FALSE
2939	Vivillon	Bug	Flying	411	80	52	50	90	50	89	6	FALSE
2940	Litleo	Fire	Normal	369	62	50	58	73	54	72	6	FALSE
2941	Pyroar	Fire	Normal	507	86	68	72	109	66	106	6	FALSE
2942	Flabébé	Fairy	NA	303	44	38	39	61	79	42	6	FALSE
2943	Floette	Fairy	NA	371	54	45	47	75	98	52	6	FALSE
2944	Florges	Fairy	NA	552	78	65	68	112	154	75	6	FALSE
2945	Skiddo	Grass	NA	350	66	65	48	62	57	52	6	FALSE
2946	Gogoat	Grass	NA	531	123	100	62	97	81	68	6	FALSE
2947	Pancham	Fighting	NA	348	67	82	62	46	48	43	6	FALSE
2948	Pangoro	Fighting	Dark	495	95	124	78	69	71	58	6	FALSE
2949	Furfrou	Normal	NA	472	75	80	60	65	90	102	6	FALSE
2950	Espurr	Psychic	NA	355	62	48	54	63	60	68	6	FALSE
2951	MeowsticMale	Psychic	NA	466	74	48	76	83	81	104	6	FALSE
2952	MeowsticFemale	Psychic	NA	466	74	48	76	83	81	104	6	FALSE
2953	Honedge	Steel	Ghost	325	45	80	100	35	37	28	6	FALSE
2954	Doublade	Steel	Ghost	448	59	110	150	45	49	35	6	FALSE
2955	AegislashShield Forme	Steel	Ghost	520	60	50	150	50	150	60	6	FALSE
2956	AegislashBlade Forme	Steel	Ghost	520	60	150	50	150	50	60	6	FALSE
2957	Spritzee	Fairy	NA	341	78	52	60	63	65	23	6	FALSE
2958	Aromatisse	Fairy	NA	462	101	72	72	99	89	29	6	FALSE
2959	Swirlix	Fairy	NA	341	62	48	66	59	57	49	6	FALSE
2960	Slurpuff	Fairy	NA	480	82	80	86	85	75	72	6	FALSE
2961	Inkay	Dark	Psychic	288	53	54	53	37	46	45	6	FALSE
2962	Malamar	Dark	Psychic	482	86	92	88	68	75	73	6	FALSE
2963	Binacle	Rock	Water	306	42	52	67	39	56	50	6	FALSE
2964	Barbaracle	Rock	Water	500	72	105	115	54	86	68	6	FALSE
2965	Skrelp	Poison	Water	320	50	60	60	60	60	30	6	FALSE
2966	Dragalge	Poison	Dragon	494	65	75	90	97	123	44	6	FALSE
2967	Clauncher	Water	NA	330	50	53	62	58	63	44	6	FALSE
2968	Clawitzer	Water	NA	500	71	73	88	120	89	59	6	FALSE
2969	Helioptile	Electric	Normal	289	44	38	33	61	43	70	6	FALSE
2970	Heliolisk	Electric	Normal	481	62	55	52	109	94	109	6	FALSE
2971	Tyrunt	Rock	Dragon	362	58	89	77	45	45	48	6	FALSE
2972	Tyrantrum	Rock	Dragon	521	82	121	119	69	59	71	6	FALSE
2973	Amaura	Rock	Ice	362	77	59	50	67	63	46	6	FALSE
2974	Aurorus	Rock	Ice	521	123	77	72	99	92	58	6	FALSE
2975	Sylveon	Fairy	NA	525	95	65	65	110	130	60	6	FALSE
2976	Hawlucha	Fighting	Flying	500	78	92	75	74	63	118	6	FALSE
2977	Dedenne	Electric	Fairy	431	67	58	57	81	67	101	6	FALSE
2978	Carbink	Rock	Fairy	500	50	50	150	50	150	50	6	FALSE
2979	Goomy	Dragon	NA	300	45	50	35	55	75	40	6	FALSE
2980	Sliggoo	Dragon	NA	452	68	75	53	83	113	60	6	FALSE
2981	Goodra	Dragon	NA	600	90	100	70	110	150	80	6	FALSE
2982	Klefki	Steel	Fairy	470	57	80	91	80	87	75	6	FALSE
2983	Phantump	Ghost	Grass	309	43	70	48	50	60	38	6	FALSE
2984	Trevenant	Ghost	Grass	474	85	110	76	65	82	56	6	FALSE
2985	PumpkabooSuper Size	Ghost	Grass	335	59	66	70	44	55	41	6	FALSE
2986	PumpkabooSmall Size	Ghost	Grass	335	44	66	70	44	55	56	6	FALSE
2987	PumpkabooLarge Size	Ghost	Grass	335	54	66	70	44	55	46	6	FALSE
2988	PumpkabooAverage Size	Ghost	Grass	335	49	66	70	44	55	51	6	FALSE
2989	GourgeistSuper Size	Ghost	Grass	494	85	100	122	58	75	54	6	FALSE
2990	GourgeistSmall Size	Ghost	Grass	494	55	85	122	58	75	99	6	FALSE
2991	GourgeistLarge Size	Ghost	Grass	494	75	95	122	58	75	69	6	FALSE
2992	GourgeistAverage Size	Ghost	Grass	494	65	90	122	58	75	84	6	FALSE
2993	Bergmite	Ice	NA	304	55	69	85	32	35	28	6	FALSE
2994	Avalugg	Ice	NA	514	95	117	184	44	46	28	6	FALSE
2995	Noibat	Flying	Dragon	245	40	30	35	45	40	55	6	FALSE
2996	Noivern	Flying	Dragon	535	85	70	80	97	80	123	6	FALSE
2997	Xerneas	Fairy	NA	680	126	131	95	131	98	99	6	TRUE
2998	Yveltal	Dark	Flying	680	126	131	95	131	98	99	6	TRUE
2999	Zygarde50% Forme	Dragon	Ground	600	108	100	121	81	95	95	6	TRUE
3000	DiancieMega Diancie	Rock	Fairy	700	50	160	110	160	110	110	6	TRUE
3001	Diancie	Rock	Fairy	600	50	100	150	100	150	50	6	TRUE
3002	HoopaHoopa Unbound	Psychic	Dark	680	80	160	60	170	130	80	6	TRUE
3003	HoopaHoopa Confined	Psychic	Ghost	600	80	110	60	150	130	70	6	TRUE
3004	Volcanion	Fire	Water	600	80	110	120	130	90	70	6	TRUE
3005	Rowlet	Grass	Flying	320	68	55	55	50	50	42	7	FALSE
3006	Dartrix	Grass	Flying	420	78	75	75	70	70	52	7	FALSE
3007	Decidueye	Grass	Ghost	530	78	107	75	100	100	70	7	FALSE
3008	Litten	Fire	NA	320	45	65	40	60	40	70	7	FALSE
3009	Torracat	Fire	NA	420	65	85	50	80	50	90	7	FALSE
3010	Incineroar	Fire	Dark	530	95	115	90	80	90	60	7	FALSE
3011	Popplio	Water	NA	320	50	54	54	66	56	40	7	FALSE
3012	Brionne	Water	NA	420	60	69	69	91	81	50	7	FALSE
3013	Primarina	Water	Fairy	530	80	74	74	126	116	60	7	FALSE
3014	Pikipek	Normal	Flying	265	35	75	30	30	30	65	7	FALSE
3015	Trumbeak	Normal	Flying	355	55	85	50	40	50	75	7	FALSE
3016	Toucannon	Normal	Flying	485	80	120	75	75	75	60	7	FALSE
3017	Yungoos	Normal	NA	253	48	70	30	30	30	45	7	FALSE
3018	Gumshoos	Normal	NA	418	88	110	60	55	60	45	7	FALSE
3019	Grubbin	Bug	NA	300	47	62	45	55	45	46	7	FALSE
3020	Charabug	Bug	Electric	400	57	82	95	55	75	36	7	FALSE
3021	Vikavolt	Bug	Electric	500	77	70	90	145	75	43	7	FALSE
3022	Carbrawler	Fighting	NA	338	47	82	57	42	47	63	7	FALSE
3023	Crabominable	Fighting	Ice	478	97	132	77	62	67	43	7	FALSE
3024	Oricorio	Fire	Flying	476	75	70	70	98	70	93	7	FALSE
3025	Cutiefly	Bug	Fairy	304	40	45	40	55	40	84	7	FALSE
3026	Ribombee	Bug	Fairy	464	60	55	60	95	70	124	7	FALSE
3027	Rockruff	Rock	NA	280	45	65	40	30	40	60	7	FALSE
3028	Lycanroc	Rock	NA	487	75	115	65	55	65	112	7	FALSE
3029	Wishiwashi	Water	NA	175	45	20	20	25	25	40	7	FALSE
3030	Mareanie	Poison	Water	305	50	53	62	43	52	45	7	FALSE
3031	Toxapex	Poison	Water	495	50	63	152	53	142	35	7	FALSE
3032	Mudbray	Ground	NA	385	70	100	70	45	55	45	7	FALSE
3033	Mudsdate	Ground	NA	500	100	125	100	55	85	35	7	FALSE
3034	Dewpider	Water	Bug	269	38	40	52	40	72	27	7	FALSE
3035	Araquanid	Water	Bug	454	68	70	92	50	132	42	7	FALSE
3036	Fomantis	Grass	NA	250	40	55	35	50	35	35	7	FALSE
3037	Lurantis	Grass	NA	480	70	105	90	80	90	45	7	FALSE
3038	Morelull	Grass	Fairy	285	40	35	55	65	75	15	7	FALSE
3039	Shiinotic	Grass	Fairy	405	60	45	80	90	100	30	7	FALSE
3040	Salandit	Poison	Fire	320	48	44	40	71	40	77	7	FALSE
3041	Salazzle	Poison	Fire	480	68	64	60	111	60	117	7	FALSE
3042	Stufful	Normal	Fighting	340	70	75	50	45	50	50	7	FALSE
3043	Bewear	Normal	Fighting	500	120	125	80	55	60	60	7	FALSE
3044	Bounsweet	Grass	NA	210	42	30	38	30	38	32	7	FALSE
3045	Steenee	Grass	NA	290	52	40	48	40	48	62	7	FALSE
3046	Tsarenna	Grass	NA	510	72	120	98	50	98	72	7	FALSE
3047	Comfey	Fairy	NA	485	51	52	90	82	110	100	7	FALSE
3048	Oranguru	Normal	Psychic	490	90	60	80	90	110	60	7	FALSE
3049	Passimian	Fighting	NA	490	100	120	90	40	60	80	7	FALSE
3050	Wimpod	bug	Water	230	25	35	40	20	30	80	7	FALSE
3051	Golisopod	Bug	Water	530	75	125	140	60	90	40	7	FALSE
3052	Sandygast	Ghost	Ground	320	55	55	80	70	45	15	7	FALSE
3053	Palossand	Ghost	Ground	480	85	75	110	100	75	35	7	FALSE
3054	Pyukumuku	Water	NA	410	55	60	130	30	130	5	7	FALSE
3055	Type Null	Normal	NA	534	95	95	95	95	95	59	7	FALSE
3056	Silvally	Normal	NA	570	95	95	95	95	95	95	7	FALSE
3057	Minior	Rock	Flying	440	60	60	100	60	100	60	7	FALSE
3058	Komala	Normal	NA	480	65	115	65	75	95	65	7	FALSE
3059	Turtonator	Fire	Dragon	485	60	75	135	91	85	36	7	FALSE
3060	Togedemaru	Electric	Steel	435	65	98	63	40	73	96	7	FALSE
3061	Mimikyu	Ghost	Fairy	476	55	90	80	50	105	96	7	FALSE
3062	Bruxish	Water	Psychic	475	68	105	70	70	70	92	7	FALSE
3063	Drampa	Normal	Dragon	485	78	60	85	135	91	36	7	FALSE
3064	Dhelmise	Ghost	Grass	517	70	131	100	86	90	40	7	FALSE
3065	Jangmo-o	Dragon	NA	300	45	55	65	45	45	45	7	FALSE
3066	Hakamo-o	Dragon	Fighting	420	55	75	90	65	70	65	7	FALSE
3067	Kommo-o	Dragon	Fighting	600	75	110	125	100	105	85	7	FALSE
3068	Tapu Koko	Electric	Fairy	570	70	115	85	95	75	130	7	TRUE
3069	Tapu Lele	Psychic	Fairy	570	70	85	75	130	115	95	7	TRUE
3070	Tapu Bulu	Grass	Fairy	570	70	130	115	85	95	75	7	TRUE
3071	Tapu Fini	Water	Fairy	570	70	75	115	95	130	85	7	TRUE
3072	Cosmog	Psychic	NA	200	43	29	31	29	31	37	7	TRUE
3073	Cosmoem	Psychic	NA	400	43	29	131	29	131	37	7	TRUE
3074	Solgaleo	Psychic	Steel	680	137	137	107	113	89	97	7	TRUE
3075	Lunala	Psychic	Ghost	680	137	113	89	137	107	97	7	TRUE
3076	Nihilego	Rock	Poison	570	109	53	47	127	131	103	7	FALSE
3077	Buzzwole	Bug	Fighting	570	107	139	139	53	53	79	7	FALSE
3078	Pheromosa	Bug	Fighting	570	71	137	37	137	37	151	7	FALSE
3079	Xurkitree	Electric	NA	570	83	89	71	173	71	83	7	FALSE
3080	Celesteela	Steel	Flying	570	97	101	103	107	101	61	7	FALSE
3081	Kartana	Grass	Steel	570	59	181	131	59	31	109	7	FALSE
3082	Guzzlord	Dark	Dragon	570	223	101	53	97	53	43	7	FALSE
3083	Necrozma	Psychic	NA	600	97	107	101	127	89	79	7	TRUE
3084	Magearna	Steel	Fairy	600	80	95	115	130	115	65	7	TRUE
3085	Marshadow	Fighting	Ghost	600	90	125	80	90	90	125	7	TRUE
3086	Poipole	Poison	NA	420	67	73	67	73	67	73	7	TRUE
3087	Naganadel	Poison	Dragon	540	73	73	73	127	73	121	7	TRUE
3088	Stakataka	Rock	Steel	570	61	131	211	53	101	13	7	TRUE
3089	Blacephalon	Fire	Ghost	570	53	127	53	151	79	107	7	TRUE
3090	Zeraora	Electric	NA	600	88	112	75	102	80	143	7	TRUE
3091	Meltan	Steel	NA	300	46	65	65	55	35	34	7	TRUE
3092	Melmetal	Steel	NA	600	135	143	143	80	65	34	7	TRUE
3093	Grookey	Grass	NA	310	50	65	50	40	40	65	8	FALSE
3094	Thwackey	Grass	NA	420	70	85	70	55	60	80	8	FALSE
3095	Rillaboom	Grass	NA	530	100	125	90	60	70	85	8	FALSE
3096	Scorbunny	Grass	NA	310	50	71	40	40	40	96	8	FALSE
3097	Raboot	Fire	NA	420	65	86	60	55	60	94	8	FALSE
3098	Cinderace	Fire	NA	530	80	116	75	65	75	119	8	FALSE
3099	Sobble	Water	NA	310	50	40	40	70	40	70	8	FALSE
3100	Drizzile	Water	NA	420	65	60	55	95	55	90	8	FALSE
3101	Inteleon	Water	NA	530	70	85	65	125	65	120	8	FALSE
3102	Skwovet	Normal	NA	275	70	55	55	35	35	25	8	FALSE
3103	Greedent	Normal	NA	460	120	95	95	55	75	20	8	FALSE
3104	Rookidee	Flying	NA	245	38	47	35	33	35	57	8	FALSE
3105	Corvisquire	Flying	NA	365	68	67	55	43	55	77	8	FALSE
3106	Corviknight	Flying	Steel	495	98	87	105	53	85	67	8	FALSE
3107	Blipbug	Bug	NA	180	25	20	20	25	45	45	8	FALSE
3108	Dottler	Bug	Psychic	335	50	35	80	50	90	30	8	FALSE
3109	Orbeetle	Bug	Psychic	505	60	45	110	80	120	90	8	FALSE
3110	Nickit	Dark	NA	245	40	28	28	47	52	50	8	FALSE
3111	Thievul	Dark	NA	455	70	58	58	87	92	90	8	FALSE
3112	Gossifleur	Grass	NA	250	40	40	60	40	60	10	8	FALSE
3113	Eldengoss	Grass	NA	460	60	50	90	80	120	60	8	FALSE
3114	Wooloo	Normal	NA	270	42	40	55	40	45	48	8	FALSE
3115	Dubwool	Normal	NA	490	72	80	100	60	90	88	8	FALSE
3116	Chewtle	Water	NA	284	50	64	50	38	38	44	8	FALSE
3117	Drednaw	Water	Rock	485	90	115	90	48	68	74	8	FALSE
3118	Yamper	Electric	NA	270	59	45	50	40	50	26	8	FALSE
3119	Boltund	Electric	NA	490	69	90	60	90	60	121	8	FALSE
3120	Rolycoly	Rock	NA	240	30	40	50	40	50	30	8	FALSE
3121	Carkol	Rock	Fire	410	80	60	90	60	70	50	8	FALSE
3122	Coalossal	Rock	Fire	510	110	80	120	80	90	30	8	FALSE
3123	Applin	Grass	Dragon	260	40	40	80	40	40	20	8	FALSE
3124	Flapple	Grass	Dragon	485	70	110	80	95	60	70	8	FALSE
3125	Appletun	Grass	Dragon	485	110	85	80	100	80	30	8	FALSE
3126	Silicobra	Ground	NA	315	52	57	75	35	50	46	8	FALSE
3127	Sandaconda	Ground	NA	510	72	107	125	65	70	71	8	FALSE
3128	Cramorant	Flying	Water	475	70	85	55	85	95	85	8	FALSE
3129	Arrokuda	Water	NA	280	41	63	40	40	30	66	8	FALSE
3130	Barraskewda	Water	NA	490	61	123	60	60	50	136	8	FALSE
3131	Toxel	Electric	Poison	242	40	38	35	54	35	40	8	FALSE
3132	Toxtricity	Electric	Poison	502	75	98	70	114	70	75	8	FALSE
3133	Sizzlipede	Fire	Bug	305	50	65	45	50	50	45	8	FALSE
3134	Centiskorch	Fire	Bug	525	100	115	65	90	90	65	8	FALSE
3135	Clobbopus	Fighting	NA	310	50	68	60	50	50	32	8	FALSE
3136	Grapploct	Fighting	NA	480	80	118	90	70	80	42	8	FALSE
3137	Sinistea	Ghost	NA	308	40	45	45	74	54	50	8	FALSE
3138	Polteageist	Ghost	NA	508	60	65	65	134	114	70	8	FALSE
3139	Hatenna	Psychic	NA	265	42	30	45	56	53	39	8	FALSE
3140	Hattrem	Psychic	NA	370	57	40	65	86	73	49	8	FALSE
3141	Hatterene	Psychic	Fairy	510	57	90	95	136	103	29	8	FALSE
3142	Impidimp	Dark	Fairy	265	45	45	30	55	40	50	8	FALSE
3143	Morgem	Dark	Fairy	370	65	60	45	75	55	70	8	FALSE
3144	Grimmsnarl	Dark	Fairy	510	95	120	65	95	75	60	8	FALSE
3145	Obstagoon	Dark	Normal	520	93	90	101	60	81	95	8	FALSE
3146	Perrserker	Steel	NA	440	70	110	100	50	60	50	8	FALSE
3147	Cursola	Ghost	NA	510	60	95	50	145	130	30	8	FALSE
3148	Sirfetch d	Fighting	NA	507	62	135	95	68	82	65	8	FALSE
3149	Mr Rime	Ice	Psychic	520	80	85	75	110	100	70	8	FALSE
3150	Runerigus	Ground	Ghost	483	58	95	145	50	105	30	8	FALSE
3151	Milcery	Fairy	NA	270	45	40	40	50	61	34	8	FALSE
3152	Alcremie	Fairy	NA	495	65	60	75	110	121	64	8	FALSE
3153	Falinks	Fighting	NA	470	65	100	100	70	60	75	8	FALSE
3154	Pincurchin	Electric	NA	435	48	101	95	91	85	15	8	FALSE
3155	Snom	ice	Bug	185	30	25	35	45	30	20	8	FALSE
3156	Frosmoth	Ice	Bug	475	70	65	60	125	90	65	8	FALSE
3157	Stonjourner	Rock	NA	470	100	125	135	20	20	70	8	FALSE
3158	Eiscue	Ice	NA	470	75	80	110	65	90	50	8	FALSE
3159	Indeedee	Psychic	Normal	475	60	65	55	105	95	95	8	FALSE
3160	Morpeko	Electric	Dark	476	58	95	58	70	58	97	8	FALSE
3161	Cufant	Steel	NA	330	72	80	49	40	49	40	8	FALSE
3162	Copperajah	Steel	NA	500	122	130	69	80	69	30	8	FALSE
3163	Dracozolt	Electric	Dragon	505	90	100	90	80	70	75	8	FALSE
3164	Arctozolt	Electric	Ice	505	90	100	90	90	80	55	8	FALSE
3165	Dracovish	Water	Dragon	505	90	90	100	70	80	75	8	FALSE
3166	Arctovish	Water	ice	505	90	90	100	80	90	55	8	FALSE
3167	Duraludon	Steel	Dragon	535	70	95	115	120	50	85	8	FALSE
3168	Dreepy	Dragon	Ghost	270	28	60	30	40	30	82	8	FALSE
3169	Drakloak	Dragon	Ghost	410	68	80	50	60	50	102	8	FALSE
3170	Dragapult	Dragon	Ghost	600	88	120	75	100	75	142	8	FALSE
3171	Zacian	Fairy	Steel	700	92	150	115	80	115	148	8	TRUE
3172	Zamazenta	Fighting	Steel	700	92	120	140	80	140	128	8	TRUE
3173	Eternatus	Poison	Dragon	690	140	85	95	145	95	130	8	TRUE
3174	Kubfu	Fighting	NA	385	60	90	60	53	50	72	8	TRUE
3175	Urshifu	Fighting	Dark	550	100	130	100	63	60	97	8	TRUE
3176	Zarude	Dark	Grass	600	105	120	105	70	95	105	8	TRUE
3177	Regieleki	Electric	NA	580	80	100	50	100	50	200	8	TRUE
3178	Regidrago	Dragon	NA	580	200	100	50	100	50	80	8	TRUE
3179	Glastrier	Ice	NA	580	100	145	130	65	110	30	8	TRUE
3180	Spectrier	Ghost	NA	580	100	65	60	145	80	130	8	TRUE
3181	Calyrex	Psychic	Grass	500	100	80	80	80	80	80	8	TRUE
3182	Wyrdeer	Normal	Psychic	525	103	105	72	105	75	65	8	TRUE
3183	Kleavor	Bug	Rock	500	70	135	95	45	70	85	8	TRUE
3184	Ursaluna	Ground	Normal	550	130	140	105	45	80	50	8	TRUE
3185	Basculegion	Water	Ghost	530	120	112	65	80	75	78	8	FALSE
3186	Sneasler	Fighting	Poison	510	80	130	60	40	80	120	8	FALSE
3187	Overqwil	Dark	Poison	510	85	115	95	65	65	85	8	FALSE
3188	Enamorous	Fairy	Flying	580	74	115	70	135	80	106	8	TRUE
3189	Sprigatito	Grass	NA	310	40	61	54	45	45	65	9	FALSE
3190	Floragato	Grass	NA	410	61	80	63	60	63	83	9	FALSE
3191	Meowscarada	Grass	Dark	530	76	110	70	81	70	123	9	FALSE
3192	Fuecoco	Fire	NA	310	67	45	59	63	40	36	9	FALSE
3193	Crocalor	Fire	NA	411	81	55	78	90	58	49	9	FALSE
3194	Skeledirge	Fire	Ghost	530	104	75	100	110	75	66	9	FALSE
3195	Quaxly	Water	NA	310	55	65	45	50	45	50	9	FALSE
3196	Quaxwell	Water	NA	410	70	85	65	65	60	65	9	FALSE
3197	Quaquaval	Water	Fighting	530	85	120	80	85	75	85	9	FALSE
3198	Lechonk	Normal	NA	254	54	45	40	35	45	35	9	FALSE
3199	Onikologne	Normal	NA	489	110	100	75	59	80	65	9	FALSE
3200	Tarountula	Bug	NA	210	35	41	45	29	40	20	9	FALSE
3201	Sidops	Bug	NA	404	60	79	92	52	86	35	9	FALSE
3202	Nymble	Bug	NA	210	33	46	40	21	25	45	9	FALSE
3203	Lokix	Bug	Dark	450	71	102	78	52	55	92	9	FALSE
3204	Pawmi	Electric	NA	240	45	50	20	40	25	60	9	FALSE
3205	Pawmo	Electric	Fighting	350	60	75	40	50	40	85	9	FALSE
3206	Pawmot	Electric	Fighting	490	70	115	70	70	60	105	9	FALSE
3207	Tandemaus	Normal	NA	305	50	50	45	40	45	75	9	FALSE
3208	Maushold	Normal	NA	470	74	75	70	65	75	111	9	FALSE
3209	Fidough	Fairy	NA	312	37	55	70	30	55	65	9	FALSE
3210	Dachsbun	Fairy	NA	477	57	80	115	50	80	95	9	FALSE
3211	Smoliv	Grass	Normal	260	41	35	45	58	51	30	9	FALSE
3212	Dolliv	Grass	Normal	354	52	53	60	78	78	33	9	FALSE
3213	Arboliva	Grass	Normal	510	78	69	90	125	109	39	9	FALSE
3214	Squawkabilly	Normal	Flying	417	82	96	51	45	51	92	9	FALSE
3215	Nacli	Rock	NA	280	55	55	75	35	35	25	9	FALSE
3216	Naclstack	Rock	NA	355	60	60	100	35	65	35	9	FALSE
3217	Gargancl	Rock	NA	500	100	100	130	45	90	35	9	FALSE
3218	Charcadet	Fire	NA	255	40	50	40	50	40	35	9	FALSE
3219	Armarouge	Fire	Psychic	525	85	60	100	125	80	75	9	FALSE
3220	Ceruledge	Fire	Ghost	525	75	125	80	60	100	85	9	FALSE
3221	Tadbulb	Electric	NA	272	61	31	41	59	35	45	9	FALSE
3222	Bellibolt	Electric	NA	495	109	64	91	103	83	45	9	FALSE
3223	Wattrel	Electric	Flying	280	40	40	35	55	40	70	9	FALSE
3224	Kilowatteral	Electric	Flying	490	70	70	60	105	60	125	9	FALSE
3225	Maschiff	Dark	NA	340	60	78	60	40	51	51	9	FALSE
3226	Mabosstiff	Dark	NA	505	80	120	90	60	70	85	9	FALSE
3227	Shroodle	Poison	Normal	290	40	65	35	40	35	75	9	FALSE
3228	Grafaiai	Poison	Normal	485	63	95	65	80	72	110	9	FALSE
3229	Bramblin	Grass	Ghost	275	40	65	30	45	35	60	9	FALSE
3230	Brambleghast	Grass	Ghost	480	55	115	70	80	70	90	9	FALSE
3231	Toedscool	Ground	Grass	335	40	40	35	50	100	70	9	FALSE
3232	Todescruel	Ground	Grass	515	80	70	65	80	120	100	9	FALSE
3233	Klawf	Rock	NA	450	70	100	115	35	55	75	9	FALSE
3234	Capsakid	Grass	NA	304	50	62	40	62	40	50	9	FALSE
3235	Scovillain	Bug	Fire	486	65	108	65	108	65	75	9	FALSE
3236	Rellor	Bug	NA	270	41	50	60	31	58	30	9	FALSE
3237	Rabsca	Bug	Psychic	470	75	50	85	115	100	45	9	FALSE
3238	Flittle	Psychic	NA	255	30	35	30	55	30	75	9	FALSE
3239	Espathra	Psychic	NA	481	95	60	60	101	60	105	9	FALSE
3240	Tinkatink	Fairy	Steel	297	50	45	45	35	64	58	9	FALSE
3241	Tinkatuff	Fairy	Steel	380	65	55	55	45	82	78	9	FALSE
3242	Tinkaton	Fairy	Steel	506	85	75	77	70	105	94	9	FALSE
3243	Wiglett	Water	NA	245	10	55	25	35	25	95	9	FALSE
3244	Wugtrio	Water	NA	425	35	100	50	50	70	120	9	FALSE
3245	Bombirdier	Flying	Dark	485	70	103	85	60	85	82	9	FALSE
3246	Finizen	Water	NA	315	70	45	40	45	40	75	9	FALSE
3247	Palafin	Water	NA	457	100	70	72	53	62	100	9	FALSE
3248	Varoom	Steel	Poison	300	45	70	63	30	45	47	9	FALSE
3249	Revaroom	Steel	Poison	500	80	70	90	54	67	90	9	FALSE
3250	Cyclizar	Dragon	Normal	501	70	119	65	85	65	121	9	FALSE
3251	Orthworm	Steel	NA	480	70	95	145	60	55	65	9	FALSE
3252	Glimmet	Rock	Poison	350	48	35	42	105	60	60	9	FALSE
3253	Glimmora	Rock	Poison	525	83	55	90	130	81	86	9	FALSE
3254	Greavard	Ghost	NA	290	50	61	60	30	55	34	9	FALSE
3255	Houndstone	Ghost	NA	488	72	101	100	50	97	68	9	FALSE
3256	Flamigo	Flying	Fighting	500	82	115	74	75	64	90	9	FALSE
3257	Cetoddle	Ice	NA	334	108	68	45	30	40	43	9	FALSE
3258	Cetitan	Ice	NA	521	170	113	65	45	55	73	9	FALSE
3259	Veluza	Water	Psychic	478	90	102	73	78	65	70	9	FALSE
3260	Dondozo	Water	NA	530	150	100	115	65	65	35	9	FALSE
3261	Tatsugiri	Dragon	Water	475	68	50	60	120	95	82	9	FALSE
3262	Annihilape	Fighting	Ghost	535	110	115	80	50	90	90	9	FALSE
3263	Clodsire	Poison	Ground	430	130	75	60	45	100	20	9	FALSE
3264	Farigiraf	Normal	Psychic	520	120	90	70	110	70	60	9	FALSE
3265	Dudunsparce	Normal	NA	520	125	100	80	85	75	55	9	FALSE
3266	Kingambit	Dark	Steel	550	100	135	120	60	85	50	9	FALSE
3267	Great Tusk	Ground	Fighting	570	115	131	131	53	53	87	9	FALSE
3268	Scream Tail	Fairy	Psychic	570	115	65	99	65	115	111	9	FALSE
3269	Brute Bonnet	Grass	Dark	570	111	127	99	79	99	55	9	FALSE
3270	Flutter Mane	Ghost	Fairy	570	55	55	55	135	135	135	9	FALSE
3271	Slither Wing	Bug	Fighting	570	85	135	79	85	105	81	9	FALSE
3272	Sandy Shocks	Electric	Ground	570	85	81	97	121	85	101	9	FALSE
3273	Iron Treads	Ground	Steel	570	90	112	120	72	70	106	9	FALSE
3274	Iron Bundle	Ice	Water	570	56	80	114	124	60	136	9	FALSE
3275	Iron Hand	Fighting	Electric	570	154	140	108	50	68	50	9	FALSE
3276	Iron Jugulis	Dark	Flying	570	94	80	86	122	80	108	9	FALSE
3277	Iron Moth	Fire	Poison	570	80	70	60	140	110	110	9	FALSE
3278	Iron Thorns	Rock	Electric	570	100	134	110	70	84	72	9	FALSE
3279	Frigibax	Dragon	Ice	320	65	75	45	35	45	55	9	FALSE
3280	Arctibax	Dragon	Ice	423	90	95	66	45	65	62	9	FALSE
3281	Baxcalibur	Dragon	Ice	600	115	145	92	75	86	87	9	FALSE
3282	Gimmighoul	Ghost	NA	300	45	30	25	75	45	80	9	FALSE
3283	Gholdengo	Steel	Ghost	550	87	60	95	133	91	84	9	FALSE
3284	Wo Chien	Dark	Grass	570	85	85	100	95	135	70	9	FALSE
3285	Chien Pao	Dark	Ice	570	80	120	80	90	65	135	9	FALSE
3286	Ting Lu	Dark	Ground	570	155	110	125	55	80	45	9	FALSE
3287	Chi Yu	Dark	Fire	570	55	80	80	135	120	100	9	FALSE
3288	Roaring Moon	Dragon	Dark	590	105	139	71	55	101	119	9	FALSE
3289	Iron Valiant	Fairy	Fighting	590	74	130	90	120	60	116	9	FALSE
3290	Koraidon	Fighting	Dragon	670	100	135	115	85	100	135	9	TRUE
3291	Miraidon	Electric	Dragon	670	100	85	100	135	115	135	9	TRUE
3292	Walking Wake	Grass	Water	590	99	83	91	125	83	109	9	TRUE
3293	Irong Leaves	Grass	Psychic	590	90	130	88	70	108	104	9	TRUE
3294	Dipplin	Grass	Dragon	485	80	80	110	95	80	40	9	FALSE
3295	Poltchageist	Grass	Ghost	308	40	45	45	74	54	50	9	FALSE
3296	Sinischa	Grass	Ghost	508	71	60	106	121	80	70	9	FALSE
3297	Okidogi	Poison	Fighting	555	88	128	115	58	86	80	9	TRUE
3298	Munkidori	Poison	Psychic	555	88	75	66	130	90	106	9	TRUE
3299	Fezandipiti	Poison	Fairy	555	88	91	82	70	125	99	9	TRUE
3300	Ogerpon	Grass	NA	550	80	120	84	60	96	110	9	TRUE
3301	Archaludon	Steel	Dragon	600	90	105	130	125	65	85	9	TRUE
3302	Hydrapple	Grass	Dragon	540	106	80	110	120	80	44	9	TRUE
3303	Gouging Fire	Fire	Dragon	590	105	115	121	65	93	91	9	TRUE
3304	Raging Bolt	Electric	Dragon	590	125	73	91	137	89	75	9	TRUE
3305	Iron Boulder	Rock	Dragon	590	90	120	80	68	108	124	9	TRUE
3306	Iron Crown	Steel	Psychic	590	90	72	100	122	108	98	9	TRUE
3307	Terapagos	Normal	NA	700	160	105	110	130	110	85	9	TRUE
3308	Pecharunt	Poison	Ghost	600	88	88	160	88	88	88	9	TRUE
3309	Ivysaur	Grass	Poison	405	60	62	63	80	80	60	1	FALSE
3310	VenusaurMega Venusaur	Grass	Poison	625	80	100	123	122	120	80	1	FALSE
3311	Venusaur	Grass	Poison	525	80	82	83	100	100	80	1	FALSE
3312	Charmander	Fire	NA	309	39	52	43	60	50	65	1	FALSE
3313	Charmeleon	Fire	NA	405	58	64	58	80	65	80	1	FALSE
3314	CharizardMega Charizard Y	Fire	Flying	634	78	104	78	159	115	100	1	FALSE
3315	CharizardMega Charizard X	Fire	Dragon	634	78	130	111	130	85	100	1	FALSE
3316	Charizard	Fire	Flying	534	78	84	78	109	85	100	1	FALSE
3317	Squirtle	Water	NA	314	44	48	65	50	64	43	1	FALSE
3318	Wartortle	Water	NA	405	59	63	80	65	80	58	1	FALSE
3319	BlastoiseMega Blastoise	Water	NA	630	79	103	120	135	115	78	1	FALSE
3320	Blastoise	Water	NA	530	79	83	100	85	105	78	1	FALSE
3321	Caterpie	Bug	NA	195	45	30	35	20	20	45	1	FALSE
3322	Metapod	Bug	NA	205	50	20	55	25	25	30	1	FALSE
3323	Butterfree	Bug	Flying	395	60	45	50	90	80	70	1	FALSE
3324	Weedle	Bug	Poison	195	40	35	30	20	20	50	1	FALSE
3325	Kakuna	Bug	Poison	205	45	25	50	25	25	35	1	FALSE
3326	BeedrillMega Beedrill	Bug	Poison	495	65	150	40	15	80	145	1	FALSE
3327	Beedrill	Bug	Poison	395	65	90	40	45	80	75	1	FALSE
3328	Pidgey	Normal	Flying	251	40	45	40	35	35	56	1	FALSE
3329	Pidgeotto	Normal	Flying	349	63	60	55	50	50	71	1	FALSE
3330	PidgeotMega Pidgeot	Normal	Flying	579	83	80	80	135	80	121	1	FALSE
3331	Pidgeot	Normal	Flying	479	83	80	75	70	70	101	1	FALSE
3332	Rattata	Normal	NA	253	30	56	35	25	35	72	1	FALSE
3333	Raticate	Normal	NA	413	55	81	60	50	70	97	1	FALSE
3334	Spearow	Normal	Flying	262	40	60	30	31	31	70	1	FALSE
3335	Fearow	Normal	Flying	442	65	90	65	61	61	100	1	FALSE
3336	Ekans	Poison	NA	288	35	60	44	40	54	55	1	FALSE
3337	Arbok	Poison	NA	438	60	85	69	65	79	80	1	FALSE
3338	Pikachu	Electric	NA	320	35	55	40	50	50	90	1	FALSE
3339	Raichu	Electric	NA	485	60	90	55	90	80	110	1	FALSE
3340	Sandshrew	Ground	NA	300	50	75	85	20	30	40	1	FALSE
3341	Sandslash	Ground	NA	450	75	100	110	45	55	65	1	FALSE
3342	Nidoran♀	Poison	NA	275	55	47	52	40	40	41	1	FALSE
3343	Nidorina	Poison	NA	365	70	62	67	55	55	56	1	FALSE
3344	Nidoqueen	Poison	Ground	505	90	92	87	75	85	76	1	FALSE
3345	Nidoran♂	Poison	NA	273	46	57	40	40	40	50	1	FALSE
3346	Nidorino	Poison	NA	365	61	72	57	55	55	65	1	FALSE
3347	Nidoking	Poison	Ground	505	81	102	77	85	75	85	1	FALSE
3348	Clefairy	Fairy	NA	323	70	45	48	60	65	35	1	FALSE
3349	Clefable	Fairy	NA	483	95	70	73	95	90	60	1	FALSE
3350	Vulpix	Fire	NA	299	38	41	40	50	65	65	1	FALSE
3351	Ninetales	Fire	NA	505	73	76	75	81	100	100	1	FALSE
3352	Jigglypuff	Normal	Fairy	270	115	45	20	45	25	20	1	FALSE
3353	Wigglytuff	Normal	Fairy	435	140	70	45	85	50	45	1	FALSE
3354	Zubat	Poison	Flying	245	40	45	35	30	40	55	1	FALSE
3355	Golbat	Poison	Flying	455	75	80	70	65	75	90	1	FALSE
3356	Oddish	Grass	Poison	320	45	50	55	75	65	30	1	FALSE
3357	Gloom	Grass	Poison	395	60	65	70	85	75	40	1	FALSE
3358	Vileplume	Grass	Poison	490	75	80	85	110	90	50	1	FALSE
3359	Paras	Bug	Grass	285	35	70	55	45	55	25	1	FALSE
3360	Parasect	Bug	Grass	405	60	95	80	60	80	30	1	FALSE
3361	Venonat	Bug	Poison	305	60	55	50	40	55	45	1	FALSE
3362	Venomoth	Bug	Poison	450	70	65	60	90	75	90	1	FALSE
3363	Diglett	Ground	NA	265	10	55	25	35	45	95	1	FALSE
3364	Dugtrio	Ground	NA	405	35	80	50	50	70	120	1	FALSE
3365	Meowth	Normal	NA	290	40	45	35	40	40	90	1	FALSE
3366	Persian	Normal	NA	440	65	70	60	65	65	115	1	FALSE
3367	Psyduck	Water	NA	320	50	52	48	65	50	55	1	FALSE
3368	Golduck	Water	NA	500	80	82	78	95	80	85	1	FALSE
3369	Mankey	Fighting	NA	305	40	80	35	35	45	70	1	FALSE
3370	Primeape	Fighting	NA	455	65	105	60	60	70	95	1	FALSE
3371	Growlithe	Fire	NA	350	55	70	45	70	50	60	1	FALSE
3372	Arcanine	Fire	NA	555	90	110	80	100	80	95	1	FALSE
3373	Poliwag	Water	NA	300	40	50	40	40	40	90	1	FALSE
3374	Poliwhirl	Water	NA	385	65	65	65	50	50	90	1	FALSE
3375	Poliwrath	Water	Fighting	510	90	95	95	70	90	70	1	FALSE
3376	Abra	Psychic	NA	310	25	20	15	105	55	90	1	FALSE
3377	Kadabra	Psychic	NA	400	40	35	30	120	70	105	1	FALSE
3378	AlakazamMega Alakazam	Psychic	NA	590	55	50	65	175	95	150	1	FALSE
3379	Alakazam	Psychic	NA	500	55	50	45	135	95	120	1	FALSE
3380	Machop	Fighting	NA	305	70	80	50	35	35	35	1	FALSE
3381	Machoke	Fighting	NA	405	80	100	70	50	60	45	1	FALSE
3382	Machamp	Fighting	NA	505	90	130	80	65	85	55	1	FALSE
3383	Bellsprout	Grass	Poison	300	50	75	35	70	30	40	1	FALSE
3384	Weepinbell	Grass	Poison	390	65	90	50	85	45	55	1	FALSE
3385	Victreebel	Grass	Poison	490	80	105	65	100	70	70	1	FALSE
3386	Tentacool	Water	Poison	335	40	40	35	50	100	70	1	FALSE
3387	Tentacruel	Water	Poison	515	80	70	65	80	120	100	1	FALSE
3388	Geodude	Rock	Ground	300	40	80	100	30	30	20	1	FALSE
3389	Graveler	Rock	Ground	390	55	95	115	45	45	35	1	FALSE
3390	Golem	Rock	Ground	495	80	120	130	55	65	45	1	FALSE
3391	Ponyta	Fire	NA	410	50	85	55	65	65	90	1	FALSE
3392	Rapidash	Fire	NA	500	65	100	70	80	80	105	1	FALSE
3393	Slowpoke	Water	Psychic	315	90	65	65	40	40	15	1	FALSE
3394	SlowbroMega Slowbro	Water	Psychic	590	95	75	180	130	80	30	1	FALSE
3395	Slowbro	Water	Psychic	490	95	75	110	100	80	30	1	FALSE
3396	Magnemite	Electric	Steel	325	25	35	70	95	55	45	1	FALSE
3397	Magneton	Electric	Steel	465	50	60	95	120	70	70	1	FALSE
3398	Farfetch	Normal	Flying	352	52	65	55	58	62	60	1	FALSE
3399	Doduo	Normal	Flying	310	35	85	45	35	35	75	1	FALSE
3400	Dodrio	Normal	Flying	460	60	110	70	60	60	100	1	FALSE
3401	Seel	Water	NA	325	65	45	55	45	70	45	1	FALSE
3402	Dewgong	Water	Ice	475	90	70	80	70	95	70	1	FALSE
3403	Grimer	Poison	NA	325	80	80	50	40	50	25	1	FALSE
3404	Muk	Poison	NA	500	105	105	75	65	100	50	1	FALSE
3405	Shellder	Water	NA	305	30	65	100	45	25	40	1	FALSE
3406	Cloyster	Water	Ice	525	50	95	180	85	45	70	1	FALSE
3407	Gastly	Ghost	Poison	310	30	35	30	100	35	80	1	FALSE
3408	Haunter	Ghost	Poison	405	45	50	45	115	55	95	1	FALSE
3409	GengarMega Gengar	Ghost	Poison	600	60	65	80	170	95	130	1	FALSE
3410	Gengar	Ghost	Poison	500	60	65	60	130	75	110	1	FALSE
3411	Onix	Rock	Ground	385	35	45	160	30	45	70	1	FALSE
3412	Drowzee	Psychic	NA	328	60	48	45	43	90	42	1	FALSE
3413	Hypno	Psychic	NA	483	85	73	70	73	115	67	1	FALSE
3414	Krabby	Water	NA	325	30	105	90	25	25	50	1	FALSE
3415	Kingler	Water	NA	475	55	130	115	50	50	75	1	FALSE
3416	Voltorb	Electric	NA	330	40	30	50	55	55	100	1	FALSE
3417	Electrode	Electric	NA	480	60	50	70	80	80	140	1	FALSE
3418	Exeggcute	Grass	Psychic	325	60	40	80	60	45	40	1	FALSE
3419	Exeggutor	Grass	Psychic	520	95	95	85	125	65	55	1	FALSE
3420	Cubone	Ground	NA	320	50	50	95	40	50	35	1	FALSE
3421	Marowak	Ground	NA	425	60	80	110	50	80	45	1	FALSE
3422	Hitmonlee	Fighting	NA	455	50	120	53	35	110	87	1	FALSE
3423	Hitmonchan	Fighting	NA	455	50	105	79	35	110	76	1	FALSE
3424	Lickitung	Normal	NA	385	90	55	75	60	75	30	1	FALSE
3425	Koffing	Poison	NA	340	40	65	95	60	45	35	1	FALSE
3426	Weezing	Poison	NA	490	65	90	120	85	70	60	1	FALSE
3427	Rhyhorn	Ground	Rock	345	80	85	95	30	30	25	1	FALSE
3428	Rhydon	Ground	Rock	485	105	130	120	45	45	40	1	FALSE
3429	Chansey	Normal	NA	450	250	5	5	35	105	50	1	FALSE
3430	Tangela	Grass	NA	435	65	55	115	100	40	60	1	FALSE
3431	KangaskhanMega Kangaskhan	Normal	NA	590	105	125	100	60	100	100	1	FALSE
3432	Kangaskhan	Normal	NA	490	105	95	80	40	80	90	1	FALSE
3433	Horsea	Water	NA	295	30	40	70	70	25	60	1	FALSE
3434	Seadra	Water	NA	440	55	65	95	95	45	85	1	FALSE
3435	Goldeen	Water	NA	320	45	67	60	35	50	63	1	FALSE
3436	Seaking	Water	NA	450	80	92	65	65	80	68	1	FALSE
3437	Staryu	Water	NA	340	30	45	55	70	55	85	1	FALSE
3438	Starmie	Water	Psychic	520	60	75	85	100	85	115	1	FALSE
3439	Mr. Mime	Psychic	Fairy	460	40	45	65	100	120	90	1	FALSE
3440	Scyther	Bug	Flying	500	70	110	80	55	80	105	1	FALSE
3441	Jynx	Ice	Psychic	455	65	50	35	115	95	95	1	FALSE
3442	Electabuzz	Electric	NA	490	65	83	57	95	85	105	1	FALSE
3443	Magmar	Fire	NA	495	65	95	57	100	85	93	1	FALSE
3444	PinsirMega Pinsir	Bug	Flying	600	65	155	120	65	90	105	1	FALSE
3445	Pinsir	Bug	NA	500	65	125	100	55	70	85	1	FALSE
3446	Tauros	Normal	NA	490	75	100	95	40	70	110	1	FALSE
3447	Magikarp	Water	NA	200	20	10	55	15	20	80	1	FALSE
3448	GyaradosMega Gyarados	Water	Dark	640	95	155	109	70	130	81	1	FALSE
3449	Gyarados	Water	Flying	540	95	125	79	60	100	81	1	FALSE
3450	Lapras	Water	Ice	535	130	85	80	85	95	60	1	FALSE
3451	Ditto	Normal	NA	288	48	48	48	48	48	48	1	FALSE
3452	Eevee	Normal	NA	325	55	55	50	45	65	55	1	FALSE
3453	Vaporeon	Water	NA	525	130	65	60	110	95	65	1	FALSE
3454	Jolteon	Electric	NA	525	65	65	60	110	95	130	1	FALSE
3455	Flareon	Fire	NA	525	65	130	60	95	110	65	1	FALSE
3456	Porygon	Normal	NA	395	65	60	70	85	75	40	1	FALSE
3457	Omanyte	Rock	Water	355	35	40	100	90	55	35	1	FALSE
3458	Omastar	Rock	Water	495	70	60	125	115	70	55	1	FALSE
3459	Kabuto	Rock	Water	355	30	80	90	55	45	55	1	FALSE
3460	Kabutops	Rock	Water	495	60	115	105	65	70	80	1	FALSE
3461	AerodactylMega Aerodactyl	Rock	Flying	615	80	135	85	70	95	150	1	FALSE
3462	Aerodactyl	Rock	Flying	515	80	105	65	60	75	130	1	FALSE
3463	Snorlax	Normal	NA	540	160	110	65	65	110	30	1	FALSE
3464	Articuno	Ice	Flying	580	90	85	100	95	125	85	1	TRUE
3465	Zapdos	Electric	Flying	580	90	90	85	125	90	100	1	TRUE
3466	Moltres	Fire	Flying	580	90	100	90	125	85	90	1	TRUE
3467	Dratini	Dragon	NA	300	41	64	45	50	50	50	1	FALSE
3468	Dragonair	Dragon	NA	420	61	84	65	70	70	70	1	FALSE
3469	Dragonite	Dragon	Flying	600	91	134	95	100	100	80	1	FALSE
3470	MewtwoMega Mewtwo Y	Psychic	NA	780	106	150	70	194	120	140	1	TRUE
3471	MewtwoMega Mewtwo X	Psychic	Fighting	780	106	190	100	154	100	130	1	TRUE
3472	Mewtwo	Psychic	NA	680	106	110	90	154	90	130	1	TRUE
3473	Mew	Psychic	NA	600	100	100	100	100	100	100	1	FALSE
3474	Chikorita	Grass	NA	318	45	49	65	49	65	45	2	FALSE
3475	Bayleef	Grass	NA	405	60	62	80	63	80	60	2	FALSE
3476	Meganium	Grass	NA	525	80	82	100	83	100	80	2	FALSE
3477	Cyndaquil	Fire	NA	309	39	52	43	60	50	65	2	FALSE
3478	Quilava	Fire	NA	405	58	64	58	80	65	80	2	FALSE
3479	Typhlosion	Fire	NA	534	78	84	78	109	85	100	2	FALSE
3480	Totodile	Water	NA	314	50	65	64	44	48	43	2	FALSE
3481	Croconaw	Water	NA	405	65	80	80	59	63	58	2	FALSE
3482	Feraligatr	Water	NA	530	85	105	100	79	83	78	2	FALSE
3483	Sentret	Normal	NA	215	35	46	34	35	45	20	2	FALSE
3484	Furret	Normal	NA	415	85	76	64	45	55	90	2	FALSE
3485	Hoothoot	Normal	Flying	262	60	30	30	36	56	50	2	FALSE
3486	Noctowl	Normal	Flying	442	100	50	50	76	96	70	2	FALSE
3487	Ledyba	Bug	Flying	265	40	20	30	40	80	55	2	FALSE
3488	Ledian	Bug	Flying	390	55	35	50	55	110	85	2	FALSE
3489	Spinarak	Bug	Poison	250	40	60	40	40	40	30	2	FALSE
3490	Ariados	Bug	Poison	390	70	90	70	60	60	40	2	FALSE
3491	Crobat	Poison	Flying	535	85	90	80	70	80	130	2	FALSE
3492	Chinchou	Water	Electric	330	75	38	38	56	56	67	2	FALSE
3493	Lanturn	Water	Electric	460	125	58	58	76	76	67	2	FALSE
3494	Pichu	Electric	NA	205	20	40	15	35	35	60	2	FALSE
3495	Cleffa	Fairy	NA	218	50	25	28	45	55	15	2	FALSE
3496	Igglybuff	Normal	Fairy	210	90	30	15	40	20	15	2	FALSE
3497	Togepi	Fairy	NA	245	35	20	65	40	65	20	2	FALSE
3498	Togetic	Fairy	Flying	405	55	40	85	80	105	40	2	FALSE
3499	Natu	Psychic	Flying	320	40	50	45	70	45	70	2	FALSE
3500	Xatu	Psychic	Flying	470	65	75	70	95	70	95	2	FALSE
3501	Mareep	Electric	NA	280	55	40	40	65	45	35	2	FALSE
3502	Flaaffy	Electric	NA	365	70	55	55	80	60	45	2	FALSE
3503	AmpharosMega Ampharos	Electric	Dragon	610	90	95	105	165	110	45	2	FALSE
3504	Ampharos	Electric	NA	510	90	75	85	115	90	55	2	FALSE
3505	Bellossom	Grass	NA	490	75	80	95	90	100	50	2	FALSE
3506	Marill	Water	Fairy	250	70	20	50	20	50	40	2	FALSE
3507	Azumarill	Water	Fairy	420	100	50	80	60	80	50	2	FALSE
3508	Sudowoodo	Rock	NA	410	70	100	115	30	65	30	2	FALSE
3509	Politoed	Water	NA	500	90	75	75	90	100	70	2	FALSE
3510	Hoppip	Grass	Flying	250	35	35	40	35	55	50	2	FALSE
3511	Skiploom	Grass	Flying	340	55	45	50	45	65	80	2	FALSE
3512	Jumpluff	Grass	Flying	460	75	55	70	55	95	110	2	FALSE
3513	Aipom	Normal	NA	360	55	70	55	40	55	85	2	FALSE
3514	Sunkern	Grass	NA	180	30	30	30	30	30	30	2	FALSE
3515	Sunflora	Grass	NA	425	75	75	55	105	85	30	2	FALSE
3516	Yanma	Bug	Flying	390	65	65	45	75	45	95	2	FALSE
3517	Wooper	Water	Ground	210	55	45	45	25	25	15	2	FALSE
3518	Quagsire	Water	Ground	430	95	85	85	65	65	35	2	FALSE
3519	Espeon	Psychic	NA	525	65	65	60	130	95	110	2	FALSE
3520	Umbreon	Dark	NA	525	95	65	110	60	130	65	2	FALSE
3521	Murkrow	Dark	Flying	405	60	85	42	85	42	91	2	FALSE
3522	Slowking	Water	Psychic	490	95	75	80	100	110	30	2	FALSE
3523	Misdreavus	Ghost	NA	435	60	60	60	85	85	85	2	FALSE
3524	Unown	Psychic	NA	336	48	72	48	72	48	48	2	FALSE
3525	Wobbuffet	Psychic	NA	405	190	33	58	33	58	33	2	FALSE
3526	Girafarig	Normal	Psychic	455	70	80	65	90	65	85	2	FALSE
3527	Pineco	Bug	NA	290	50	65	90	35	35	15	2	FALSE
3528	Forretress	Bug	Steel	465	75	90	140	60	60	40	2	FALSE
3529	Dunsparce	Normal	NA	415	100	70	70	65	65	45	2	FALSE
3530	Gligar	Ground	Flying	430	65	75	105	35	65	85	2	FALSE
3531	SteelixMega Steelix	Steel	Ground	610	75	125	230	55	95	30	2	FALSE
3532	Steelix	Steel	Ground	510	75	85	200	55	65	30	2	FALSE
3533	Snubbull	Fairy	NA	300	60	80	50	40	40	30	2	FALSE
3534	Granbull	Fairy	NA	450	90	120	75	60	60	45	2	FALSE
3535	Qwilfish	Water	Poison	430	65	95	75	55	55	85	2	FALSE
3536	ScizorMega Scizor	Bug	Steel	600	70	150	140	65	100	75	2	FALSE
3537	Scizor	Bug	Steel	500	70	130	100	55	80	65	2	FALSE
3538	Shuckle	Bug	Rock	505	20	10	230	10	230	5	2	FALSE
3539	HeracrossMega Heracross	Bug	Fighting	600	80	185	115	40	105	75	2	FALSE
3540	Heracross	Bug	Fighting	500	80	125	75	40	95	85	2	FALSE
3541	Sneasel	Dark	Ice	430	55	95	55	35	75	115	2	FALSE
3542	Teddiursa	Normal	NA	330	60	80	50	50	50	40	2	FALSE
3543	Ursaring	Normal	NA	500	90	130	75	75	75	55	2	FALSE
3544	Slugma	Fire	NA	250	40	40	40	70	40	20	2	FALSE
3545	Magcargo	Fire	Rock	410	50	50	120	80	80	30	2	FALSE
3546	Swinub	Ice	Ground	250	50	50	40	30	30	50	2	FALSE
3547	Piloswine	Ice	Ground	450	100	100	80	60	60	50	2	FALSE
3548	Corsola	Water	Rock	380	55	55	85	65	85	35	2	FALSE
3549	Remoraid	Water	NA	300	35	65	35	65	35	65	2	FALSE
3550	Octillery	Water	NA	480	75	105	75	105	75	45	2	FALSE
3551	Delibird	Ice	Flying	330	45	55	45	65	45	75	2	FALSE
3552	Mantine	Water	Flying	465	65	40	70	80	140	70	2	FALSE
3553	Skarmory	Steel	Flying	465	65	80	140	40	70	70	2	FALSE
3554	Houndour	Dark	Fire	330	45	60	30	80	50	65	2	FALSE
3555	HoundoomMega Houndoom	Dark	Fire	600	75	90	90	140	90	115	2	FALSE
3556	Houndoom	Dark	Fire	500	75	90	50	110	80	95	2	FALSE
3557	Kingdra	Water	Dragon	540	75	95	95	95	95	85	2	FALSE
3558	Phanpy	Ground	NA	330	90	60	60	40	40	40	2	FALSE
3559	Donphan	Ground	NA	500	90	120	120	60	60	50	2	FALSE
3560	Porygon2	Normal	NA	515	85	80	90	105	95	60	2	FALSE
3561	Stantler	Normal	NA	465	73	95	62	85	65	85	2	FALSE
3562	Smeargle	Normal	NA	250	55	20	35	20	45	75	2	FALSE
3563	Tyrogue	Fighting	NA	210	35	35	35	35	35	35	2	FALSE
3564	Hitmontop	Fighting	NA	455	50	95	95	35	110	70	2	FALSE
3565	Smoochum	Ice	Psychic	305	45	30	15	85	65	65	2	FALSE
3566	Elekid	Electric	NA	360	45	63	37	65	55	95	2	FALSE
3567	Magby	Fire	NA	365	45	75	37	70	55	83	2	FALSE
3568	Miltank	Normal	NA	490	95	80	105	40	70	100	2	FALSE
3569	Blissey	Normal	NA	540	255	10	10	75	135	55	2	FALSE
3570	Raikou	Electric	NA	580	90	85	75	115	100	115	2	TRUE
3571	Entei	Fire	NA	580	115	115	85	90	75	100	2	TRUE
3572	Suicune	Water	NA	580	100	75	115	90	115	85	2	TRUE
3573	Larvitar	Rock	Ground	300	50	64	50	45	50	41	2	FALSE
3574	Pupitar	Rock	Ground	410	70	84	70	65	70	51	2	FALSE
3575	TyranitarMega Tyranitar	Rock	Dark	700	100	164	150	95	120	71	2	FALSE
3576	Tyranitar	Rock	Dark	600	100	134	110	95	100	61	2	FALSE
3577	Lugia	Psychic	Flying	680	106	90	130	90	154	110	2	TRUE
3578	Ho-oh	Fire	Flying	680	106	130	90	110	154	90	2	TRUE
3579	Celebi	Psychic	Grass	600	100	100	100	100	100	100	2	FALSE
3580	Treecko	Grass	NA	310	40	45	35	65	55	70	3	FALSE
3581	Grovyle	Grass	NA	405	50	65	45	85	65	95	3	FALSE
3582	SceptileMega Sceptile	Grass	Dragon	630	70	110	75	145	85	145	3	FALSE
3583	Sceptile	Grass	NA	530	70	85	65	105	85	120	3	FALSE
3584	Torchic	Fire	NA	310	45	60	40	70	50	45	3	FALSE
3585	Combusken	Fire	Fighting	405	60	85	60	85	60	55	3	FALSE
3586	BlazikenMega Blaziken	Fire	Fighting	630	80	160	80	130	80	100	3	FALSE
3587	Blaziken	Fire	Fighting	530	80	120	70	110	70	80	3	FALSE
3588	Mudkip	Water	NA	310	50	70	50	50	50	40	3	FALSE
3589	Marshtomp	Water	Ground	405	70	85	70	60	70	50	3	FALSE
3590	SwampertMega Swampert	Water	Ground	635	100	150	110	95	110	70	3	FALSE
3591	Swampert	Water	Ground	535	100	110	90	85	90	60	3	FALSE
3592	Poochyena	Dark	NA	220	35	55	35	30	30	35	3	FALSE
3593	Mightyena	Dark	NA	420	70	90	70	60	60	70	3	FALSE
3594	Zigzagoon	Normal	NA	240	38	30	41	30	41	60	3	FALSE
3595	Linoone	Normal	NA	420	78	70	61	50	61	100	3	FALSE
3596	Wurmple	Bug	NA	195	45	45	35	20	30	20	3	FALSE
3597	Silcoon	Bug	NA	205	50	35	55	25	25	15	3	FALSE
3598	Beautifly	Bug	Flying	395	60	70	50	100	50	65	3	FALSE
3599	Cascoon	Bug	NA	205	50	35	55	25	25	15	3	FALSE
3600	Dustox	Bug	Poison	385	60	50	70	50	90	65	3	FALSE
3601	Lotad	Water	Grass	220	40	30	30	40	50	30	3	FALSE
3602	Lombre	Water	Grass	340	60	50	50	60	70	50	3	FALSE
3603	Ludicolo	Water	Grass	480	80	70	70	90	100	70	3	FALSE
3604	Seedot	Grass	NA	220	40	40	50	30	30	30	3	FALSE
3605	Nuzleaf	Grass	Dark	340	70	70	40	60	40	60	3	FALSE
3606	Shiftry	Grass	Dark	480	90	100	60	90	60	80	3	FALSE
3607	Taillow	Normal	Flying	270	40	55	30	30	30	85	3	FALSE
3608	Swellow	Normal	Flying	430	60	85	60	50	50	125	3	FALSE
3609	Wingull	Water	Flying	270	40	30	30	55	30	85	3	FALSE
3610	Pelipper	Water	Flying	430	60	50	100	85	70	65	3	FALSE
3611	Ralts	Psychic	Fairy	198	28	25	25	45	35	40	3	FALSE
3612	Kirlia	Psychic	Fairy	278	38	35	35	65	55	50	3	FALSE
3613	GardevoirMega Gardevoir	Psychic	Fairy	618	68	85	65	165	135	100	3	FALSE
3614	Gardevoir	Psychic	Fairy	518	68	65	65	125	115	80	3	FALSE
3615	Surskit	Bug	Water	269	40	30	32	50	52	65	3	FALSE
3616	Masquerain	Bug	Flying	414	70	60	62	80	82	60	3	FALSE
3617	Shroomish	Grass	NA	295	60	40	60	40	60	35	3	FALSE
3618	Breloom	Grass	Fighting	460	60	130	80	60	60	70	3	FALSE
3619	Slakoth	Normal	NA	280	60	60	60	35	35	30	3	FALSE
3620	Vigoroth	Normal	NA	440	80	80	80	55	55	90	3	FALSE
3621	Slaking	Normal	NA	670	150	160	100	95	65	100	3	FALSE
3622	Nincada	Bug	Ground	266	31	45	90	30	30	40	3	FALSE
3623	Ninjask	Bug	Flying	456	61	90	45	50	50	160	3	FALSE
3624	Shedinja	Bug	Ghost	236	1	90	45	30	30	40	3	FALSE
3625	Whismur	Normal	NA	240	64	51	23	51	23	28	3	FALSE
3626	Loudred	Normal	NA	360	84	71	43	71	43	48	3	FALSE
3627	Exploud	Normal	NA	490	104	91	63	91	73	68	3	FALSE
3628	Makuhita	Fighting	NA	237	72	60	30	20	30	25	3	FALSE
3629	Hariyama	Fighting	NA	474	144	120	60	40	60	50	3	FALSE
3630	Azurill	Normal	Fairy	190	50	20	40	20	40	20	3	FALSE
3631	Nosepass	Rock	NA	375	30	45	135	45	90	30	3	FALSE
3632	Skitty	Normal	NA	260	50	45	45	35	35	50	3	FALSE
3633	Delcatty	Normal	NA	380	70	65	65	55	55	70	3	FALSE
3634	SableyeMega Sableye	Dark	Ghost	480	50	85	125	85	115	20	3	FALSE
3635	Sableye	Dark	Ghost	380	50	75	75	65	65	50	3	FALSE
3636	MawileMega Mawile	Steel	Fairy	480	50	105	125	55	95	50	3	FALSE
3637	Mawile	Steel	Fairy	380	50	85	85	55	55	50	3	FALSE
3638	Aron	Steel	Rock	330	50	70	100	40	40	30	3	FALSE
3639	Lairon	Steel	Rock	430	60	90	140	50	50	40	3	FALSE
3640	AggronMega Aggron	Steel	NA	630	70	140	230	60	80	50	3	FALSE
3641	Aggron	Steel	Rock	530	70	110	180	60	60	50	3	FALSE
3642	Meditite	Fighting	Psychic	280	30	40	55	40	55	60	3	FALSE
3643	MedichamMega Medicham	Fighting	Psychic	510	60	100	85	80	85	100	3	FALSE
3644	Medicham	Fighting	Psychic	410	60	60	75	60	75	80	3	FALSE
3645	Electrike	Electric	NA	295	40	45	40	65	40	65	3	FALSE
3646	ManectricMega Manectric	Electric	NA	575	70	75	80	135	80	135	3	FALSE
3647	Manectric	Electric	NA	475	70	75	60	105	60	105	3	FALSE
3648	Plusle	Electric	NA	405	60	50	40	85	75	95	3	FALSE
3649	Minun	Electric	NA	405	60	40	50	75	85	95	3	FALSE
3650	Volbeat	Bug	NA	400	65	73	55	47	75	85	3	FALSE
3651	Illumise	Bug	NA	400	65	47	55	73	75	85	3	FALSE
3652	Roselia	Grass	Poison	400	50	60	45	100	80	65	3	FALSE
3653	Gulpin	Poison	NA	302	70	43	53	43	53	40	3	FALSE
3654	Swalot	Poison	NA	467	100	73	83	73	83	55	3	FALSE
3655	Carvanha	Water	Dark	305	45	90	20	65	20	65	3	FALSE
3656	SharpedoMega Sharpedo	Water	Dark	560	70	140	70	110	65	105	3	FALSE
3657	Sharpedo	Water	Dark	460	70	120	40	95	40	95	3	FALSE
3658	Wailmer	Water	NA	400	130	70	35	70	35	60	3	FALSE
3659	Wailord	Water	NA	500	170	90	45	90	45	60	3	FALSE
3660	Numel	Fire	Ground	305	60	60	40	65	45	35	3	FALSE
3661	CameruptMega Camerupt	Fire	Ground	560	70	120	100	145	105	20	3	FALSE
3662	Camerupt	Fire	Ground	460	70	100	70	105	75	40	3	FALSE
3663	Torkoal	Fire	NA	470	70	85	140	85	70	20	3	FALSE
3664	Spoink	Psychic	NA	330	60	25	35	70	80	60	3	FALSE
3665	Grumpig	Psychic	NA	470	80	45	65	90	110	80	3	FALSE
3666	Spinda	Normal	NA	360	60	60	60	60	60	60	3	FALSE
3667	Trapinch	Ground	NA	290	45	100	45	45	45	10	3	FALSE
3668	Vibrava	Ground	Dragon	340	50	70	50	50	50	70	3	FALSE
3669	Flygon	Ground	Dragon	520	80	100	80	80	80	100	3	FALSE
3670	Cacnea	Grass	NA	335	50	85	40	85	40	35	3	FALSE
3671	Cacturne	Grass	Dark	475	70	115	60	115	60	55	3	FALSE
3672	Swablu	Normal	Flying	310	45	40	60	40	75	50	3	FALSE
3673	AltariaMega Altaria	Dragon	Fairy	590	75	110	110	110	105	80	3	FALSE
3674	Altaria	Dragon	Flying	490	75	70	90	70	105	80	3	FALSE
3675	Zangoose	Normal	NA	458	73	115	60	60	60	90	3	FALSE
3676	Seviper	Poison	NA	458	73	100	60	100	60	65	3	FALSE
3677	Lunatone	Rock	Psychic	440	70	55	65	95	85	70	3	FALSE
3678	Solrock	Rock	Psychic	440	70	95	85	55	65	70	3	FALSE
3679	Barboach	Water	Ground	288	50	48	43	46	41	60	3	FALSE
3680	Whiscash	Water	Ground	468	110	78	73	76	71	60	3	FALSE
3681	Corphish	Water	NA	308	43	80	65	50	35	35	3	FALSE
3682	Crawdaunt	Water	Dark	468	63	120	85	90	55	55	3	FALSE
3683	Baltoy	Ground	Psychic	300	40	40	55	40	70	55	3	FALSE
3684	Claydol	Ground	Psychic	500	60	70	105	70	120	75	3	FALSE
3685	Lileep	Rock	Grass	355	66	41	77	61	87	23	3	FALSE
3686	Cradily	Rock	Grass	495	86	81	97	81	107	43	3	FALSE
3687	Anorith	Rock	Bug	355	45	95	50	40	50	75	3	FALSE
3688	Armaldo	Rock	Bug	495	75	125	100	70	80	45	3	FALSE
3689	Feebas	Water	NA	200	20	15	20	10	55	80	3	FALSE
3690	Milotic	Water	NA	540	95	60	79	100	125	81	3	FALSE
3691	Castform	Normal	NA	420	70	70	70	70	70	70	3	FALSE
3692	Kecleon	Normal	NA	440	60	90	70	60	120	40	3	FALSE
3693	Shuppet	Ghost	NA	295	44	75	35	63	33	45	3	FALSE
3694	BanetteMega Banette	Ghost	NA	555	64	165	75	93	83	75	3	FALSE
3695	Banette	Ghost	NA	455	64	115	65	83	63	65	3	FALSE
3696	Duskull	Ghost	NA	295	20	40	90	30	90	25	3	FALSE
3697	Dusclops	Ghost	NA	455	40	70	130	60	130	25	3	FALSE
3698	Tropius	Grass	Flying	460	99	68	83	72	87	51	3	FALSE
3699	Chimecho	Psychic	NA	425	65	50	70	95	80	65	3	FALSE
3700	AbsolMega Absol	Dark	NA	565	65	150	60	115	60	115	3	FALSE
3701	Absol	Dark	NA	465	65	130	60	75	60	75	3	FALSE
3702	Wynaut	Psychic	NA	260	95	23	48	23	48	23	3	FALSE
3703	Snorunt	Ice	NA	300	50	50	50	50	50	50	3	FALSE
3704	GlalieMega Glalie	Ice	NA	580	80	120	80	120	80	100	3	FALSE
3705	Glalie	Ice	NA	480	80	80	80	80	80	80	3	FALSE
3706	Spheal	Ice	Water	290	70	40	50	55	50	25	3	FALSE
3707	Sealeo	Ice	Water	410	90	60	70	75	70	45	3	FALSE
3708	Walrein	Ice	Water	530	110	80	90	95	90	65	3	FALSE
3709	Clamperl	Water	NA	345	35	64	85	74	55	32	3	FALSE
3710	Huntail	Water	NA	485	55	104	105	94	75	52	3	FALSE
3711	Gorebyss	Water	NA	485	55	84	105	114	75	52	3	FALSE
3712	Relicanth	Water	Rock	485	100	90	130	45	65	55	3	FALSE
3713	Luvdisc	Water	NA	330	43	30	55	40	65	97	3	FALSE
3714	Bagon	Dragon	NA	300	45	75	60	40	30	50	3	FALSE
3715	Shelgon	Dragon	NA	420	65	95	100	60	50	50	3	FALSE
3716	SalamenceMega Salamence	Dragon	Flying	700	95	145	130	120	90	120	3	FALSE
3717	Salamence	Dragon	Flying	600	95	135	80	110	80	100	3	FALSE
3718	Beldum	Steel	Psychic	300	40	55	80	35	60	30	3	FALSE
3719	Metang	Steel	Psychic	420	60	75	100	55	80	50	3	FALSE
3720	MetagrossMega Metagross	Steel	Psychic	700	80	145	150	105	110	110	3	FALSE
3721	Metagross	Steel	Psychic	600	80	135	130	95	90	70	3	FALSE
3722	Regirock	Rock	NA	580	80	100	200	50	100	50	3	TRUE
3723	Regice	Ice	NA	580	80	50	100	100	200	50	3	TRUE
3724	Registeel	Steel	NA	580	80	75	150	75	150	50	3	TRUE
3725	LatiasMega Latias	Dragon	Psychic	700	80	100	120	140	150	110	3	TRUE
3726	Latias	Dragon	Psychic	600	80	80	90	110	130	110	3	TRUE
3727	LatiosMega Latios	Dragon	Psychic	700	80	130	100	160	120	110	3	TRUE
3728	Latios	Dragon	Psychic	600	80	90	80	130	110	110	3	TRUE
3729	KyogrePrimal Kyogre	Water	NA	770	100	150	90	180	160	90	3	TRUE
3730	Kyogre	Water	NA	670	100	100	90	150	140	90	3	TRUE
3731	GroudonPrimal Groudon	Ground	Fire	770	100	180	160	150	90	90	3	TRUE
3732	Groudon	Ground	NA	670	100	150	140	100	90	90	3	TRUE
3733	RayquazaMega Rayquaza	Dragon	Flying	780	105	180	100	180	100	115	3	TRUE
3734	Rayquaza	Dragon	Flying	680	105	150	90	150	90	95	3	TRUE
3735	Jirachi	Steel	Psychic	600	100	100	100	100	100	100	3	TRUE
3736	DeoxysSpeed Forme	Psychic	NA	600	50	95	90	95	90	180	3	TRUE
3737	DeoxysNormal Forme	Psychic	NA	600	50	150	50	150	50	150	3	TRUE
3738	DeoxysDefense Forme	Psychic	NA	600	50	70	160	70	160	90	3	TRUE
3739	DeoxysAttack Forme	Psychic	NA	600	50	180	20	180	20	150	3	TRUE
3740	Turtwig	Grass	NA	318	55	68	64	45	55	31	4	FALSE
3741	Grotle	Grass	NA	405	75	89	85	55	65	36	4	FALSE
3742	Torterra	Grass	Ground	525	95	109	105	75	85	56	4	FALSE
3743	Chimchar	Fire	NA	309	44	58	44	58	44	61	4	FALSE
3744	Monferno	Fire	Fighting	405	64	78	52	78	52	81	4	FALSE
3745	Infernape	Fire	Fighting	534	76	104	71	104	71	108	4	FALSE
3746	Piplup	Water	NA	314	53	51	53	61	56	40	4	FALSE
3747	Prinplup	Water	NA	405	64	66	68	81	76	50	4	FALSE
3748	Empoleon	Water	Steel	530	84	86	88	111	101	60	4	FALSE
3749	Starly	Normal	Flying	245	40	55	30	30	30	60	4	FALSE
3750	Staravia	Normal	Flying	340	55	75	50	40	40	80	4	FALSE
3751	Staraptor	Normal	Flying	485	85	120	70	50	60	100	4	FALSE
3752	Bidoof	Normal	NA	250	59	45	40	35	40	31	4	FALSE
3753	Bibarel	Normal	Water	410	79	85	60	55	60	71	4	FALSE
3754	Kricketot	Bug	NA	194	37	25	41	25	41	25	4	FALSE
3755	Kricketune	Bug	NA	384	77	85	51	55	51	65	4	FALSE
3756	Shinx	Electric	NA	263	45	65	34	40	34	45	4	FALSE
3757	Luxio	Electric	NA	363	60	85	49	60	49	60	4	FALSE
3758	Luxray	Electric	NA	523	80	120	79	95	79	70	4	FALSE
3759	Budew	Grass	Poison	280	40	30	35	50	70	55	4	FALSE
3760	Roserade	Grass	Poison	515	60	70	65	125	105	90	4	FALSE
3761	Cranidos	Rock	NA	350	67	125	40	30	30	58	4	FALSE
3762	Rampardos	Rock	NA	495	97	165	60	65	50	58	4	FALSE
3763	Shieldon	Rock	Steel	350	30	42	118	42	88	30	4	FALSE
3764	Bastiodon	Rock	Steel	495	60	52	168	47	138	30	4	FALSE
3765	Burmy	Bug	NA	224	40	29	45	29	45	36	4	FALSE
3766	WormadamTrash Cloak	Bug	Steel	424	60	69	95	69	95	36	4	FALSE
3767	WormadamSandy Cloak	Bug	Ground	424	60	79	105	59	85	36	4	FALSE
3768	WormadamPlant Cloak	Bug	Grass	424	60	59	85	79	105	36	4	FALSE
3769	Mothim	Bug	Flying	424	70	94	50	94	50	66	4	FALSE
3770	Combee	Bug	Flying	244	30	30	42	30	42	70	4	FALSE
3771	Vespiquen	Bug	Flying	474	70	80	102	80	102	40	4	FALSE
3772	Pachirisu	Electric	NA	405	60	45	70	45	90	95	4	FALSE
3773	Buizel	Water	NA	330	55	65	35	60	30	85	4	FALSE
3774	Floatzel	Water	NA	495	85	105	55	85	50	115	4	FALSE
3775	Cherubi	Grass	NA	275	45	35	45	62	53	35	4	FALSE
3776	Cherrim	Grass	NA	450	70	60	70	87	78	85	4	FALSE
3777	Shellos	Water	NA	325	76	48	48	57	62	34	4	FALSE
3778	Gastrodon	Water	Ground	475	111	83	68	92	82	39	4	FALSE
3779	Ambipom	Normal	NA	482	75	100	66	60	66	115	4	FALSE
3780	Drifloon	Ghost	Flying	348	90	50	34	60	44	70	4	FALSE
3781	Drifblim	Ghost	Flying	498	150	80	44	90	54	80	4	FALSE
3782	Buneary	Normal	NA	350	55	66	44	44	56	85	4	FALSE
3783	LopunnyMega Lopunny	Normal	Fighting	580	65	136	94	54	96	135	4	FALSE
3784	Lopunny	Normal	NA	480	65	76	84	54	96	105	4	FALSE
3785	Mismagius	Ghost	NA	495	60	60	60	105	105	105	4	FALSE
3786	Honchkrow	Dark	Flying	505	100	125	52	105	52	71	4	FALSE
3787	Glameow	Normal	NA	310	49	55	42	42	37	85	4	FALSE
3788	Purugly	Normal	NA	452	71	82	64	64	59	112	4	FALSE
3789	Chingling	Psychic	NA	285	45	30	50	65	50	45	4	FALSE
3790	Stunky	Poison	Dark	329	63	63	47	41	41	74	4	FALSE
3791	Skuntank	Poison	Dark	479	103	93	67	71	61	84	4	FALSE
3792	Bronzor	Steel	Psychic	300	57	24	86	24	86	23	4	FALSE
3793	Bronzong	Steel	Psychic	500	67	89	116	79	116	33	4	FALSE
3794	Bonsly	Rock	NA	290	50	80	95	10	45	10	4	FALSE
3795	Mime Jr.	Psychic	Fairy	310	20	25	45	70	90	60	4	FALSE
3796	Happiny	Normal	NA	220	100	5	5	15	65	30	4	FALSE
3797	Chatot	Normal	Flying	411	76	65	45	92	42	91	4	FALSE
3798	Spiritomb	Ghost	Dark	485	50	92	108	92	108	35	4	FALSE
3799	Gible	Dragon	Ground	300	58	70	45	40	45	42	4	FALSE
3800	Gabite	Dragon	Ground	410	68	90	65	50	55	82	4	FALSE
3801	GarchompMega Garchomp	Dragon	Ground	700	108	170	115	120	95	92	4	FALSE
3802	Garchomp	Dragon	Ground	600	108	130	95	80	85	102	4	FALSE
3803	Munchlax	Normal	NA	390	135	85	40	40	85	5	4	FALSE
3804	Riolu	Fighting	NA	285	40	70	40	35	40	60	4	FALSE
3805	LucarioMega Lucario	Fighting	Steel	625	70	145	88	140	70	112	4	FALSE
3806	Lucario	Fighting	Steel	525	70	110	70	115	70	90	4	FALSE
3807	Hippopotas	Ground	NA	330	68	72	78	38	42	32	4	FALSE
3808	Hippowdon	Ground	NA	525	108	112	118	68	72	47	4	FALSE
3809	Skorupi	Poison	Bug	330	40	50	90	30	55	65	4	FALSE
3810	Drapion	Poison	Dark	500	70	90	110	60	75	95	4	FALSE
3811	Croagunk	Poison	Fighting	300	48	61	40	61	40	50	4	FALSE
3812	Toxicroak	Poison	Fighting	490	83	106	65	86	65	85	4	FALSE
3813	Carnivine	Grass	NA	454	74	100	72	90	72	46	4	FALSE
3814	Finneon	Water	NA	330	49	49	56	49	61	66	4	FALSE
3815	Lumineon	Water	NA	460	69	69	76	69	86	91	4	FALSE
3816	Mantyke	Water	Flying	345	45	20	50	60	120	50	4	FALSE
3817	Snover	Grass	Ice	334	60	62	50	62	60	40	4	FALSE
3818	AbomasnowMega Abomasnow	Grass	Ice	594	90	132	105	132	105	30	4	FALSE
3819	Abomasnow	Grass	Ice	494	90	92	75	92	85	60	4	FALSE
3820	Weavile	Dark	Ice	510	70	120	65	45	85	125	4	FALSE
3821	Magnezone	Electric	Steel	535	70	70	115	130	90	60	4	FALSE
3822	Lickilicky	Normal	NA	515	110	85	95	80	95	50	4	FALSE
3823	Rhyperior	Ground	Rock	535	115	140	130	55	55	40	4	FALSE
3824	Tangrowth	Grass	NA	535	100	100	125	110	50	50	4	FALSE
3825	Electivire	Electric	NA	540	75	123	67	95	85	95	4	FALSE
3826	Magmortar	Fire	NA	540	75	95	67	125	95	83	4	FALSE
3827	Togekiss	Fairy	Flying	545	85	50	95	120	115	80	4	FALSE
3828	Yanmega	Bug	Flying	515	86	76	86	116	56	95	4	FALSE
3829	Leafeon	Grass	NA	525	65	110	130	60	65	95	4	FALSE
3830	Glaceon	Ice	NA	525	65	60	110	130	95	65	4	FALSE
3831	Gliscor	Ground	Flying	510	75	95	125	45	75	95	4	FALSE
3832	Mamoswine	Ice	Ground	530	110	130	80	70	60	80	4	FALSE
3833	Porygon-Z	Normal	NA	535	85	80	70	135	75	90	4	FALSE
3834	GalladeMega Gallade	Psychic	Fighting	618	68	165	95	65	115	110	4	FALSE
3835	Gallade	Psychic	Fighting	518	68	125	65	65	115	80	4	FALSE
3836	Probopass	Rock	Steel	525	60	55	145	75	150	40	4	FALSE
3837	Dusknoir	Ghost	NA	525	45	100	135	65	135	45	4	FALSE
3838	Froslass	Ice	Ghost	480	70	80	70	80	70	110	4	FALSE
3839	RotomWash Rotom	Electric	Water	520	50	65	107	105	107	86	4	FALSE
3840	RotomMow Rotom	Electric	Grass	520	50	65	107	105	107	86	4	FALSE
3841	RotomHeat Rotom	Electric	Fire	520	50	65	107	105	107	86	4	FALSE
3842	RotomFrost Rotom	Electric	Ice	520	50	65	107	105	107	86	4	FALSE
3843	RotomFan Rotom	Electric	Flying	520	50	65	107	105	107	86	4	FALSE
3844	Rotom	Electric	Ghost	440	50	50	77	95	77	91	4	FALSE
3845	Uxie	Psychic	NA	580	75	75	130	75	130	95	4	TRUE
3846	Mesprit	Psychic	NA	580	80	105	105	105	105	80	4	TRUE
3847	Azelf	Psychic	NA	580	75	125	70	125	70	115	4	TRUE
3848	Dialga	Steel	Dragon	680	100	120	120	150	100	90	4	TRUE
3849	Palkia	Water	Dragon	680	90	120	100	150	120	100	4	TRUE
3850	Heatran	Fire	Steel	600	91	90	106	130	106	77	4	TRUE
3851	Regigigas	Normal	NA	670	110	160	110	80	110	100	4	TRUE
3852	GiratinaOrigin Forme	Ghost	Dragon	680	150	120	100	120	100	90	4	TRUE
3853	GiratinaAltered Forme	Ghost	Dragon	680	150	100	120	100	120	90	4	TRUE
3854	Cresselia	Psychic	NA	600	120	70	120	75	130	85	4	FALSE
3855	Phione	Water	NA	480	80	80	80	80	80	80	4	FALSE
3856	Manaphy	Water	NA	600	100	100	100	100	100	100	4	FALSE
3857	Darkrai	Dark	NA	600	70	90	90	135	90	125	4	TRUE
3858	ShayminSky Forme	Grass	Flying	600	100	103	75	120	75	127	4	TRUE
3859	ShayminLand Forme	Grass	NA	600	100	100	100	100	100	100	4	TRUE
3860	Arceus	Normal	NA	720	120	120	120	120	120	120	4	TRUE
3861	Victini	Psychic	Fire	600	100	100	100	100	100	100	5	TRUE
3862	Snivy	Grass	NA	308	45	45	55	45	55	63	5	FALSE
3863	Servine	Grass	NA	413	60	60	75	60	75	83	5	FALSE
3864	Serperior	Grass	NA	528	75	75	95	75	95	113	5	FALSE
3865	Tepig	Fire	NA	308	65	63	45	45	45	45	5	FALSE
3866	Pignite	Fire	Fighting	418	90	93	55	70	55	55	5	FALSE
3867	Emboar	Fire	Fighting	528	110	123	65	100	65	65	5	FALSE
3868	Oshawott	Water	NA	308	55	55	45	63	45	45	5	FALSE
3869	Dewott	Water	NA	413	75	75	60	83	60	60	5	FALSE
3870	Samurott	Water	NA	528	95	100	85	108	70	70	5	FALSE
3871	Patrat	Normal	NA	255	45	55	39	35	39	42	5	FALSE
3872	Watchog	Normal	NA	420	60	85	69	60	69	77	5	FALSE
3873	Lillipup	Normal	NA	275	45	60	45	25	45	55	5	FALSE
3874	Herdier	Normal	NA	370	65	80	65	35	65	60	5	FALSE
3875	Stoutland	Normal	NA	500	85	110	90	45	90	80	5	FALSE
3876	Purrloin	Dark	NA	281	41	50	37	50	37	66	5	FALSE
3877	Liepard	Dark	NA	446	64	88	50	88	50	106	5	FALSE
3878	Pansage	Grass	NA	316	50	53	48	53	48	64	5	FALSE
3879	Simisage	Grass	NA	498	75	98	63	98	63	101	5	FALSE
3880	Pansear	Fire	NA	316	50	53	48	53	48	64	5	FALSE
3881	Simisear	Fire	NA	498	75	98	63	98	63	101	5	FALSE
3882	Panpour	Water	NA	316	50	53	48	53	48	64	5	FALSE
3883	Simipour	Water	NA	498	75	98	63	98	63	101	5	FALSE
3884	Munna	Psychic	NA	292	76	25	45	67	55	24	5	FALSE
3885	Musharna	Psychic	NA	487	116	55	85	107	95	29	5	FALSE
3886	Pidove	Normal	Flying	264	50	55	50	36	30	43	5	FALSE
3887	Tranquill	Normal	Flying	358	62	77	62	50	42	65	5	FALSE
3888	Unfezant	Normal	Flying	488	80	115	80	65	55	93	5	FALSE
3889	Blitzle	Electric	NA	295	45	60	32	50	32	76	5	FALSE
3890	Zebstrika	Electric	NA	497	75	100	63	80	63	116	5	FALSE
3891	Roggenrola	Rock	NA	280	55	75	85	25	25	15	5	FALSE
3892	Boldore	Rock	NA	390	70	105	105	50	40	20	5	FALSE
3893	Gigalith	Rock	NA	515	85	135	130	60	80	25	5	FALSE
3894	Woobat	Psychic	Flying	313	55	45	43	55	43	72	5	FALSE
3895	Swoobat	Psychic	Flying	425	67	57	55	77	55	114	5	FALSE
3896	Drilbur	Ground	NA	328	60	85	40	30	45	68	5	FALSE
3897	Excadrill	Ground	Steel	508	110	135	60	50	65	88	5	FALSE
3898	AudinoMega Audino	Normal	Fairy	545	103	60	126	80	126	50	5	FALSE
3899	Audino	Normal	NA	445	103	60	86	60	86	50	5	FALSE
3900	Timburr	Fighting	NA	305	75	80	55	25	35	35	5	FALSE
3901	Gurdurr	Fighting	NA	405	85	105	85	40	50	40	5	FALSE
3902	Conkeldurr	Fighting	NA	505	105	140	95	55	65	45	5	FALSE
3903	Tympole	Water	NA	294	50	50	40	50	40	64	5	FALSE
3904	Palpitoad	Water	Ground	384	75	65	55	65	55	69	5	FALSE
3905	Seismitoad	Water	Ground	509	105	95	75	85	75	74	5	FALSE
3906	Throh	Fighting	NA	465	120	100	85	30	85	45	5	FALSE
3907	Sawk	Fighting	NA	465	75	125	75	30	75	85	5	FALSE
3908	Sewaddle	Bug	Grass	310	45	53	70	40	60	42	5	FALSE
3909	Swadloon	Bug	Grass	380	55	63	90	50	80	42	5	FALSE
3910	Leavanny	Bug	Grass	500	75	103	80	70	80	92	5	FALSE
3911	Venipede	Bug	Poison	260	30	45	59	30	39	57	5	FALSE
3912	Whirlipede	Bug	Poison	360	40	55	99	40	79	47	5	FALSE
3913	Scolipede	Bug	Poison	485	60	100	89	55	69	112	5	FALSE
3914	Cottonee	Grass	Fairy	280	40	27	60	37	50	66	5	FALSE
3915	Whimsicott	Grass	Fairy	480	60	67	85	77	75	116	5	FALSE
3916	Petilil	Grass	NA	280	45	35	50	70	50	30	5	FALSE
3917	Lilligant	Grass	NA	480	70	60	75	110	75	90	5	FALSE
3918	Basculin	Water	NA	460	70	92	65	80	55	98	5	FALSE
3919	Sandile	Ground	Dark	292	50	72	35	35	35	65	5	FALSE
3920	Krokorok	Ground	Dark	351	60	82	45	45	45	74	5	FALSE
3921	Krookodile	Ground	Dark	519	95	117	80	65	70	92	5	FALSE
3922	Darumaka	Fire	NA	315	70	90	45	15	45	50	5	FALSE
3923	DarmanitanZen Mode	Fire	Psychic	540	105	30	105	140	105	55	5	FALSE
3924	DarmanitanStandard Mode	Fire	NA	480	105	140	55	30	55	95	5	FALSE
3925	Maractus	Grass	NA	461	75	86	67	106	67	60	5	FALSE
3926	Dwebble	Bug	Rock	325	50	65	85	35	35	55	5	FALSE
3927	Crustle	Bug	Rock	475	70	95	125	65	75	45	5	FALSE
3928	Scraggy	Dark	Fighting	348	50	75	70	35	70	48	5	FALSE
3929	Scrafty	Dark	Fighting	488	65	90	115	45	115	58	5	FALSE
3930	Sigilyph	Psychic	Flying	490	72	58	80	103	80	97	5	FALSE
3931	Yamask	Ghost	NA	303	38	30	85	55	65	30	5	FALSE
3932	Cofagrigus	Ghost	NA	483	58	50	145	95	105	30	5	FALSE
3933	Tirtouga	Water	Rock	355	54	78	103	53	45	22	5	FALSE
3934	Carracosta	Water	Rock	495	74	108	133	83	65	32	5	FALSE
3935	Archen	Rock	Flying	401	55	112	45	74	45	70	5	FALSE
3936	Archeops	Rock	Flying	567	75	140	65	112	65	110	5	FALSE
3937	Trubbish	Poison	NA	329	50	50	62	40	62	65	5	FALSE
3938	Garbodor	Poison	NA	474	80	95	82	60	82	75	5	FALSE
3939	Zorua	Dark	NA	330	40	65	40	80	40	65	5	FALSE
3940	Zoroark	Dark	NA	510	60	105	60	120	60	105	5	FALSE
3941	Minccino	Normal	NA	300	55	50	40	40	40	75	5	FALSE
3942	Cinccino	Normal	NA	470	75	95	60	65	60	115	5	FALSE
3943	Gothita	Psychic	NA	290	45	30	50	55	65	45	5	FALSE
3944	Gothorita	Psychic	NA	390	60	45	70	75	85	55	5	FALSE
3945	Gothitelle	Psychic	NA	490	70	55	95	95	110	65	5	FALSE
3946	Solosis	Psychic	NA	290	45	30	40	105	50	20	5	FALSE
3947	Duosion	Psychic	NA	370	65	40	50	125	60	30	5	FALSE
3948	Reuniclus	Psychic	NA	490	110	65	75	125	85	30	5	FALSE
3949	Ducklett	Water	Flying	305	62	44	50	44	50	55	5	FALSE
3950	Swanna	Water	Flying	473	75	87	63	87	63	98	5	FALSE
3951	Vanillite	Ice	NA	305	36	50	50	65	60	44	5	FALSE
3952	Vanillish	Ice	NA	395	51	65	65	80	75	59	5	FALSE
3953	Vanilluxe	Ice	NA	535	71	95	85	110	95	79	5	FALSE
3954	Deerling	Normal	Grass	335	60	60	50	40	50	75	5	FALSE
3955	Sawsbuck	Normal	Grass	475	80	100	70	60	70	95	5	FALSE
3956	Emolga	Electric	Flying	428	55	75	60	75	60	103	5	FALSE
3957	Karrablast	Bug	NA	315	50	75	45	40	45	60	5	FALSE
3958	Escavalier	Bug	Steel	495	70	135	105	60	105	20	5	FALSE
3959	Foongus	Grass	Poison	294	69	55	45	55	55	15	5	FALSE
3960	Amoonguss	Grass	Poison	464	114	85	70	85	80	30	5	FALSE
3961	Frillish	Water	Ghost	335	55	40	50	65	85	40	5	FALSE
3962	Jellicent	Water	Ghost	480	100	60	70	85	105	60	5	FALSE
3963	Alomomola	Water	NA	470	165	75	80	40	45	65	5	FALSE
3964	Joltik	Bug	Electric	319	50	47	50	57	50	65	5	FALSE
3965	Galvantula	Bug	Electric	472	70	77	60	97	60	108	5	FALSE
3966	Ferroseed	Grass	Steel	305	44	50	91	24	86	10	5	FALSE
3967	Ferrothorn	Grass	Steel	489	74	94	131	54	116	20	5	FALSE
3968	Klink	Steel	NA	300	40	55	70	45	60	30	5	FALSE
3969	Klang	Steel	NA	440	60	80	95	70	85	50	5	FALSE
3970	Klinklang	Steel	NA	520	60	100	115	70	85	90	5	FALSE
3971	Tynamo	Electric	NA	275	35	55	40	45	40	60	5	FALSE
3972	Eelektrik	Electric	NA	405	65	85	70	75	70	40	5	FALSE
3973	Eelektross	Electric	NA	515	85	115	80	105	80	50	5	FALSE
3974	Elgyem	Psychic	NA	335	55	55	55	85	55	30	5	FALSE
3975	Beheeyem	Psychic	NA	485	75	75	75	125	95	40	5	FALSE
3976	Litwick	Ghost	Fire	275	50	30	55	65	55	20	5	FALSE
3977	Lampent	Ghost	Fire	370	60	40	60	95	60	55	5	FALSE
3978	Chandelure	Ghost	Fire	520	60	55	90	145	90	80	5	FALSE
3979	Axew	Dragon	NA	320	46	87	60	30	40	57	5	FALSE
3980	Fraxure	Dragon	NA	410	66	117	70	40	50	67	5	FALSE
3981	Haxorus	Dragon	NA	540	76	147	90	60	70	97	5	FALSE
3982	Cubchoo	Ice	NA	305	55	70	40	60	40	40	5	FALSE
3983	Beartic	Ice	NA	485	95	110	80	70	80	50	5	FALSE
3984	Cryogonal	Ice	NA	485	70	50	30	95	135	105	5	FALSE
3985	Shelmet	Bug	NA	305	50	40	85	40	65	25	5	FALSE
3986	Accelgor	Bug	NA	495	80	70	40	100	60	145	5	FALSE
3987	Stunfisk	Ground	Electric	471	109	66	84	81	99	32	5	FALSE
3988	Mienfoo	Fighting	NA	350	45	85	50	55	50	65	5	FALSE
3989	Mienshao	Fighting	NA	510	65	125	60	95	60	105	5	FALSE
3990	Druddigon	Dragon	NA	485	77	120	90	60	90	48	5	FALSE
3991	Golett	Ground	Ghost	303	59	74	50	35	50	35	5	FALSE
3992	Golurk	Ground	Ghost	483	89	124	80	55	80	55	5	FALSE
3993	Pawniard	Dark	Steel	340	45	85	70	40	40	60	5	FALSE
3994	Bisharp	Dark	Steel	490	65	125	100	60	70	70	5	FALSE
3995	Bouffalant	Normal	NA	490	95	110	95	40	95	55	5	FALSE
3996	Rufflet	Normal	Flying	350	70	83	50	37	50	60	5	FALSE
3997	Braviary	Normal	Flying	510	100	123	75	57	75	80	5	FALSE
3998	Vullaby	Dark	Flying	370	70	55	75	45	65	60	5	FALSE
3999	Mandibuzz	Dark	Flying	510	110	65	105	55	95	80	5	FALSE
4000	Heatmor	Fire	NA	484	85	97	66	105	66	65	5	FALSE
4001	Durant	Bug	Steel	484	58	109	112	48	48	109	5	FALSE
4002	Deino	Dark	Dragon	300	52	65	50	45	50	38	5	FALSE
4003	Zweilous	Dark	Dragon	420	72	85	70	65	70	58	5	FALSE
4004	Hydreigon	Dark	Dragon	600	92	105	90	125	90	98	5	FALSE
4005	Larvesta	Bug	Fire	360	55	85	55	50	55	60	5	FALSE
4006	Volcarona	Bug	Fire	550	85	60	65	135	105	100	5	FALSE
4007	Cobalion	Steel	Fighting	580	91	90	129	90	72	108	5	TRUE
4008	Terrakion	Rock	Fighting	580	91	129	90	72	90	108	5	TRUE
4009	Virizion	Grass	Fighting	580	91	90	72	90	129	108	5	TRUE
4010	TornadusTherian Forme	Flying	NA	580	79	100	80	110	90	121	5	TRUE
4011	TornadusIncarnate Forme	Flying	NA	580	79	115	70	125	80	111	5	TRUE
4012	ThundurusTherian Forme	Electric	Flying	580	79	105	70	145	80	101	5	TRUE
4013	ThundurusIncarnate Forme	Electric	Flying	580	79	115	70	125	80	111	5	TRUE
4014	Reshiram	Dragon	Fire	680	100	120	100	150	120	90	5	TRUE
4015	Zekrom	Dragon	Electric	680	100	150	120	120	100	90	5	TRUE
4016	LandorusTherian Forme	Ground	Flying	600	89	145	90	105	80	91	5	TRUE
4017	LandorusIncarnate Forme	Ground	Flying	600	89	125	90	115	80	101	5	TRUE
4018	KyuremWhite Kyurem	Dragon	Ice	700	125	120	90	170	100	95	5	TRUE
4019	KyuremBlack Kyurem	Dragon	Ice	700	125	170	100	120	90	95	5	TRUE
4020	Kyurem	Dragon	Ice	660	125	130	90	130	90	95	5	TRUE
4021	KeldeoResolute Forme	Water	Fighting	580	91	72	90	129	90	108	5	FALSE
4022	KeldeoOrdinary Forme	Water	Fighting	580	91	72	90	129	90	108	5	FALSE
4023	MeloettaPirouette Forme	Normal	Fighting	600	100	128	90	77	77	128	5	FALSE
4024	MeloettaAria Forme	Normal	Psychic	600	100	77	77	128	128	90	5	FALSE
4025	Genesect	Bug	Steel	600	71	120	95	120	95	99	5	FALSE
4026	Chespin	Grass	NA	313	56	61	65	48	45	38	6	FALSE
4027	Quilladin	Grass	NA	405	61	78	95	56	58	57	6	FALSE
4028	Chesnaught	Grass	Fighting	530	88	107	122	74	75	64	6	FALSE
4029	Fennekin	Fire	NA	307	40	45	40	62	60	60	6	FALSE
4030	Braixen	Fire	NA	409	59	59	58	90	70	73	6	FALSE
4031	Delphox	Fire	Psychic	534	75	69	72	114	100	104	6	FALSE
4032	Froakie	Water	NA	314	41	56	40	62	44	71	6	FALSE
4033	Frogadier	Water	NA	405	54	63	52	83	56	97	6	FALSE
4034	Greninja	Water	Dark	530	72	95	67	103	71	122	6	FALSE
4035	Bunnelby	Normal	NA	237	38	36	38	32	36	57	6	FALSE
4036	Diggersby	Normal	Ground	423	85	56	77	50	77	78	6	FALSE
4037	Fletchling	Normal	Flying	278	45	50	43	40	38	62	6	FALSE
4038	Fletchinder	Fire	Flying	382	62	73	55	56	52	84	6	FALSE
4039	Talonflame	Fire	Flying	499	78	81	71	74	69	126	6	FALSE
4040	Scatterbug	Bug	NA	200	38	35	40	27	25	35	6	FALSE
4041	Spewpa	Bug	NA	213	45	22	60	27	30	29	6	FALSE
4042	Vivillon	Bug	Flying	411	80	52	50	90	50	89	6	FALSE
4043	Litleo	Fire	Normal	369	62	50	58	73	54	72	6	FALSE
4044	Pyroar	Fire	Normal	507	86	68	72	109	66	106	6	FALSE
4045	Flabébé	Fairy	NA	303	44	38	39	61	79	42	6	FALSE
4046	Floette	Fairy	NA	371	54	45	47	75	98	52	6	FALSE
4047	Florges	Fairy	NA	552	78	65	68	112	154	75	6	FALSE
4048	Skiddo	Grass	NA	350	66	65	48	62	57	52	6	FALSE
4049	Gogoat	Grass	NA	531	123	100	62	97	81	68	6	FALSE
4050	Pancham	Fighting	NA	348	67	82	62	46	48	43	6	FALSE
4051	Pangoro	Fighting	Dark	495	95	124	78	69	71	58	6	FALSE
4052	Furfrou	Normal	NA	472	75	80	60	65	90	102	6	FALSE
4053	Espurr	Psychic	NA	355	62	48	54	63	60	68	6	FALSE
4054	MeowsticMale	Psychic	NA	466	74	48	76	83	81	104	6	FALSE
4055	MeowsticFemale	Psychic	NA	466	74	48	76	83	81	104	6	FALSE
4056	Honedge	Steel	Ghost	325	45	80	100	35	37	28	6	FALSE
4057	Doublade	Steel	Ghost	448	59	110	150	45	49	35	6	FALSE
4058	AegislashShield Forme	Steel	Ghost	520	60	50	150	50	150	60	6	FALSE
4059	AegislashBlade Forme	Steel	Ghost	520	60	150	50	150	50	60	6	FALSE
4060	Spritzee	Fairy	NA	341	78	52	60	63	65	23	6	FALSE
4061	Aromatisse	Fairy	NA	462	101	72	72	99	89	29	6	FALSE
4062	Swirlix	Fairy	NA	341	62	48	66	59	57	49	6	FALSE
4063	Slurpuff	Fairy	NA	480	82	80	86	85	75	72	6	FALSE
4064	Inkay	Dark	Psychic	288	53	54	53	37	46	45	6	FALSE
4065	Malamar	Dark	Psychic	482	86	92	88	68	75	73	6	FALSE
4066	Binacle	Rock	Water	306	42	52	67	39	56	50	6	FALSE
4067	Barbaracle	Rock	Water	500	72	105	115	54	86	68	6	FALSE
4068	Skrelp	Poison	Water	320	50	60	60	60	60	30	6	FALSE
4069	Dragalge	Poison	Dragon	494	65	75	90	97	123	44	6	FALSE
4070	Clauncher	Water	NA	330	50	53	62	58	63	44	6	FALSE
4071	Clawitzer	Water	NA	500	71	73	88	120	89	59	6	FALSE
4072	Helioptile	Electric	Normal	289	44	38	33	61	43	70	6	FALSE
4073	Heliolisk	Electric	Normal	481	62	55	52	109	94	109	6	FALSE
4074	Tyrunt	Rock	Dragon	362	58	89	77	45	45	48	6	FALSE
4075	Tyrantrum	Rock	Dragon	521	82	121	119	69	59	71	6	FALSE
4076	Amaura	Rock	Ice	362	77	59	50	67	63	46	6	FALSE
4077	Aurorus	Rock	Ice	521	123	77	72	99	92	58	6	FALSE
4078	Sylveon	Fairy	NA	525	95	65	65	110	130	60	6	FALSE
4079	Hawlucha	Fighting	Flying	500	78	92	75	74	63	118	6	FALSE
4080	Dedenne	Electric	Fairy	431	67	58	57	81	67	101	6	FALSE
4081	Carbink	Rock	Fairy	500	50	50	150	50	150	50	6	FALSE
4082	Goomy	Dragon	NA	300	45	50	35	55	75	40	6	FALSE
4083	Sliggoo	Dragon	NA	452	68	75	53	83	113	60	6	FALSE
4084	Goodra	Dragon	NA	600	90	100	70	110	150	80	6	FALSE
4085	Klefki	Steel	Fairy	470	57	80	91	80	87	75	6	FALSE
4086	Phantump	Ghost	Grass	309	43	70	48	50	60	38	6	FALSE
4087	Trevenant	Ghost	Grass	474	85	110	76	65	82	56	6	FALSE
4088	PumpkabooSuper Size	Ghost	Grass	335	59	66	70	44	55	41	6	FALSE
4089	PumpkabooSmall Size	Ghost	Grass	335	44	66	70	44	55	56	6	FALSE
4090	PumpkabooLarge Size	Ghost	Grass	335	54	66	70	44	55	46	6	FALSE
4091	PumpkabooAverage Size	Ghost	Grass	335	49	66	70	44	55	51	6	FALSE
4092	GourgeistSuper Size	Ghost	Grass	494	85	100	122	58	75	54	6	FALSE
4093	GourgeistSmall Size	Ghost	Grass	494	55	85	122	58	75	99	6	FALSE
4094	GourgeistLarge Size	Ghost	Grass	494	75	95	122	58	75	69	6	FALSE
4095	GourgeistAverage Size	Ghost	Grass	494	65	90	122	58	75	84	6	FALSE
4096	Bergmite	Ice	NA	304	55	69	85	32	35	28	6	FALSE
4097	Avalugg	Ice	NA	514	95	117	184	44	46	28	6	FALSE
4098	Noibat	Flying	Dragon	245	40	30	35	45	40	55	6	FALSE
4099	Noivern	Flying	Dragon	535	85	70	80	97	80	123	6	FALSE
4100	Xerneas	Fairy	NA	680	126	131	95	131	98	99	6	TRUE
4101	Yveltal	Dark	Flying	680	126	131	95	131	98	99	6	TRUE
4102	Zygarde50% Forme	Dragon	Ground	600	108	100	121	81	95	95	6	TRUE
4103	DiancieMega Diancie	Rock	Fairy	700	50	160	110	160	110	110	6	TRUE
4104	Diancie	Rock	Fairy	600	50	100	150	100	150	50	6	TRUE
4105	HoopaHoopa Unbound	Psychic	Dark	680	80	160	60	170	130	80	6	TRUE
4106	HoopaHoopa Confined	Psychic	Ghost	600	80	110	60	150	130	70	6	TRUE
4107	Volcanion	Fire	Water	600	80	110	120	130	90	70	6	TRUE
4108	Rowlet	Grass	Flying	320	68	55	55	50	50	42	7	FALSE
4109	Dartrix	Grass	Flying	420	78	75	75	70	70	52	7	FALSE
4110	Decidueye	Grass	Ghost	530	78	107	75	100	100	70	7	FALSE
4111	Litten	Fire	NA	320	45	65	40	60	40	70	7	FALSE
4112	Torracat	Fire	NA	420	65	85	50	80	50	90	7	FALSE
4113	Incineroar	Fire	Dark	530	95	115	90	80	90	60	7	FALSE
4114	Popplio	Water	NA	320	50	54	54	66	56	40	7	FALSE
4115	Brionne	Water	NA	420	60	69	69	91	81	50	7	FALSE
4116	Primarina	Water	Fairy	530	80	74	74	126	116	60	7	FALSE
4117	Pikipek	Normal	Flying	265	35	75	30	30	30	65	7	FALSE
4118	Trumbeak	Normal	Flying	355	55	85	50	40	50	75	7	FALSE
4119	Toucannon	Normal	Flying	485	80	120	75	75	75	60	7	FALSE
4120	Yungoos	Normal	NA	253	48	70	30	30	30	45	7	FALSE
4121	Gumshoos	Normal	NA	418	88	110	60	55	60	45	7	FALSE
4122	Grubbin	Bug	NA	300	47	62	45	55	45	46	7	FALSE
4123	Charabug	Bug	Electric	400	57	82	95	55	75	36	7	FALSE
4124	Vikavolt	Bug	Electric	500	77	70	90	145	75	43	7	FALSE
4125	Carbrawler	Fighting	NA	338	47	82	57	42	47	63	7	FALSE
4126	Crabominable	Fighting	Ice	478	97	132	77	62	67	43	7	FALSE
4127	Oricorio	Fire	Flying	476	75	70	70	98	70	93	7	FALSE
4128	Cutiefly	Bug	Fairy	304	40	45	40	55	40	84	7	FALSE
4129	Ribombee	Bug	Fairy	464	60	55	60	95	70	124	7	FALSE
4130	Rockruff	Rock	NA	280	45	65	40	30	40	60	7	FALSE
4131	Lycanroc	Rock	NA	487	75	115	65	55	65	112	7	FALSE
4132	Wishiwashi	Water	NA	175	45	20	20	25	25	40	7	FALSE
4133	Mareanie	Poison	Water	305	50	53	62	43	52	45	7	FALSE
4134	Toxapex	Poison	Water	495	50	63	152	53	142	35	7	FALSE
4135	Mudbray	Ground	NA	385	70	100	70	45	55	45	7	FALSE
4136	Mudsdate	Ground	NA	500	100	125	100	55	85	35	7	FALSE
4137	Dewpider	Water	Bug	269	38	40	52	40	72	27	7	FALSE
4138	Araquanid	Water	Bug	454	68	70	92	50	132	42	7	FALSE
4139	Fomantis	Grass	NA	250	40	55	35	50	35	35	7	FALSE
4140	Lurantis	Grass	NA	480	70	105	90	80	90	45	7	FALSE
4141	Morelull	Grass	Fairy	285	40	35	55	65	75	15	7	FALSE
4142	Shiinotic	Grass	Fairy	405	60	45	80	90	100	30	7	FALSE
4143	Salandit	Poison	Fire	320	48	44	40	71	40	77	7	FALSE
4144	Salazzle	Poison	Fire	480	68	64	60	111	60	117	7	FALSE
4145	Stufful	Normal	Fighting	340	70	75	50	45	50	50	7	FALSE
4146	Bewear	Normal	Fighting	500	120	125	80	55	60	60	7	FALSE
4147	Bounsweet	Grass	NA	210	42	30	38	30	38	32	7	FALSE
4148	Steenee	Grass	NA	290	52	40	48	40	48	62	7	FALSE
4149	Tsarenna	Grass	NA	510	72	120	98	50	98	72	7	FALSE
4150	Comfey	Fairy	NA	485	51	52	90	82	110	100	7	FALSE
4151	Oranguru	Normal	Psychic	490	90	60	80	90	110	60	7	FALSE
4152	Passimian	Fighting	NA	490	100	120	90	40	60	80	7	FALSE
4153	Wimpod	bug	Water	230	25	35	40	20	30	80	7	FALSE
4154	Golisopod	Bug	Water	530	75	125	140	60	90	40	7	FALSE
4155	Sandygast	Ghost	Ground	320	55	55	80	70	45	15	7	FALSE
4156	Palossand	Ghost	Ground	480	85	75	110	100	75	35	7	FALSE
4157	Pyukumuku	Water	NA	410	55	60	130	30	130	5	7	FALSE
4158	Type Null	Normal	NA	534	95	95	95	95	95	59	7	FALSE
4159	Silvally	Normal	NA	570	95	95	95	95	95	95	7	FALSE
4160	Minior	Rock	Flying	440	60	60	100	60	100	60	7	FALSE
4161	Komala	Normal	NA	480	65	115	65	75	95	65	7	FALSE
4162	Turtonator	Fire	Dragon	485	60	75	135	91	85	36	7	FALSE
4163	Togedemaru	Electric	Steel	435	65	98	63	40	73	96	7	FALSE
4164	Mimikyu	Ghost	Fairy	476	55	90	80	50	105	96	7	FALSE
4165	Bruxish	Water	Psychic	475	68	105	70	70	70	92	7	FALSE
4166	Drampa	Normal	Dragon	485	78	60	85	135	91	36	7	FALSE
4167	Dhelmise	Ghost	Grass	517	70	131	100	86	90	40	7	FALSE
4168	Jangmo-o	Dragon	NA	300	45	55	65	45	45	45	7	FALSE
4169	Hakamo-o	Dragon	Fighting	420	55	75	90	65	70	65	7	FALSE
4170	Kommo-o	Dragon	Fighting	600	75	110	125	100	105	85	7	FALSE
4171	Tapu Koko	Electric	Fairy	570	70	115	85	95	75	130	7	TRUE
4172	Tapu Lele	Psychic	Fairy	570	70	85	75	130	115	95	7	TRUE
4173	Tapu Bulu	Grass	Fairy	570	70	130	115	85	95	75	7	TRUE
4174	Tapu Fini	Water	Fairy	570	70	75	115	95	130	85	7	TRUE
4175	Cosmog	Psychic	NA	200	43	29	31	29	31	37	7	TRUE
4176	Cosmoem	Psychic	NA	400	43	29	131	29	131	37	7	TRUE
4177	Solgaleo	Psychic	Steel	680	137	137	107	113	89	97	7	TRUE
4178	Lunala	Psychic	Ghost	680	137	113	89	137	107	97	7	TRUE
4179	Nihilego	Rock	Poison	570	109	53	47	127	131	103	7	FALSE
4180	Buzzwole	Bug	Fighting	570	107	139	139	53	53	79	7	FALSE
4181	Pheromosa	Bug	Fighting	570	71	137	37	137	37	151	7	FALSE
4182	Xurkitree	Electric	NA	570	83	89	71	173	71	83	7	FALSE
4183	Celesteela	Steel	Flying	570	97	101	103	107	101	61	7	FALSE
4184	Kartana	Grass	Steel	570	59	181	131	59	31	109	7	FALSE
4185	Guzzlord	Dark	Dragon	570	223	101	53	97	53	43	7	FALSE
4186	Necrozma	Psychic	NA	600	97	107	101	127	89	79	7	TRUE
4187	Magearna	Steel	Fairy	600	80	95	115	130	115	65	7	TRUE
4188	Marshadow	Fighting	Ghost	600	90	125	80	90	90	125	7	TRUE
4189	Poipole	Poison	NA	420	67	73	67	73	67	73	7	TRUE
4190	Naganadel	Poison	Dragon	540	73	73	73	127	73	121	7	TRUE
4191	Stakataka	Rock	Steel	570	61	131	211	53	101	13	7	TRUE
4192	Blacephalon	Fire	Ghost	570	53	127	53	151	79	107	7	TRUE
4193	Zeraora	Electric	NA	600	88	112	75	102	80	143	7	TRUE
4194	Meltan	Steel	NA	300	46	65	65	55	35	34	7	TRUE
4195	Melmetal	Steel	NA	600	135	143	143	80	65	34	7	TRUE
4196	Grookey	Grass	NA	310	50	65	50	40	40	65	8	FALSE
4197	Thwackey	Grass	NA	420	70	85	70	55	60	80	8	FALSE
4198	Rillaboom	Grass	NA	530	100	125	90	60	70	85	8	FALSE
4199	Scorbunny	Grass	NA	310	50	71	40	40	40	96	8	FALSE
4200	Raboot	Fire	NA	420	65	86	60	55	60	94	8	FALSE
4201	Cinderace	Fire	NA	530	80	116	75	65	75	119	8	FALSE
4202	Sobble	Water	NA	310	50	40	40	70	40	70	8	FALSE
4203	Drizzile	Water	NA	420	65	60	55	95	55	90	8	FALSE
4204	Inteleon	Water	NA	530	70	85	65	125	65	120	8	FALSE
4205	Skwovet	Normal	NA	275	70	55	55	35	35	25	8	FALSE
4206	Greedent	Normal	NA	460	120	95	95	55	75	20	8	FALSE
4207	Rookidee	Flying	NA	245	38	47	35	33	35	57	8	FALSE
4208	Corvisquire	Flying	NA	365	68	67	55	43	55	77	8	FALSE
4209	Corviknight	Flying	Steel	495	98	87	105	53	85	67	8	FALSE
4210	Blipbug	Bug	NA	180	25	20	20	25	45	45	8	FALSE
4211	Dottler	Bug	Psychic	335	50	35	80	50	90	30	8	FALSE
4212	Orbeetle	Bug	Psychic	505	60	45	110	80	120	90	8	FALSE
4213	Nickit	Dark	NA	245	40	28	28	47	52	50	8	FALSE
4214	Thievul	Dark	NA	455	70	58	58	87	92	90	8	FALSE
4215	Gossifleur	Grass	NA	250	40	40	60	40	60	10	8	FALSE
4216	Eldengoss	Grass	NA	460	60	50	90	80	120	60	8	FALSE
4217	Wooloo	Normal	NA	270	42	40	55	40	45	48	8	FALSE
4218	Dubwool	Normal	NA	490	72	80	100	60	90	88	8	FALSE
4219	Chewtle	Water	NA	284	50	64	50	38	38	44	8	FALSE
4220	Drednaw	Water	Rock	485	90	115	90	48	68	74	8	FALSE
4221	Yamper	Electric	NA	270	59	45	50	40	50	26	8	FALSE
4222	Boltund	Electric	NA	490	69	90	60	90	60	121	8	FALSE
4223	Rolycoly	Rock	NA	240	30	40	50	40	50	30	8	FALSE
4224	Carkol	Rock	Fire	410	80	60	90	60	70	50	8	FALSE
4225	Coalossal	Rock	Fire	510	110	80	120	80	90	30	8	FALSE
4226	Applin	Grass	Dragon	260	40	40	80	40	40	20	8	FALSE
4227	Flapple	Grass	Dragon	485	70	110	80	95	60	70	8	FALSE
4228	Appletun	Grass	Dragon	485	110	85	80	100	80	30	8	FALSE
4229	Silicobra	Ground	NA	315	52	57	75	35	50	46	8	FALSE
4230	Sandaconda	Ground	NA	510	72	107	125	65	70	71	8	FALSE
4231	Cramorant	Flying	Water	475	70	85	55	85	95	85	8	FALSE
4232	Arrokuda	Water	NA	280	41	63	40	40	30	66	8	FALSE
4233	Barraskewda	Water	NA	490	61	123	60	60	50	136	8	FALSE
4234	Toxel	Electric	Poison	242	40	38	35	54	35	40	8	FALSE
4235	Toxtricity	Electric	Poison	502	75	98	70	114	70	75	8	FALSE
4236	Sizzlipede	Fire	Bug	305	50	65	45	50	50	45	8	FALSE
4237	Centiskorch	Fire	Bug	525	100	115	65	90	90	65	8	FALSE
4238	Clobbopus	Fighting	NA	310	50	68	60	50	50	32	8	FALSE
4239	Grapploct	Fighting	NA	480	80	118	90	70	80	42	8	FALSE
4240	Sinistea	Ghost	NA	308	40	45	45	74	54	50	8	FALSE
4241	Polteageist	Ghost	NA	508	60	65	65	134	114	70	8	FALSE
4242	Hatenna	Psychic	NA	265	42	30	45	56	53	39	8	FALSE
4243	Hattrem	Psychic	NA	370	57	40	65	86	73	49	8	FALSE
4244	Hatterene	Psychic	Fairy	510	57	90	95	136	103	29	8	FALSE
4245	Impidimp	Dark	Fairy	265	45	45	30	55	40	50	8	FALSE
4246	Morgem	Dark	Fairy	370	65	60	45	75	55	70	8	FALSE
4247	Grimmsnarl	Dark	Fairy	510	95	120	65	95	75	60	8	FALSE
4248	Obstagoon	Dark	Normal	520	93	90	101	60	81	95	8	FALSE
4249	Perrserker	Steel	NA	440	70	110	100	50	60	50	8	FALSE
4250	Cursola	Ghost	NA	510	60	95	50	145	130	30	8	FALSE
4251	Sirfetch d	Fighting	NA	507	62	135	95	68	82	65	8	FALSE
4252	Mr Rime	Ice	Psychic	520	80	85	75	110	100	70	8	FALSE
4253	Runerigus	Ground	Ghost	483	58	95	145	50	105	30	8	FALSE
4254	Milcery	Fairy	NA	270	45	40	40	50	61	34	8	FALSE
4255	Alcremie	Fairy	NA	495	65	60	75	110	121	64	8	FALSE
4256	Falinks	Fighting	NA	470	65	100	100	70	60	75	8	FALSE
4257	Pincurchin	Electric	NA	435	48	101	95	91	85	15	8	FALSE
4258	Snom	ice	Bug	185	30	25	35	45	30	20	8	FALSE
4259	Frosmoth	Ice	Bug	475	70	65	60	125	90	65	8	FALSE
4260	Stonjourner	Rock	NA	470	100	125	135	20	20	70	8	FALSE
4261	Eiscue	Ice	NA	470	75	80	110	65	90	50	8	FALSE
4262	Indeedee	Psychic	Normal	475	60	65	55	105	95	95	8	FALSE
4263	Morpeko	Electric	Dark	476	58	95	58	70	58	97	8	FALSE
4264	Cufant	Steel	NA	330	72	80	49	40	49	40	8	FALSE
4265	Copperajah	Steel	NA	500	122	130	69	80	69	30	8	FALSE
4266	Dracozolt	Electric	Dragon	505	90	100	90	80	70	75	8	FALSE
4267	Arctozolt	Electric	Ice	505	90	100	90	90	80	55	8	FALSE
4268	Dracovish	Water	Dragon	505	90	90	100	70	80	75	8	FALSE
4269	Arctovish	Water	ice	505	90	90	100	80	90	55	8	FALSE
4270	Duraludon	Steel	Dragon	535	70	95	115	120	50	85	8	FALSE
4271	Dreepy	Dragon	Ghost	270	28	60	30	40	30	82	8	FALSE
4272	Drakloak	Dragon	Ghost	410	68	80	50	60	50	102	8	FALSE
4273	Dragapult	Dragon	Ghost	600	88	120	75	100	75	142	8	FALSE
4274	Zacian	Fairy	Steel	700	92	150	115	80	115	148	8	TRUE
4275	Zamazenta	Fighting	Steel	700	92	120	140	80	140	128	8	TRUE
4276	Eternatus	Poison	Dragon	690	140	85	95	145	95	130	8	TRUE
4277	Kubfu	Fighting	NA	385	60	90	60	53	50	72	8	TRUE
4278	Urshifu	Fighting	Dark	550	100	130	100	63	60	97	8	TRUE
4279	Zarude	Dark	Grass	600	105	120	105	70	95	105	8	TRUE
4280	Regieleki	Electric	NA	580	80	100	50	100	50	200	8	TRUE
4281	Regidrago	Dragon	NA	580	200	100	50	100	50	80	8	TRUE
4282	Glastrier	Ice	NA	580	100	145	130	65	110	30	8	TRUE
4283	Spectrier	Ghost	NA	580	100	65	60	145	80	130	8	TRUE
4284	Calyrex	Psychic	Grass	500	100	80	80	80	80	80	8	TRUE
4285	Wyrdeer	Normal	Psychic	525	103	105	72	105	75	65	8	TRUE
4286	Kleavor	Bug	Rock	500	70	135	95	45	70	85	8	TRUE
4287	Ursaluna	Ground	Normal	550	130	140	105	45	80	50	8	TRUE
4288	Basculegion	Water	Ghost	530	120	112	65	80	75	78	8	FALSE
4289	Sneasler	Fighting	Poison	510	80	130	60	40	80	120	8	FALSE
4290	Overqwil	Dark	Poison	510	85	115	95	65	65	85	8	FALSE
4291	Enamorous	Fairy	Flying	580	74	115	70	135	80	106	8	TRUE
4292	Sprigatito	Grass	NA	310	40	61	54	45	45	65	9	FALSE
4293	Floragato	Grass	NA	410	61	80	63	60	63	83	9	FALSE
4294	Meowscarada	Grass	Dark	530	76	110	70	81	70	123	9	FALSE
4295	Fuecoco	Fire	NA	310	67	45	59	63	40	36	9	FALSE
4296	Crocalor	Fire	NA	411	81	55	78	90	58	49	9	FALSE
4297	Skeledirge	Fire	Ghost	530	104	75	100	110	75	66	9	FALSE
4298	Quaxly	Water	NA	310	55	65	45	50	45	50	9	FALSE
4299	Quaxwell	Water	NA	410	70	85	65	65	60	65	9	FALSE
4300	Quaquaval	Water	Fighting	530	85	120	80	85	75	85	9	FALSE
4301	Lechonk	Normal	NA	254	54	45	40	35	45	35	9	FALSE
4302	Onikologne	Normal	NA	489	110	100	75	59	80	65	9	FALSE
4303	Tarountula	Bug	NA	210	35	41	45	29	40	20	9	FALSE
4304	Sidops	Bug	NA	404	60	79	92	52	86	35	9	FALSE
4305	Nymble	Bug	NA	210	33	46	40	21	25	45	9	FALSE
4306	Lokix	Bug	Dark	450	71	102	78	52	55	92	9	FALSE
4307	Pawmi	Electric	NA	240	45	50	20	40	25	60	9	FALSE
4308	Pawmo	Electric	Fighting	350	60	75	40	50	40	85	9	FALSE
4309	Pawmot	Electric	Fighting	490	70	115	70	70	60	105	9	FALSE
4310	Tandemaus	Normal	NA	305	50	50	45	40	45	75	9	FALSE
4311	Maushold	Normal	NA	470	74	75	70	65	75	111	9	FALSE
4312	Fidough	Fairy	NA	312	37	55	70	30	55	65	9	FALSE
4313	Dachsbun	Fairy	NA	477	57	80	115	50	80	95	9	FALSE
4314	Smoliv	Grass	Normal	260	41	35	45	58	51	30	9	FALSE
4315	Dolliv	Grass	Normal	354	52	53	60	78	78	33	9	FALSE
4316	Arboliva	Grass	Normal	510	78	69	90	125	109	39	9	FALSE
4317	Squawkabilly	Normal	Flying	417	82	96	51	45	51	92	9	FALSE
4318	Nacli	Rock	NA	280	55	55	75	35	35	25	9	FALSE
4319	Naclstack	Rock	NA	355	60	60	100	35	65	35	9	FALSE
4320	Gargancl	Rock	NA	500	100	100	130	45	90	35	9	FALSE
4321	Charcadet	Fire	NA	255	40	50	40	50	40	35	9	FALSE
4322	Armarouge	Fire	Psychic	525	85	60	100	125	80	75	9	FALSE
4323	Ceruledge	Fire	Ghost	525	75	125	80	60	100	85	9	FALSE
4324	Tadbulb	Electric	NA	272	61	31	41	59	35	45	9	FALSE
4325	Bellibolt	Electric	NA	495	109	64	91	103	83	45	9	FALSE
4326	Wattrel	Electric	Flying	280	40	40	35	55	40	70	9	FALSE
4327	Kilowatteral	Electric	Flying	490	70	70	60	105	60	125	9	FALSE
4328	Maschiff	Dark	NA	340	60	78	60	40	51	51	9	FALSE
4329	Mabosstiff	Dark	NA	505	80	120	90	60	70	85	9	FALSE
4330	Shroodle	Poison	Normal	290	40	65	35	40	35	75	9	FALSE
4331	Grafaiai	Poison	Normal	485	63	95	65	80	72	110	9	FALSE
4332	Bramblin	Grass	Ghost	275	40	65	30	45	35	60	9	FALSE
4333	Brambleghast	Grass	Ghost	480	55	115	70	80	70	90	9	FALSE
4334	Toedscool	Ground	Grass	335	40	40	35	50	100	70	9	FALSE
4335	Todescruel	Ground	Grass	515	80	70	65	80	120	100	9	FALSE
4336	Klawf	Rock	NA	450	70	100	115	35	55	75	9	FALSE
4337	Capsakid	Grass	NA	304	50	62	40	62	40	50	9	FALSE
4338	Scovillain	Bug	Fire	486	65	108	65	108	65	75	9	FALSE
4339	Rellor	Bug	NA	270	41	50	60	31	58	30	9	FALSE
4340	Rabsca	Bug	Psychic	470	75	50	85	115	100	45	9	FALSE
4341	Flittle	Psychic	NA	255	30	35	30	55	30	75	9	FALSE
4342	Espathra	Psychic	NA	481	95	60	60	101	60	105	9	FALSE
4343	Tinkatink	Fairy	Steel	297	50	45	45	35	64	58	9	FALSE
4344	Tinkatuff	Fairy	Steel	380	65	55	55	45	82	78	9	FALSE
4345	Tinkaton	Fairy	Steel	506	85	75	77	70	105	94	9	FALSE
4346	Wiglett	Water	NA	245	10	55	25	35	25	95	9	FALSE
4347	Wugtrio	Water	NA	425	35	100	50	50	70	120	9	FALSE
4348	Bombirdier	Flying	Dark	485	70	103	85	60	85	82	9	FALSE
4349	Finizen	Water	NA	315	70	45	40	45	40	75	9	FALSE
4350	Palafin	Water	NA	457	100	70	72	53	62	100	9	FALSE
4351	Varoom	Steel	Poison	300	45	70	63	30	45	47	9	FALSE
4352	Revaroom	Steel	Poison	500	80	70	90	54	67	90	9	FALSE
4353	Cyclizar	Dragon	Normal	501	70	119	65	85	65	121	9	FALSE
4354	Orthworm	Steel	NA	480	70	95	145	60	55	65	9	FALSE
4355	Glimmet	Rock	Poison	350	48	35	42	105	60	60	9	FALSE
4356	Glimmora	Rock	Poison	525	83	55	90	130	81	86	9	FALSE
4357	Greavard	Ghost	NA	290	50	61	60	30	55	34	9	FALSE
4358	Houndstone	Ghost	NA	488	72	101	100	50	97	68	9	FALSE
4359	Flamigo	Flying	Fighting	500	82	115	74	75	64	90	9	FALSE
4360	Cetoddle	Ice	NA	334	108	68	45	30	40	43	9	FALSE
4361	Cetitan	Ice	NA	521	170	113	65	45	55	73	9	FALSE
4362	Veluza	Water	Psychic	478	90	102	73	78	65	70	9	FALSE
4363	Dondozo	Water	NA	530	150	100	115	65	65	35	9	FALSE
4364	Tatsugiri	Dragon	Water	475	68	50	60	120	95	82	9	FALSE
4365	Annihilape	Fighting	Ghost	535	110	115	80	50	90	90	9	FALSE
4366	Clodsire	Poison	Ground	430	130	75	60	45	100	20	9	FALSE
4367	Farigiraf	Normal	Psychic	520	120	90	70	110	70	60	9	FALSE
4368	Dudunsparce	Normal	NA	520	125	100	80	85	75	55	9	FALSE
4369	Kingambit	Dark	Steel	550	100	135	120	60	85	50	9	FALSE
4370	Great Tusk	Ground	Fighting	570	115	131	131	53	53	87	9	FALSE
4371	Scream Tail	Fairy	Psychic	570	115	65	99	65	115	111	9	FALSE
4372	Brute Bonnet	Grass	Dark	570	111	127	99	79	99	55	9	FALSE
4373	Flutter Mane	Ghost	Fairy	570	55	55	55	135	135	135	9	FALSE
4374	Slither Wing	Bug	Fighting	570	85	135	79	85	105	81	9	FALSE
4375	Sandy Shocks	Electric	Ground	570	85	81	97	121	85	101	9	FALSE
4376	Iron Treads	Ground	Steel	570	90	112	120	72	70	106	9	FALSE
4377	Iron Bundle	Ice	Water	570	56	80	114	124	60	136	9	FALSE
4378	Iron Hand	Fighting	Electric	570	154	140	108	50	68	50	9	FALSE
4379	Iron Jugulis	Dark	Flying	570	94	80	86	122	80	108	9	FALSE
4380	Iron Moth	Fire	Poison	570	80	70	60	140	110	110	9	FALSE
4381	Iron Thorns	Rock	Electric	570	100	134	110	70	84	72	9	FALSE
4382	Frigibax	Dragon	Ice	320	65	75	45	35	45	55	9	FALSE
4383	Arctibax	Dragon	Ice	423	90	95	66	45	65	62	9	FALSE
4384	Baxcalibur	Dragon	Ice	600	115	145	92	75	86	87	9	FALSE
4385	Gimmighoul	Ghost	NA	300	45	30	25	75	45	80	9	FALSE
4386	Gholdengo	Steel	Ghost	550	87	60	95	133	91	84	9	FALSE
4387	Wo Chien	Dark	Grass	570	85	85	100	95	135	70	9	FALSE
4388	Chien Pao	Dark	Ice	570	80	120	80	90	65	135	9	FALSE
4389	Ting Lu	Dark	Ground	570	155	110	125	55	80	45	9	FALSE
4390	Chi Yu	Dark	Fire	570	55	80	80	135	120	100	9	FALSE
4391	Roaring Moon	Dragon	Dark	590	105	139	71	55	101	119	9	FALSE
4392	Iron Valiant	Fairy	Fighting	590	74	130	90	120	60	116	9	FALSE
4393	Koraidon	Fighting	Dragon	670	100	135	115	85	100	135	9	TRUE
4394	Miraidon	Electric	Dragon	670	100	85	100	135	115	135	9	TRUE
4395	Walking Wake	Grass	Water	590	99	83	91	125	83	109	9	TRUE
4396	Irong Leaves	Grass	Psychic	590	90	130	88	70	108	104	9	TRUE
4397	Dipplin	Grass	Dragon	485	80	80	110	95	80	40	9	FALSE
4398	Poltchageist	Grass	Ghost	308	40	45	45	74	54	50	9	FALSE
4399	Sinischa	Grass	Ghost	508	71	60	106	121	80	70	9	FALSE
4400	Okidogi	Poison	Fighting	555	88	128	115	58	86	80	9	TRUE
4401	Munkidori	Poison	Psychic	555	88	75	66	130	90	106	9	TRUE
4402	Fezandipiti	Poison	Fairy	555	88	91	82	70	125	99	9	TRUE
4403	Ogerpon	Grass	NA	550	80	120	84	60	96	110	9	TRUE
4404	Archaludon	Steel	Dragon	600	90	105	130	125	65	85	9	TRUE
4405	Hydrapple	Grass	Dragon	540	106	80	110	120	80	44	9	TRUE
4406	Gouging Fire	Fire	Dragon	590	105	115	121	65	93	91	9	TRUE
4407	Raging Bolt	Electric	Dragon	590	125	73	91	137	89	75	9	TRUE
4408	Iron Boulder	Rock	Dragon	590	90	120	80	68	108	124	9	TRUE
4409	Iron Crown	Steel	Psychic	590	90	72	100	122	108	98	9	TRUE
4410	Terapagos	Normal	NA	700	160	105	110	130	110	85	9	TRUE
4411	Pecharunt	Poison	Ghost	600	88	88	160	88	88	88	9	TRUE
\.


--
-- Name: pokemon_pokemon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pokemon_pokemon_id_seq', 4411, true);


--
-- Name: pokemon pokemon_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pokemon
    ADD CONSTRAINT pokemon_pkey PRIMARY KEY (pokemon_id);


--
-- PostgreSQL database dump complete
--

