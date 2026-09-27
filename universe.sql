--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    description text,
    galaxy_types text,
    distance_from_nearest_galaxy integer,
    has_planets boolean,
    has_human_life boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying,
    description text,
    planet_id integer NOT NULL,
    diameter numeric
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying,
    description text,
    star_id integer NOT NULL,
    diameter numeric
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: proof_of_life; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.proof_of_life (
    proof_of_life_id integer NOT NULL,
    name character varying,
    description text,
    planet_id integer NOT NULL
);


ALTER TABLE public.proof_of_life OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying,
    description text,
    star_types text,
    diameter numeric,
    distance_from_nearest_star integer,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.galaxy (galaxy_id, name, description, galaxy_types, distance_from_nearest_galaxy, has_planets, has_human_life) FROM stdin;
1	Milky Way	a large barred spiral [15.5deg] galaxy that contains our solar system, Earth, and an estimated 100 to 400 billion stars	\N	\N	\N	\N
2	Canis major Dwarf Galaxy	The Canis Major Dwarf Galaxy is an irregular dwarf galaxy located about 25,000 light-years from Earth and 42,000 light-years from the center of the Milky Way, making it one of our closest galactic neighbors.	\N	\N	t	\N
3	Andromeda	Andromeda Galaxy (also known as Messier 31 or M31) is a giant spiral galaxy and the nearest major galactic neighbor to the Milky Way.	\N	\N	\N	\N
4	Triangulum	The Triangulum Galaxy is a spiral galaxy located roughly 2.88 million light-years from Earth in the constellation Triangulum.	\N	\N	\N	\N
5	Whirlpool	The Whirlpool Galaxy, also known as Messier 51 (M51), is a classic grand-design spiral galaxy located roughly 23 to 31 million light-years from Earth in the constellation Canes Venatici.	\N	\N	\N	\N
6	Sombrero	The Sombrero Galaxy (M104) is a bright unbarred spiral galaxy that looks like a wide-brimmed Mexican hat because of its giant glowing core and thick dark dust lane viewed nearly edge-on.	\N	\N	\N	\N
\.


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.moon (moon_id, name, description, planet_id, diameter) FROM stdin;
1	Moon	The Moon is Earths only natural satellite and the fifth-largest moon in the solar system.	1	\N
2	Phobos	Moon of Mars.	4	\N
3	Deimos	Moon of Mars.	4	\N
4	Callisto	Moon of Jupiter	5	\N
5	Io	Moon of Jupiter	5	\N
6	Europa	Moon of Jupiter	5	\N
7	Titan	Moon of Saturn	6	\N
8	Enceladus	Moon of Saturn	6	\N
9	Titania	Moon of Uranus	7	\N
10	Oberon	Moon of Uranus	7	\N
11	Triton	Moon of Neptune	8	\N
12	Charon	Moon of Pluto	9	\N
13	Ganymede	Moon of Jupiter	5	\N
14	Metis	Moon of Jupiter	5	\N
15	Adrastea	Moon of Jupiter	5	\N
16	Amalthea	Moon of Jupiter	5	\N
17	Thebe	Moon of Jupiter	5	\N
18	Himalia	Moon of Jupiter	5	\N
19	Ersa	Moon of Jupiter	5	\N
20	Pandia	Moon of Jupiter	5	\N
\.


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.planet (planet_id, name, description, star_id, diameter) FROM stdin;
1	Earth	the third planet from the Sun and the only world known to harbor life.	2	\N
2	Mercury	The smallest planet in our solar system and the closest to the Sun, featuring a rocky, cratered surface with extreme temperature swings.	1	\N
3	Venus	The second planet from the Sun, known for a thick, toxic atmosphere that traps heat in a runaway greenhouse effect, making it the hottest planet.	1	\N
4	Mars	The fourth planet from the Sun, called the Red Planet because of iron oxide (rust) on its surface, featuring ancient river valleys and polar ice caps.	1	\N
5	Jupiter	The fifth planet from the Sun and the largest in our solar system, famous for its great red spot and massive gas giant composition.	1	\N
6	Saturn	The sixth planet from the Sun, easily recognized by its spectacular and complex system of icy rings.	1	\N
7	Uranus	The seventh planet from the Sun, an ice giant that rotates completely on its side with a pale blue-green color.	1	\N
8	Neptune	The eighth and farthest major planet from the Sun, an icy blue giant with fierce supersonic winds.	1	\N
9	Pluto	A famous icy dwarf planet located in the Kuiper Belt past Neptune, once considered the ninth planet.	1	\N
10	Ceres	The largest object in the asteroid belt between Mars and Jupiter, and the only dwarf planet located in the inner solar system.	1	\N
11	Haumea	An unusual, fast-spinning oval-shaped dwarf planet residing far out in the Kuiper Belt.	1	\N
12	Makemake	A distant, frigid dwarf planet in the outer solar system covered in methane and ethane frosts.	1	\N
\.


--
-- Data for Name: proof_of_life; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.proof_of_life (proof_of_life_id, name, description, planet_id) FROM stdin;
1	Humanoid	Poeple of Earth	1
2	Monsterra	Green plant found in homes and jungles on planet earth.	1
3	Tomato	Red summer garden vegetable on planet earth.	1
\.


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.star (star_id, name, description, star_types, diameter, distance_from_nearest_star, galaxy_id) FROM stdin;
1	Sirius	Sirius is a binary star system.	\N	\N	\N	1
2	Sun	Sun is a hot, glowing ball of hydrogen and helium at the center of our solar system.	\N	\N	\N	1
3	Betelgeuse	A bright red supergiant in the constellation Orion that marks the shoulder of the hunter and is famous for its potential to explode as a supernova.	\N	\N	\N	1
4	Proxima Centauri	A red dwarf star that sits just 4.24 light-years from Earth, making it the closest known star to our solar system and part of the Alpha Centauri system.	\N	\N	\N	1
5	Polaris	Commonly known as the North Star, this yellow supergiant in the constellation Ursa Minor sits nearly at the north celestial pole, serving as an essential navigational marker.	\N	\N	\N	1
6	Vega	A bright, blue-white main-sequence star in the constellation Lyra that served as the northern pole star around 12,000 BCE and will do so again in the future.	\N	\N	\N	1
\.


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: proof_of_life proof_of_life_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.proof_of_life
    ADD CONSTRAINT proof_of_life_name_key UNIQUE (name);


--
-- Name: proof_of_life proof_of_life_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.proof_of_life
    ADD CONSTRAINT proof_of_life_pkey PRIMARY KEY (proof_of_life_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: proof_of_life proof_of_life_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.proof_of_life
    ADD CONSTRAINT proof_of_life_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

