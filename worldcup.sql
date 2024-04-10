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
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
-- Name: games_opponent_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_opponent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_opponent_id_seq OWNER TO freecodecamp;

--
-- Name: games_opponent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_opponent_id_seq OWNED BY public.games.opponent_id;


--
-- Name: games_winner_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_winner_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_winner_id_seq OWNER TO freecodecamp;

--
-- Name: games_winner_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_winner_id_seq OWNED BY public.games.winner_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(50) NOT NULL
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
-- Name: games winner_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN winner_id SET DEFAULT nextval('public.games_winner_id_seq'::regclass);


--
-- Name: games opponent_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN opponent_id SET DEFAULT nextval('public.games_opponent_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (97, 2018, 'Final', 618, 619, 4, 2);
INSERT INTO public.games VALUES (98, 2018, 'Third Place', 620, 621, 2, 0);
INSERT INTO public.games VALUES (99, 2018, 'Semi-Final', 619, 621, 2, 1);
INSERT INTO public.games VALUES (100, 2018, 'Semi-Final', 618, 620, 1, 0);
INSERT INTO public.games VALUES (101, 2018, 'Quarter-Final', 619, 622, 3, 2);
INSERT INTO public.games VALUES (102, 2018, 'Quarter-Final', 621, 623, 2, 0);
INSERT INTO public.games VALUES (103, 2018, 'Quarter-Final', 620, 624, 2, 1);
INSERT INTO public.games VALUES (104, 2018, 'Quarter-Final', 618, 625, 2, 0);
INSERT INTO public.games VALUES (105, 2018, 'Eighth-Final', 621, 626, 2, 1);
INSERT INTO public.games VALUES (106, 2018, 'Eighth-Final', 623, 627, 1, 0);
INSERT INTO public.games VALUES (107, 2018, 'Eighth-Final', 620, 628, 3, 2);
INSERT INTO public.games VALUES (108, 2018, 'Eighth-Final', 624, 629, 2, 0);
INSERT INTO public.games VALUES (109, 2018, 'Eighth-Final', 619, 630, 2, 1);
INSERT INTO public.games VALUES (110, 2018, 'Eighth-Final', 622, 631, 2, 1);
INSERT INTO public.games VALUES (111, 2018, 'Eighth-Final', 625, 632, 2, 1);
INSERT INTO public.games VALUES (112, 2018, 'Eighth-Final', 618, 633, 4, 3);
INSERT INTO public.games VALUES (113, 2014, 'Final', 634, 633, 1, 0);
INSERT INTO public.games VALUES (114, 2014, 'Third Place', 635, 624, 3, 0);
INSERT INTO public.games VALUES (115, 2014, 'Semi-Final', 633, 635, 1, 0);
INSERT INTO public.games VALUES (116, 2014, 'Semi-Final', 634, 624, 7, 1);
INSERT INTO public.games VALUES (117, 2014, 'Quarter-Final', 635, 636, 1, 0);
INSERT INTO public.games VALUES (118, 2014, 'Quarter-Final', 633, 620, 1, 0);
INSERT INTO public.games VALUES (119, 2014, 'Quarter-Final', 624, 626, 2, 1);
INSERT INTO public.games VALUES (120, 2014, 'Quarter-Final', 634, 618, 1, 0);
INSERT INTO public.games VALUES (121, 2014, 'Eighth-Final', 624, 637, 2, 1);
INSERT INTO public.games VALUES (122, 2014, 'Eighth-Final', 626, 625, 2, 0);
INSERT INTO public.games VALUES (123, 2014, 'Eighth-Final', 618, 638, 2, 0);
INSERT INTO public.games VALUES (124, 2014, 'Eighth-Final', 634, 639, 2, 1);
INSERT INTO public.games VALUES (125, 2014, 'Eighth-Final', 635, 629, 2, 1);
INSERT INTO public.games VALUES (126, 2014, 'Eighth-Final', 636, 640, 2, 1);
INSERT INTO public.games VALUES (127, 2014, 'Eighth-Final', 633, 627, 1, 0);
INSERT INTO public.games VALUES (128, 2014, 'Eighth-Final', 620, 641, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (618, 'France');
INSERT INTO public.teams VALUES (619, 'Croatia');
INSERT INTO public.teams VALUES (620, 'Belgium');
INSERT INTO public.teams VALUES (621, 'England');
INSERT INTO public.teams VALUES (622, 'Russia');
INSERT INTO public.teams VALUES (623, 'Sweden');
INSERT INTO public.teams VALUES (624, 'Brazil');
INSERT INTO public.teams VALUES (625, 'Uruguay');
INSERT INTO public.teams VALUES (626, 'Colombia');
INSERT INTO public.teams VALUES (627, 'Switzerland');
INSERT INTO public.teams VALUES (628, 'Japan');
INSERT INTO public.teams VALUES (629, 'Mexico');
INSERT INTO public.teams VALUES (630, 'Denmark');
INSERT INTO public.teams VALUES (631, 'Spain');
INSERT INTO public.teams VALUES (632, 'Portugal');
INSERT INTO public.teams VALUES (633, 'Argentina');
INSERT INTO public.teams VALUES (634, 'Germany');
INSERT INTO public.teams VALUES (635, 'Netherlands');
INSERT INTO public.teams VALUES (636, 'Costa Rica');
INSERT INTO public.teams VALUES (637, 'Chile');
INSERT INTO public.teams VALUES (638, 'Nigeria');
INSERT INTO public.teams VALUES (639, 'Algeria');
INSERT INTO public.teams VALUES (640, 'Greece');
INSERT INTO public.teams VALUES (641, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 128, true);


--
-- Name: games_opponent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_opponent_id_seq', 1, false);


--
-- Name: games_winner_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_winner_id_seq', 1, false);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 641, true);


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
-- Name: games fk_opponent_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_opponent_id FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_winner_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_winner_id FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

