--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
-- Name: all_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.all_info (
    all_info_id integer NOT NULL,
    galaxy_id integer NOT NULL,
    star_id integer,
    planet_id integer,
    moon_id integer NOT NULL,
    name character varying(30)
);


ALTER TABLE public.all_info OWNER TO freecodecamp;

--
-- Name: all_info_all_info_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.all_info_all_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.all_info_all_info_id_seq OWNER TO freecodecamp;

--
-- Name: all_info_all_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.all_info_all_info_id_seq OWNED BY public.all_info.all_info_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    description text NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    has_life boolean,
    count numeric(4,0)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    description text NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    has_life boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    description text NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    has_life boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    description text NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    has_life boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: all_info all_info_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.all_info ALTER COLUMN all_info_id SET DEFAULT nextval('public.all_info_all_info_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: all_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.all_info VALUES (1, 10, 13, 15, 1, NULL);
INSERT INTO public.all_info VALUES (2, 10, 13, 15, 2, NULL);
INSERT INTO public.all_info VALUES (3, 9, 14, 16, 3, NULL);
INSERT INTO public.all_info VALUES (4, 9, 14, 16, 4, NULL);
INSERT INTO public.all_info VALUES (5, 8, 15, 17, 5, NULL);
INSERT INTO public.all_info VALUES (6, 8, 15, 17, 6, NULL);
INSERT INTO public.all_info VALUES (7, 7, 16, 18, 7, NULL);
INSERT INTO public.all_info VALUES (8, 7, 16, 18, 8, NULL);
INSERT INTO public.all_info VALUES (9, 6, 17, 19, 9, NULL);
INSERT INTO public.all_info VALUES (10, 6, 17, 19, 10, NULL);
INSERT INTO public.all_info VALUES (11, 5, 18, 20, 11, NULL);
INSERT INTO public.all_info VALUES (12, 5, 18, 20, 12, NULL);
INSERT INTO public.all_info VALUES (13, 5, 18, 21, 13, NULL);
INSERT INTO public.all_info VALUES (14, 5, 18, 21, 14, NULL);
INSERT INTO public.all_info VALUES (15, 10, 13, 22, 15, NULL);
INSERT INTO public.all_info VALUES (16, 10, 13, 22, 16, NULL);
INSERT INTO public.all_info VALUES (17, 9, 14, 23, 17, NULL);
INSERT INTO public.all_info VALUES (18, 9, 14, 23, 18, NULL);
INSERT INTO public.all_info VALUES (19, 8, 15, 24, 19, NULL);
INSERT INTO public.all_info VALUES (20, 8, 15, 24, 20, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (5, 'Milky Way', 'Spiral6 galaxy', 13000, false, NULL);
INSERT INTO public.galaxy VALUES (6, 'Andromeda', 'Spiral5 galaxy', 20000, false, NULL);
INSERT INTO public.galaxy VALUES (7, 'Whirlpool Galaxy', 'Spiral4 galaxy', 23000, false, NULL);
INSERT INTO public.galaxy VALUES (8, 'Sombrero Galaxy', 'Spiral3 galaxy', 28000, false, NULL);
INSERT INTO public.galaxy VALUES (9, 'Pinwheel Galaxy', 'Spiral2 galaxy', 30000, false, NULL);
INSERT INTO public.galaxy VALUES (10, 'Bode''s Galaxy', 'Spiral1 galaxy', 12000, false, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon 1', 'Description 1', 4500, false, 15);
INSERT INTO public.moon VALUES (2, 'Moon 2', 'Description 2', 4600, false, 15);
INSERT INTO public.moon VALUES (3, 'Moon 3', 'Description 3', 4700, false, 16);
INSERT INTO public.moon VALUES (4, 'Moon 4', 'Description 4', 4800, false, 16);
INSERT INTO public.moon VALUES (5, 'Moon 5', 'Description 5', 4900, false, 17);
INSERT INTO public.moon VALUES (6, 'Moon 6', 'Description 6', 5000, false, 17);
INSERT INTO public.moon VALUES (7, 'Moon 7', 'Description 7', 5100, false, 18);
INSERT INTO public.moon VALUES (8, 'Moon 8', 'Description 8', 5200, false, 18);
INSERT INTO public.moon VALUES (9, 'Moon 9', 'Description 9', 5300, false, 19);
INSERT INTO public.moon VALUES (10, 'Moon 10', 'Description 10', 5400, false, 19);
INSERT INTO public.moon VALUES (11, 'Moon 11', 'Description 11', 5500, false, 20);
INSERT INTO public.moon VALUES (12, 'Moon 12', 'Description 12', 5600, false, 20);
INSERT INTO public.moon VALUES (13, 'Moon 13', 'Description 13', 5700, false, 21);
INSERT INTO public.moon VALUES (14, 'Moon 14', 'Description 14', 5800, false, 21);
INSERT INTO public.moon VALUES (15, 'Moon 15', 'Description 15', 5900, false, 22);
INSERT INTO public.moon VALUES (16, 'Moon 16', 'Description 16', 6000, false, 22);
INSERT INTO public.moon VALUES (17, 'Moon 17', 'Description 17', 6100, false, 23);
INSERT INTO public.moon VALUES (18, 'Moon 18', 'Description 18', 6200, false, 23);
INSERT INTO public.moon VALUES (19, 'Moon 19', 'Description 19', 6300, false, 24);
INSERT INTO public.moon VALUES (20, 'Moon 20', 'Description 20', 6400, false, 24);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (15, 'Mercury', 'Small rocky planet', 4500, false, 13);
INSERT INTO public.planet VALUES (16, 'Venus', 'Terrestrial planet with thick atmosphere', 4000, false, 14);
INSERT INTO public.planet VALUES (17, 'Earth', 'Home to diverse life forms', 4000, true, 15);
INSERT INTO public.planet VALUES (18, 'Mars', 'Red planet with potential for colonization', 3500, false, 16);
INSERT INTO public.planet VALUES (19, 'Jupiter', 'Gas giant with a prominent storm system', 5000, false, 17);
INSERT INTO public.planet VALUES (20, 'Saturn', 'Ringed planet with unique features', 4800, false, 18);
INSERT INTO public.planet VALUES (21, 'Uranus', 'Ice giant with tilted axis', 5200, false, 18);
INSERT INTO public.planet VALUES (22, 'Neptune', 'Blue planet with dynamic atmosphere', 5300, false, 13);
INSERT INTO public.planet VALUES (23, 'Pluto', 'Dwarf planet at the edge of the solar system', 4000, false, 14);
INSERT INTO public.planet VALUES (24, 'Proxima b', 'Potentially habitable exoplanet', 2000, false, 15);
INSERT INTO public.planet VALUES (25, 'Alpha Centauri Bb', 'Exoplanet orbiting Alpha Centauri B', 3000, false, 16);
INSERT INTO public.planet VALUES (26, 'Kepler-186f', 'First confirmed Earth-sized exoplanet', 5000, false, 17);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (13, 'Sun', 'Main sequence star', 4600, false, 10);
INSERT INTO public.star VALUES (14, 'Proxima Centauri', 'Red dwarf star', 6000, false, 9);
INSERT INTO public.star VALUES (15, 'Betelgeuse', 'Red supergiant star', 10000, false, 8);
INSERT INTO public.star VALUES (16, 'Sirius', 'Binary star system', 2000, false, 7);
INSERT INTO public.star VALUES (17, 'Polaris', 'Yellow supergiant star', 5000, false, 6);
INSERT INTO public.star VALUES (18, 'Alpha Centauri A', 'Main1 sequence star', 8000, false, 5);


--
-- Name: all_info_all_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.all_info_all_info_id_seq', 20, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 10, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 26, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 18, true);


--
-- Name: all_info all_info_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.all_info
    ADD CONSTRAINT all_info_moon_id_key UNIQUE (moon_id);


--
-- Name: all_info all_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.all_info
    ADD CONSTRAINT all_info_pkey PRIMARY KEY (all_info_id);


--
-- Name: galaxy galaxy_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_description_key UNIQUE (description);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_description_key UNIQUE (description);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_description_key UNIQUE (description);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_description_key UNIQUE (description);


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
-- Name: moon moon_planet_id_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey1 FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

