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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(50) NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(100) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (81, 2018, 'Final', 4, 2, 207, 208);
INSERT INTO public.games VALUES (82, 2018, 'Third Place', 2, 0, 209, 210);
INSERT INTO public.games VALUES (83, 2018, 'Semi-Final', 2, 1, 208, 210);
INSERT INTO public.games VALUES (84, 2018, 'Semi-Final', 1, 0, 207, 209);
INSERT INTO public.games VALUES (85, 2018, 'Quarter-Final', 3, 2, 208, 211);
INSERT INTO public.games VALUES (86, 2018, 'Quarter-Final', 2, 0, 210, 212);
INSERT INTO public.games VALUES (87, 2018, 'Quarter-Final', 2, 1, 209, 213);
INSERT INTO public.games VALUES (88, 2018, 'Quarter-Final', 2, 0, 207, 214);
INSERT INTO public.games VALUES (89, 2018, 'Eighth-Final', 2, 1, 210, 215);
INSERT INTO public.games VALUES (90, 2018, 'Eighth-Final', 1, 0, 212, 216);
INSERT INTO public.games VALUES (91, 2018, 'Eighth-Final', 3, 2, 209, 217);
INSERT INTO public.games VALUES (92, 2018, 'Eighth-Final', 2, 0, 213, 218);
INSERT INTO public.games VALUES (93, 2018, 'Eighth-Final', 2, 1, 208, 219);
INSERT INTO public.games VALUES (94, 2018, 'Eighth-Final', 2, 1, 211, 220);
INSERT INTO public.games VALUES (95, 2018, 'Eighth-Final', 2, 1, 214, 221);
INSERT INTO public.games VALUES (96, 2018, 'Eighth-Final', 4, 3, 207, 222);
INSERT INTO public.games VALUES (97, 2014, 'Final', 1, 0, 223, 222);
INSERT INTO public.games VALUES (98, 2014, 'Third Place', 3, 0, 224, 213);
INSERT INTO public.games VALUES (99, 2014, 'Semi-Final', 1, 0, 222, 224);
INSERT INTO public.games VALUES (100, 2014, 'Semi-Final', 7, 1, 223, 213);
INSERT INTO public.games VALUES (101, 2014, 'Quarter-Final', 1, 0, 224, 225);
INSERT INTO public.games VALUES (102, 2014, 'Quarter-Final', 1, 0, 222, 209);
INSERT INTO public.games VALUES (103, 2014, 'Quarter-Final', 2, 1, 213, 215);
INSERT INTO public.games VALUES (104, 2014, 'Quarter-Final', 1, 0, 223, 207);
INSERT INTO public.games VALUES (105, 2014, 'Eighth-Final', 2, 1, 213, 226);
INSERT INTO public.games VALUES (106, 2014, 'Eighth-Final', 2, 0, 215, 214);
INSERT INTO public.games VALUES (107, 2014, 'Eighth-Final', 2, 0, 207, 227);
INSERT INTO public.games VALUES (108, 2014, 'Eighth-Final', 2, 1, 223, 228);
INSERT INTO public.games VALUES (109, 2014, 'Eighth-Final', 2, 1, 224, 218);
INSERT INTO public.games VALUES (110, 2014, 'Eighth-Final', 2, 1, 225, 229);
INSERT INTO public.games VALUES (111, 2014, 'Eighth-Final', 1, 0, 222, 216);
INSERT INTO public.games VALUES (112, 2014, 'Eighth-Final', 2, 1, 209, 230);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (207, 'France');
INSERT INTO public.teams VALUES (208, 'Croatia');
INSERT INTO public.teams VALUES (209, 'Belgium');
INSERT INTO public.teams VALUES (210, 'England');
INSERT INTO public.teams VALUES (211, 'Russia');
INSERT INTO public.teams VALUES (212, 'Sweden');
INSERT INTO public.teams VALUES (213, 'Brazil');
INSERT INTO public.teams VALUES (214, 'Uruguay');
INSERT INTO public.teams VALUES (215, 'Colombia');
INSERT INTO public.teams VALUES (216, 'Switzerland');
INSERT INTO public.teams VALUES (217, 'Japan');
INSERT INTO public.teams VALUES (218, 'Mexico');
INSERT INTO public.teams VALUES (219, 'Denmark');
INSERT INTO public.teams VALUES (220, 'Spain');
INSERT INTO public.teams VALUES (221, 'Portugal');
INSERT INTO public.teams VALUES (222, 'Argentina');
INSERT INTO public.teams VALUES (223, 'Germany');
INSERT INTO public.teams VALUES (224, 'Netherlands');
INSERT INTO public.teams VALUES (225, 'Costa Rica');
INSERT INTO public.teams VALUES (226, 'Chile');
INSERT INTO public.teams VALUES (227, 'Nigeria');
INSERT INTO public.teams VALUES (228, 'Algeria');
INSERT INTO public.teams VALUES (229, 'Greece');
INSERT INTO public.teams VALUES (230, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 112, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 230, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

