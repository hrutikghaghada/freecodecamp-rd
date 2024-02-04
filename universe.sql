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
-- Name: earth; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.earth (
    earth_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer NOT NULL,
    population integer,
    distance numeric(4,1),
    description text,
    has_life boolean,
    is_spherical boolean
);


ALTER TABLE public.earth OWNER TO freecodecamp;

--
-- Name: earth_earth_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.earth_earth_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.earth_earth_id_seq OWNER TO freecodecamp;

--
-- Name: earth_earth_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.earth_earth_id_seq OWNED BY public.earth.earth_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer NOT NULL,
    population integer,
    distance numeric(4,1),
    description text,
    has_life boolean,
    is_spherical boolean
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
    age integer NOT NULL,
    population integer,
    distance numeric(4,1),
    description text,
    has_life boolean,
    is_spherical boolean,
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
    name character varying(30) NOT NULL,
    age integer NOT NULL,
    population integer,
    distance numeric(4,1),
    description text,
    has_life boolean,
    is_spherical boolean,
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
    name character varying(30) NOT NULL,
    age integer NOT NULL,
    population integer,
    distance numeric(4,1),
    description text,
    has_life boolean,
    is_spherical boolean,
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
-- Name: earth earth_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth ALTER COLUMN earth_id SET DEFAULT nextval('public.earth_earth_id_seq'::regclass);


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
-- Data for Name: earth; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.earth VALUES (1, 'blah1', 23, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.earth VALUES (2, 'blah2', 23, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.earth VALUES (3, 'blah3', 23, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.earth VALUES (4, 'blah4', 23, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.earth VALUES (5, 'blah5', 23, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.earth VALUES (6, 'blah6', 23, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.earth VALUES (7, 'blah7', 23, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.earth VALUES (8, 'blah8', 23, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.earth VALUES (9, 'blah9', 23, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.earth VALUES (10, 'blah10', 23, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.earth VALUES (11, 'blah11', 23, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.earth VALUES (12, 'blah12', 23, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.earth VALUES (13, 'blah13', 23, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.earth VALUES (14, 'blah14', 23, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.earth VALUES (15, 'blah15', 23, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.earth VALUES (16, 'blah16', 23, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.earth VALUES (17, 'blah17', 23, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.earth VALUES (18, 'blah18', 23, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.earth VALUES (19, 'blah19', 23, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.earth VALUES (20, 'blah20', 23, NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'blah1', 23, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'blah2', 23, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'blah3', 23, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'blah4', 23, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'blah5', 23, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'blah6', 23, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (7, 'blah7', 23, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (8, 'blah8', 23, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (9, 'blah9', 23, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (10, 'blah10', 23, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (11, 'blah11', 23, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (12, 'blah12', 23, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (13, 'blah13', 23, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (14, 'blah14', 23, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (15, 'blah15', 23, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (16, 'blah16', 23, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (17, 'blah17', 23, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (18, 'blah18', 23, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (19, 'blah19', 23, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (20, 'blah20', 23, NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'blah1', 23, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (2, 'blah2', 23, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (3, 'blah3', 23, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (4, 'blah4', 23, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (5, 'blah5', 23, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (6, 'blah6', 23, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (7, 'blah7', 23, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (8, 'blah8', 23, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (9, 'blah9', 23, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (10, 'blah10', 23, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (11, 'blah11', 23, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (12, 'blah12', 23, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (13, 'blah13', 23, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (14, 'blah14', 23, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (15, 'blah15', 23, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (16, 'blah16', 23, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (17, 'blah17', 23, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (18, 'blah18', 23, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (19, 'blah19', 23, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (20, 'blah20', 23, NULL, NULL, NULL, NULL, NULL, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'blah1', 23, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (2, 'blah2', 23, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (3, 'blah3', 23, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (4, 'blah4', 23, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (5, 'blah5', 23, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (6, 'blah6', 23, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (7, 'blah7', 23, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (8, 'blah8', 23, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (9, 'blah9', 23, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (10, 'blah10', 23, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (11, 'blah11', 23, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (12, 'blah12', 23, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (13, 'blah13', 23, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (14, 'blah14', 23, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (15, 'blah15', 23, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (16, 'blah16', 23, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (17, 'blah17', 23, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (18, 'blah18', 23, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (19, 'blah19', 23, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (20, 'blah20', 23, NULL, NULL, NULL, NULL, NULL, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'blah2', 23, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (3, 'blah3', 23, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (4, 'blah4', 23, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (5, 'blah5', 23, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (6, 'blah6', 23, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (7, 'blah7', 23, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (8, 'blah8', 23, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (9, 'blah9', 23, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (10, 'blah10', 23, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (11, 'blah11', 23, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (12, 'blah12', 23, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (13, 'blah13', 23, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (14, 'blah14', 23, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (15, 'blah15', 23, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (16, 'blah16', 23, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (17, 'blah17', 23, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (18, 'blah18', 23, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (19, 'blah19', 23, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (20, 'blah20', 23, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (1, 'blah1', 23, NULL, NULL, NULL, NULL, NULL, 1);


--
-- Name: earth_earth_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.earth_earth_id_seq', 20, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 20, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 20, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 20, true);


--
-- Name: earth earth_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_name_key UNIQUE (name);


--
-- Name: earth earth_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_pkey PRIMARY KEY (earth_id);


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
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

