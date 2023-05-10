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
-- Name: info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.info (
    name character varying(30) NOT NULL,
    info_id integer NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.info OWNER TO freecodecamp;

--
-- Name: fifth_fifth_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.fifth_fifth_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fifth_fifth_id_seq OWNER TO freecodecamp;

--
-- Name: fifth_fifth_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.fifth_fifth_id_seq OWNED BY public.info.info_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    description text NOT NULL,
    has_life boolean,
    has_black_hole boolean,
    age_in_millions_of_years numeric,
    planet_types character varying(255)
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
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years numeric,
    distance_from_earth integer,
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
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years numeric,
    distance_from_earth integer,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_plamet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_plamet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_plamet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_plamet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_plamet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(30),
    description text NOT NULL,
    has_life boolean,
    others_stars_around boolean,
    age_in_millions_of_years numeric,
    distance_from_earth integer,
    star_id integer NOT NULL,
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: info info_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.info ALTER COLUMN info_id SET DEFAULT nextval('public.fifth_fifth_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_plamet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Our Galaxy', true, true, 13200, 'Rocky and Gas');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Spiral Galaxy', NULL, true, 10000, 'Rocky and Gas');
INSERT INTO public.galaxy VALUES (3, 'Triangulum Galaxy', 'Spiral Galaxy', NULL, true, 10000, 'Rocky and Gas');
INSERT INTO public.galaxy VALUES (4, 'Large Magellanix Cloud', 'Irregular Galaxy', NULL, false, 13200, 'Rocky and Gas');
INSERT INTO public.galaxy VALUES (5, 'Small Magellanix Cloud', 'Irregular Galaxy', NULL, false, 13200, 'Rocky');
INSERT INTO public.galaxy VALUES (6, 'Cigar Galaxy', 'Irregular Galaxy', NULL, false, 10000, 'Rocky');
INSERT INTO public.galaxy VALUES (7, 'Canis Major Dwarf', 'Irregular dwarf Galaxy', NULL, false, 10000, 'Rocky');
INSERT INTO public.galaxy VALUES (8, 'NGC 6822', 'Irregular dwarf Galaxy', NULL, false, 10000, 'Rocky');
INSERT INTO public.galaxy VALUES (9, 'Leo A', 'Irregular dwarf Galaxy', NULL, false, 10000, 'Rocky');
INSERT INTO public.galaxy VALUES (10, 'NGC 185', 'Eliptical Galaxy', NULL, true, 13200, 'Rocky');
INSERT INTO public.galaxy VALUES (11, 'NGC 147', 'Dwarf Eliptical Galaxy', NULL, true, 13200, 'Rocky');
INSERT INTO public.galaxy VALUES (12, 'IC 10', 'Irergular dwarf Galaxy', NULL, false, 10000, 'Rocky');


--
-- Data for Name: info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.info VALUES ('Efren', 1, 'this is me haha');
INSERT INTO public.info VALUES ('Juan', 2, 'this is not me');
INSERT INTO public.info VALUES ('Sara', 3, 'this is not me');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'The Only natural satellite of Earth', false, true, 5, 384400, 3);
INSERT INTO public.moon VALUES (2, 'Moon', 'The Only natural satellite of Earth', false, true, 5, 384400, 3);
INSERT INTO public.moon VALUES (3, 'Moon', 'The Only natural satellite of Earth', false, true, 5, 384400, 3);
INSERT INTO public.moon VALUES (4, 'Moon', 'The Only natural satellite of Earth', false, true, 5, 384400, 3);
INSERT INTO public.moon VALUES (5, 'Moon', 'The Only natural satellite of Earth', false, true, 5, 384400, 3);
INSERT INTO public.moon VALUES (6, 'Moon', 'The Only natural satellite of Earth', false, true, 5, 384400, 3);
INSERT INTO public.moon VALUES (7, 'Moon', 'The Only natural satellite of Earth', false, true, 5, 384400, 3);
INSERT INTO public.moon VALUES (8, 'Moon', 'The Only natural satellite of Earth', false, true, 5, 384400, 3);
INSERT INTO public.moon VALUES (9, 'Moon', 'The Only natural satellite of Earth', false, true, 5, 384400, 3);
INSERT INTO public.moon VALUES (10, 'Moon', 'The Only natural satellite of Earth', false, true, 5, 384400, 3);
INSERT INTO public.moon VALUES (11, 'Moon', 'The Only natural satellite of Earth', false, true, 5, 384400, 3);
INSERT INTO public.moon VALUES (12, 'Moon', 'The Only natural satellite of Earth', false, true, 5, 384400, 3);
INSERT INTO public.moon VALUES (13, 'Moon', 'The Only natural satellite of Earth', false, true, 5, 384400, 3);
INSERT INTO public.moon VALUES (14, 'Moon', 'The Only natural satellite of Earth', false, true, 5, 384400, 3);
INSERT INTO public.moon VALUES (15, 'Moon', 'The Only natural satellite of Earth', false, true, 5, 384400, 3);
INSERT INTO public.moon VALUES (16, 'Moon', 'The Only natural satellite of Earth', false, true, 5, 384400, 3);
INSERT INTO public.moon VALUES (17, 'Moon', 'The Only natural satellite of Earth', false, true, 5, 384400, 3);
INSERT INTO public.moon VALUES (18, 'Moon', 'The Only natural satellite of Earth', false, true, 5, 384400, 3);
INSERT INTO public.moon VALUES (19, 'Moon', 'The Only natural satellite of Earth', false, true, 5, 384400, 3);
INSERT INTO public.moon VALUES (20, 'Moon', 'The Only natural satellite of Earth', false, true, 5, 384400, 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'The smallest planet in the Solar System', false, true, 5, 1, 7);
INSERT INTO public.planet VALUES (2, 'Venus', 'The second planet from the Sun', false, true, 5, 1, 7);
INSERT INTO public.planet VALUES (3, 'Earth', 'The third planet from the Sun and were we live', true, true, 5, 0, 7);
INSERT INTO public.planet VALUES (4, 'Mars', 'The fourth planet from the Sun', false, true, 5, 2, 7);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'The largest planet in the Solar System', false, false, 5, 5, 7);
INSERT INTO public.planet VALUES (6, 'Saturn', 'The sixth planet from the Sun', false, false, 5, 10, 7);
INSERT INTO public.planet VALUES (7, 'Uranus', 'The seventh planet from the Sun', false, true, 5, 19, 7);
INSERT INTO public.planet VALUES (8, 'Neptune', 'The eigth planet from the Sun', false, true, 5, 30, 7);
INSERT INTO public.planet VALUES (9, 'Ceres', 'The largest objetc in the asteroid belt', false, true, 5, 3, 7);
INSERT INTO public.planet VALUES (10, 'Pluto', 'A dwarf planet in the Kuiper belt', false, true, 5, 40, 7);
INSERT INTO public.planet VALUES (11, 'Haumea', 'A dwarf planet located beyond Neptuno', false, true, 5, 43, 7);
INSERT INTO public.planet VALUES (12, 'Makemake', 'A dwarf planet located in Kuiper belt', false, true, 5, 52, 7);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Proxima Centauri', 'Closest star to the Sun', NULL, true, 5, 4, 1, 1);
INSERT INTO public.star VALUES ('Arcturus', 'Bright red giant star', NULL, false, 7, 36, 2, 1);
INSERT INTO public.star VALUES ('Antares', 'Red supergiant', NULL, true, 12, 550, 3, 1);
INSERT INTO public.star VALUES ('Sirius B', 'White dwarf companion of Sirius A', false, true, 120, 9, 4, 1);
INSERT INTO public.star VALUES ('Barnards Star', 'Red dwarf', NULL, false, 10, 6, 5, 1);
INSERT INTO public.star VALUES ('Polaris Aa', 'The primary star in the Polaris triple star system', NULL, false, 100, 323, 6, 1);
INSERT INTO public.star VALUES ('Sun', 'The start at the center if the Solar System', true, false, 5, 1, 7, 1);


--
-- Name: fifth_fifth_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.fifth_fifth_id_seq', 33, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 12, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_plamet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_plamet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: info fifth_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.info
    ADD CONSTRAINT fifth_pkey PRIMARY KEY (info_id);


--
-- Name: info fifth_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.info
    ADD CONSTRAINT fifth_unique UNIQUE (info_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_unique UNIQUE (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_unique UNIQUE (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_unique UNIQUE (planet_id);


--
-- Name: star star_nique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_nique UNIQUE (star_id);


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

