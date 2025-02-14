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
    round character varying(255) NOT NULL,
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(255) NOT NULL
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

INSERT INTO public.games VALUES (301, 2018, 'Final', 239, 240, 4, 2);
INSERT INTO public.games VALUES (302, 2018, 'Third Place', 241, 242, 2, 0);
INSERT INTO public.games VALUES (303, 2018, 'Semi-Final', 240, 242, 2, 1);
INSERT INTO public.games VALUES (304, 2018, 'Semi-Final', 239, 241, 1, 0);
INSERT INTO public.games VALUES (305, 2018, 'Quarter-Final', 240, 243, 3, 2);
INSERT INTO public.games VALUES (306, 2018, 'Quarter-Final', 242, 244, 2, 0);
INSERT INTO public.games VALUES (307, 2018, 'Quarter-Final', 241, 245, 2, 1);
INSERT INTO public.games VALUES (308, 2018, 'Quarter-Final', 239, 246, 2, 0);
INSERT INTO public.games VALUES (309, 2018, 'Eighth-Final', 242, 247, 2, 1);
INSERT INTO public.games VALUES (310, 2018, 'Eighth-Final', 244, 248, 1, 0);
INSERT INTO public.games VALUES (311, 2018, 'Eighth-Final', 241, 249, 3, 2);
INSERT INTO public.games VALUES (312, 2018, 'Eighth-Final', 245, 250, 2, 0);
INSERT INTO public.games VALUES (313, 2018, 'Eighth-Final', 240, 251, 2, 1);
INSERT INTO public.games VALUES (314, 2018, 'Eighth-Final', 243, 252, 2, 1);
INSERT INTO public.games VALUES (315, 2018, 'Eighth-Final', 246, 253, 2, 1);
INSERT INTO public.games VALUES (316, 2018, 'Eighth-Final', 239, 254, 4, 3);
INSERT INTO public.games VALUES (317, 2014, 'Final', 255, 254, 1, 0);
INSERT INTO public.games VALUES (318, 2014, 'Third Place', 256, 245, 3, 0);
INSERT INTO public.games VALUES (319, 2014, 'Semi-Final', 254, 256, 1, 0);
INSERT INTO public.games VALUES (320, 2014, 'Semi-Final', 255, 245, 7, 1);
INSERT INTO public.games VALUES (321, 2014, 'Quarter-Final', 256, 257, 1, 0);
INSERT INTO public.games VALUES (322, 2014, 'Quarter-Final', 254, 241, 1, 0);
INSERT INTO public.games VALUES (323, 2014, 'Quarter-Final', 245, 247, 2, 1);
INSERT INTO public.games VALUES (324, 2014, 'Quarter-Final', 255, 239, 1, 0);
INSERT INTO public.games VALUES (325, 2014, 'Eighth-Final', 245, 258, 2, 1);
INSERT INTO public.games VALUES (326, 2014, 'Eighth-Final', 247, 246, 2, 0);
INSERT INTO public.games VALUES (327, 2014, 'Eighth-Final', 239, 259, 2, 0);
INSERT INTO public.games VALUES (328, 2014, 'Eighth-Final', 255, 260, 2, 1);
INSERT INTO public.games VALUES (329, 2014, 'Eighth-Final', 256, 250, 2, 1);
INSERT INTO public.games VALUES (330, 2014, 'Eighth-Final', 257, 261, 2, 1);
INSERT INTO public.games VALUES (331, 2014, 'Eighth-Final', 254, 248, 1, 0);
INSERT INTO public.games VALUES (332, 2014, 'Eighth-Final', 241, 262, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (239, 'France');
INSERT INTO public.teams VALUES (240, 'Croatia');
INSERT INTO public.teams VALUES (241, 'Belgium');
INSERT INTO public.teams VALUES (242, 'England');
INSERT INTO public.teams VALUES (243, 'Russia');
INSERT INTO public.teams VALUES (244, 'Sweden');
INSERT INTO public.teams VALUES (245, 'Brazil');
INSERT INTO public.teams VALUES (246, 'Uruguay');
INSERT INTO public.teams VALUES (247, 'Colombia');
INSERT INTO public.teams VALUES (248, 'Switzerland');
INSERT INTO public.teams VALUES (249, 'Japan');
INSERT INTO public.teams VALUES (250, 'Mexico');
INSERT INTO public.teams VALUES (251, 'Denmark');
INSERT INTO public.teams VALUES (252, 'Spain');
INSERT INTO public.teams VALUES (253, 'Portugal');
INSERT INTO public.teams VALUES (254, 'Argentina');
INSERT INTO public.teams VALUES (255, 'Germany');
INSERT INTO public.teams VALUES (256, 'Netherlands');
INSERT INTO public.teams VALUES (257, 'Costa Rica');
INSERT INTO public.teams VALUES (258, 'Chile');
INSERT INTO public.teams VALUES (259, 'Nigeria');
INSERT INTO public.teams VALUES (260, 'Algeria');
INSERT INTO public.teams VALUES (261, 'Greece');
INSERT INTO public.teams VALUES (262, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 332, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 262, true);


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
-- Name: games fk_opponent; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_opponent FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_winner; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_winner FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

