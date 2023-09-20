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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying,
    description text,
    galaxy_types character varying(255),
    age_in_millions_of_years integer NOT NULL
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
    name character varying,
    moon_num integer,
    moon_type character varying(60),
    distance_from_earth numeric(4,1) NOT NULL,
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
    name character varying,
    planet_num integer NOT NULL,
    is_live boolean,
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
    name character varying,
    star_num numeric(4,1),
    is_live boolean,
    galaxy_id integer,
    is_spherical boolean NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star2; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star2 (
    star2_id integer NOT NULL,
    name character varying,
    star_num numeric(4,1),
    is_live boolean,
    galaxy_id integer,
    is_spherical boolean NOT NULL
);


ALTER TABLE public.star2 OWNER TO freecodecamp;

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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (2, 'galaxy1', NULL, NULL, 1000);
INSERT INTO public.galaxy VALUES (3, 'galaxy2', NULL, NULL, 1300);
INSERT INTO public.galaxy VALUES (4, 'galaxy3', NULL, NULL, 1500);
INSERT INTO public.galaxy VALUES (6, 'galaxy1', NULL, NULL, 234);
INSERT INTO public.galaxy VALUES (7, 'galaxy2', NULL, NULL, 567);
INSERT INTO public.galaxy VALUES (8, 'galaxy3', NULL, NULL, 666);
INSERT INTO public.galaxy VALUES (9, 'galaxy4', NULL, NULL, 789);
INSERT INTO public.galaxy VALUES (10, 'galaxy5', NULL, NULL, 444);
INSERT INTO public.galaxy VALUES (11, 'galaxy6', NULL, NULL, 345);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (14, NULL, 10, NULL, 688.0, 3);
INSERT INTO public.moon VALUES (15, NULL, 11, NULL, 366.0, 3);
INSERT INTO public.moon VALUES (16, NULL, 12, NULL, 888.0, 3);
INSERT INTO public.moon VALUES (17, NULL, 13, NULL, 477.0, 3);
INSERT INTO public.moon VALUES (18, NULL, 14, NULL, 388.0, 3);
INSERT INTO public.moon VALUES (19, NULL, 15, NULL, 266.0, 3);
INSERT INTO public.moon VALUES (20, NULL, 16, NULL, 499.0, 3);
INSERT INTO public.moon VALUES (21, NULL, 17, NULL, 888.0, 3);
INSERT INTO public.moon VALUES (22, NULL, 18, NULL, 444.0, 3);
INSERT INTO public.moon VALUES (23, NULL, 19, NULL, 388.0, 3);
INSERT INTO public.moon VALUES (24, NULL, 20, NULL, 222.0, 3);
INSERT INTO public.moon VALUES (5, NULL, 1, NULL, 345.0, 4);
INSERT INTO public.moon VALUES (6, NULL, 2, NULL, 234.0, 4);
INSERT INTO public.moon VALUES (7, NULL, 3, NULL, 346.0, 4);
INSERT INTO public.moon VALUES (8, NULL, 4, NULL, 123.0, 4);
INSERT INTO public.moon VALUES (9, NULL, 5, NULL, 456.0, 4);
INSERT INTO public.moon VALUES (10, NULL, 6, NULL, 356.0, 4);
INSERT INTO public.moon VALUES (11, NULL, 7, NULL, 478.0, 4);
INSERT INTO public.moon VALUES (12, NULL, 8, NULL, 257.0, 4);
INSERT INTO public.moon VALUES (13, NULL, 9, NULL, 699.0, 4);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, NULL, 1, true, 1);
INSERT INTO public.planet VALUES (2, NULL, 2, true, 2);
INSERT INTO public.planet VALUES (3, NULL, 3, false, 3);
INSERT INTO public.planet VALUES (4, NULL, 4, true, 4);
INSERT INTO public.planet VALUES (5, NULL, 5, true, 5);
INSERT INTO public.planet VALUES (6, NULL, 6, false, 6);
INSERT INTO public.planet VALUES (7, NULL, 7, true, 4);
INSERT INTO public.planet VALUES (8, NULL, 8, true, 4);
INSERT INTO public.planet VALUES (9, NULL, 9, true, 4);
INSERT INTO public.planet VALUES (10, NULL, 10, false, 4);
INSERT INTO public.planet VALUES (11, NULL, 11, false, 4);
INSERT INTO public.planet VALUES (12, NULL, 12, true, 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, NULL, NULL, NULL, 2, true);
INSERT INTO public.star VALUES (2, NULL, NULL, NULL, 3, true);
INSERT INTO public.star VALUES (3, NULL, NULL, NULL, 4, true);
INSERT INTO public.star VALUES (4, NULL, NULL, NULL, 6, false);
INSERT INTO public.star VALUES (5, NULL, NULL, NULL, 7, false);
INSERT INTO public.star VALUES (6, NULL, NULL, NULL, 8, true);


--
-- Data for Name: star2; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star2 VALUES (1, NULL, NULL, NULL, NULL, true);
INSERT INTO public.star2 VALUES (2, NULL, NULL, NULL, NULL, true);
INSERT INTO public.star2 VALUES (3, NULL, NULL, NULL, NULL, true);
INSERT INTO public.star2 VALUES (4, NULL, NULL, NULL, NULL, false);
INSERT INTO public.star2 VALUES (5, NULL, NULL, NULL, NULL, false);
INSERT INTO public.star2 VALUES (6, NULL, NULL, NULL, NULL, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 11, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 24, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


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
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star2 star2_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star2
    ADD CONSTRAINT star2_pkey PRIMARY KEY (star2_id);


--
-- Name: star2 star2_star2_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star2
    ADD CONSTRAINT star2_star2_id_key UNIQUE (star2_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: star fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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
-- PostgreSQL database dump complete
--

