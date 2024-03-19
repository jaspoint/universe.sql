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
-- Name: constellation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellation (
    constellation_id integer NOT NULL,
    name character varying NOT NULL,
    description text,
    number_of_stars integer NOT NULL,
    has_legend boolean NOT NULL,
    distance_from_earth numeric,
    galaxy_id integer
);


ALTER TABLE public.constellation OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constellation_constellation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constellation_constellation_id_seq OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constellation_constellation_id_seq OWNED BY public.constellation.constellation_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    description text,
    galaxy_type character varying NOT NULL,
    distance_from_earth numeric NOT NULL,
    age_in_millions_of_years integer
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
    name character varying NOT NULL,
    description text,
    is_spherical boolean NOT NULL,
    age_in_millions_of_years integer,
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
    name character varying NOT NULL,
    description text,
    planet_type character varying NOT NULL,
    distance_from_earth numeric NOT NULL,
    age_in_millions_of_years integer,
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
    name character varying NOT NULL,
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    age_in_millions_of_years integer,
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
-- Name: constellation constellation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation ALTER COLUMN constellation_id SET DEFAULT nextval('public.constellation_constellation_id_seq'::regclass);


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
-- Data for Name: constellation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellation VALUES (1, 'Orion', 'One of the most recognizable constellations in the night sky', 7, true, 1350, 1);
INSERT INTO public.constellation VALUES (2, 'Ursa Major', 'Also known as the Great Bear, containing the Big Dipper asterism', 7, true, 2500, 1);
INSERT INTO public.constellation VALUES (3, 'Cassiopeia', 'Named after the vain queen Cassiopeia in Greek mythology', 5, true, 5500, 1);
INSERT INTO public.constellation VALUES (4, 'Cygnus', 'Also known as the Northern Cross, containing Deneb, one of the brightest stars in the night sky', 8, true, 2400, 1);
INSERT INTO public.constellation VALUES (5, 'Leo', 'One of the earliest recognized constellations', 9, true, 5600, 1);
INSERT INTO public.constellation VALUES (6, 'Pegasus', 'Named after the winged horse in Greek mythology', 5, true, 8000, 2);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Our home galaxy', 'Spiral', 100000, 13000);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Nearest spiral galaxy to Milky Way', 'Spiral', 2540000, 22000);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Third-largest galaxy in the Local Group', 'Spiral', 3000000, 12000);
INSERT INTO public.galaxy VALUES (4, 'Messier 87', 'Elliptical galaxy in the Virgo Cluster', 'Elliptical', 54000000, 64500);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 'Spiral galaxy with a prominent bulge and a wide, bright disk', 'Spiral', 29000000, 13500);
INSERT INTO public.galaxy VALUES (6, 'Centaurus A', 'Active galaxy with a supermassive black hole', 'Elliptical', 11400000, 12000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 'Earth''s only natural satellite', true, 4500, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 'The larger and innermost of the two natural satellites of Mars', true, 4500, 2);
INSERT INTO public.moon VALUES (3, 'Deimos', 'The smaller and outermost of the two natural satellites of Mars', true, 4500, 2);
INSERT INTO public.moon VALUES (4, 'Europa', 'One of the four Galilean moons of Jupiter, the sixth-closest moon of the planet', true, 4500, 3);
INSERT INTO public.moon VALUES (5, 'Ganymede', 'Largest moon of Jupiter and in the Solar System', true, 4500, 3);
INSERT INTO public.moon VALUES (6, 'Titan', 'Largest moon of Saturn', true, 4500, 4);
INSERT INTO public.moon VALUES (7, 'Triton', 'Largest natural satellite of Neptune', true, 4500, 5);
INSERT INTO public.moon VALUES (8, 'Miranda', 'The smallest and innermost of Uranus''s five round satellites', true, 4500, 6);
INSERT INTO public.moon VALUES (9, 'Callisto', 'Second-largest moon of Jupiter, after Ganymede', true, 4500, 3);
INSERT INTO public.moon VALUES (10, 'Io', 'Innermost and third-largest of the four Galilean moons of Jupiter', true, 4500, 3);
INSERT INTO public.moon VALUES (11, 'Enceladus', 'Sixth-largest moon of Saturn', true, 4500, 4);
INSERT INTO public.moon VALUES (12, 'Rhea', 'Second-largest moon of Saturn and the ninth-largest moon in the Solar System', true, 4500, 4);
INSERT INTO public.moon VALUES (13, 'Dione', 'Third-largest moon of Saturn', true, 4500, 4);
INSERT INTO public.moon VALUES (14, 'Titania', 'Largest moon of Uranus', true, 4500, 6);
INSERT INTO public.moon VALUES (15, 'Oberon', 'Second-largest moon of Uranus', true, 4500, 6);
INSERT INTO public.moon VALUES (16, 'Ariel', 'Fourth-largest of the 27 known moons of Uranus', true, 4500, 6);
INSERT INTO public.moon VALUES (17, 'Umbriel', 'Third-largest and least massive of the five major moons of Uranus', true, 4500, 6);
INSERT INTO public.moon VALUES (19, 'Proteus', 'Second-largest moon of Neptune', true, 4500, 5);
INSERT INTO public.moon VALUES (20, 'Nereid', 'Third-largest moon of Neptune', true, 4500, 5);
INSERT INTO public.moon VALUES (18, 'tritonn', 'The seventh-largest moon of Neptune', true, 4500, 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'Third planet from the Sun and the only astronomical object known to harbor life', 'Terrestrial', 1, 4500, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 'Fourth planet from the Sun and the second-smallest planet in the Solar System', 'Terrestrial', 1.5, 4500, 1);
INSERT INTO public.planet VALUES (3, 'Jupiter', 'Fifth planet from the Sun and the largest in the Solar System', 'Gas Giant', 4.2, 4500, 1);
INSERT INTO public.planet VALUES (4, 'Saturn', 'Sixth planet from the Sun and the second-largest in the Solar System', 'Gas Giant', 8.3, 4500, 1);
INSERT INTO public.planet VALUES (5, 'Neptune', 'Eighth and farthest known planet from the Sun in the Solar System', 'Ice Giant', 30, 4500, 1);
INSERT INTO public.planet VALUES (6, 'Uranus', 'Seventh planet from the Sun', 'Ice Giant', 19.2, 4500, 1);
INSERT INTO public.planet VALUES (7, 'Mercury', 'Closest planet to the Sun', 'Terrestrial', 0.4, 4500, 1);
INSERT INTO public.planet VALUES (8, 'Venus', 'Second planet from the Sun', 'Terrestrial', 0.7, 4500, 1);
INSERT INTO public.planet VALUES (9, 'Kepler-22b', 'Exoplanet orbiting within the habitable zone of the Sun-like star Kepler-22', 'Exoplanet', 600, 2000, 2);
INSERT INTO public.planet VALUES (10, 'Gliese 581c', 'Exoplanet orbiting around the star Gliese 581', 'Exoplanet', 20.3, 8000, 2);
INSERT INTO public.planet VALUES (11, 'HD 189733b', 'Exoplanet orbiting the star HD 189733', 'Exoplanet', 63, 10000, 2);
INSERT INTO public.planet VALUES (12, 'TrES-2b', 'Exoplanet located approximately 750 light-years away in the constellation Draco', 'Exoplanet', 2300, 12000, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'The star at the center of the Solar System', true, true, 4500, 1);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 'Closest known star to the Sun', false, true, 6000, 6);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 'Red supergiant in the constellation Orion', false, false, 10000, 1);
INSERT INTO public.star VALUES (4, 'Sirius', 'Brightest star in the night sky', false, true, 250, 1);
INSERT INTO public.star VALUES (5, 'Alpha Centauri', 'Closest star system to the Solar System', false, true, 6000, 6);
INSERT INTO public.star VALUES (6, 'Vega', 'Bright star in the northern constellation of Lyra', false, true, 455, 1);


--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constellation_constellation_id_seq', 6, true);


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
-- Name: constellation constellation_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_name_key UNIQUE (name);


--
-- Name: constellation constellation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_pkey PRIMARY KEY (constellation_id);


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
-- Name: moon unique_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name UNIQUE (name);


--
-- Name: constellation constellation_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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

