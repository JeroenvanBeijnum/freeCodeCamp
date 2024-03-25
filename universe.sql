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
-- Name: blackhole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.blackhole (
    blackhole_id integer NOT NULL,
    name character varying(20) NOT NULL,
    galaxy_id integer NOT NULL,
    description text
);


ALTER TABLE public.blackhole OWNER TO freecodecamp;

--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.blackhole_blackhole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blackhole_blackhole_id_seq OWNER TO freecodecamp;

--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.blackhole_blackhole_id_seq OWNED BY public.blackhole.blackhole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    diameter_in_kiloparsecs numeric(6,2),
    is_ours boolean
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
    name character varying(20) NOT NULL,
    planet_id integer NOT NULL,
    description text,
    diameter_in_km integer
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
    name character varying(20) NOT NULL,
    star_id integer NOT NULL,
    description text,
    has_life boolean NOT NULL
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
    name character varying(20) NOT NULL,
    galaxy_id integer NOT NULL,
    description text,
    radius_in_suns integer
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
-- Name: blackhole blackhole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole ALTER COLUMN blackhole_id SET DEFAULT nextval('public.blackhole_blackhole_id_seq'::regclass);


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
-- Data for Name: blackhole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.blackhole VALUES (1, 'Sagittarius A', 3, NULL);
INSERT INTO public.blackhole VALUES (2, 'Cygnus X-1', 3, NULL);
INSERT INTO public.blackhole VALUES (3, 'V404 Cygni', 3, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Canis Major Dwarf Galaxy', 'The Canis Major Dwarf Galaxy is a member of the Local Group of galaxies, which includes our own Milky Way Galaxy. It was discovered in 2003 by an international team of astronomers from France, Italy, Australia, and the United Kingdom during the Two-Micron All Sky Survey (2MASS). This survey used automated telescopes in Arizona and Chile to scan the entire sky in three infrared wavelengths, allowing astronomers to peer through the dust clouds that pervade the Milky Way’s plane.', 1.53, false);
INSERT INTO public.galaxy VALUES (2, 'Large Magellanic Cloud', 'The Large Magellanic Cloud (LMC) is a dwarf galaxy that orbits our Milky Way. Located approximately 50 kiloparsecs (163,000 light-years) away from Earth, it appears as a faint “cloud” visible from the southern hemisphere. Despite its smaller size, the LMC plays a crucial role in our galactic neighborhood and provides valuable insights into galactic dynamics and interactions.', 9.96, false);
INSERT INTO public.galaxy VALUES (3, 'Milky Way', '
The Milky Way Galaxy is a large spiral system containing several hundred billion stars, including our Sun. Its name originates from the irregular luminous band of stars and gas clouds that stretches across the sky as seen from Earth. Although Earth lies well within the Milky Way Galaxy, astronomers face challenges in understanding its nature due to a thick layer of interstellar dust that obscures much of it from optical telescopes. Radio and infrared telescopes help reveal its large-scale structure, allowing us to explore this cosmic home. 
', 26.80, true);
INSERT INTO public.galaxy VALUES (4, 'Messier 81', '
Messier 81, also known as Bode’s Galaxy, is a grand design spiral galaxy located in the constellation Ursa Major. It resides approximately 11.8 million light-years away from Earth and boasts an apparent magnitude of 6.94. Designated as NGC 3031 in the New General Catalogue, this celestial beauty captivates astronomers and stargazers alike.
', 29.44, false);
INSERT INTO public.galaxy VALUES (5, 'Messier 87', '
Messier 87 (M87), also known as Virgo A or NGC 4486, is a supergiant elliptical galaxy located in the constellation Virgo. It contains several trillion stars and is one of the largest and most massive galaxies in the local universe. Unlike a disk-shaped spiral galaxy, M87 lacks distinctive dust lanes. Instead, it has an almost featureless, ellipsoidal shape typical of most giant elliptical galaxies. At its core lies an active supermassive black hole, imaged by the Event Horizon Telescope in 2017. M87 is about 16.4 million parsecs (53 million light-years) from Earth and is the second-brightest galaxy within the northern Virgo Cluster. Its jet of energetic plasma extends at least 1,500 parsecs (4,900 light-years), making it a popular target for both amateur and professional astronomers
', 40.55, false);
INSERT INTO public.galaxy VALUES (6, 'Andromeda Galaxy', '
The Andromeda Galaxy, also known as Messier 31 (M31), is the nearest major galaxy to our Milky Way. Visible as a milky blur to the unaided eye, it lies approximately 2,480,000 light-years away from Earth. With a diameter of about 200,000 light-years, it shares various characteristics with our own Milky Way system. Initially called the Andromeda Nebula, it was rediscovered in 1612 by the German astronomer Simon Marius, who likened its appearance to a candle’s light seen through a horn. Only in the 1920s did Edwin Powell Hubble conclusively determine that the Andromeda Galaxy is indeed a separate galaxy beyond our Milky Way. Notably, it is predicted to collide with the Milky Way in about four billion years, an event that will significantly impact both galaxies’ structures and star formation
', 46.58, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 3, NULL, 3475);
INSERT INTO public.moon VALUES (2, 'Deimos', 4, NULL, 12);
INSERT INTO public.moon VALUES (3, 'Phobos', 4, NULL, 22);
INSERT INTO public.moon VALUES (4, 'Aitne', 5, NULL, 3);
INSERT INTO public.moon VALUES (5, 'Ananke', 5, NULL, 20);
INSERT INTO public.moon VALUES (6, 'Aoede', 5, NULL, 4);
INSERT INTO public.moon VALUES (7, 'Arche', 5, NULL, 3);
INSERT INTO public.moon VALUES (8, 'Autonoe', 5, NULL, 4);
INSERT INTO public.moon VALUES (9, 'Callisto', 5, NULL, 4800);
INSERT INTO public.moon VALUES (10, 'Carme', 5, NULL, 30);
INSERT INTO public.moon VALUES (11, 'Callirrhoe', 5, NULL, 10);
INSERT INTO public.moon VALUES (12, 'Carpo', 5, NULL, 3);
INSERT INTO public.moon VALUES (13, 'Chaldene', 5, NULL, 4);
INSERT INTO public.moon VALUES (14, 'Cyllene', 5, NULL, 2);
INSERT INTO public.moon VALUES (15, 'Elara', 5, NULL, 80);
INSERT INTO public.moon VALUES (16, 'Erinome', 5, NULL, 3);
INSERT INTO public.moon VALUES (17, 'Euanthe', 5, NULL, 3);
INSERT INTO public.moon VALUES (18, 'Eukelade', 5, NULL, 4);
INSERT INTO public.moon VALUES (19, 'Euporie', 5, NULL, 2);
INSERT INTO public.moon VALUES (20, 'Europa', 5, NULL, 3126);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 6, NULL, false);
INSERT INTO public.planet VALUES (2, 'Venus', 6, NULL, false);
INSERT INTO public.planet VALUES (3, 'Earth', 6, NULL, true);
INSERT INTO public.planet VALUES (4, 'Mars', 6, NULL, false);
INSERT INTO public.planet VALUES (5, 'Jupiter', 6, NULL, false);
INSERT INTO public.planet VALUES (6, 'Saturn', 6, NULL, false);
INSERT INTO public.planet VALUES (7, 'Uranus', 6, NULL, false);
INSERT INTO public.planet VALUES (8, 'Neptune', 6, NULL, false);
INSERT INTO public.planet VALUES (9, 'Pluto', 6, NULL, false);
INSERT INTO public.planet VALUES (10, 'Ceres', 6, NULL, false);
INSERT INTO public.planet VALUES (11, 'Haumea', 6, NULL, false);
INSERT INTO public.planet VALUES (12, 'Makemake', 6, NULL, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Stephenson 2-18', 3, NULL, 2150);
INSERT INTO public.star VALUES (2, 'Mu Cephei', 3, NULL, 1650);
INSERT INTO public.star VALUES (3, 'RW Cephei', 3, NULL, 1535);
INSERT INTO public.star VALUES (4, 'Westerlund 1-26', 3, NULL, 2000);
INSERT INTO public.star VALUES (5, 'V 354 Cephei', 3, NULL, 1520);
INSERT INTO public.star VALUES (6, 'Sun', 3, NULL, 1);


--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.blackhole_blackhole_id_seq', 3, true);


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

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: blackhole blackhole_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_name_key UNIQUE (name);


--
-- Name: blackhole blackhole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_pkey PRIMARY KEY (blackhole_id);


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
-- Name: blackhole blackhole_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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

