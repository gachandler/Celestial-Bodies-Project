--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: craters; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.craters (
    craters_id integer NOT NULL,
    name character varying(30) NOT NULL,
    moon_id integer NOT NULL
);


ALTER TABLE public.craters OWNER TO freecodecamp;

--
-- Name: craters_crater_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.craters_crater_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.craters_crater_id_seq OWNER TO freecodecamp;

--
-- Name: craters_crater_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.craters_crater_id_seq OWNED BY public.craters.craters_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    num_stars integer NOT NULL,
    galaxy_diameter numeric,
    galaxy_types text
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
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL,
    moon_diameter numeric,
    dist_from_planet integer
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
    name character varying(30) NOT NULL,
    star_id integer NOT NULL,
    planet_diameter numeric,
    has_life boolean,
    num_moons integer
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
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL,
    star_diameter numeric,
    has_planets boolean
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
-- Name: craters craters_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.craters ALTER COLUMN craters_id SET DEFAULT nextval('public.craters_crater_id_seq'::regclass);


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
-- Data for Name: craters; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.craters VALUES (1, 'Big Impact', 1);
INSERT INTO public.craters VALUES (2, 'Lil Smash', 2);
INSERT INTO public.craters VALUES (3, 'Wumpo', 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 100000000, 87400, 'Spiral');
INSERT INTO public.galaxy VALUES (2, 'Verbondo', 2000000, 90300, 'Spiral');
INSERT INTO public.galaxy VALUES (3, 'Retroid', 30000000, 300300, 'Eliptical');
INSERT INTO public.galaxy VALUES (4, 'Formanto', 120000000, 456000, 'Lenticular');
INSERT INTO public.galaxy VALUES (5, 'Musculari', 98700000, 1232000, 'Eliptical');
INSERT INTO public.galaxy VALUES (6, 'Death', 99960000, 6665634, 'Lenticular');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'The Moon', 1, 3475, 363300);
INSERT INTO public.moon VALUES (3, 'Marso', 2, 600, 12000);
INSERT INTO public.moon VALUES (4, 'Marsi', 2, 1200, 6000);
INSERT INTO public.moon VALUES (5, 'Jupiter1', 3, 700, 13000);
INSERT INTO public.moon VALUES (6, 'Jupiter2', 3, 1500, 7000);
INSERT INTO public.moon VALUES (7, 'Jupiter3', 3, 540, 10000);
INSERT INTO public.moon VALUES (8, 'Jupiter4', 3, 600, 4500);
INSERT INTO public.moon VALUES (9, 'Little Blue', 12, 300, 20000);
INSERT INTO public.moon VALUES (10, 'Mun', 11, 3500, 360000);
INSERT INTO public.moon VALUES (11, 'Pluti', 8, 300, 11000);
INSERT INTO public.moon VALUES (12, 'Death Mun', 10, 666, 6900);
INSERT INTO public.moon VALUES (13, 'Urini', 4, 700, 5000);
INSERT INTO public.moon VALUES (14, 'Saturini', 5, 3700, 400000);
INSERT INTO public.moon VALUES (15, 'Vinito', 7, 300, 11000);
INSERT INTO public.moon VALUES (16, 'Plantino', 9, 765, 2300);
INSERT INTO public.moon VALUES (17, 'Mico Blue', 12, 100, 8000);
INSERT INTO public.moon VALUES (18, 'Deathmo', 10, 700, 450000);
INSERT INTO public.moon VALUES (19, 'Plamino', 9, 500, 13000);
INSERT INTO public.moon VALUES (2, 'Living Death', 10, 150, 4000);
INSERT INTO public.moon VALUES (20, 'Jupiter5', 3, 150, 4000);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1, 6378, true, 1);
INSERT INTO public.planet VALUES (2, 'mars', 1, 4000, true, 2);
INSERT INTO public.planet VALUES (3, 'Jupiter', 1, 14000, false, 5);
INSERT INTO public.planet VALUES (4, 'Uranus', 1, 5000, false, 3);
INSERT INTO public.planet VALUES (5, 'Saturn', 1, 11000, false, 2);
INSERT INTO public.planet VALUES (6, 'Neptune', 1, 3000, false, 0);
INSERT INTO public.planet VALUES (7, 'Venus', 1, 5000, false, 1);
INSERT INTO public.planet VALUES (8, 'Pluto', 1, 2000, false, 1);
INSERT INTO public.planet VALUES (9, 'Planto', 2, 5500, true, 3);
INSERT INTO public.planet VALUES (10, 'Death Planet', 5, 8000, false, 7);
INSERT INTO public.planet VALUES (11, 'Earth 2', 4, 6000, true, 1);
INSERT INTO public.planet VALUES (12, 'Big Blue', 6, 9000, true, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 1392000, true);
INSERT INTO public.star VALUES (3, 'Persiod', 1, 1500000, true);
INSERT INTO public.star VALUES (4, 'Mirroriod', 2, 1700000, true);
INSERT INTO public.star VALUES (5, 'Death Star', 6, 2000000, false);
INSERT INTO public.star VALUES (6, 'Life Star', 3, 300000, true);
INSERT INTO public.star VALUES (7, 'Big Bright', 4, 20300000, true);
INSERT INTO public.star VALUES (8, 'LittleBoi', 5, 2050000, true);
INSERT INTO public.star VALUES (2, 'Machoid', 2, 4050000, true);


--
-- Name: craters_crater_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.craters_crater_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: craters craters_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.craters
    ADD CONSTRAINT craters_name_key UNIQUE (name);


--
-- Name: craters craters_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.craters
    ADD CONSTRAINT craters_pkey PRIMARY KEY (craters_id);


--
-- Name: galaxy galaxy_galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_name_key UNIQUE (name);


--
-- Name: craters craters_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.craters
    ADD CONSTRAINT craters_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


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
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

