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
    name character varying(50) NOT NULL,
    galaxy_type text,
    age integer NOT NULL,
    description text
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
    name character varying(50) NOT NULL,
    is_spherical boolean,
    age numeric NOT NULL,
    distance numeric,
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
-- Name: more_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.more_info (
    planet_nbrs integer NOT NULL,
    stars_nbrs integer,
    moons_nbrs integer,
    more_info_id integer NOT NULL,
    name character varying(30)
);


ALTER TABLE public.more_info OWNER TO freecodecamp;

--
-- Name: more_info_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.more_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.more_info_id_seq OWNER TO freecodecamp;

--
-- Name: more_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.more_info_id_seq OWNED BY public.more_info.more_info_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    planet_type text,
    age integer NOT NULL,
    is_spherical boolean,
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
    name character varying(50) NOT NULL,
    start_type text,
    age integer NOT NULL,
    distance_from_earth numeric,
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
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: more_info more_info_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info ALTER COLUMN more_info_id SET DEFAULT nextval('public.more_info_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Spiral', 13600, 'The galaxy that contains the Solar System.');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Spiral', 10000, 'The nearest large galaxy to the Milky Way.');
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Spiral', 12000, 'A member of the Local Group of galaxies.');
INSERT INTO public.galaxy VALUES (4, 'Large Magellanic Cloud', 'Irregular', 13000, 'A satellite galaxy of the Milky Way.');
INSERT INTO public.galaxy VALUES (5, 'Small Magellanic Cloud', 'Irregular', 12000, 'A dwarf galaxy near the Milky Way.');
INSERT INTO public.galaxy VALUES (6, 'Messier 87', 'Elliptical', 13400, 'A giant elliptical galaxy famous for its supermassive black hole.');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', true, 4500, 384400, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', false, 4600, 9376, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', false, 4600, 23463, 4);
INSERT INTO public.moon VALUES (4, 'Io', true, 4500, 421700, 5);
INSERT INTO public.moon VALUES (5, 'Europa', true, 4500, 671100, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', true, 4500, 1070400, 5);
INSERT INTO public.moon VALUES (7, 'Callisto', true, 4500, 1882700, 5);
INSERT INTO public.moon VALUES (8, 'Titan', true, 4500, 1221870, 6);
INSERT INTO public.moon VALUES (9, 'Enceladus', true, 4500, 238000, 6);
INSERT INTO public.moon VALUES (10, 'Mimas', true, 4500, 185540, 7);
INSERT INTO public.moon VALUES (11, 'Tethys', true, 4500, 294670, 7);
INSERT INTO public.moon VALUES (12, 'Dione', true, 4500, 377400, 8);
INSERT INTO public.moon VALUES (13, 'Rhea', true, 4500, 527100, 8);
INSERT INTO public.moon VALUES (14, 'Iapetus', true, 4500, 3561300, 9);
INSERT INTO public.moon VALUES (15, 'Miranda', true, 4500, 129900, 10);
INSERT INTO public.moon VALUES (16, 'Ariel', true, 4500, 191000, 10);
INSERT INTO public.moon VALUES (17, 'Umbriel', true, 4500, 266000, 11);
INSERT INTO public.moon VALUES (18, 'Titania', true, 4500, 436300, 11);
INSERT INTO public.moon VALUES (19, 'Oberon', true, 4500, 583500, 12);
INSERT INTO public.moon VALUES (20, 'Triton', true, 4500, 354800, 12);


--
-- Data for Name: more_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.more_info VALUES (12, 6, 20, 1, 'Milky Way System');
INSERT INTO public.more_info VALUES (15, 8, 30, 2, 'Andromeda System');
INSERT INTO public.more_info VALUES (10, 5, 18, 3, 'Triangulum System');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Terrestrial', 4500, true, false, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 'Terrestrial', 4500, true, false, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 'Terrestrial', 4540, true, true, 2);
INSERT INTO public.planet VALUES (4, 'Mars', 'Terrestrial', 4600, true, false, 2);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Gas Giant', 4600, true, false, 3);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Gas Giant', 4500, true, false, 3);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Ice Giant', 4500, true, false, 4);
INSERT INTO public.planet VALUES (8, 'Neptune', 'Ice Giant', 4500, true, false, 4);
INSERT INTO public.planet VALUES (9, 'Kepler-22b', 'Super-Earth', 4000, true, false, 5);
INSERT INTO public.planet VALUES (10, 'Proxima Centauri b', 'Terrestrial', 4850, true, false, 5);
INSERT INTO public.planet VALUES (11, 'TRAPPIST-1e', 'Terrestrial', 7600, true, false, 6);
INSERT INTO public.planet VALUES (12, 'HD 209458 b', 'Hot Jupiter', 5000, true, false, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'G-Type Main Sequence', 4600, 0, 1);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 'Red Dwarf', 4850, 4.24, 1);
INSERT INTO public.star VALUES (3, 'Sirius A', 'Main Sequence', 242, 8.60, 2);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 'Red Supergiant', 10, 548, 2);
INSERT INTO public.star VALUES (5, 'Rigel', 'Blue Supergiant', 8, 860, 3);
INSERT INTO public.star VALUES (6, 'Vega', 'Main Sequence', 455, 25.04, 3);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: more_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.more_info_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_unique UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: more_info mi_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT mi_name_unique UNIQUE (name);


--
-- Name: moon moon_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_unique UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: more_info more_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_info
    ADD CONSTRAINT more_info_pkey PRIMARY KEY (more_info_id);


--
-- Name: planet planet_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_unique UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_unique UNIQUE (name);


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

