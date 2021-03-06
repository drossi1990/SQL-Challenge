--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1
-- Dumped by pg_dump version 13.1

-- Started on 2021-02-25 02:49:48

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
-- TOC entry 200 (class 1259 OID 49231)
-- Name: departments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.departments (
    dept_no character varying NOT NULL,
    dept_name character varying
);


ALTER TABLE public.departments OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 49234)
-- Name: dept_emp; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dept_emp (
    emp_no integer,
    dept_no character varying
);


ALTER TABLE public.dept_emp OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 49237)
-- Name: dept_manager; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dept_manager (
    dept_no character varying,
    emp_no integer
);


ALTER TABLE public.dept_manager OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 49240)
-- Name: employees; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employees (
    emp_no integer NOT NULL,
    emp_title_id character varying,
    birth_date date,
    first_name character varying,
    last_name character varying,
    sex character varying,
    hire_date date
);


ALTER TABLE public.employees OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 49243)
-- Name: salaries; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.salaries (
    emp_no integer,
    salary money
);


ALTER TABLE public.salaries OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 49246)
-- Name: titles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.titles (
    title_id character varying NOT NULL,
    title character varying
);


ALTER TABLE public.titles OWNER TO postgres;

--
-- TOC entry 2874 (class 2606 OID 49265)
-- Name: departments dept_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.departments
    ADD CONSTRAINT dept_pk PRIMARY KEY (dept_no);


--
-- TOC entry 2876 (class 2606 OID 49267)
-- Name: employees emp_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT emp_pk PRIMARY KEY (emp_no) INCLUDE (emp_title_id);


--
-- TOC entry 2878 (class 2606 OID 49294)
-- Name: titles title_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.titles
    ADD CONSTRAINT title_pk PRIMARY KEY (title_id);


--
-- TOC entry 2880 (class 2606 OID 49273)
-- Name: dept_emp dept_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dept_emp
    ADD CONSTRAINT dept_fk FOREIGN KEY (dept_no) REFERENCES public.departments(dept_no) NOT VALID;


--
-- TOC entry 2881 (class 2606 OID 49278)
-- Name: dept_manager dept_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dept_manager
    ADD CONSTRAINT dept_fk FOREIGN KEY (dept_no) REFERENCES public.departments(dept_no) NOT VALID;


--
-- TOC entry 2879 (class 2606 OID 49268)
-- Name: dept_emp emp_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dept_emp
    ADD CONSTRAINT emp_fk FOREIGN KEY (emp_no) REFERENCES public.employees(emp_no) NOT VALID;


--
-- TOC entry 2882 (class 2606 OID 49283)
-- Name: dept_manager emp_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dept_manager
    ADD CONSTRAINT emp_fk FOREIGN KEY (emp_no) REFERENCES public.employees(emp_no) NOT VALID;


--
-- TOC entry 2884 (class 2606 OID 49288)
-- Name: salaries emp_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.salaries
    ADD CONSTRAINT emp_fk FOREIGN KEY (emp_no) REFERENCES public.employees(emp_no) NOT VALID;


--
-- TOC entry 2883 (class 2606 OID 49295)
-- Name: employees title_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT title_fk FOREIGN KEY (emp_title_id) REFERENCES public.titles(title_id) NOT VALID;


-- Completed on 2021-02-25 02:49:48

--
-- PostgreSQL database dump complete
--

