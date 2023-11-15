--
-- PostgreSQL database cluster dump
--

-- Started on 2023-11-14 14:18:38 UTC

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Roles
--

CREATE ROLE adm;
ALTER ROLE adm WITH SUPERUSER INHERIT NOCREATEROLE NOCREATEDB NOLOGIN NOREPLICATION NOBYPASSRLS;
CREATE ROLE adm_projetos;
ALTER ROLE adm_projetos WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:phRYi5OCHxQ3mFoybk3zrw==$TXPBWW9HR48i8tOx7lJrf2xEQWKI/qW4C5V22Q8Odrc=:lYCn2QOUGC2STyNp4SaNoczE4FLrFqtzUJbKnNrqxBk=';
CREATE ROLE adm_vendas;
ALTER ROLE adm_vendas WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:GT4/PMJMcl1r1OYQ01SNlQ==$Ztf6n4OSFICZjOxA1pumkZa1uwCk10w6BDVw5ngm5Fo=:gQAjCKOBOp5oz41P3Me2SyB1JYnp2rmFAUhJIUHBjXk=';
CREATE ROLE ana;
ALTER ROLE ana WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:gSk8OMT/GlXkhqrGte22gw==$kh3yCexwnLKkxOaM6q56t975KF8OcY2zgB41Ghc29Ew=:wKa3/G0DyJi/Wv8qy5uoycjwFhRp1R73gPF2txUX4dM=';
CREATE ROLE andrew;
ALTER ROLE andrew WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS;
CREATE ROLE bernardo;
ALTER ROLE bernardo WITH SUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:H3pN6lGHh4GqLK/bbfDMiw==$X1TGTEC7uRin/EQfZ2VSg7Nkg2e4WM2I4n6OweH4fbg=:KebUhFdxhknLSJ4fuyvdvUzEoFjvanq89t5l4pMFhR8=';
CREATE ROLE carina;
ALTER ROLE carina WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:XzWKXuhXO3GYnufFmeROxQ==$BwGr2BTkFaMpcl2oGVMMtpTJ5jz2xXS9sxZ8/AsZ+wM=:Xxzh5doLsmlJS9AiRR46j21KcgRHnjdLBErCrNkW6f8=';
CREATE ROLE carlos;
ALTER ROLE carlos WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:qPXmuaVh12oKV5PHAVPMJA==$+InDIxP3yU3591n+XyY0fT6ot4Kzgy6QU60Ggk+4qns=:GqG/5+4NBCiG9e53IS68gwjhNvzRzeONPjUBNq+dSz4=';
CREATE ROLE cleber;
ALTER ROLE cleber WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS;
CREATE ROLE coletores;
ALTER ROLE coletores WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB NOLOGIN NOREPLICATION NOBYPASSRLS;
CREATE ROLE daniela;
ALTER ROLE daniela WITH SUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:1euCMrMVapq3A1ZWBJ3MjQ==$sqxJtvbnW2x00NQXqWmwLP9ijCK/DEiqnC4BimecdYI=:dZybMqGpVcxjGcg/DCDOdkomXW2zhpkP0bQ/fidybAg=';
CREATE ROLE deptcompras;
ALTER ROLE deptcompras WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB NOLOGIN NOREPLICATION NOBYPASSRLS;
CREATE ROLE financeiro;
ALTER ROLE financeiro WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB NOLOGIN NOREPLICATION NOBYPASSRLS;
CREATE ROLE funcionario;
ALTER ROLE funcionario WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS;
CREATE ROLE gil;
ALTER ROLE gil WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:mg7DZbXqgXFY6LlHvLwYIA==$kzWvRARame9MumWhq4AOBkuFke2YE97FvZmWJNI5UEo=:DNHnbfSj9/0yS/TOlEJQGTYPOsX1lUESHTGmDsYoTzY=';
CREATE ROLE lucas;
ALTER ROLE lucas WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:M/S1fQwCyq0zVvhoaaQ3fg==$tdvTFpz/JkihZXUaZYlPeyI3oLY0uDhlFSz7wLnU1vc=:XtO0pPt+YAEaJ+233RPDMQXWFNtMfiua2/dZY7rXHDQ=';
CREATE ROLE maria;
ALTER ROLE maria WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:KN4vfWC4BGEIDZMcGsEAGw==$ssGjI+XUGvi8q+kpzIW6dVeBlKhM6XILFMwBiGGJWIY=:a7XcSUlbZE4WkygH1SCI73hOgRjE4fC3Z8T9JZsgYYw=';
CREATE ROLE miguel;
ALTER ROLE miguel WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS;
CREATE ROLE postgres;
ALTER ROLE postgres WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:SEzeVJKDN/4Y9eqfn0va5Q==$leExTl95vmLb3Wr0CRbMD8HNCAiXGDoLLxNVS552/Cg=:K65xs8Gxpy0GkYIFwM5jvhJBjbAzf//WX6PYncef3p0=';
CREATE ROLE roberto;
ALTER ROLE roberto WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS;
CREATE ROLE teste;
ALTER ROLE teste WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS;
CREATE ROLE time_de_vendas;
ALTER ROLE time_de_vendas WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB NOLOGIN NOREPLICATION NOBYPASSRLS;
CREATE ROLE user1;
ALTER ROLE user1 WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:/1VxLRrFf3f1QRqo+rbO6w==$hdOTbpbtl920ILnXtNZQl2plS5/qHvT5FiccANCzj6s=:Y1T3HBEtI5VIRM324CHsl0eDEJKJm0c/RgAdsSUxDpY=';
CREATE ROLE vendedores;
ALTER ROLE vendedores WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB NOLOGIN NOREPLICATION NOBYPASSRLS;

--
-- User Configurations
--


--
-- Role memberships
--

GRANT adm TO bernardo GRANTED BY postgres;
GRANT adm TO daniela GRANTED BY postgres;
GRANT coletores TO maria GRANTED BY postgres;
GRANT coletores TO miguel GRANTED BY postgres;
GRANT deptcompras TO lucas GRANTED BY postgres;
GRANT financeiro TO gil GRANTED BY postgres;
GRANT financeiro TO lucas GRANTED BY postgres;
GRANT time_de_vendas TO cleber GRANTED BY postgres;
GRANT time_de_vendas TO miguel GRANTED BY postgres;
GRANT vendedores TO carlos GRANTED BY postgres;






--
-- Databases
--

--
-- Database "template1" dump
--

\connect template1

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2 (Debian 15.2-1.pgdg110+1)
-- Dumped by pg_dump version 15.2

-- Started on 2023-11-14 14:18:38 UTC

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

-- Completed on 2023-11-14 14:18:38 UTC

--
-- PostgreSQL database dump complete
--

--
-- Database "aula" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2 (Debian 15.2-1.pgdg110+1)
-- Dumped by pg_dump version 15.2

-- Started on 2023-11-14 14:18:38 UTC

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

--
-- TOC entry 3829 (class 1262 OID 16389)
-- Name: aula; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE aula WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';


ALTER DATABASE aula OWNER TO postgres;

\connect aula

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

--
-- TOC entry 405 (class 1255 OID 50249)
-- Name: acao_proibida(); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.acao_proibida() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
  IF CURRENT_USER = 'andrew' AND TG_TABLE_NAME <> 'fornecedores' THEN
    RAISE NOTICE 'Ação proibida';
    RETURN NULL;
  ELSE
    RETURN NEW;
  END IF;
END;
$$;


ALTER FUNCTION public.acao_proibida() OWNER TO postgres;

--
-- TOC entry 403 (class 1255 OID 41579)
-- Name: adiciona_professor(integer, character varying, date, numeric); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.adiciona_professor(id integer, nome character varying, dt_nasc date, salario numeric) RETURNS void
    LANGUAGE plpgsql
    AS $$ /*void significa q a funçao nao retorna nada */
BEGIN
	/*inserir os dados na tabela professor*/
	INSERT INTO professor VALUES(id, nome, dt_nasc, salario);

END;
$$;


ALTER FUNCTION public.adiciona_professor(id integer, nome character varying, dt_nasc date, salario numeric) OWNER TO postgres;

--
-- TOC entry 404 (class 1255 OID 41590)
-- Name: atualiza_estoque(); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.atualiza_estoque() RETURNS trigger
    LANGUAGE plpgsql
    AS $$ 
DECLARE
	qtde integer; -- qtde disponivel do produto em estoque

BEGIN
	SELECT qtde_disponivel INTO qtde
  FROM produto1 
	WHERE cod_prod = NEW.id_produto;
	
	IF qtde < NEW.qtde_vendida THEN
			RAISE EXCEPTION 'quantidade indisponivel em estoque';
	ELSE
			UPDATE produto
		  SET qtde_disponivel = qtde_disponivel - NEW.qtde_vendida
			WHERE cod_prod = NEW.id_produto;
  END IF;
	RETURN NEW;
END;
$$;


ALTER FUNCTION public.atualiza_estoque() OWNER TO postgres;

--
-- TOC entry 366 (class 1255 OID 41365)
-- Name: atualiza_estoque_itens(integer); Type: PROCEDURE; Schema: public; Owner: postgres
--

CREATE PROCEDURE public.atualiza_estoque_itens(IN cod_venda integer)
    LANGUAGE plpgsql
    AS $$
DECLARE
    vendaitem record;
BEGIN
    FOR vendaitem IN (
					SELECT * FROM venda_itens 
					WHERE codvenda = cod_venda)
    LOOP
        -- Loop para atualizar o estoque dos produtos vendidos
        UPDATE itens
        SET estoque = estoque - venda_itens.quantidade
        FROM venda_itens
        WHERE venda_itens.codigo = itens.codigo
          AND venda_itens.codvenda = cod_venda;
    END LOOP;
END;
$$;


ALTER PROCEDURE public.atualiza_estoque_itens(IN cod_venda integer) OWNER TO postgres;

--
-- TOC entry 290 (class 1255 OID 41243)
-- Name: atualiza_qtd_estoque(); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.atualiza_qtd_estoque() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
DECLARE
est itens.estoque%type;
BEGIN
	SELECT estoque INTO est FROM itens
	WHERE itens.codigo = NEW.codigo;
	IF est >= new.quantidade THEN
	UPDATE itens SET estoque = estoque - new.quantidade
	WHERE itens.codigo = new.codigo;
	ELSE
	RAISE EXCEPTION 'Quantidade maior do que a que consta no
	estoque.';
	END IF;
	RETURN NEW;
END;
$$;


ALTER FUNCTION public.atualiza_qtd_estoque() OWNER TO postgres;

--
-- TOC entry 333 (class 1255 OID 41287)
-- Name: calcula_media(numeric[]); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.calcula_media(notas numeric[]) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
DECLARE
    media numeric := 0;
    soma_nota numeric := 0;
    numero_notas integer := 0;
    msg varchar(255);
BEGIN
    FOR i IN 1 .. array_length(notas, 1) LOOP
        soma_nota := soma_nota + notas[i];
      
    END LOOP;

    IF numero_notas > 0 THEN
        media := soma_nota / numero_notas;
    ELSE
        msg := 'Não há notas para calcular a média';
    END IF;

    IF media >= 7 THEN
        msg := 'Aprovado';
    ELSE
        msg := 'Reprovado';
    END IF;

    RETURN msg;
END;
$$;


ALTER FUNCTION public.calcula_media(notas numeric[]) OWNER TO postgres;

--
-- TOC entry 332 (class 1255 OID 41292)
-- Name: calcula_media(numeric, numeric); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.calcula_media(nota1 numeric, nota2 numeric) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
DECLARE
    media numeric := 0;
    soma_nota numeric := 0;
    numero_notas integer := 2;
    msg varchar(255);
BEGIN
    soma_nota := nota1+ nota2;
	

    IF numero_notas > 0 THEN
        media := soma_nota / numero_notas;
    ELSE
        msg := 'Não há notas para calcular a média';
    END IF;

    IF media >= 7 THEN
        msg := 'Aprovado';
    ELSE
        msg := 'Reprovado';
    END IF;

    RETURN msg;
END;
$$;


ALTER FUNCTION public.calcula_media(nota1 numeric, nota2 numeric) OWNER TO postgres;

--
-- TOC entry 351 (class 1255 OID 41328)
-- Name: calcula_media1(numeric[]); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.calcula_media1(notas numeric[]) RETURNS numeric
    LANGUAGE plpgsql
    AS $$
declare
	media numeric:=0;
	i int :=0;
	soma numeric :=0;
	
begin
	
	for i in 1 .. array_length(notas, 1) loop
		soma := soma + notas[i];
		i:= i+1;
	end loop;
	media:= soma / i;
	if (media < 7) then
	media:= 'reprovado';
	else 
	media:= 'aprovado';
	end if;
	return media;
end;
$$;


ALTER FUNCTION public.calcula_media1(notas numeric[]) OWNER TO postgres;

--
-- TOC entry 349 (class 1255 OID 41325)
-- Name: calcula_media1(numeric, numeric); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.calcula_media1(n1 numeric, n2 numeric) RETURNS numeric
    LANGUAGE plpgsql
    AS $$
declare
	media numeric:=0;
	
begin
	media:= (n1+n2)/ 2;
	
	if (media < 7) then
	media:= 'reprovado';
	else 
	media:= 'aprovado';
	end if;
	return media;
end;
$$;


ALTER FUNCTION public.calcula_media1(n1 numeric, n2 numeric) OWNER TO postgres;

--
-- TOC entry 353 (class 1255 OID 41329)
-- Name: calcula_media3(numeric[]); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.calcula_media3(notas numeric[]) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
declare
	media numeric:=0;
	num_notas int :=0;
	soma numeric :=0;
	result varchar;
	
begin
	
	for i in 1 .. array_length(notas, 1) loop
		soma := soma + notas[i];
		num_notas := num_notas +1;
	end loop;
	media:= soma / num_notas;
		raise notice 'a media eh %', media;
	if (media < 7) then
	result:= 'reprovado';
	else 
	result:= 'aprovado';
	end if;
	return result;
end;
$$;


ALTER FUNCTION public.calcula_media3(notas numeric[]) OWNER TO postgres;

--
-- TOC entry 382 (class 1255 OID 41490)
-- Name: calcula_media_notas(numeric, numeric); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.calcula_media_notas(nota1 numeric, nota2 numeric) RETURNS text
    LANGUAGE plpgsql
    AS $$
DECLARE
    medianotas numeric;
    numeronotas integer := 2;
    status text;
BEGIN
    IF (nota1 < 0 OR nota2 < 0) THEN
        status := 'Informe notas positivas';
    ELSE
        medianotas := ROUND((nota1 + nota2) / numeronotas, 2); -- Arredonda para 2 casas decimais
        IF (medianotas < 7) THEN
            status := 'Você foi reprovado. Sua média foi ' || medianotas;
        ELSE
            status := 'Você foi aprovado com média ' || medianotas;
        END IF;
    END IF;

    RETURN status; -- Adicione este retorno no final da função
END;
$$;


ALTER FUNCTION public.calcula_media_notas(nota1 numeric, nota2 numeric) OWNER TO postgres;

--
-- TOC entry 367 (class 1255 OID 41364)
-- Name: calcula_total_venda_item(integer); Type: PROCEDURE; Schema: public; Owner: postgres
--

CREATE PROCEDURE public.calcula_total_venda_item(IN cod_venda integer)
    LANGUAGE plpgsql
    AS $$
DECLARE
    vendaitem record;
BEGIN
    FOR vendaitem IN (
											SELECT * FROM venda_itens 
											WHERE codvenda = cod_venda)
    LOOP
        UPDATE venda_itens
        SET valor = quantidade * itens.valor
        FROM itens
        WHERE venda_itens.codigo = itens.codigo;
    END LOOP;
END;
$$;


ALTER PROCEDURE public.calcula_total_venda_item(IN cod_venda integer) OWNER TO postgres;

--
-- TOC entry 302 (class 1255 OID 41245)
-- Name: calcular_fatorial(integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.calcular_fatorial(n integer) RETURNS integer
    LANGUAGE plpgsql
    AS $$
DECLARE
  resultado INT := 1;
  i INT := 1;
BEGIN
  IF n < 0 THEN
    RETURN -1;
  END IF;

  WHILE i <= n LOOP
    resultado := resultado * i;
    i := i + 1;
  END LOOP;

  RETURN resultado;
END;
$$;


ALTER FUNCTION public.calcular_fatorial(n integer) OWNER TO postgres;

--
-- TOC entry 311 (class 1255 OID 41247)
-- Name: calcular_media(integer[]); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.calcular_media(VARIADIC numeros integer[]) RETURNS numeric
    LANGUAGE plpgsql
    AS $$
DECLARE
  soma NUMERIC := 0;
  quantidade INT := 0;
  media NUMERIC := 0;
BEGIN
  -- Verifique se pelo menos um número foi fornecido
  IF array_length(numeros, 1) IS NULL THEN
    RETURN -1;
  END IF;

  -- Calcule a soma dos números
  FOR i IN 1..array_length(numeros, 1) LOOP
    soma := soma + numeros[i];
    quantidade := quantidade + 1;
  END LOOP;

  -- Calcule a média
  IF quantidade > 0 THEN
    media := soma / quantidade;
  ELSE
    RETURN -1;
  END IF;

  RETURN media;
END;
$$;


ALTER FUNCTION public.calcular_media(VARIADIC numeros integer[]) OWNER TO postgres;

--
-- TOC entry 314 (class 1255 OID 41262)
-- Name: calcular_media_notas(); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.calcular_media_notas() RETURNS numeric
    LANGUAGE plpgsql
    AS $$
DECLARE
    total_notas numeric(5, 2) := 0;
    qtd_notas integer := 0;
    media numeric(3, 2);
	aluno_record record;
BEGIN
    FOR aluno_record IN (SELECT nota FROM notas) LOOP
        total_notas := total_notas + aluno_record.nota;
        qtd_notas := qtd_notas + 1;
    END LOOP;
    
    IF qtd_notas > 0 THEN
        media := total_notas / qtd_notas;
    ELSE
        media := 0;
    END IF;
    
    RETURN media;
END;
$$;


ALTER FUNCTION public.calcular_media_notas() OWNER TO postgres;

--
-- TOC entry 285 (class 1255 OID 41191)
-- Name: calcular_soma(integer, integer); Type: PROCEDURE; Schema: public; Owner: postgres
--

CREATE PROCEDURE public.calcular_soma(IN a integer, IN b integer)
    LANGUAGE plpgsql
    AS $$
	DECLARE resultado INT;
	BEGIN resultado := a + b;
	RAISE NOTICE 'O resultado da soma é %', resultado;
	END;
$$;


ALTER PROCEDURE public.calcular_soma(IN a integer, IN b integer) OWNER TO postgres;

--
-- TOC entry 312 (class 1255 OID 41248)
-- Name: calcular_soma_e_quantidade(); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.calcular_soma_e_quantidade() RETURNS TABLE(soma integer, quantidade integer)
    LANGUAGE plpgsql
    AS $$
DECLARE
  numeros INT[] := ARRAY[10, 20, 30, 40, 50]; -- Uma lista de números de exemplo
BEGIN
  soma := 0;
  quantidade := 0;

  -- Loop para calcular a soma e a quantidade
  FOR i IN 1..array_length(numeros, 1) LOOP
    soma := soma + numeros[i];
    quantidade := quantidade + 1;
  END LOOP;

  -- Retorna a soma e a quantidade como um conjunto de resultados
  RETURN NEXT;
END;
$$;


ALTER FUNCTION public.calcular_soma_e_quantidade() OWNER TO postgres;

--
-- TOC entry 305 (class 1255 OID 41065)
-- Name: calcular_tabuada(integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.calcular_tabuada(numero integer) RETURNS TABLE(resultado integer)
    LANGUAGE plpgsql
    AS $$
DECLARE
    i INT;
BEGIN
    FOR i IN 1..10 LOOP
        resultado := numero * i;  -- Calcula o resultado da multiplicação
        -- Retorna a linha atual da tabuada
        RETURN NEXT;
    END LOOP;
END;
$$;


ALTER FUNCTION public.calcular_tabuada(numero integer) OWNER TO postgres;

--
-- TOC entry 375 (class 1255 OID 41492)
-- Name: categoria(integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.categoria(idade integer) RETURNS text
    LANGUAGE plpgsql
    AS $$
declare 
	categoria text;
begin
	if idade < 5 then
		categoria:= 'não possuimos categoria para idade inferior a 5';
		return categoria;
	end if;
		case
			when idade < 8 and idade >= 5 then categoria:= 'Infantil A = 5 - 7 anos';
			when idade < 11 and idade >= 8 then categoria:= 'Infantil B = 8 - 10 anos';
			else categoria:= 'Adulto = maiores de 18 anos';		
		end case;	
		return categoria;
end;
$$;


ALTER FUNCTION public.categoria(idade integer) OWNER TO postgres;

--
-- TOC entry 397 (class 1255 OID 41552)
-- Name: catidade(integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.catidade(idade integer) RETURNS text
    LANGUAGE plpgsql
    AS $$
declare
	msg text;
BEGIN
    if idade < 5 then msg:='sem categoria';
	else
	case 
		when idade <=7 and idade >=5 then msg:= ' Infantil A = 5 - 7 anos';
		when idade <=10 and idade >=8 then msg:= ' Infantil A = 8 - 10 anos';
		else msg:= 'adulto';
	end case;
	end if;
	return msg;
END;
$$;


ALTER FUNCTION public.catidade(idade integer) OWNER TO postgres;

--
-- TOC entry 282 (class 1255 OID 50183)
-- Name: check_permission(); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.check_permission() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
  IF TG_TABLE_NAME <> 'fornecedores' THEN
    RAISE NOTICE 'Ação proibida';
  END IF;
  RETURN NULL;
END;
$$;


ALTER FUNCTION public.check_permission() OWNER TO postgres;

--
-- TOC entry 386 (class 1255 OID 41503)
-- Name: clientes_sem_fone(); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.clientes_sem_fone() RETURNS integer
    LANGUAGE plpgsql
    AS $$
declare 
	numero int;
begin
	
	select count(*) into numero
	from clientes
	left join fones_clientes on clientes.codcliente=fones_clientes.cliente
	where num_telefone is null;
	return numero;
	
end;
$$;


ALTER FUNCTION public.clientes_sem_fone() OWNER TO postgres;

--
-- TOC entry 401 (class 1255 OID 41569)
-- Name: clientessemfone(); Type: PROCEDURE; Schema: public; Owner: postgres
--

CREATE PROCEDURE public.clientessemfone()
    LANGUAGE plpgsql
    AS $$
declare 
	semfone int;
BEGIN
	SELECT count(*) into semfone
	FROM clientes
	left join fones_clientes on clientes.codcliente = fones_clientes.cliente
	where num_telefone is null;
	
	raise notice 'o numero de pessoas sem telefone é %' ,semfone;
	
END
$$;


ALTER PROCEDURE public.clientessemfone() OWNER TO postgres;

--
-- TOC entry 379 (class 1255 OID 41480)
-- Name: concate(text, text); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.concate(texto1 text, texto2 text) RETURNS text
    LANGUAGE plpgsql
    AS $$
declare
	concatenacao text;
begin
	concatenacao:= concat(texto1, ' - ', texto2);
	return concatenacao;
end;
$$;


ALTER FUNCTION public.concate(texto1 text, texto2 text) OWNER TO postgres;

--
-- TOC entry 395 (class 1255 OID 41544)
-- Name: concate(character varying, character varying); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.concate(text1 character varying, text2 character varying) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
begin
	return concat(upper(text1), '-', upper(text2));
end;

$$;


ALTER FUNCTION public.concate(text1 character varying, text2 character varying) OWNER TO postgres;

--
-- TOC entry 380 (class 1255 OID 41485)
-- Name: concatenados(character varying, character varying); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.concatenados(texto1 character varying, texto character varying) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
declare
	concatenado varchar;
begin
	concatenado := concate(upper(texto1), ' ' , upper(texto2));
	return concatenado;
end;
$$;


ALTER FUNCTION public.concatenados(texto1 character varying, texto character varying) OWNER TO postgres;

--
-- TOC entry 381 (class 1255 OID 41486)
-- Name: concatenados1(character varying, character varying); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.concatenados1(texto1 character varying, texto2 character varying) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
declare
	concatenado varchar;
begin
	concatenado := concat(upper(texto1), ' ' , upper(texto2));
	return concatenado;
end;
$$;


ALTER FUNCTION public.concatenados1(texto1 character varying, texto2 character varying) OWNER TO postgres;

--
-- TOC entry 327 (class 1255 OID 41205)
-- Name: conta_clientes(); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.conta_clientes() RETURNS integer
    LANGUAGE plpgsql
    AS $$
DECLARE
  numero int;
BEGIN
  SELECT count(codcliente) INTO numero
  FROM clientes
  WHERE codcliente NOT IN (SELECT cliente FROM fones_clientes);
  
  RETURN numero;
END;
$$;


ALTER FUNCTION public.conta_clientes() OWNER TO postgres;

--
-- TOC entry 402 (class 1255 OID 41570)
-- Name: contaclientes(); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.contaclientes() RETURNS integer
    LANGUAGE plpgsql
    AS $$
DECLARE
  numero int;
BEGIN
  SELECT count(codcliente) INTO numero
  FROM clientes
  WHERE codcliente NOT IN (SELECT cliente FROM fones_clientes);
  
  RETURN numero;
END;
$$;


ALTER FUNCTION public.contaclientes() OWNER TO postgres;

--
-- TOC entry 281 (class 1255 OID 41057)
-- Name: cria_a(character varying); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.cria_a(nome character varying) RETURNS void
    LANGUAGE plpgsql
    AS $$
    BEGIN
        INSERT INTO a(nome) VALUES('Patricia');
    END;
$$;


ALTER FUNCTION public.cria_a(nome character varying) OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 234 (class 1259 OID 41040)
-- Name: instrutor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.instrutor (
    id integer NOT NULL,
    nome character varying(255) NOT NULL,
    salario numeric(10,2)
);


ALTER TABLE public.instrutor OWNER TO postgres;

--
-- TOC entry 280 (class 1255 OID 41047)
-- Name: cria_instrutor_falso(); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.cria_instrutor_falso() RETURNS public.instrutor
    LANGUAGE sql
    AS $$ 
      SELECT 22 AS id, 'Nome falso' AS nome, 200.0 AS salario; 
$$;


ALTER FUNCTION public.cria_instrutor_falso() OWNER TO postgres;

--
-- TOC entry 340 (class 1255 OID 41192)
-- Name: dobro(integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.dobro(n integer) RETURNS integer
    LANGUAGE plpgsql
    AS $$
	DECLARE 
		numero int;
	BEGIN
		numero := n;
			RAISE NOTICE 'Valor numérico de entrada: %', numero;
			numero := n + n;
			RAISE NOTICE 'Dobro do valor numérico de entrada: %', numero;
			RETURN numero;
	END;
$$;


ALTER FUNCTION public.dobro(n integer) OWNER TO postgres;

--
-- TOC entry 279 (class 1255 OID 41046)
-- Name: dobro_do_salario(public.instrutor); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.dobro_do_salario(public.instrutor) RETURNS numeric
    LANGUAGE sql
    AS $_$ 
    SELECT $1.salario * 2 AS dobro;
$_$;


ALTER FUNCTION public.dobro_do_salario(public.instrutor) OWNER TO postgres;

--
-- TOC entry 392 (class 1255 OID 41523)
-- Name: estoque(integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.estoque(coditem integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
declare
    quantidade_estoque integer;
begin
    -- Suponho que você tenha alguma lógica para obter a quantidade de estoque do item com base no código.
    -- Vou supor que você tenha uma tabela chamada "estoque_items" com uma coluna "quantidade" para isso.
    select estoque into quantidade_estoque 
	from itens
	where codigo = coditem;

    if quantidade_estoque > 150 then 
        raise notice 'Estoque superior a 150 itens';
    else
        raise notice 'Estoque dentro dos limites';
    end if;
end;
$$;


ALTER FUNCTION public.estoque(coditem integer) OWNER TO postgres;

--
-- TOC entry 289 (class 1255 OID 41236)
-- Name: exclui_itens_venda(); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.exclui_itens_venda() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
	DELETE FROM venda_itens
	WHERE venda_itens.codvenda = OLD.codigo;
	RETURN OLD;
END;
$$;


ALTER FUNCTION public.exclui_itens_venda() OWNER TO postgres;

--
-- TOC entry 339 (class 1255 OID 41303)
-- Name: exibir_calcular_soma(integer, integer); Type: PROCEDURE; Schema: public; Owner: postgres
--

CREATE PROCEDURE public.exibir_calcular_soma(IN a integer, IN b integer)
    LANGUAGE plpgsql
    AS $$
DECLARE
    result integer;
BEGIN
    result := soma_dois_numeros(a, b);  -- Corrigido o nome da função aqui
    RAISE NOTICE 'A soma de % e % é %.', a, b, result;  -- Corrigido 'status' para '%'
END;
$$;


ALTER PROCEDURE public.exibir_calcular_soma(IN a integer, IN b integer) OWNER TO postgres;

--
-- TOC entry 315 (class 1255 OID 41263)
-- Name: exibir_media_notas(); Type: PROCEDURE; Schema: public; Owner: postgres
--

CREATE PROCEDURE public.exibir_media_notas()
    LANGUAGE plpgsql
    AS $$
DECLARE
    avg numeric(3, 2);
BEGIN
    avg := calcular_media_notas();
    RAISE NOTICE 'A média das notas dos alunos é: %', avg;
END;
$$;


ALTER PROCEDURE public.exibir_media_notas() OWNER TO postgres;

--
-- TOC entry 317 (class 1255 OID 41272)
-- Name: exibir_numero_extenso(); Type: PROCEDURE; Schema: public; Owner: postgres
--

CREATE PROCEDURE public.exibir_numero_extenso()
    LANGUAGE plpgsql
    AS $$
DECLARE
    numero_extenso TEXT;
BEGIN
    numero_extenso := FuncExtenso(5);
    RAISE NOTICE 'Número em extenso: %', numero_extenso;
END;
$$;


ALTER PROCEDURE public.exibir_numero_extenso() OWNER TO postgres;

--
-- TOC entry 316 (class 1255 OID 41271)
-- Name: exibir_numero_extenso(integer); Type: PROCEDURE; Schema: public; Owner: postgres
--

CREATE PROCEDURE public.exibir_numero_extenso(IN n integer)
    LANGUAGE plpgsql
    AS $$
DECLARE
    numero_extenso text;
BEGIN
    numero_extenso := FuncExtenso(4);
    RAISE NOTICE 'Número % em extenso: %', n, numero_extenso;
END;
$$;


ALTER PROCEDURE public.exibir_numero_extenso(IN n integer) OWNER TO postgres;

--
-- TOC entry 320 (class 1255 OID 41269)
-- Name: exibir_status_idade(integer); Type: PROCEDURE; Schema: public; Owner: postgres
--

CREATE PROCEDURE public.exibir_status_idade(IN idade integer)
    LANGUAGE plpgsql
    AS $$
DECLARE
    status varchar(50);
BEGIN
    status := verificar_idade(idade);
    RAISE NOTICE 'A pessoa tem % anos e é %.', idade, status;
END;
$$;


ALTER PROCEDURE public.exibir_status_idade(IN idade integer) OWNER TO postgres;

--
-- TOC entry 329 (class 1255 OID 41276)
-- Name: exibirfuncextenso(integer); Type: PROCEDURE; Schema: public; Owner: postgres
--

CREATE PROCEDURE public.exibirfuncextenso(IN n integer)
    LANGUAGE plpgsql
    AS $$
DECLARE 
    numextenso VARCHAR;
BEGIN
    numextenso := FuncExtenso(n);
    RAISE NOTICE 'O número % por extenso é %', n, numextenso;
END;
$$;


ALTER PROCEDURE public.exibirfuncextenso(IN n integer) OWNER TO postgres;

--
-- TOC entry 347 (class 1255 OID 41321)
-- Name: func_caracteres(text, text); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.func_caracteres(text1 text, text2 text) RETURNS text
    LANGUAGE plpgsql
    AS $$
DECLARE
    caracteres integer;
    texto_concatenado text;
BEGIN
    texto_concatenado := text1 || text2;  -- Concatenando as duas strings
    caracteres := length(texto_concatenado);  -- Calculando o comprimento da string resultante
    RETURN caracteres::text;  -- Convertendo o resultado para texto antes de retornar
END;
$$;


ALTER FUNCTION public.func_caracteres(text1 text, text2 text) OWNER TO postgres;

--
-- TOC entry 345 (class 1255 OID 41320)
-- Name: func_concat(text, text); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.func_concat(text1 text, text2 text) RETURNS text
    LANGUAGE plpgsql
    AS $$
declare
	concatenado text;
begin
	concatenado :=  concat('text1','-', 'text2');
	return concatenado;
end;
$$;


ALTER FUNCTION public.func_concat(text1 text, text2 text) OWNER TO postgres;

--
-- TOC entry 346 (class 1255 OID 41323)
-- Name: func_concat(character varying, character varying); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.func_concat(text1 character varying, text2 character varying) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
declare
	concatenado varchar;
begin
	concatenado :=  concat('text1',' ', 'text2');
	return concatenado;
end;
$$;


ALTER FUNCTION public.func_concat(text1 character varying, text2 character varying) OWNER TO postgres;

--
-- TOC entry 350 (class 1255 OID 41324)
-- Name: func_concat4(character varying, character varying); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.func_concat4(text1 character varying, text2 character varying) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
declare
	concatenado varchar;
begin
	concatenado :=  concat(upper(text1),' ', upper(text2));
	return concatenado;
end;
$$;


ALTER FUNCTION public.func_concat4(text1 character varying, text2 character varying) OWNER TO postgres;

--
-- TOC entry 342 (class 1255 OID 41313)
-- Name: func_extenso(integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.func_extenso(num integer) RETURNS text
    LANGUAGE plpgsql
    AS $$
declare
	--num integer;
	num_extenso text;
begin
	if (num > 10)then 
		raise notice 'numero tem q ser inferior a 10';
		return 'outro valor';
	else
		case 
			when num = 1 then num_extenso := 'um';		
			when num = 2 then num_extenso := 'dois';
			when num = 3 then num_extenso := 'tres';
		end case;
		return num_extenso;
	end if;
end;

$$;


ALTER FUNCTION public.func_extenso(num integer) OWNER TO postgres;

--
-- TOC entry 343 (class 1255 OID 41314)
-- Name: func_extenso(integer, integer, integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.func_extenso(num1 integer, num2 integer, num3 integer) RETURNS integer
    LANGUAGE plpgsql
    AS $$
begin
	return (num1+num2+num3);
end;

$$;


ALTER FUNCTION public.func_extenso(num1 integer, num2 integer, num3 integer) OWNER TO postgres;

--
-- TOC entry 354 (class 1255 OID 41332)
-- Name: func_idade(integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.func_idade(idade integer) RETURNS text
    LANGUAGE plpgsql
    AS $$
declare
	categoria varchar;
begin
	if (idade < 5) then 
	categoria:= 'não categorizado';
	return categoria;
	else
		case
		when (idade <7 and idade >5) then categoria:='infantil a';
		when (idade <10 and idade >8) then categoria:='infantil b';
		when (idade <10 and idade >8) then categoria:='infantil b';
		when (idade <10 and idade >8) then categoria:='infantil b';
		else categoria:= 'maior de 18 anos';
		end case;
	end if;
	return categoria;
end;
$$;


ALTER FUNCTION public.func_idade(idade integer) OWNER TO postgres;

--
-- TOC entry 355 (class 1255 OID 41335)
-- Name: func_idade12(integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.func_idade12(idade integer) RETURNS text
    LANGUAGE plpgsql
    AS $$
declare
    categoria text;
begin
    case
      WHEN idade < 5 THEN categoria := 'Idade não categorizada';
      WHEN idade >= 5 AND idade <= 7 THEN categoria := 'Infantil A = 5 - 7 anos';
      WHEN idade >= 8 AND idade <= 10 THEN categoria := 'Infantil B = 8 - 10 anos';
      WHEN idade >= 11 AND idade <= 13 THEN categoria := 'Juvenil A = 11 - 13 anos';
      WHEN idade >= 14 AND idade <= 17 THEN categoria := 'Juvenil B = 14 - 17 anos';
      ELSE categoria := 'Adulto';
    end case;
    return categoria;
end;
$$;


ALTER FUNCTION public.func_idade12(idade integer) OWNER TO postgres;

--
-- TOC entry 376 (class 1255 OID 41483)
-- Name: func_length(text, text); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.func_length(text1 text, text2 text) RETURNS integer
    LANGUAGE plpgsql
    AS $$
declare 
	caracteres int;
begin
	caracteres := length(text1)+ length(text2);
	return caracteres;
end;
$$;


ALTER FUNCTION public.func_length(text1 text, text2 text) OWNER TO postgres;

--
-- TOC entry 307 (class 1255 OID 41182)
-- Name: funcconcat(text, text); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.funcconcat(texto1 text, texto2 text) RETURNS text
    LANGUAGE plpgsql
    AS $$
DECLARE
	concatenacao text;
BEGIN
	concatenacao :=  concat(texto1,'-', texto2); -- concatenacao:= texto1 || '-' || texto2;
	Return concatenacao;
END;
$$;


ALTER FUNCTION public.funcconcat(texto1 text, texto2 text) OWNER TO postgres;

--
-- TOC entry 323 (class 1255 OID 41270)
-- Name: funcextenso(integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.funcextenso(n integer) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
DECLARE
    extenso_result VARCHAR;
BEGIN
    SELECT extenso INTO extenso_result FROM (
        VALUES
            (1, 'Um'),
            (2, 'Dois'),
            (3, 'Três'),
            (4, 'Quatro'),
            (5, 'Cinco'),
            (6, 'Seis'),
            (7, 'Sete'),
            (8, 'Oito'),
            (9, 'Nove'),
            (10, 'Dez')
    ) AS numeros(numero, extenso)
    WHERE numero = n;

    IF extenso_result IS NULL THEN
        RETURN 'Valor indisponível';
    ELSE
        RETURN extenso_result;
    END IF;
END;
$$;


ALTER FUNCTION public.funcextenso(n integer) OWNER TO postgres;

--
-- TOC entry 321 (class 1255 OID 41179)
-- Name: funcextenso1(integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.funcextenso1(numero integer) RETURNS text
    LANGUAGE plpgsql
    AS $$
DECLARE
    unidades TEXT[] := ARRAY['zero', 'um', 'dois', 'três', 'quatro', 'cinco', 'seis', 'sete', 'oito', 'nove'];
    especiais TEXT[] := ARRAY['dez', 'onze', 'doze', 'treze', 'catorze', 'quinze', 'dezesseis', 'dezessete', 'dezoito', 'dezenove'];
    dezenas TEXT[] := ARRAY['', '', 'vinte', 'trinta', 'quarenta', 'cinquenta', 'sessenta', 'setenta', 'oitenta', 'noventa'];
BEGIN
    IF numero >= 0 AND numero <= 9 THEN
        RETURN unidades[numero];
    ELSIF numero >= 10 AND numero <= 19 THEN
        RETURN especiais[numero - 10];
    ELSIF numero >= 20 AND numero <= 99 THEN
        RETURN dezenas[numero / 10] || CASE WHEN numero % 10 <> 0 THEN '-' || unidades[numero % 10] ELSE '' END;
    ELSE
        RETURN 'Número fora do intervalo de 0 a 99';
    END IF;
END;
$$;


ALTER FUNCTION public.funcextenso1(numero integer) OWNER TO postgres;

--
-- TOC entry 373 (class 1255 OID 41476)
-- Name: funcextenso2(integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.funcextenso2(num integer) RETURNS text
    LANGUAGE plpgsql
    AS $$
DECLARE
	varnumext TEXT;
BEGIN
	IF num < 1 OR num > 10 THEN
		RAISE NOTICE 'O número deve estar entre 1 e 10';
	ELSE
		CASE
			WHEN num = 1 THEN varnumext := 'um';
			WHEN num = 2 THEN varnumext := 'dois';
			WHEN num = 3 THEN varnumext := 'três';
			-- Adicione mais casos para os números de 4 a 10 aqui, se necessário
		END CASE;
	END IF;
	
	RETURN varnumext;
END;
$$;


ALTER FUNCTION public.funcextenso2(num integer) OWNER TO postgres;

--
-- TOC entry 322 (class 1255 OID 41273)
-- Name: funcextenso_2(integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.funcextenso_2(n integer) RETURNS text
    LANGUAGE plpgsql
    AS $$
DECLARE
    extenso text;
BEGIN
    CREATE TEMPORARY TABLE numeros_extenso (
        numero int,
        extenso text
    );

    INSERT INTO numeros_extenso VALUES
        (1, 'Um'),
        (2, 'Dois'),
        (3, 'Três'),
        (4, 'Quatro'),
        (5, 'Cinco'),
        (6, 'Seis'),
        (7, 'Sete'),
        (8, 'Oito'),
        (9, 'Nove'),
        (10, 'Dez');

    SELECT extenso INTO extenso FROM numeros_extenso WHERE numero = n;

    IF extenso IS NULL THEN
        extenso := 'Valor indisponível';
    END IF;

    RETURN extenso;
END;
$$;


ALTER FUNCTION public.funcextenso_2(n integer) OWNER TO postgres;

--
-- TOC entry 328 (class 1255 OID 41274)
-- Name: funcextenso_3(integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.funcextenso_3(n integer) RETURNS TABLE(numero integer, extenso text)
    LANGUAGE plpgsql
    AS $$
BEGIN
    RETURN QUERY (
        SELECT numero, extenso FROM (
            VALUES
                (1, 'Um'),
                (2, 'Dois'),
                (3, 'Três'),
                (4, 'Quatro'),
                (5, 'Cinco'),
                (6, 'Seis'),
                (7, 'Sete'),
                (8, 'Oito'),
                (9, 'Nove'),
                (10, 'Dez')
        ) AS numeros(numero, extenso)
        WHERE numero = n
    );
		IF NOT FOUND THEN
        RETURN QUERY VALUES (-1, 'Valor indisponível');
    END IF;
END;
$$;


ALTER FUNCTION public.funcextenso_3(n integer) OWNER TO postgres;

--
-- TOC entry 310 (class 1255 OID 41186)
-- Name: funcidade(integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.funcidade(idade integer) RETURNS text
    LANGUAGE plpgsql
    AS $$
DECLARE
    categoria_idade text;
BEGIN
    categoria_idade := CASE
        WHEN idade < 5 THEN 'Idade não categorizada'
        WHEN idade >= 5 AND idade <= 7 THEN 'Infantil A = 5 - 7 anos'
        WHEN idade >= 8 AND idade <= 10 THEN 'Infantil B = 8 - 10 anos'
        WHEN idade >= 11 AND idade <= 13 THEN 'Juvenil A = 11 - 13 anos'
        WHEN idade >= 14 AND idade <= 17 THEN 'Juvenil B = 14 - 17 anos'
        ELSE 'Adulto'
    END;

    RETURN categoria_idade;
END;
$$;


ALTER FUNCTION public.funcidade(idade integer) OWNER TO postgres;

--
-- TOC entry 356 (class 1255 OID 41336)
-- Name: funcidade5(integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.funcidade5(idade integer) RETURNS text
    LANGUAGE plpgsql
    AS $$
DECLARE
    categoria_idade text;
BEGIN
    categoria_idade := CASE
        WHEN idade < 5 THEN 'Idade não categorizada'
        WHEN idade >= 5 AND idade <= 7 THEN 'Infantil A = 5 - 7 anos'
        WHEN idade >= 8 AND idade <= 10 THEN 'Infantil B = 8 - 10 anos'
        WHEN idade >= 11 AND idade <= 13 THEN 'Juvenil A = 11 - 13 anos'
        WHEN idade >= 14 AND idade <= 17 THEN 'Juvenil B = 14 - 17 anos'
        ELSE 'Adulto'
    END;

    RETURN categoria_idade;
END;
$$;


ALTER FUNCTION public.funcidade5(idade integer) OWNER TO postgres;

--
-- TOC entry 306 (class 1255 OID 41180)
-- Name: funclength(text, text); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.funclength(texto1 text, texto2 text) RETURNS integer
    LANGUAGE plpgsql
    AS $$
DECLARE
	caracteres int;
BEGIN
	caracteres:= length (texto1) + length (texto2);
	Return caracteres;
END;
$$;


ALTER FUNCTION public.funclength(texto1 text, texto2 text) OWNER TO postgres;

--
-- TOC entry 348 (class 1255 OID 41322)
-- Name: funclength1(text, text); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.funclength1(text1 text, text2 text) RETURNS text
    LANGUAGE plpgsql
    AS $$
DECLARE
    caracteres integer;
    texto_concatenado text;
BEGIN
    texto_concatenado := text1 || text2;  -- Concatenando as duas strings
    caracteres := length(texto_concatenado);  -- Calculando o comprimento da string resultante
    RETURN caracteres::text;  -- Convertendo o resultado para texto antes de retornar
END;
$$;


ALTER FUNCTION public.funclength1(text1 text, text2 text) OWNER TO postgres;

--
-- TOC entry 308 (class 1255 OID 41185)
-- Name: funcmedia(numeric, numeric); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.funcmedia(nota1 numeric, nota2 numeric) RETURNS text
    LANGUAGE plpgsql
    AS $$
DECLARE
    aprov_reprov text;
    media numeric;
BEGIN
    media := (nota1 + nota2) / 2;
    
    IF (media >= 7) THEN
        aprov_reprov := 'Aprovado';
    ELSE
        aprov_reprov := 'Reprovado';
    END IF;
    
    RETURN aprov_reprov;
END;
$$;


ALTER FUNCTION public.funcmedia(nota1 numeric, nota2 numeric) OWNER TO postgres;

--
-- TOC entry 331 (class 1255 OID 41282)
-- Name: funcupper(text, text); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.funcupper(texto1 text, texto2 text) RETURNS text
    LANGUAGE plpgsql
    AS $$
DECLARE
	letraMaius text;
BEGIN
	letraMaius:= upper(texto1) || ' ' || upper(texto2);
	Return letraMaius;
END;
$$;


ALTER FUNCTION public.funcupper(texto1 text, texto2 text) OWNER TO postgres;

--
-- TOC entry 309 (class 1255 OID 41183)
-- Name: funcupper(character varying, character varying); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.funcupper(texto1 character varying, texto2 character varying) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
BEGIN

    RETURN CONCAT(UPPER(text1),' ', UPPER(text2));
END;
$$;


ALTER FUNCTION public.funcupper(texto1 character varying, texto2 character varying) OWNER TO postgres;

--
-- TOC entry 283 (class 1255 OID 41436)
-- Name: gera_log(); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.gera_log() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
	INSERT INTO log(data, hora, autor, alteracao)
	VALUES (CURRENT_DATE, CURRENT_TIME, current_user, TG_OP::text); --Tipo de dado text; cadeia de caracteres 
--contendo INSERT, UPDATE,ou DELETE, informando para qual operação o gatilho 
--foi disparado.
RETURN NEW;
END;
$$;


ALTER FUNCTION public.gera_log() OWNER TO postgres;

--
-- TOC entry 361 (class 1255 OID 41024)
-- Name: gerar_array(integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.gerar_array(n integer) RETURNS integer[]
    LANGUAGE plpgsql
    AS $$
DECLARE
resultado INT[];
BEGIN
	FOR i IN 1..n LOOP
	resultado := resultado || i;

	END LOOP;

RETURN resultado;
END;
$$;


ALTER FUNCTION public.gerar_array(n integer) OWNER TO postgres;

--
-- TOC entry 372 (class 1255 OID 41471)
-- Name: historico_salarial(); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.historico_salarial() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
	INSERT INTO log_historico_salarial (nm_funcionario,
	salario_antigo, salario_reajuste, data_reajuste)
	VALUES (OLD.nome, OLD.salario, NEW.salario, NOW());
	RETURN NEW;
END;
$$;


ALTER FUNCTION public.historico_salarial() OWNER TO postgres;

--
-- TOC entry 288 (class 1255 OID 41234)
-- Name: inclui_log(); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.inclui_log() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
	INSERT INTO log (nm_usuario, operacao, data)
	VALUES (USER, TG_OP, NOW());
	RETURN NEW;
END;
$$;


ALTER FUNCTION public.inclui_log() OWNER TO postgres;

--
-- TOC entry 324 (class 1255 OID 41213)
-- Name: inclui_relacao_item_fornecedor(integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.inclui_relacao_item_fornecedor(coditem integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
	DECLARE
	  tabitens itens%ROWTYPE;
	  tabfor fornecedores%ROWTYPE;
	BEGIN
	    SELECT * INTO tabitens 
		  FROM itens WHERE codigo = coditem;
	
	    IF FOUND THEN
	        SELECT * INTO tabfor
	        FROM fornecedores
	        WHERE codigo IN (
	            SELECT compras.codfornecedor
	            FROM compras
	            JOIN compras_itens ON (compras_itens.codcompra = compras.codigo)
	            WHERE compras_itens.coditem = tabitens.codigo
	        );
	
	        INSERT INTO relacao_item_fornecedor (coditem, descricao, valoritem, codfornec, descricao_fornec)
	        VALUES (tabitens.codigo, tabitens.descricao, tabitens.valor, tabfor.codigo, tabfor.descricao);
	    END IF;
	    
	    RETURN;
	END;
$$;


ALTER FUNCTION public.inclui_relacao_item_fornecedor(coditem integer) OWNER TO postgres;

--
-- TOC entry 374 (class 1255 OID 41458)
-- Name: insere_sr_nome_clientes(); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.insere_sr_nome_clientes() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
DECLARE
varclientes clientes%ROWTYPE;
BEGIN
	SELECT * INTO varclientes
  FROM clientes
	WHERE clientes.codcliente = NEW.codcliente;
	IF FOUND THEN
		IF EXTRACT (YEAR FROM AGE(varclientes.dt_nasc)) > 30 THEN
			UPDATE clientes 
      --SET nome = CONCAT ('Sr(a) ', nome)
			SET nome = LEFT(CONCAT('Sr(a) ', nome), 50)
			WHERE codcliente = NEW.codcliente;
		END IF;
	END IF;
	RETURN NEW;
END;
$$;


ALTER FUNCTION public.insere_sr_nome_clientes() OWNER TO postgres;

--
-- TOC entry 286 (class 1255 OID 41446)
-- Name: log_cliente(); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.log_cliente() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
	INSERT INTO log(data, hora, autor, alteracao)
	VALUES (CURRENT_DATE, CURRENT_TIME, current_user, TG_OP::text); --Tipo de dado text; cadeia de caracteres 
--contendo INSERT, UPDATE,ou DELETE, informando para qual operação o gatilho 
--foi disparado.
RETURN NEW;
END;
$$;


ALTER FUNCTION public.log_cliente() OWNER TO postgres;

--
-- TOC entry 276 (class 1255 OID 41021)
-- Name: loops(text); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.loops(tipo_loop text) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
loops int DEFAULT 0;
BEGIN
IF tipo_loop = 'while' THEN
/* Loop com WHILE */
WHILE loops < 10 LOOP
loops := loops + 1;
RAISE NOTICE 'Número de loops de WHILE: %', loops;
END LOOP;
ELSEIF tipo_loop = 'loop' THEN
/* Loop com LOOP */
LOOP
loops := loops + 1;
RAISE NOTICE 'Número de loops de LOOP: %', loops;
EXIT WHEN loops > 14;
END LOOP;
ELSEIF tipo_loop = 'for' THEN
/* Loop com FOR */
FOR loops IN 1..20 LOOP
RAISE NOTICE 'Número de loops de FOR: %', loops;
END LOOP;
END IF;
RETURN;
END;
$$;


ALTER FUNCTION public.loops(tipo_loop text) OWNER TO postgres;

--
-- TOC entry 319 (class 1255 OID 41268)
-- Name: maior_idade(integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.maior_idade(idade integer) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
DECLARE
	mensagem VARCHAR(50);
	
BEGIN
	IF idade >= 18 then
      	mensagem := 'Maior de idade';	
    ELSE
    	mensagem := 'Menor de idade';
	END IF;
   RETURN mensagem;
END;
$$;


ALTER FUNCTION public.maior_idade(idade integer) OWNER TO postgres;

--
-- TOC entry 396 (class 1255 OID 41547)
-- Name: medianota(numeric, numeric); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.medianota(nota1 numeric, nota2 numeric) RETURNS text
    LANGUAGE plpgsql
    AS $$
declare
	msg text;
	media numeric :=0;
BEGIN
	media := (nota1+nota2)/2;
	
	if(media < 7) then msg:= 'reprovado';
	else msg:= 'aprovado';
	end if;
	return msg;
	
END;
$$;


ALTER FUNCTION public.medianota(nota1 numeric, nota2 numeric) OWNER TO postgres;

--
-- TOC entry 391 (class 1255 OID 41535)
-- Name: numextenso(integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.numextenso(num integer) RETURNS text
    LANGUAGE plpgsql
    AS $$
declare
numextens text;
begin
	case 
		when num = 1 then numextens:= 'um';
		when num = 2 then numextens:= 'dois';
		when num = 3 then numextens:= 'tres';
		else numextens:= 'informe um num entre 1 e 10';
	end case;
	return numextens;
end;
$$;


ALTER FUNCTION public.numextenso(num integer) OWNER TO postgres;

--
-- TOC entry 278 (class 1255 OID 41028)
-- Name: primeira_funcao(); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.primeira_funcao() RETURNS integer
    LANGUAGE sql
    AS $$
    SELECT (5-3) * 2
$$;


ALTER FUNCTION public.primeira_funcao() OWNER TO postgres;

--
-- TOC entry 295 (class 1255 OID 41054)
-- Name: primeira_pl(); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.primeira_pl() RETURNS integer
    LANGUAGE plpgsql
    AS $$ 
    BEGIN
        -- Vários comandos em SQL
        RETURN 1;
    END  
$$;


ALTER FUNCTION public.primeira_pl() OWNER TO postgres;

--
-- TOC entry 365 (class 1255 OID 41363)
-- Name: produtos_entregues_por_fornecedor(integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.produtos_entregues_por_fornecedor(cod_fornecedor integer) RETURNS TABLE(codigo integer, nome_produto text, descrr character varying)
    LANGUAGE plpgsql
    AS $$
BEGIN
    RETURN QUERY (
        SELECT itens.codigo, itens.descricao, fornecedores.descricao
        FROM itens
	        JOIN compras_itens ON itens.codigo = compras_itens.coditem
	        JOIN compras ON compras_itens.codcompra = compras.codigo
	        JOIN fornecedores ON compras.codfornecedor = fornecedores.codigo
        WHERE compras.codfornecedor = cod_fornecedor
    );
END;
$$;


ALTER FUNCTION public.produtos_entregues_por_fornecedor(cod_fornecedor integer) OWNER TO postgres;

--
-- TOC entry 390 (class 1255 OID 41511)
-- Name: produtos_fornec(integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.produtos_fornec(codfornec integer) RETURNS TABLE(codfornecedor integer, produtos text)
    LANGUAGE plpgsql
    AS $$
	begin
		return query(
			select fornecedores.codigo, itens.descricao
			from itens
			join compras_itens on (itens.codigo=compras_itens.coditem)
			join compras on (compras.codigo= compras_itens.codcompra)
			join fornecedores on(compras.codfornecedor = fornecedores.codigo )
			where fornecedores.codigo = codfornec
		);
	end;
$$;


ALTER FUNCTION public.produtos_fornec(codfornec integer) OWNER TO postgres;

--
-- TOC entry 325 (class 1255 OID 41226)
-- Name: produtos_fornecedor(integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.produtos_fornecedor(cod_fornecedor integer) RETURNS TABLE(produto text, fornecedor character varying)
    LANGUAGE plpgsql
    AS $$
BEGIN
    RETURN QUERY (
        SELECT itens.descricao, fornecedores.descricao
        FROM itens
	        JOIN compras_itens ON itens.codigo = compras_itens.coditem
	        JOIN compras ON compras_itens.codcompra = compras.codigo
	        JOIN fornecedores ON compras.codfornecedor = fornecedores.codigo
        WHERE compras.codfornecedor = cod_fornecedor
    );
END;
$$;


ALTER FUNCTION public.produtos_fornecedor(cod_fornecedor integer) OWNER TO postgres;

--
-- TOC entry 370 (class 1255 OID 41392)
-- Name: qtd_estoque_negativa(); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.qtd_estoque_negativa() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
	IF NEW.estoque < 0 THEN
	RAISE EXCEPTION 'Não é permitida quantidade negativa no estoque.';
	END IF;
RETURN NEW;
END;
$$;


ALTER FUNCTION public.qtd_estoque_negativa() OWNER TO postgres;

--
-- TOC entry 389 (class 1255 OID 41509)
-- Name: query(integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.query(cod_fornecedor integer) RETURNS TABLE(codigo integer, nome character varying)
    LANGUAGE plpgsql
    AS $$
DECLARE
cod_item INT;
BEGIN
RETURN QUERY (SELECT itens.codigo, fornecedores.descricao
FROM itens, compras_itens, compras, fornecedores
WHERE itens.codigo=compras_itens.coditem
AND compras_itens.codcompra=compras.codigo
AND compras.codfornecedor=fornecedores.codigo
AND compras.codfornecedor = cod_fornecedor);
END;
$$;


ALTER FUNCTION public.query(cod_fornecedor integer) OWNER TO postgres;

--
-- TOC entry 368 (class 1255 OID 41366)
-- Name: query1(integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.query1(cod_fornecedor integer) RETURNS TABLE(codigo integer, descricao text, codfornecedor integer)
    LANGUAGE plpgsql
    AS $$
BEGIN
    RETURN QUERY (
        SELECT itens.codigo, itens.descricao, fornecedores.codigo
        FROM itens
	        JOIN compras_itens ON itens.codigo = compras_itens.coditem
	        JOIN compras ON compras_itens.codcompra = compras.codigo
	        JOIN fornecedores ON compras.codfornecedor = fornecedores.codigo
        WHERE compras.codfornecedor = cod_fornecedor
    );
END;
$$;


ALTER FUNCTION public.query1(cod_fornecedor integer) OWNER TO postgres;

--
-- TOC entry 387 (class 1255 OID 41506)
-- Name: query5(integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.query5(cod_fornecedor integer) RETURNS TABLE(codigo integer, descricao text)
    LANGUAGE plpgsql
    AS $$
BEGIN
    RETURN QUERY (
        SELECT itens.codigo, itens.descricao
        FROM itens
	        JOIN compras_itens ON itens.codigo = compras_itens.coditem
	        JOIN compras ON compras_itens.codcompra = compras.codigo
	        JOIN fornecedores ON compras.codfornecedor = fornecedores.codigo
        WHERE compras.codfornecedor = cod_fornecedor
    );
END;
$$;


ALTER FUNCTION public.query5(cod_fornecedor integer) OWNER TO postgres;

--
-- TOC entry 388 (class 1255 OID 41508)
-- Name: query_fornecedor(integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.query_fornecedor(codfornec integer) RETURNS TABLE(codfornecedor integer, descricaoitem text)
    LANGUAGE plpgsql
    AS $$
BEGIN
    RETURN QUERY (
        SELECT fornecedores.codigo, itens.descricao
        FROM itens
        JOIN compras_itens ON (itens.codigo = compras_itens.coditem)
        JOIN compras ON (compras.codigo = compras_itens.codcompra)
        JOIN fornecedores ON (fornecedores.codigo = compras.codfornecedor)
        WHERE fornecedores.codigo = codfornec
    );
END;
$$;


ALTER FUNCTION public.query_fornecedor(codfornec integer) OWNER TO postgres;

--
-- TOC entry 385 (class 1255 OID 41501)
-- Name: reajuste_i(integer, numeric); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.reajuste_i(cod integer, percentual numeric) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  coditem itens.codigo%TYPE;
BEGIN
  SELECT codigo INTO coditem 
  FROM itens 
  WHERE codigo = cod;
  
  IF FOUND THEN
    UPDATE itens 
    SET valor = valor + (valor * percentual) / 100
    WHERE codigo = cod;
  END IF;
END;
$$;


ALTER FUNCTION public.reajuste_i(cod integer, percentual numeric) OWNER TO postgres;

--
-- TOC entry 384 (class 1255 OID 41500)
-- Name: reajuste_item(integer, numeric); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.reajuste_item(cod integer, percentual numeric) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  coditem itens%ROWTYPE;
BEGIN
  SELECT * INTO coditem 
  FROM itens 
  WHERE codigo = cod;
  
  IF FOUND THEN
    UPDATE itens 
    SET valor = valor + (valor * percentual) / 100
    WHERE codigo = cod;
  END IF;
END;
$$;


ALTER FUNCTION public.reajuste_item(cod integer, percentual numeric) OWNER TO postgres;

--
-- TOC entry 360 (class 1255 OID 41340)
-- Name: return_exemplo(); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.return_exemplo() RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
RAISE NOTICE 'Função finalizada.';
RETURN;
END;
$$;


ALTER FUNCTION public.return_exemplo() OWNER TO postgres;

--
-- TOC entry 358 (class 1255 OID 41338)
-- Name: return_next_exemplo(); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.return_next_exemplo() RETURNS SETOF integer
    LANGUAGE plpgsql
    AS $$
BEGIN
FOR i IN 1..5 LOOP
RETURN NEXT i;
END LOOP;
RETURN;
END;
$$;


ALTER FUNCTION public.return_next_exemplo() OWNER TO postgres;

--
-- TOC entry 359 (class 1255 OID 41339)
-- Name: return_query_exemplo(); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.return_query_exemplo() RETURNS TABLE(codigo integer, nomecliente character varying)
    LANGUAGE plpgsql
    AS $$
BEGIN
RETURN QUERY SELECT codcliente, nome FROM clientes;
END;
$$;


ALTER FUNCTION public.return_query_exemplo() OWNER TO postgres;

--
-- TOC entry 357 (class 1255 OID 41337)
-- Name: return_value_exemplo(); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.return_value_exemplo() RETURNS integer
    LANGUAGE plpgsql
    AS $$
BEGIN
RETURN 42;
END;
$$;


ALTER FUNCTION public.return_value_exemplo() OWNER TO postgres;

--
-- TOC entry 304 (class 1255 OID 41060)
-- Name: salario_ok(integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.salario_ok(id_instrutor integer) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
    DECLARE
        instrutor instrutor;
    BEGIN 
        SELECT * FROM instrutor WHERE id = id_instrutor INTO instrutor;

        -- se o salário do instrutor for maior do que 300 reais, está ok. Se for 300 reais, então pode aumentar. Caso contrário, o salário está defasado.
        /*IF instrutor.salario > 300 THEN
            RETURN 'Salário está ok.';
        ELSEIF instrutor.salario = 300 THE
            RETURN 'Salário pode aumentar';
        ELSE
            RETURN 'Salário está defasado';     
        END IF;*/
        CASE
            WHEN instrutor.salario = 100 THEN
                RETURN 'Salário muito baixo';
            WHEN instrutor.salario = 200 THEN
                RETURN 'Salário baixo';
            WHEN instrutor.salario = 300 THEN
                RETURN 'Salário ok';
            ELSE
                RETURN 'Salário ótimo';
        END CASE;
    END;
$$;


ALTER FUNCTION public.salario_ok(id_instrutor integer) OWNER TO postgres;

--
-- TOC entry 284 (class 1255 OID 41058)
-- Name: salario_ok(public.instrutor); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.salario_ok(instrutor public.instrutor) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
    BEGIN 
        -- se o salário do instrutor for maior do que 200, está ok. Senão pode aumentar
        IF instrutor.salario > 200 THEN
            RETURN 'Salário está ok.';
        ELSE 
            RETURN 'Salário pode aumentar';
        END IF;
    END;
$$;


ALTER FUNCTION public.salario_ok(instrutor public.instrutor) OWNER TO postgres;

--
-- TOC entry 334 (class 1255 OID 41293)
-- Name: sequencia_pares(integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.sequencia_pares(limite integer) RETURNS integer[]
    LANGUAGE plpgsql
    AS $$
DECLARE
    resultado integer[];
    numero integer := 2; -- Começar com o primeiro número par.
BEGIN
    resultado := ARRAY[]::integer[]; -- Inicializar o array vazio.

    WHILE numero <= limite LOOP
        resultado := resultado || numero; -- Adicionar o número par ao array.
        numero := numero + 2; -- Avançar para o próximo número par.
    END LOOP;

    RETURN resultado;
END;
$$;


ALTER FUNCTION public.sequencia_pares(limite integer) OWNER TO postgres;

--
-- TOC entry 394 (class 1255 OID 41538)
-- Name: soma3(text, text); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.soma3(text1 text, text2 text) RETURNS integer
    LANGUAGE plpgsql
    AS $$
begin
    return length(text1) + length(text2);
end;

$$;


ALTER FUNCTION public.soma3(text1 text, text2 text) OWNER TO postgres;

--
-- TOC entry 393 (class 1255 OID 41536)
-- Name: soma3(integer, integer, integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.soma3(num1 integer, num2 integer, num3 integer) RETURNS integer
    LANGUAGE plpgsql
    AS $$
begin
    return num1+num2+num3;
end;

$$;


ALTER FUNCTION public.soma3(num1 integer, num2 integer, num3 integer) OWNER TO postgres;

--
-- TOC entry 338 (class 1255 OID 41190)
-- Name: soma_dois_numeros(integer, integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.soma_dois_numeros(a integer, b integer) RETURNS integer
    LANGUAGE plpgsql
    AS $$    	
BEGIN
    RETURN a + b;
END;
$$;


ALTER FUNCTION public.soma_dois_numeros(a integer, b integer) OWNER TO postgres;

--
-- TOC entry 344 (class 1255 OID 41319)
-- Name: soma_num(integer[]); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.soma_num(num integer[]) RETURNS integer
    LANGUAGE plpgsql
    AS $$
declare
	soma int :=0;
	i int :=0;
begin
	FOR i in 1 .. array_length(num,1) LOOP
		soma:= soma+ num[i];
		i:= i+1;
	END LOOP;
	return soma;

end;
$$;


ALTER FUNCTION public.soma_num(num integer[]) OWNER TO postgres;

--
-- TOC entry 378 (class 1255 OID 41478)
-- Name: soma_tres(integer[]); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.soma_tres(num integer[]) RETURNS integer
    LANGUAGE plpgsql
    AS $$
DECLARE 
    resultsoma INT;
    i INT;
BEGIN
    resultsoma := 0;
    
    FOR i IN 1 .. array_length(num, 1) LOOP
        IF num[i] < 0 THEN
            RAISE EXCEPTION 'Número negativo encontrado. Informe números maiores que 0.';
        END IF;
        
        resultsoma := resultsoma + num[i];
    END LOOP;

    RETURN resultsoma;
END;
$$;


ALTER FUNCTION public.soma_tres(num integer[]) OWNER TO postgres;

--
-- TOC entry 377 (class 1255 OID 41315)
-- Name: soma_tres(integer, integer, integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.soma_tres(num1 integer, num2 integer, num3 integer) RETURNS integer
    LANGUAGE plpgsql
    AS $$
DECLARE 
    resultsoma INT;
BEGIN
    IF pg_nargs() <> 3 THEN
        RAISE EXCEPTION 'Devem ser fornecidos exatamente três parâmetros';
    END IF;

    resultsoma := num1 + num2 + num3;
    RETURN resultsoma;
END;
$$;


ALTER FUNCTION public.soma_tres(num1 integer, num2 integer, num3 integer) OWNER TO postgres;

--
-- TOC entry 330 (class 1255 OID 41281)
-- Name: soma_tres_numeros(integer[]); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.soma_tres_numeros(numeros integer[]) RETURNS integer
    LANGUAGE plpgsql
    AS $$
DECLARE
    i INT;
    resultado INT := 0;
BEGIN
    FOR i IN 1 .. array_length(numeros, 1) LOOP
        resultado := resultado + numeros[i];
    END LOOP;
    
    RETURN resultado;
END;
$$;


ALTER FUNCTION public.soma_tres_numeros(numeros integer[]) OWNER TO postgres;

--
-- TOC entry 277 (class 1255 OID 41178)
-- Name: soma_tres_numeros(integer, integer, integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.soma_tres_numeros(a integer, b integer, c integer) RETURNS integer
    LANGUAGE plpgsql
    AS $$
DECLARE
    Resultado int;
BEGIN
    Resultado := a + b + c;
    RETURN Resultado;
END;
$$;


ALTER FUNCTION public.soma_tres_numeros(a integer, b integer, c integer) OWNER TO postgres;

--
-- TOC entry 335 (class 1255 OID 41300)
-- Name: tabuada(integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.tabuada(n integer) RETURNS TABLE(multiplicando integer, multiplicador integer, produto integer)
    LANGUAGE plpgsql
    AS $$
DECLARE
    multiplicador_inicio INT := 1; -- Início da tabuada
    multiplicador_fim INT := 10;   -- Fim da tabuada
BEGIN
    FOR multiplicador IN multiplicador_inicio..multiplicador_fim LOOP
        multiplicando := n;
        produto := n * multiplicador;
        RETURN QUERY SELECT multiplicando, multiplicador, produto;
    END LOOP;
END;
$$;


ALTER FUNCTION public.tabuada(n integer) OWNER TO postgres;

--
-- TOC entry 337 (class 1255 OID 41308)
-- Name: tabuada1(integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.tabuada1(numero integer) RETURNS SETOF character varying
    LANGUAGE plpgsql
    AS $$ 
    DECLARE
        multiplicador INTEGER DEFAULT 1;
    BEGIN  
        WHILE multiplicador < 10 LOOP
            RETURN NEXT numero || ' x ' || multiplicador || ' = ' || numero * multiplicador;
            multiplicador := multiplicador + 1;
        END LOOP;
    END;
$$;


ALTER FUNCTION public.tabuada1(numero integer) OWNER TO postgres;

--
-- TOC entry 336 (class 1255 OID 41294)
-- Name: tabuada_1(integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.tabuada_1(n integer) RETURNS TABLE(multiplicando integer, multiplicador integer, produto integer)
    LANGUAGE plpgsql
    AS $$
DECLARE
    multiplicador_inicio INT := 1; -- Início da tabuada
    multiplicador_fim INT := 10;   -- Fim da tabuada
BEGIN
    CREATE TEMP TABLE tabuada_temp (
        multiplicando INT,
        multiplicador INT,
        produto INT
    );

    FOR multiplicador IN multiplicador_inicio..multiplicador_fim LOOP
        INSERT INTO tabuada_temp VALUES (n, multiplicador, n * multiplicador);
    END LOOP;

    RETURN QUERY SELECT * FROM tabuada_temp;
    DROP TABLE tabuada_temp;
END;
$$;


ALTER FUNCTION public.tabuada_1(n integer) OWNER TO postgres;

--
-- TOC entry 371 (class 1255 OID 41451)
-- Name: testa_cpf_nulo(); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.testa_cpf_nulo() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
	IF NEW.cpf IS NULL THEN
	RAISE EXCEPTION 'CPF não pode ser nulo';
	END IF;
	RETURN NEW;
END;
$$;


ALTER FUNCTION public.testa_cpf_nulo() OWNER TO postgres;

--
-- TOC entry 287 (class 1255 OID 41193)
-- Name: testa_numero(numeric); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.testa_numero(n numeric) RETURNS text
    LANGUAGE plpgsql
    AS $$
	DECLARE msg text;
	BEGIN
		CASE
			WHEN n < 0 THEN msg:='Número negativo';
			WHEN n >=1 THEN msg:='Número positivo';
		END CASE;
		RETURN msg;
	END;
$$;


ALTER FUNCTION public.testa_numero(n numeric) OWNER TO postgres;

--
-- TOC entry 313 (class 1255 OID 41246)
-- Name: testar_calculo_fatorial(); Type: PROCEDURE; Schema: public; Owner: postgres
--

CREATE PROCEDURE public.testar_calculo_fatorial()
    LANGUAGE plpgsql
    AS $$
DECLARE
  valor INT;
BEGIN
  -- Teste com números não negativos
  valor := calcular_fatorial(5);
  RAISE NOTICE 'Fatorial de 5: %', valor;
  
  -- Teste com número negativo
  valor := calcular_fatorial(-3);
  IF valor = -1 THEN
    RAISE NOTICE 'Número negativo -3: Erro';
  ELSE
    RAISE NOTICE 'Fatorial de -3: %', valor;
  END IF;
END;
$$;


ALTER PROCEDURE public.testar_calculo_fatorial() OWNER TO postgres;

--
-- TOC entry 352 (class 1255 OID 41351)
-- Name: testerecord(numeric); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.testerecord(pm numeric) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
varregistro RECORD;

BEGIN
FOR varregistro IN SELECT * FROM itens WHERE valor>=pm
LOOP
INSERT INTO precos(id,valor) VALUES
(varregistro.codigo,varregistro.valor);
END LOOP;
END;
$$;


ALTER FUNCTION public.testerecord(pm numeric) OWNER TO postgres;

--
-- TOC entry 363 (class 1255 OID 41342)
-- Name: testerowtype(numeric); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.testerowtype(n numeric) RETURNS boolean
    LANGUAGE plpgsql
    AS $$
DECLARE
ret boolean;

varlin itens%ROWTYPE;

BEGIN
ret:=false;
SELECT * INTO varlin FROM itens WHERE codigo=n;
IF FOUND THEN
INSERT INTO logitens(id,status) VALUES (varlin.codigo,'Encontrado');
ret:=true;
END IF;

RETURN ret;
END;
$$;


ALTER FUNCTION public.testerowtype(n numeric) OWNER TO postgres;

--
-- TOC entry 364 (class 1255 OID 41350)
-- Name: testerowtype1(numeric); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.testerowtype1(n numeric) RETURNS boolean
    LANGUAGE plpgsql
    AS $$
DECLARE
ret boolean;

varlin itens%ROWTYPE;

BEGIN
ret:=false;
SELECT * INTO varlin FROM itens WHERE codigo=n;
IF FOUND THEN
INSERT INTO logitens(id,status) VALUES (varlin.codigo,'Encontrado');
ret:=true;
END IF;

RETURN ret;
END;
$$;


ALTER FUNCTION public.testerowtype1(n numeric) OWNER TO postgres;

--
-- TOC entry 362 (class 1255 OID 41341)
-- Name: testetype(numeric); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.testetype(n numeric) RETURNS boolean
    LANGUAGE plpgsql
    AS $$
DECLARE
ret boolean;
varcod itens.codigo%TYPE;
BEGIN
ret:=false;
SELECT codigo INTO varcod FROM itens WHERE codigo=n;
IF FOUND THEN
ret:=true;
END IF;
RETURN ret;
END;
$$;


ALTER FUNCTION public.testetype(n numeric) OWNER TO postgres;

--
-- TOC entry 399 (class 1255 OID 41563)
-- Name: ultima_compra(integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.ultima_compra(codfornec integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
	varforneced compras%ROWTYPE;
	lastdata date;
	
BEGIN
	SELECT * INTO varforneced
	FROM compras
	WHERE codfornecedor = codfornec;
	
	if found then
		select max(data) into lastdata
		from compras
		where codfornecedor = codfornec
		group by codfornecedor;
		
		RAISE NOTICE 'ultima compra foi %', to_char(lastdata, 'dd-mm-yy');
	else
		RAISE NOTICE 'codigo invalido';
	END IF;
END
$$;


ALTER FUNCTION public.ultima_compra(codfornec integer) OWNER TO postgres;

--
-- TOC entry 400 (class 1255 OID 41565)
-- Name: ultima_compra(integer, numeric); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.ultima_compra(coditem integer, percreaj numeric) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
	varcoditem itens%ROWTYPE;
	reajustado numeric;
	
BEGIN
	SELECT * INTO varcoditem
	FROM itens
	WHERE codigo = coditem;
	
	if found then
		update itens into reajustado
		set valor = valor * percreaj
		where codigo = coditem;
		
		RAISE NOTICE 'vc recebeu um reajuste de % por cento', reajustado;
	else
		RAISE NOTICE 'codigo invalido';
	END IF;
END
$$;


ALTER FUNCTION public.ultima_compra(coditem integer, percreaj numeric) OWNER TO postgres;

--
-- TOC entry 383 (class 1255 OID 41497)
-- Name: unidades_estoque(integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.unidades_estoque(cod integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
declare
	--varestoque itens%ROWTYPE;
	varestoque itens.estoque%TYPE;
begin
	select * INTO varestoque 
	from itens where codigo = cod;
	
	if found then
		if varestoque > 150 then
			raise notice 'estoque superior a 150 unidades do item de codigo %', varestoque.codigo;
		else
			raise notice 'estoque  a 150 unidades do item de codigo %', varestoque.codigo;
		end if;
	else
		raise notice 'codigo % nao encontrado', cod;
	end if;
	return;
end;		  
$$;


ALTER FUNCTION public.unidades_estoque(cod integer) OWNER TO postgres;

--
-- TOC entry 341 (class 1255 OID 41307)
-- Name: verifica_aprovacao(numeric); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.verifica_aprovacao(nota numeric) RETURNS text
    LANGUAGE plpgsql
    AS $$
	DECLARE 
		status text;
	BEGIN
	IF (nota <=4) THEN
		status:='REPROVADO';	
	ELSIF (nota>=6) THEN
		status:='APROVADO';
	ELSE
		status:='EXAME';
	END IF;
	RETURN status;
	END;
$$;


ALTER FUNCTION public.verifica_aprovacao(nota numeric) OWNER TO postgres;

--
-- TOC entry 326 (class 1255 OID 41200)
-- Name: verifica_compra(integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.verifica_compra(cod integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
	DECLARE
	  varcodfor compras%ROWTYPE; --%TYPE → variável com o tipo de 
--uma coluna varcodfor que terá o mesmo tipo de dados que o campo 
--codfornecedor na tabela compra
		dt_compra date;
	  -- dt_compra eh uma variavel do tipo data
	BEGIN --inicia o bloco da função
	  SELECT * INTO varcodfor
	  FROM compras
	  WHERE codfornecedor = cod;
--Esta consulta SQL atribui o valor do campo codfornecedor da tabela 
--compras variável varcodfor se encontrar uma linha onde o valor de
-- codfornecedor seja igual ao valor passado como argumento cod.
	
	  IF FOUND THEN --Verifica se a consulta anterior encontrou algum 
--registro. Se sim, entra neste bloco.
	    SELECT MAX(data) INTO dt_compra
	    FROM compras
	    WHERE codfornecedor = cod
	    GROUP BY codfornecedor;
---Esta consulta SQL seleciona a data máxima (a última data)
-- da tabela compras onde o valor de codfornecedor é igual ao valor
-- passado como argumento cod. O resultado é armazenado na variável
-- dt_compra.
	
	    RAISE NOTICE 'A última compra realizada com o fornecedor de código %
 foi em: %', cod, to_char(dt_compra, 'DD/MM/YYYY');
		  --Esta linha gera uma mensagem de log (NOTICE) que informa a última 
--data de compra para o fornecedor com o código cod.
-- A função to_char é usada para formatar a data no formato 'DD/MM/YYYY'.
	   END IF; --Fim do bloco IF.
	
	   RETURN; --Retorna void (não retorna nenhum valor).
	END; --Fim do bloco da função.
$$;


ALTER FUNCTION public.verifica_compra(cod integer) OWNER TO postgres;

--
-- TOC entry 398 (class 1255 OID 41561)
-- Name: verifica_estoque(integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.verifica_estoque(coditem integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
declare
	varestoque itens.estoque%type;
BEGIN
	select estoque into varestoque
    from itens
	where codigo = coditem;
	
	if found then
		if varestoque > 150 then
			raise notice 'estoque superior a 150';
		else raise notice 'estoque valido';
		end if;
	else raise notice 'codigo do item nao encontrado';
	end if;
END;
$$;


ALTER FUNCTION public.verifica_estoque(coditem integer) OWNER TO postgres;

--
-- TOC entry 318 (class 1255 OID 41264)
-- Name: verificar_idade(integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.verificar_idade(idade integer) RETURNS character varying
    LANGUAGE plpgsql
    AS $$
DECLARE
    mensagem varchar(50);
BEGIN
    IF idade >= 18 THEN
        mensagem := 'Maior de idade';
    ELSE
        mensagem := 'Menor de idade';
    END IF;
    
    RETURN mensagem;
END;
$$;


ALTER FUNCTION public.verificar_idade(idade integer) OWNER TO postgres;

--
-- TOC entry 369 (class 1255 OID 41373)
-- Name: vquant(); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.vquant() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN

IF NEW.quantidade<0 THEN
	RAISE EXCEPTION 'Não é permitida quantidades negativas';
END IF;
RETURN NEW;
END;
$$;


ALTER FUNCTION public.vquant() OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 41034)
-- Name: a; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.a (
    nome character varying(255) NOT NULL
);


ALTER TABLE public.a OWNER TO postgres;

--
-- TOC entry 255 (class 1259 OID 41418)
-- Name: alterada; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alterada (
    cod integer NOT NULL,
    valor character varying(50)
);


ALTER TABLE public.alterada OWNER TO postgres;

--
-- TOC entry 254 (class 1259 OID 41417)
-- Name: alterada_cod_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alterada_cod_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alterada_cod_seq OWNER TO postgres;

--
-- TOC entry 3832 (class 0 OID 0)
-- Dependencies: 254
-- Name: alterada_cod_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alterada_cod_seq OWNED BY public.alterada.cod;


--
-- TOC entry 236 (class 1259 OID 41068)
-- Name: aluno; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aluno (
    id integer NOT NULL,
    primeiro_nome character varying(255) NOT NULL,
    ultimo_nome character varying(255) NOT NULL,
    data_nascimento date NOT NULL
);


ALTER TABLE public.aluno OWNER TO postgres;

--
-- TOC entry 241 (class 1259 OID 41097)
-- Name: aluno_curso; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aluno_curso (
    aluno_id integer NOT NULL,
    curso_id integer NOT NULL
);


ALTER TABLE public.aluno_curso OWNER TO postgres;

--
-- TOC entry 235 (class 1259 OID 41067)
-- Name: aluno_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.aluno_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.aluno_id_seq OWNER TO postgres;

--
-- TOC entry 3833 (class 0 OID 0)
-- Dependencies: 235
-- Name: aluno_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.aluno_id_seq OWNED BY public.aluno.id;


--
-- TOC entry 238 (class 1259 OID 41077)
-- Name: categoria; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categoria (
    id integer NOT NULL,
    nome character varying(255) NOT NULL
);


ALTER TABLE public.categoria OWNER TO postgres;

--
-- TOC entry 237 (class 1259 OID 41076)
-- Name: categoria_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.categoria_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categoria_id_seq OWNER TO postgres;

--
-- TOC entry 3834 (class 0 OID 0)
-- Dependencies: 237
-- Name: categoria_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.categoria_id_seq OWNED BY public.categoria.id;


--
-- TOC entry 214 (class 1259 OID 16390)
-- Name: clientes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.clientes (
    codcliente integer NOT NULL,
    nome character varying(50) NOT NULL,
    endereco character varying(50) NOT NULL,
    tipo_cliente character(1),
    rg character(15),
    cpf character(15),
    cnpj character(14),
    obs text,
    dt_nasc date,
    CONSTRAINT clientes_codcliente_check CHECK ((codcliente > 0)),
    CONSTRAINT clientes_tipo_cliente_check CHECK (((tipo_cliente = 'F'::bpchar) OR (tipo_cliente = 'J'::bpchar)))
);


ALTER TABLE public.clientes OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16409)
-- Name: funcionarios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.funcionarios (
    codfunc integer NOT NULL,
    nome character varying(50) NOT NULL,
    endereco character varying(50) NOT NULL,
    cpf character(11) NOT NULL,
    tipo character(1),
    salario numeric(6,2),
    codchefe integer,
    CONSTRAINT funcionarios_tipo_check CHECK (((tipo = '1'::bpchar) OR (tipo = '2'::bpchar) OR (tipo = '3'::bpchar)))
);


ALTER TABLE public.funcionarios OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16417)
-- Name: ordens_servico; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ordens_servico (
    numero integer NOT NULL,
    data date,
    valor_total numeric(10,2),
    status character(1),
    codfunc integer NOT NULL,
    codcliente integer NOT NULL,
    CONSTRAINT ordens_servico_status_check CHECK (((status = 'a'::bpchar) OR (status = 'f'::bpchar)))
);


ALTER TABLE public.ordens_servico OWNER TO postgres;

--
-- TOC entry 266 (class 1259 OID 49794)
-- Name: cliente_func_os; Type: MATERIALIZED VIEW; Schema: public; Owner: postgres
--

CREATE MATERIALIZED VIEW public.cliente_func_os AS
 SELECT cl.nome AS cliente,
    f.nome AS funcionario,
    os.numero AS num_os,
    os.data,
    os.status
   FROM ((public.clientes cl
     JOIN public.ordens_servico os USING (codcliente))
     JOIN public.funcionarios f USING (codfunc))
  WITH NO DATA;


ALTER TABLE public.cliente_func_os OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16399)
-- Name: fones_clientes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fones_clientes (
    cliente integer NOT NULL,
    num_telefone character(10) NOT NULL
);


ALTER TABLE public.fones_clientes OWNER TO postgres;

--
-- TOC entry 269 (class 1259 OID 50177)
-- Name: cliente_telefone; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.cliente_telefone AS
 SELECT clientes.nome AS cliente,
    COALESCE(fones_clientes.num_telefone, 'sem telefone'::bpchar) AS telefone
   FROM (public.clientes
     LEFT JOIN public.fones_clientes ON ((clientes.codcliente = fones_clientes.cliente)));


ALTER TABLE public.cliente_telefone OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 16510)
-- Name: compras; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.compras (
    codigo integer NOT NULL,
    codfornecedor integer NOT NULL,
    data date,
    valor_total numeric(10,2),
    numero_nota integer NOT NULL
);


ALTER TABLE public.compras OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 16521)
-- Name: compras_itens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.compras_itens (
    sequencial integer NOT NULL,
    codcompra integer NOT NULL,
    coditem integer NOT NULL,
    desconto numeric(4,2),
    quantidade integer,
    valor numeric(10,2),
    valor_total numeric(10,2)
);


ALTER TABLE public.compras_itens OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 16520)
-- Name: compras_itens_sequencial_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.compras_itens_sequencial_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.compras_itens_sequencial_seq OWNER TO postgres;

--
-- TOC entry 3840 (class 0 OID 0)
-- Dependencies: 226
-- Name: compras_itens_sequencial_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.compras_itens_sequencial_seq OWNED BY public.compras_itens.sequencial;


--
-- TOC entry 228 (class 1259 OID 16537)
-- Name: contas_pagar; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.contas_pagar (
    numero integer NOT NULL,
    num_boleto character varying(30),
    tipo integer NOT NULL,
    data_vencimento date,
    data_pagamento date,
    valor_pago numeric(10,2),
    valor numeric(10,2),
    data_lancamento date,
    desconto numeric(10,2),
    compra integer,
    despesas integer,
    CONSTRAINT contas_pagar_tipo_check CHECK (((tipo = 1) OR (tipo = 2)))
);


ALTER TABLE public.contas_pagar OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16453)
-- Name: contas_receber; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.contas_receber (
    cod integer NOT NULL,
    data_lancamento date NOT NULL,
    data_vencimento date NOT NULL,
    valor numeric(10,2) NOT NULL,
    data_pagamento date,
    valor_pagamento numeric(10,2),
    codigo_vendas integer NOT NULL
);


ALTER TABLE public.contas_receber OWNER TO postgres;

--
-- TOC entry 240 (class 1259 OID 41086)
-- Name: curso; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.curso (
    id integer NOT NULL,
    nome character varying(255) NOT NULL,
    categoria_id integer NOT NULL
);


ALTER TABLE public.curso OWNER TO postgres;

--
-- TOC entry 239 (class 1259 OID 41085)
-- Name: curso_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.curso_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.curso_id_seq OWNER TO postgres;

--
-- TOC entry 3843 (class 0 OID 0)
-- Dependencies: 239
-- Name: curso_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.curso_id_seq OWNED BY public.curso.id;


--
-- TOC entry 229 (class 1259 OID 16548)
-- Name: despesas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.despesas (
    codigo integer NOT NULL,
    descricao character varying(50)
);


ALTER TABLE public.despesas OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 16503)
-- Name: fornecedores; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fornecedores (
    codigo integer NOT NULL,
    descricao character varying(100),
    endereco character varying(50),
    contato character varying(50),
    cnpj character varying(14)
);


ALTER TABLE public.fornecedores OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16463)
-- Name: itens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.itens (
    codigo integer NOT NULL,
    valor numeric(10,2) NOT NULL,
    custo numeric(10,2) NOT NULL,
    descricao text,
    desconto numeric(6,2),
    tipo character(1),
    estoque real,
    CONSTRAINT itens_tipo_check CHECK (((tipo = 'p'::bpchar) OR (tipo = 's'::bpchar)))
);


ALTER TABLE public.itens OWNER TO postgres;

--
-- TOC entry 265 (class 1259 OID 41602)
-- Name: detalhes_itens_forecedor; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.detalhes_itens_forecedor AS
 SELECT i.codigo AS cod_item,
    i.descricao AS descricao_item,
    i.valor AS valor_item,
    f.codigo AS cod_fornecedor,
    f.descricao AS descricao_fornecedor
   FROM (((public.itens i
     JOIN public.compras_itens ON ((i.codigo = compras_itens.coditem)))
     JOIN public.compras ON ((compras.codigo = compras_itens.codcompra)))
     JOIN public.fornecedores f ON ((f.codigo = compras.codfornecedor)));


ALTER TABLE public.detalhes_itens_forecedor OWNER TO postgres;

--
-- TOC entry 242 (class 1259 OID 41195)
-- Name: dt_compra; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dt_compra (
    max date
);


ALTER TABLE public.dt_compra OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16471)
-- Name: venda_itens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.venda_itens (
    sequencial integer NOT NULL,
    codvenda integer NOT NULL,
    codigo integer,
    quantidade real,
    valor numeric(10,2)
);


ALTER TABLE public.venda_itens OWNER TO postgres;

--
-- TOC entry 274 (class 1259 OID 50234)
-- Name: info_3produtos_mais_vendidos; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.info_3produtos_mais_vendidos AS
 SELECT itens.codigo,
    itens.descricao AS descricao_item
   FROM (public.itens
     JOIN public.venda_itens ON ((itens.codigo = venda_itens.codigo)))
  GROUP BY itens.codigo, itens.descricao
  ORDER BY (sum(venda_itens.quantidade)) DESC
 LIMIT 3;


ALTER TABLE public.info_3produtos_mais_vendidos OWNER TO postgres;

--
-- TOC entry 271 (class 1259 OID 50195)
-- Name: info_contas_pagar; Type: MATERIALIZED VIEW; Schema: public; Owner: postgres
--

CREATE MATERIALIZED VIEW public.info_contas_pagar AS
 SELECT contas_pagar.num_boleto,
    contas_pagar.data_vencimento,
    contas_pagar.valor,
    contas_pagar.desconto,
    contas_pagar.compra,
    contas_pagar.data_lancamento
   FROM public.contas_pagar
  WITH NO DATA;


ALTER TABLE public.info_contas_pagar OWNER TO postgres;

--
-- TOC entry 275 (class 1259 OID 50244)
-- Name: info_itens; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.info_itens AS
 SELECT itens.descricao AS nome_item,
    to_char(itens.valor, 'L9G999G990D99'::text) AS valor,
    itens.desconto
   FROM public.itens;


ALTER TABLE public.info_itens OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16433)
-- Name: vendas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.vendas (
    codigo integer NOT NULL,
    valor_total_venda numeric(10,2),
    dt_venda date NOT NULL,
    codfunc integer NOT NULL,
    codcliente integer NOT NULL,
    numero integer
);


ALTER TABLE public.vendas OWNER TO postgres;

--
-- TOC entry 270 (class 1259 OID 50189)
-- Name: info_vendas; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.info_vendas AS
 SELECT v.codigo AS cod_venda,
    v.dt_venda,
    v.valor_total_venda,
    cl.nome AS cliente,
    f.nome AS funcionario
   FROM ((public.clientes cl
     JOIN public.vendas v ON ((cl.codcliente = v.codcliente)))
     JOIN public.funcionarios f ON ((f.codfunc = v.codfunc)));


ALTER TABLE public.info_vendas OWNER TO postgres;

--
-- TOC entry 273 (class 1259 OID 50216)
-- Name: info_vendas_2023; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.info_vendas_2023 AS
 SELECT itens.descricao AS descricao_item,
    sum(venda_itens.quantidade) AS numero_unidades_vendidas,
    to_char((vendas.dt_venda)::timestamp with time zone, 'YYYY'::text) AS ano_venda
   FROM ((public.itens
     JOIN public.venda_itens ON ((itens.codigo = venda_itens.codigo)))
     JOIN public.vendas ON ((venda_itens.codvenda = vendas.codigo)))
  WHERE (to_char((vendas.dt_venda)::timestamp with time zone, 'YYYY'::text) = '2023'::text)
  GROUP BY itens.descricao, (to_char((vendas.dt_venda)::timestamp with time zone, 'YYYY'::text));


ALTER TABLE public.info_vendas_2023 OWNER TO postgres;

--
-- TOC entry 272 (class 1259 OID 50211)
-- Name: info_vendas_mensais; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.info_vendas_mensais AS
 SELECT to_char((vendas.dt_venda)::timestamp with time zone, 'MM'::text) AS mes,
    sum(vendas.valor_total_venda) AS valor_total_vendas,
    sum(venda_itens.quantidade) AS num_produtos_vendidos
   FROM ((public.vendas
     JOIN public.venda_itens ON ((vendas.codigo = venda_itens.codvenda)))
     JOIN public.itens ON ((venda_itens.codigo = itens.codigo)))
  GROUP BY (to_char((vendas.dt_venda)::timestamp with time zone, 'MM'::text))
  ORDER BY (to_char((vendas.dt_venda)::timestamp with time zone, 'MM'::text));


ALTER TABLE public.info_vendas_mensais OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 41039)
-- Name: instrutor_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.instrutor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.instrutor_id_seq OWNER TO postgres;

--
-- TOC entry 3848 (class 0 OID 0)
-- Dependencies: 233
-- Name: instrutor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.instrutor_id_seq OWNED BY public.instrutor.id;


--
-- TOC entry 264 (class 1259 OID 41594)
-- Name: itensvenda; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.itensvenda (
    cod_venda integer,
    id_produto character varying(3),
    qtde_vendida integer
);


ALTER TABLE public.itensvenda OWNER TO postgres;

--
-- TOC entry 261 (class 1259 OID 41513)
-- Name: log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.log (
    id_log integer NOT NULL,
    nm_usuario character varying(255),
    operacao character varying(255),
    data_operacao date
);


ALTER TABLE public.log OWNER TO postgres;

--
-- TOC entry 257 (class 1259 OID 41439)
-- Name: log_cliente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.log_cliente (
    cod integer NOT NULL,
    data date DEFAULT CURRENT_DATE,
    hora time without time zone,
    autor character varying(20),
    alteracao character varying(6)
);


ALTER TABLE public.log_cliente OWNER TO postgres;

--
-- TOC entry 256 (class 1259 OID 41438)
-- Name: log_cliente_cod_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.log_cliente_cod_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.log_cliente_cod_seq OWNER TO postgres;

--
-- TOC entry 3849 (class 0 OID 0)
-- Dependencies: 256
-- Name: log_cliente_cod_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.log_cliente_cod_seq OWNED BY public.log_cliente.cod;


--
-- TOC entry 259 (class 1259 OID 41463)
-- Name: log_historico_salarial; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.log_historico_salarial (
    id integer NOT NULL,
    nm_funcionario character varying(30),
    salario_antigo numeric,
    salario_reajuste numeric,
    data_reajuste date
);


ALTER TABLE public.log_historico_salarial OWNER TO postgres;

--
-- TOC entry 258 (class 1259 OID 41462)
-- Name: log_historico_salarial_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.log_historico_salarial_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.log_historico_salarial_id_seq OWNER TO postgres;

--
-- TOC entry 3850 (class 0 OID 0)
-- Dependencies: 258
-- Name: log_historico_salarial_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.log_historico_salarial_id_seq OWNED BY public.log_historico_salarial.id;


--
-- TOC entry 260 (class 1259 OID 41512)
-- Name: log_id_log_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.log_id_log_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.log_id_log_seq OWNER TO postgres;

--
-- TOC entry 3851 (class 0 OID 0)
-- Dependencies: 260
-- Name: log_id_log_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.log_id_log_seq OWNED BY public.log.id_log;


--
-- TOC entry 253 (class 1259 OID 41384)
-- Name: logex2; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.logex2 (
    cod integer NOT NULL,
    data date,
    autor character varying(20),
    alteracao character varying(6)
);


ALTER TABLE public.logex2 OWNER TO postgres;

--
-- TOC entry 252 (class 1259 OID 41383)
-- Name: logex2_cod_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.logex2_cod_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.logex2_cod_seq OWNER TO postgres;

--
-- TOC entry 3852 (class 0 OID 0)
-- Dependencies: 252
-- Name: logex2_cod_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.logex2_cod_seq OWNED BY public.logex2.cod;


--
-- TOC entry 248 (class 1259 OID 41344)
-- Name: logitens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.logitens (
    id integer NOT NULL,
    status boolean
);


ALTER TABLE public.logitens OWNER TO postgres;

--
-- TOC entry 247 (class 1259 OID 41343)
-- Name: logitens_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.logitens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.logitens_id_seq OWNER TO postgres;

--
-- TOC entry 3853 (class 0 OID 0)
-- Dependencies: 247
-- Name: logitens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.logitens_id_seq OWNED BY public.logitens.id;


--
-- TOC entry 246 (class 1259 OID 41250)
-- Name: notas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.notas (
    id integer NOT NULL,
    nome character varying(50),
    nota numeric(3,2)
);


ALTER TABLE public.notas OWNER TO postgres;

--
-- TOC entry 245 (class 1259 OID 41249)
-- Name: notas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.notas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.notas_id_seq OWNER TO postgres;

--
-- TOC entry 3854 (class 0 OID 0)
-- Dependencies: 245
-- Name: notas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.notas_id_seq OWNED BY public.notas.id;


--
-- TOC entry 243 (class 1259 OID 41202)
-- Name: numero; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.numero (
    count bigint
);


ALTER TABLE public.numero OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16487)
-- Name: ordens_itens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ordens_itens (
    sequencial integer NOT NULL,
    numero integer NOT NULL,
    codigo integer NOT NULL,
    desconto numeric(4,2),
    quantidade real,
    valor numeric(10,2),
    valor_total numeric(10,2)
);


ALTER TABLE public.ordens_itens OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16486)
-- Name: ordens_itens_sequencial_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ordens_itens_sequencial_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ordens_itens_sequencial_seq OWNER TO postgres;

--
-- TOC entry 3856 (class 0 OID 0)
-- Dependencies: 222
-- Name: ordens_itens_sequencial_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ordens_itens_sequencial_seq OWNED BY public.ordens_itens.sequencial;


--
-- TOC entry 231 (class 1259 OID 41015)
-- Name: pessoas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pessoas (
    cod integer NOT NULL,
    nome character varying(20),
    data_nasc date
);


ALTER TABLE public.pessoas OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 41014)
-- Name: pessoas_cod_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pessoas_cod_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pessoas_cod_seq OWNER TO postgres;

--
-- TOC entry 3857 (class 0 OID 0)
-- Dependencies: 230
-- Name: pessoas_cod_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pessoas_cod_seq OWNED BY public.pessoas.cod;


--
-- TOC entry 250 (class 1259 OID 41353)
-- Name: precos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.precos (
    id integer NOT NULL,
    valor numeric
);


ALTER TABLE public.precos OWNER TO postgres;

--
-- TOC entry 249 (class 1259 OID 41352)
-- Name: precos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.precos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.precos_id_seq OWNER TO postgres;

--
-- TOC entry 3858 (class 0 OID 0)
-- Dependencies: 249
-- Name: precos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.precos_id_seq OWNED BY public.precos.id;


--
-- TOC entry 251 (class 1259 OID 41368)
-- Name: produto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.produto (
    cd numeric(6,0) NOT NULL,
    descricao character varying(300),
    quantidade numeric(10,0)
);


ALTER TABLE public.produto OWNER TO postgres;

--
-- TOC entry 263 (class 1259 OID 41580)
-- Name: produto1; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.produto1 (
    cod_prod integer NOT NULL,
    descricao character varying(50),
    qtde_disponivel integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.produto1 OWNER TO postgres;

--
-- TOC entry 262 (class 1259 OID 41571)
-- Name: professor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.professor (
    id integer NOT NULL,
    nome character varying(100),
    dt_nasc date,
    salario numeric
);


ALTER TABLE public.professor OWNER TO postgres;

--
-- TOC entry 244 (class 1259 OID 41206)
-- Name: relacao_item_fornecedor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relacao_item_fornecedor (
    coditem integer NOT NULL,
    descricao text,
    valoritem numeric(10,2),
    codfornec integer,
    descricao_fornec character varying(100)
);


ALTER TABLE public.relacao_item_fornecedor OWNER TO postgres;

--
-- TOC entry 267 (class 1259 OID 50160)
-- Name: view_compras; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.view_compras AS
 SELECT compras.codigo,
    compras.data,
    compras.valor_total
   FROM public.compras;


ALTER TABLE public.view_compras OWNER TO postgres;

--
-- TOC entry 268 (class 1259 OID 50172)
-- Name: view_itens; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.view_itens AS
 SELECT itens.codigo,
    itens.descricao,
    itens.valor
   FROM public.itens;


ALTER TABLE public.view_itens OWNER TO postgres;

--
-- TOC entry 3504 (class 2604 OID 41421)
-- Name: alterada cod; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alterada ALTER COLUMN cod SET DEFAULT nextval('public.alterada_cod_seq'::regclass);


--
-- TOC entry 3497 (class 2604 OID 41071)
-- Name: aluno id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aluno ALTER COLUMN id SET DEFAULT nextval('public.aluno_id_seq'::regclass);


--
-- TOC entry 3498 (class 2604 OID 41080)
-- Name: categoria id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categoria ALTER COLUMN id SET DEFAULT nextval('public.categoria_id_seq'::regclass);


--
-- TOC entry 3494 (class 2604 OID 16524)
-- Name: compras_itens sequencial; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.compras_itens ALTER COLUMN sequencial SET DEFAULT nextval('public.compras_itens_sequencial_seq'::regclass);


--
-- TOC entry 3499 (class 2604 OID 41089)
-- Name: curso id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.curso ALTER COLUMN id SET DEFAULT nextval('public.curso_id_seq'::regclass);


--
-- TOC entry 3496 (class 2604 OID 41043)
-- Name: instrutor id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.instrutor ALTER COLUMN id SET DEFAULT nextval('public.instrutor_id_seq'::regclass);


--
-- TOC entry 3508 (class 2604 OID 41516)
-- Name: log id_log; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.log ALTER COLUMN id_log SET DEFAULT nextval('public.log_id_log_seq'::regclass);


--
-- TOC entry 3505 (class 2604 OID 41442)
-- Name: log_cliente cod; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.log_cliente ALTER COLUMN cod SET DEFAULT nextval('public.log_cliente_cod_seq'::regclass);


--
-- TOC entry 3507 (class 2604 OID 41466)
-- Name: log_historico_salarial id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.log_historico_salarial ALTER COLUMN id SET DEFAULT nextval('public.log_historico_salarial_id_seq'::regclass);


--
-- TOC entry 3503 (class 2604 OID 41387)
-- Name: logex2 cod; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logex2 ALTER COLUMN cod SET DEFAULT nextval('public.logex2_cod_seq'::regclass);


--
-- TOC entry 3501 (class 2604 OID 41347)
-- Name: logitens id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logitens ALTER COLUMN id SET DEFAULT nextval('public.logitens_id_seq'::regclass);


--
-- TOC entry 3500 (class 2604 OID 41253)
-- Name: notas id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notas ALTER COLUMN id SET DEFAULT nextval('public.notas_id_seq'::regclass);


--
-- TOC entry 3493 (class 2604 OID 16490)
-- Name: ordens_itens sequencial; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ordens_itens ALTER COLUMN sequencial SET DEFAULT nextval('public.ordens_itens_sequencial_seq'::regclass);


--
-- TOC entry 3495 (class 2604 OID 41018)
-- Name: pessoas cod; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pessoas ALTER COLUMN cod SET DEFAULT nextval('public.pessoas_cod_seq'::regclass);


--
-- TOC entry 3502 (class 2604 OID 41356)
-- Name: precos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.precos ALTER COLUMN id SET DEFAULT nextval('public.precos_id_seq'::regclass);


--
-- TOC entry 3789 (class 0 OID 41034)
-- Dependencies: 232
-- Data for Name: a; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.a (nome) FROM stdin;
carina silveira
Patricia
Patricia
\.


--
-- TOC entry 3812 (class 0 OID 41418)
-- Dependencies: 255
-- Data for Name: alterada; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.alterada (cod, valor) FROM stdin;
1	Valor de teste
5	Valor de teste1
\.


--
-- TOC entry 3793 (class 0 OID 41068)
-- Dependencies: 236
-- Data for Name: aluno; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.aluno (id, primeiro_nome, ultimo_nome, data_nascimento) FROM stdin;
\.


--
-- TOC entry 3798 (class 0 OID 41097)
-- Dependencies: 241
-- Data for Name: aluno_curso; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.aluno_curso (aluno_id, curso_id) FROM stdin;
\.


--
-- TOC entry 3795 (class 0 OID 41077)
-- Dependencies: 238
-- Data for Name: categoria; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.categoria (id, nome) FROM stdin;
\.


--
-- TOC entry 3771 (class 0 OID 16390)
-- Dependencies: 214
-- Data for Name: clientes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.clientes (codcliente, nome, endereco, tipo_cliente, rg, cpf, cnpj, obs, dt_nasc) FROM stdin;
113	Sr(a) valeria oliveira	Avenida xv, 456	J	\N	125.156.394-91 	123.456.789-00	pessoa jurídica	1960-10-10
114	catarina bete	domingos almeida,333	F	4845412344     	3044108634     	\N	\N	1995-10-10
106	Isabela Medeiros	Av. Carlos Monteiro	F	\N	\N	\N	Pessoa Física	\N
107	Mariana Amaral	Rua das Orquídeas, 134	F	\N	\N	\N	Pessoa Física	\N
100	José da Silva	Av. Bento Gonçalves	F	\N	\N	\N	Pessoa Física	1990-12-12
101	Maria Silveira	Tiradentes	F	\N	\N	\N	Pessoa Física	1972-08-09
102	Roberto Pereira	Dom Pedro II	F	\N	\N	\N	Pessoa Física	1964-08-15
103	Valéria Ferreira	Av. Bento Gonçalves	F	\N	\N	\N	Pessoa Física	1967-11-23
104	Atacado Martins	General Osório	J	\N	\N	\N	Pessoa Jurídica	1984-06-17
105	Mercado Silveira	Gomes Carneiro	J	\N	\N	\N	Pessoa Jurídica	1977-03-18
108	Onofre dos Santos	Rua das Flores	F	1234567890     	\N	\N	Pessoa Física	1980-03-20
111	José da Silva	Rua C, 456	F	987654         	123.789.456-00 	\N	pessoa fisica	1995-08-20
112	Ana Santos	Rua D, 789	F	543210         	111.222.333-00 	\N	pessoa fisica	1985-10-10
115	gustavo	Av. Bento Gonçalves	F	\N	03044157924    	\N	pessoa fisica	1995-10-10
109	Sr(a) Jonas Silva	Nova rua, 451	F	123456         	123.456.789-00 	\N	pessoa fisica	1985-02-20
110	Sr(a) ABC	Avenida X, 456	J	\N	030-052-035-02 	12.345.678/00 	pessoa juridica	1960-10-10
\.


--
-- TOC entry 3782 (class 0 OID 16510)
-- Dependencies: 225
-- Data for Name: compras; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.compras (codigo, codfornecedor, data, valor_total, numero_nota) FROM stdin;
100	1	2016-05-12	5000.00	2568412
101	5	2016-09-12	7500.00	5647823
102	7	2016-12-23	20000.00	8457693
103	8	2017-02-18	5750.00	3254812
104	2	2017-05-26	7200.00	69854714
105	4	2017-09-30	6000.00	2145795
106	3	2017-11-17	2000.00	25478591
107	6	2017-12-22	2500.00	36547823
108	5	2021-04-23	\N	7841
\.


--
-- TOC entry 3784 (class 0 OID 16521)
-- Dependencies: 227
-- Data for Name: compras_itens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.compras_itens (sequencial, codcompra, coditem, desconto, quantidade, valor, valor_total) FROM stdin;
1	102	3	\N	5	4000.00	4000.00
2	103	2	\N	2	7000.00	7000.00
3	105	7	\N	3	4000.00	4000.00
4	103	8	\N	7	9000.00	9000.00
5	101	4	\N	4	8000.00	8000.00
6	106	1	\N	2	5000.00	5000.00
7	104	6	\N	6	15000.00	15000.00
8	107	5	\N	9	9000.00	9000.00
\.


--
-- TOC entry 3785 (class 0 OID 16537)
-- Dependencies: 228
-- Data for Name: contas_pagar; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.contas_pagar (numero, num_boleto, tipo, data_vencimento, data_pagamento, valor_pago, valor, data_lancamento, desconto, compra, despesas) FROM stdin;
2	2664	1	2017-02-22	2017-02-22	5750.00	5750.00	2017-02-18	\N	103	\N
4	5689	1	2017-11-23	2017-11-23	2000.00	2000.00	2017-11-17	\N	106	\N
5	1458	1	2017-12-25	2017-12-25	2500.00	2500.00	2017-12-22	\N	107	\N
7	7584	2	2016-05-27	2016-05-27	20000.00	20000.00	2017-12-23	\N	102	\N
8	3658	2	2017-05-10	2017-05-30	7200.00	7200.00	2017-05-26	\N	104	\N
1	2354	1	2016-05-15	2016-05-15	5000.00	5000.00	2016-05-10	1000.00	100	\N
3	2354	1	2017-10-15	2017-10-15	6000.00	6000.00	2016-09-30	1200.00	105	\N
6	6985	1	2017-09-26	2017-09-26	7500.00	7500.00	2016-09-16	1500.00	101	\N
\.


--
-- TOC entry 3776 (class 0 OID 16453)
-- Dependencies: 219
-- Data for Name: contas_receber; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.contas_receber (cod, data_lancamento, data_vencimento, valor, data_pagamento, valor_pagamento, codigo_vendas) FROM stdin;
300	2020-05-13	2020-05-30	1000.00	2020-05-29	1000.00	1
301	2020-09-14	2020-09-29	2500.00	2020-09-28	2000.00	2
302	2020-10-23	2020-10-26	1200.00	2020-10-26	1200.00	3
303	2020-01-23	2020-01-30	3000.00	2020-01-29	3000.00	4
305	2020-03-02	2020-03-10	2700.00	2020-03-10	2700.00	5
306	2020-05-16	2020-05-30	5000.00	2020-05-29	5000.00	6
307	2020-08-13	2020-10-01	7000.00	\N	\N	7
308	2020-10-05	2020-11-19	3200.00	\N	\N	8
\.


--
-- TOC entry 3797 (class 0 OID 41086)
-- Dependencies: 240
-- Data for Name: curso; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.curso (id, nome, categoria_id) FROM stdin;
\.


--
-- TOC entry 3786 (class 0 OID 16548)
-- Dependencies: 229
-- Data for Name: despesas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.despesas (codigo, descricao) FROM stdin;
1	água
2	luz
3	funcionários
4	produtos de limpeza
5	material de escritório
6	telefone
7	limpeza
8	seguraça
\.


--
-- TOC entry 3799 (class 0 OID 41195)
-- Dependencies: 242
-- Data for Name: dt_compra; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.dt_compra (max) FROM stdin;
2016-05-12
\.


--
-- TOC entry 3772 (class 0 OID 16399)
-- Dependencies: 215
-- Data for Name: fones_clientes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.fones_clientes (cliente, num_telefone) FROM stdin;
100	32274586  
102	32273370  
103	32224586  
104	32256948  
105	32226548  
101	99811212  
101	991591957 
101	99814542  
\.


--
-- TOC entry 3781 (class 0 OID 16503)
-- Dependencies: 224
-- Data for Name: fornecedores; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.fornecedores (codigo, descricao, endereco, contato, cnpj) FROM stdin;
1	Bento e Cia	Dom Pedro II	32254896	83848582000198
2	Mendes Araújo	Av. Dom Joaquim	32275692	52236265000197
3	Bezerra Júnior	Av. Fernando Osório	32226578	75112555000124
4	Fonseca Ltda.	Praça XX de setembro	32273370	46631334000164
5	Joaquim e Cia	Av. Duque de Caxias	32227343	820824419902
6	Barroso e Barroso	General Osório	32296548	45995532000144
7	Padilha Ltda.	Marechal Deodoro	32252571	98467579991
8	JJ e Cia.	Dom Pedro II	32258691	22065998000145
\.


--
-- TOC entry 3773 (class 0 OID 16409)
-- Dependencies: 216
-- Data for Name: funcionarios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.funcionarios (codfunc, nome, endereco, cpf, tipo, salario, codchefe) FROM stdin;
201	Mariana Costa	José Bonifácio	77486491460	2	1200.00	206
203	Sergio Pires	José Bonifácio	87162502300	1	1200.00	206
204	Cristian Tavares	Av. 25 de julho	33817362641	3	1200.00	206
202	Marcia Gonçalves	Av. Ferreira Viana	55684414729	2	1840.00	205
206	Fabiano Nobre	Av. Dom Joaquim	30212787365	3	1840.00	205
205	Mateus Santos	Gonçalves Chaves	52564250645	1	2030.50	205
200	José da Silveira	Marechal Deodoro	81754656200	3	1400.00	206
\.


--
-- TOC entry 3791 (class 0 OID 41040)
-- Dependencies: 234
-- Data for Name: instrutor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.instrutor (id, nome, salario) FROM stdin;
1	Vinicius Dias	100.00
2	Diogo Mascarenha	200.00
3	Nico Steppat	300.00
4	Juliana	400.00
5	Priscila	500.00
\.


--
-- TOC entry 3777 (class 0 OID 16463)
-- Dependencies: 220
-- Data for Name: itens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.itens (codigo, valor, custo, descricao, desconto, tipo, estoque) FROM stdin;
5	38.50	10.00	tesoura cirúrgica 15 cm	0.00	p	500
1	220.00	160.00	aparelho de pressão	4.00	p	498
4	121.00	65.00	termômetro auricular	0.00	p	495
2	60.64	35.00	atadura	0.00	p	474
3	276.10	180.00	estetoscópio	5.00	p	60
6	605.00	350.00	autoclave 4L analógico	25.00	s	400
7	2178.00	1450.00	centrífuga de bancada com rotor velocidade 0-4000RPM K14-4000	18.00	p	500
8	1028.50	600.00	desumidificador	42.50	p	500
\.


--
-- TOC entry 3821 (class 0 OID 41594)
-- Dependencies: 264
-- Data for Name: itensvenda; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.itensvenda (cod_venda, id_produto, qtde_vendida) FROM stdin;
1	1	3
2	2	5
\.


--
-- TOC entry 3818 (class 0 OID 41513)
-- Dependencies: 261
-- Data for Name: log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.log (id_log, nm_usuario, operacao, data_operacao) FROM stdin;
\.


--
-- TOC entry 3814 (class 0 OID 41439)
-- Dependencies: 257
-- Data for Name: log_cliente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.log_cliente (cod, data, hora, autor, alteracao) FROM stdin;
\.


--
-- TOC entry 3816 (class 0 OID 41463)
-- Dependencies: 259
-- Data for Name: log_historico_salarial; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.log_historico_salarial (id, nm_funcionario, salario_antigo, salario_reajuste, data_reajuste) FROM stdin;
1	José da Silveira	1200.00	1400.00	2023-10-06
\.


--
-- TOC entry 3810 (class 0 OID 41384)
-- Dependencies: 253
-- Data for Name: logex2; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.logex2 (cod, data, autor, alteracao) FROM stdin;
1	2023-10-05	postgres	INSERT
2	2023-10-05	postgres	UPDATE
3	2023-10-05	postgres	DELETE
\.


--
-- TOC entry 3805 (class 0 OID 41344)
-- Dependencies: 248
-- Data for Name: logitens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.logitens (id, status) FROM stdin;
\.


--
-- TOC entry 3803 (class 0 OID 41250)
-- Dependencies: 246
-- Data for Name: notas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.notas (id, nome, nota) FROM stdin;
1	Aluno 1	8.50
2	Aluno 2	7.00
3	Aluno 3	9.20
4	Aluno 4	6.80
5	Aluno 5	8.00
\.


--
-- TOC entry 3800 (class 0 OID 41202)
-- Dependencies: 243
-- Data for Name: numero; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.numero (count) FROM stdin;
3
\.


--
-- TOC entry 3780 (class 0 OID 16487)
-- Dependencies: 223
-- Data for Name: ordens_itens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ordens_itens (sequencial, numero, codigo, desconto, quantidade, valor, valor_total) FROM stdin;
1	2	3	\N	2	600.00	600.00
2	3	2	\N	3	2400.00	2400.00
3	1	1	\N	1	300.00	300.00
4	4	6	\N	4	800.00	800.00
5	8	5	\N	5	1500.00	1500.00
6	7	4	\N	2	2400.00	2400.00
7	5	8	\N	3	90.00	90.00
8	6	7	\N	2	300.00	300.00
\.


--
-- TOC entry 3774 (class 0 OID 16417)
-- Dependencies: 217
-- Data for Name: ordens_servico; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ordens_servico (numero, data, valor_total, status, codfunc, codcliente) FROM stdin;
2	2020-09-15	2500.00	f	206	100
3	2020-10-20	1200.00	f	202	105
4	2020-01-23	3000.00	f	201	104
5	2020-03-02	2700.00	a	204	101
6	2020-05-16	5000.00	f	200	100
7	2020-08-13	7000.00	f	204	103
8	2020-10-05	3200.00	a	206	102
10	2023-04-01	5000.00	f	200	100
11	2023-03-12	5000.00	f	200	100
9	2023-05-16	2500.00	f	200	100
1	2020-05-22	1000.00	a	200	101
\.


--
-- TOC entry 3788 (class 0 OID 41015)
-- Dependencies: 231
-- Data for Name: pessoas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pessoas (cod, nome, data_nasc) FROM stdin;
1	Ana	2000-12-02
2	Cláudia	2000-12-02
3	Patrícia	2000-12-02
4	Maria	2000-12-02
5	Paula	2000-12-02
6	Paulo	2000-12-02
7	Jorge	2000-12-02
8	Gilberto	2000-12-02
9	Carlos	2000-12-02
10	z	2000-12-02
11	z	2000-12-02
12	z	2000-12-02
13	z	2000-12-02
14	z	2000-12-02
15	z	2000-12-02
16	z	2000-12-02
17	z	2000-12-02
18	z	2000-12-02
19	z	2000-12-02
20	z	2000-12-02
21	z	2000-12-02
22	z	2000-12-02
23	z	2000-12-02
24	z	2000-12-02
25	z	2000-12-02
26	z	2000-12-02
27	z	2000-12-02
28	z	2000-12-02
29	z	2000-12-02
30	z	2000-12-02
31	z	2000-12-02
32	z	2000-12-02
33	z	2000-12-02
34	z	2000-12-02
35	z	2000-12-02
36	z	2000-12-02
37	z	2000-12-02
38	z	2000-12-02
39	z	2000-12-02
40	z	2000-12-02
41	z	2000-12-02
42	z	2000-12-02
43	z	2000-12-02
44	z	2000-12-02
45	z	2000-12-02
46	z	2000-12-02
47	z	2000-12-02
48	z	2000-12-02
49	z	2000-12-02
50	z	2000-12-02
51	z	1995-12-02
52	z	1995-12-02
53	z	1995-12-02
54	z	1995-12-02
55	z	1995-12-02
56	z	1995-12-02
57	z	1995-12-02
58	z	1995-12-02
59	z	1995-12-02
60	z	1995-12-02
61	z	1995-12-02
62	z	1995-12-02
63	z	1995-12-02
64	z	1995-12-02
65	z	1995-12-02
66	z	1995-12-02
67	z	1995-12-02
68	z	1995-12-02
69	z	1995-12-02
70	z	1995-12-02
71	z	1995-12-02
72	z	1995-12-02
73	z	1995-12-02
74	z	1995-12-02
75	z	1995-12-02
76	z	1995-12-02
77	z	1995-12-02
78	z	1995-12-02
79	z	1995-12-02
80	z	1995-12-02
81	z	1995-12-02
82	z	1995-12-02
83	z	1995-12-02
84	z	1995-12-02
85	z	1995-12-02
86	z	1995-12-02
87	z	1995-12-02
88	z	1995-12-02
89	z	1995-12-02
90	z	1995-12-02
91	z	1995-12-02
92	z	1995-12-02
93	z	1995-12-02
94	z	1995-12-02
95	z	1995-12-02
96	z	1995-12-02
97	z	1995-12-02
98	z	1995-12-02
99	z	1995-12-02
100	z	1995-12-02
101	z	2003-12-02
102	z	2003-12-02
103	z	2003-12-02
104	z	2003-12-02
105	z	2003-12-02
106	z	2003-12-02
107	z	2003-12-02
108	z	2003-12-02
109	z	2003-12-02
110	z	2003-12-02
111	z	2003-12-02
112	z	2003-12-02
113	z	2003-12-02
114	z	2003-12-02
115	z	2003-12-02
116	w	2003-12-02
117	w	2003-12-02
118	w	2003-12-02
119	w	2003-12-02
120	w	2003-12-02
121	w	2003-12-02
122	w	2003-12-02
123	w	2003-12-02
124	w	2003-12-02
125	w	2003-12-02
126	w	2003-12-02
127	w	2003-12-02
128	w	2003-12-02
129	w	2003-12-02
130	w	2003-12-02
131	w	2003-12-02
132	w	2003-12-02
133	w	2003-12-02
134	w	2003-12-02
135	w	2003-12-02
136	w	2003-12-02
137	w	2003-12-02
138	w	2003-12-02
139	w	2003-12-02
140	w	2003-12-02
141	w	2003-12-02
142	w	2003-12-02
143	w	2003-12-02
144	w	2003-12-02
145	w	2003-12-02
146	w	2003-12-02
147	w	2003-12-02
148	w	2003-12-02
149	w	2003-12-02
150	w	2003-12-02
151	w	2003-12-02
152	w	2003-12-02
153	w	2003-12-02
154	w	2003-12-02
155	w	2003-12-02
156	w	2003-12-02
157	w	2003-12-02
158	w	2003-12-02
159	w	2003-12-02
160	w	2003-12-02
161	w	2003-12-02
162	w	2003-12-02
163	w	2003-12-02
164	w	2003-12-02
165	w	2003-12-02
166	w	2003-12-02
167	m	2003-12-02
168	m	2003-12-02
169	m	2003-12-02
170	m	2003-12-02
171	m	2003-12-02
172	m	2003-12-02
173	m	2003-12-02
174	m	2003-12-02
175	m	2003-12-02
176	m	2003-12-02
177	m	2003-12-02
178	m	2003-12-02
179	m	2003-12-02
180	m	2003-12-02
181	m	2003-12-02
182	m	2003-12-02
183	m	2003-12-02
184	m	2003-12-02
185	m	2003-12-02
186	m	2003-12-02
187	m	2003-12-02
188	m	2003-12-02
189	m	2003-12-02
190	m	2003-12-02
191	m	2003-12-02
192	m	2003-12-02
193	m	2003-12-02
194	m	2003-12-02
195	m	2003-12-02
196	m	2003-12-02
197	m	2003-12-02
198	m	2003-12-02
199	m	2003-12-02
200	m	2003-12-02
201	m	2008-12-02
202	m	2008-12-02
203	m	2008-12-02
204	m	2008-12-02
205	m	2008-12-02
206	m	2008-12-02
207	m	2008-12-02
208	m	2008-12-02
209	m	2008-12-02
210	m	2008-12-02
211	m	2008-12-02
212	m	2008-12-02
213	m	2008-12-02
214	m	2008-12-02
215	m	2008-12-02
216	m	2008-12-02
217	m	2008-12-02
218	m	2008-12-02
219	m	2008-12-02
220	m	2008-12-02
221	m	2008-12-02
222	m	2008-12-02
223	m	2008-12-02
224	m	2008-12-02
225	m	2008-12-02
226	m	2008-12-02
227	m	2008-12-02
228	m	2008-12-02
229	m	2008-12-02
230	m	2008-12-02
231	m	2008-12-02
232	m	2008-12-02
233	m	2008-12-02
234	m	2008-12-02
235	m	2008-12-02
236	m	2008-12-02
237	m	2008-12-02
238	m	2008-12-02
239	m	2008-12-02
240	m	2008-12-02
241	m	2008-12-02
242	m	2008-12-02
243	m	2008-12-02
244	m	2008-12-02
245	m	2008-12-02
246	m	2008-12-02
247	m	2008-12-02
248	m	2008-12-02
249	m	2008-12-02
250	m	2008-12-02
251	m	2008-12-02
252	m	2008-12-02
253	m	2008-12-02
254	m	2008-12-02
255	n	2008-12-02
256	n	2008-12-02
257	n	2008-12-02
258	n	2008-12-02
259	n	2008-12-02
260	n	2008-12-02
261	n	2008-12-02
262	n	2008-12-02
263	n	2008-12-02
264	n	2008-12-02
265	n	2008-12-02
266	n	2008-12-02
267	n	2008-12-02
268	n	2008-12-02
269	n	2008-12-02
270	n	2008-12-02
271	n	2008-12-02
272	n	2008-12-02
273	n	2008-12-02
274	n	2008-12-02
275	n	2008-12-02
276	n	2008-12-02
277	n	2008-12-02
278	n	2008-12-02
279	n	2008-12-02
280	n	2008-12-02
281	n	2008-12-02
282	n	2008-12-02
283	n	2008-12-02
284	n	2008-12-02
285	n	2008-12-02
286	n	2008-12-02
287	n	2008-12-02
288	n	2008-12-02
289	n	2008-12-02
290	n	2008-12-02
291	n	2008-12-02
292	n	2008-12-02
293	n	2008-12-02
294	n	2008-12-02
295	n	2008-12-02
296	n	2008-12-02
297	n	2008-12-02
298	n	2008-12-02
299	n	2008-12-02
300	n	2008-12-02
301	n	1960-12-02
302	n	1960-12-02
303	n	1960-12-02
304	n	1960-12-02
305	n	1960-12-02
306	n	1960-12-02
307	n	1960-12-02
308	n	1960-12-02
309	n	1960-12-02
310	n	1960-12-02
311	n	1960-12-02
312	n	1960-12-02
313	n	1960-12-02
314	n	1960-12-02
315	n	1960-12-02
316	n	1960-12-02
317	n	1960-12-02
318	n	1960-12-02
319	n	1960-12-02
320	n	1960-12-02
321	n	1960-12-02
322	n	1960-12-02
323	n	1960-12-02
324	n	1960-12-02
325	n	1960-12-02
326	n	1960-12-02
327	n	1960-12-02
328	n	1960-12-02
329	n	1960-12-02
330	n	1960-12-02
331	n	1960-12-02
332	n	1960-12-02
333	n	1960-12-02
334	n	1960-12-02
335	n	1960-12-02
336	n	1960-12-02
337	n	1960-12-02
338	n	1960-12-02
339	n	1960-12-02
340	n	1960-12-02
341	n	1960-12-02
342	n	1960-12-02
343	n	1960-12-02
344	n	1960-12-02
345	n	1960-12-02
346	n	1960-12-02
347	n	1960-12-02
348	n	1960-12-02
349	n	1960-12-02
350	n	1960-12-02
351	n	1960-12-02
352	n	1960-12-02
353	n	1960-12-02
354	n	1960-12-02
355	n	1960-12-02
356	o	1960-12-02
357	o	1960-12-02
358	o	1960-12-02
359	o	1960-12-02
360	o	1960-12-02
361	o	1960-12-02
362	o	1960-12-02
363	o	1960-12-02
364	o	1960-12-02
365	o	1960-12-02
366	o	1960-12-02
367	o	1960-12-02
368	o	1960-12-02
369	o	1960-12-02
370	o	1960-12-02
371	o	1960-12-02
372	o	1960-12-02
373	o	1960-12-02
374	o	1960-12-02
375	o	1960-12-02
376	o	1960-12-02
377	o	1960-12-02
378	o	1960-12-02
379	o	1960-12-02
380	o	1960-12-02
381	o	1960-12-02
382	o	1960-12-02
383	o	1960-12-02
384	o	1960-12-02
385	o	1960-12-02
386	o	1960-12-02
387	o	1960-12-02
388	o	1960-12-02
389	o	1960-12-02
390	o	1960-12-02
391	o	1960-12-02
392	o	1960-12-02
393	o	1960-12-02
394	o	1960-12-02
395	o	1960-12-02
396	o	1960-12-02
397	o	1960-12-02
398	o	1960-12-02
399	o	1960-12-02
400	o	1960-12-02
401	o	1975-12-02
402	o	1975-12-02
403	o	1975-12-02
404	o	1975-12-02
405	o	1975-12-02
406	o	1975-12-02
407	o	1975-12-02
408	o	1975-12-02
409	o	1975-12-02
410	o	1975-12-02
411	o	1975-12-02
412	o	1975-12-02
413	o	1975-12-02
414	o	1975-12-02
415	o	1975-12-02
416	o	1975-12-02
417	o	1975-12-02
418	o	1975-12-02
419	o	1975-12-02
420	o	1975-12-02
421	o	1975-12-02
422	o	1975-12-02
423	o	1975-12-02
424	o	1975-12-02
425	o	1975-12-02
426	o	1975-12-02
427	o	1975-12-02
428	o	1975-12-02
429	o	1975-12-02
430	o	1975-12-02
431	o	1975-12-02
432	o	1975-12-02
433	o	1975-12-02
434	o	1975-12-02
435	o	1975-12-02
436	o	1975-12-02
437	o	1975-12-02
438	o	1975-12-02
439	o	1975-12-02
440	o	1975-12-02
441	o	1975-12-02
442	o	1975-12-02
443	o	1975-12-02
444	o	1975-12-02
445	o	1975-12-02
446	o	1975-12-02
447	o	1975-12-02
448	o	1975-12-02
449	o	1975-12-02
450	o	1975-12-02
451	o	1975-12-02
452	o	1975-12-02
453	o	1975-12-02
454	o	1975-12-02
455	o	1975-12-02
456	o	1975-12-02
457	o	1975-12-02
458	o	1975-12-02
459	o	1975-12-02
460	o	1975-12-02
461	o	1975-12-02
462	o	1975-12-02
463	o	1975-12-02
464	o	1975-12-02
465	o	1975-12-02
466	o	1975-12-02
467	o	1975-12-02
468	o	1975-12-02
469	o	1975-12-02
470	o	1975-12-02
471	o	1975-12-02
472	o	1975-12-02
473	o	1975-12-02
474	o	1975-12-02
475	o	1975-12-02
476	o	1975-12-02
477	o	1975-12-02
478	o	1975-12-02
479	o	1975-12-02
480	o	1975-12-02
481	o	1975-12-02
482	o	1975-12-02
483	o	1975-12-02
484	o	1975-12-02
485	o	1975-12-02
486	o	1975-12-02
487	o	1975-12-02
488	o	1975-12-02
489	o	1975-12-02
490	o	1975-12-02
491	o	1975-12-02
492	o	1975-12-02
493	q	1975-12-02
494	q	1975-12-02
495	q	1975-12-02
496	q	1975-12-02
497	q	1975-12-02
498	q	1975-12-02
499	q	1975-12-02
500	q	1975-12-02
501	q	1985-12-02
502	q	1985-12-02
503	q	1985-12-02
504	q	1985-12-02
505	q	1985-12-02
506	q	1985-12-02
507	q	1985-12-02
508	q	1985-12-02
509	q	1985-12-02
510	q	1985-12-02
511	q	1985-12-02
512	q	1985-12-02
513	q	1985-12-02
514	q	1985-12-02
515	q	1985-12-02
516	q	1985-12-02
517	q	1985-12-02
518	q	1985-12-02
519	q	1985-12-02
520	q	1985-12-02
521	q	1985-12-02
522	q	1985-12-02
523	q	1985-12-02
524	q	1985-12-02
525	q	1985-12-02
526	q	1985-12-02
527	q	1985-12-02
528	q	1985-12-02
529	q	1985-12-02
530	q	1985-12-02
531	q	1985-12-02
532	q	1985-12-02
533	q	1985-12-02
534	q	1985-12-02
535	q	1985-12-02
536	q	1985-12-02
537	q	1985-12-02
538	q	1985-12-02
539	q	1985-12-02
540	q	1985-12-02
541	q	1985-12-02
542	q	1985-12-02
543	q	1985-12-02
544	q	1985-12-02
545	q	1985-12-02
546	q	1985-12-02
547	q	1985-12-02
548	q	1985-12-02
549	q	1985-12-02
550	q	1985-12-02
551	q	1985-12-02
552	q	1985-12-02
553	q	1985-12-02
554	q	1985-12-02
555	q	1985-12-02
556	q	1985-12-02
557	q	1985-12-02
558	q	1985-12-02
559	q	1985-12-02
560	q	1985-12-02
561	q	1985-12-02
562	q	1985-12-02
563	q	1985-12-02
564	q	1985-12-02
565	q	1985-12-02
566	q	1985-12-02
567	q	1985-12-02
568	q	1985-12-02
569	q	1985-12-02
570	q	1985-12-02
571	q	1985-12-02
572	q	1985-12-02
573	q	1985-12-02
574	q	1985-12-02
575	q	1985-12-02
576	q	1985-12-02
577	q	1985-12-02
578	q	1985-12-02
579	q	1985-12-02
580	q	1985-12-02
581	q	1985-12-02
582	q	1985-12-02
583	q	1985-12-02
584	q	1985-12-02
585	q	1985-12-02
586	q	1985-12-02
587	q	1985-12-02
588	q	1985-12-02
589	q	1985-12-02
590	q	1985-12-02
591	q	1985-12-02
592	q	1985-12-02
593	q	1985-12-02
594	q	1985-12-02
595	q	1985-12-02
596	q	1985-12-02
597	q	1985-12-02
598	q	1985-12-02
599	q	1985-12-02
600	q	1985-12-02
601	q	1990-12-02
602	q	1990-12-02
603	q	1990-12-02
604	q	1990-12-02
605	q	1990-12-02
606	r	1990-12-02
607	r	1990-12-02
608	r	1990-12-02
609	r	1990-12-02
610	r	1990-12-02
611	r	1990-12-02
612	r	1990-12-02
613	r	1990-12-02
614	r	1990-12-02
615	r	1990-12-02
616	r	1990-12-02
617	r	1990-12-02
618	r	1990-12-02
619	r	1990-12-02
620	r	1990-12-02
621	r	1990-12-02
622	r	1990-12-02
623	r	1990-12-02
624	r	1990-12-02
625	r	1990-12-02
626	r	1990-12-02
627	r	1990-12-02
628	r	1990-12-02
629	r	1990-12-02
630	r	1990-12-02
631	r	1990-12-02
632	r	1990-12-02
633	r	1990-12-02
634	r	1990-12-02
635	r	1990-12-02
636	r	1990-12-02
637	r	1990-12-02
638	r	1990-12-02
639	r	1990-12-02
640	r	1990-12-02
641	r	1990-12-02
642	r	1990-12-02
643	r	1990-12-02
644	r	1990-12-02
645	r	1990-12-02
646	r	1990-12-02
647	r	1990-12-02
648	r	1990-12-02
649	r	1990-12-02
650	r	1990-12-02
651	r	1990-12-02
652	r	1990-12-02
653	r	1990-12-02
654	r	1990-12-02
655	r	1990-12-02
656	r	1990-12-02
657	r	1990-12-02
658	r	1990-12-02
659	r	1990-12-02
660	r	1990-12-02
661	r	1990-12-02
662	r	1990-12-02
663	r	1990-12-02
664	r	1990-12-02
665	r	1990-12-02
666	r	1990-12-02
667	r	1990-12-02
668	r	1990-12-02
669	r	1990-12-02
670	r	1990-12-02
671	r	1990-12-02
672	r	1990-12-02
673	r	1990-12-02
674	r	1990-12-02
675	r	1990-12-02
676	r	1990-12-02
677	r	1990-12-02
678	r	1990-12-02
679	r	1990-12-02
680	r	1990-12-02
681	r	1990-12-02
682	r	1990-12-02
683	r	1990-12-02
684	r	1990-12-02
685	r	1990-12-02
686	r	1990-12-02
687	r	1990-12-02
688	r	1990-12-02
689	r	1990-12-02
690	r	1990-12-02
691	r	1990-12-02
692	r	1990-12-02
693	r	1990-12-02
694	r	1990-12-02
695	r	1990-12-02
696	r	1990-12-02
697	r	1990-12-02
698	r	1990-12-02
699	r	1990-12-02
700	r	2010-12-02
701	r	2010-12-02
702	r	2010-12-02
703	r	2010-12-02
704	r	2010-12-02
705	r	2010-12-02
706	r	2010-12-02
707	r	2010-12-02
708	r	2010-12-02
709	r	2010-12-02
710	r	2010-12-02
711	r	2010-12-02
712	r	2010-12-02
713	r	2010-12-02
714	r	2010-12-02
715	r	2010-12-02
716	r	2010-12-02
717	r	2010-12-02
718	r	2010-12-02
719	r	2010-12-02
720	r	2010-12-02
721	r	2010-12-02
722	r	2010-12-02
723	r	2010-12-02
724	r	2010-12-02
725	r	2010-12-02
726	r	2010-12-02
727	r	2010-12-02
728	r	2010-12-02
729	r	2010-12-02
730	r	2010-12-02
731	r	2010-12-02
732	r	2010-12-02
733	r	2010-12-02
734	r	2010-12-02
735	r	2010-12-02
736	r	2010-12-02
737	r	2010-12-02
738	r	2010-12-02
739	r	2010-12-02
740	r	2010-12-02
741	r	2010-12-02
742	r	2010-12-02
743	r	2010-12-02
744	r	2010-12-02
745	r	2010-12-02
746	r	2010-12-02
747	r	2010-12-02
748	r	2010-12-02
749	r	2010-12-02
750	r	2010-12-02
751	r	2010-12-02
752	r	2010-12-02
753	r	2010-12-02
754	r	2010-12-02
755	r	2010-12-02
756	r	2010-12-02
757	r	2010-12-02
758	r	2010-12-02
759	r	2010-12-02
760	r	2010-12-02
761	r	2010-12-02
762	r	2010-12-02
763	r	2010-12-02
764	r	2010-12-02
765	r	2010-12-02
766	r	2010-12-02
767	r	2010-12-02
768	r	2010-12-02
769	r	2010-12-02
770	r	2010-12-02
771	r	2010-12-02
772	r	2010-12-02
773	r	2010-12-02
774	r	2010-12-02
775	r	2010-12-02
776	r	2010-12-02
777	r	2010-12-02
778	r	2010-12-02
779	r	2010-12-02
780	r	2010-12-02
781	r	2010-12-02
782	r	2010-12-02
783	r	2010-12-02
784	r	2010-12-02
785	r	2010-12-02
786	r	2010-12-02
787	r	2010-12-02
788	r	2010-12-02
789	r	2010-12-02
790	r	2010-12-02
791	r	2010-12-02
792	r	2010-12-02
793	r	2010-12-02
794	r	2010-12-02
795	r	2010-12-02
796	r	2010-12-02
797	r	2010-12-02
798	r	2010-12-02
799	r	2010-12-02
800	r	2010-12-02
801	r	2010-12-02
802	r	2010-12-02
803	r	2010-12-02
804	r	2010-12-02
805	r	2010-12-02
806	r	2010-12-02
807	r	2010-12-02
808	r	2010-12-02
809	r	2010-12-02
810	r	2010-12-02
811	r	2010-12-02
812	r	2010-12-02
813	r	2010-12-02
814	r	2010-12-02
815	r	2010-12-02
816	r	2010-12-02
817	r	2010-12-02
818	r	2010-12-02
\.


--
-- TOC entry 3807 (class 0 OID 41353)
-- Dependencies: 250
-- Data for Name: precos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.precos (id, valor) FROM stdin;
3	250.00
4	110.00
6	500.00
7	1800.00
8	850.00
2	52.50
1	200.00
\.


--
-- TOC entry 3808 (class 0 OID 41368)
-- Dependencies: 251
-- Data for Name: produto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.produto (cd, descricao, quantidade) FROM stdin;
1	FEIJAO	-100
2	Arroz	10
3	Batata	-1
4	alface	10
5	alface	-100
\.


--
-- TOC entry 3820 (class 0 OID 41580)
-- Dependencies: 263
-- Data for Name: produto1; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.produto1 (cod_prod, descricao, qtde_disponivel) FROM stdin;
1	Feijão	10
2	Arroz	5
3	Farinha	15
\.


--
-- TOC entry 3819 (class 0 OID 41571)
-- Dependencies: 262
-- Data for Name: professor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.professor (id, nome, dt_nasc, salario) FROM stdin;
1	maria	1990-10-09	3000
18	Raul Seixas	1978-02-02	12150.34
2	Gil Gomes	1962-01-04	8642.60
3	Renata Costa	1988-02-05	1250.30
4	Renato Gil	1997-01-01	998.00
5	Pedro Silva	2001-03-05	3500
7	Borges Bento	1990-11-11	6700.34
8	Harry Potter	1998-01-04	998
9	Adélia Moura	1986-01-12	12150.34
10	Jimmy Page	2001-03-05	1200
11	Marco Aurélio	2000-03-12	998
12	Helena Silva	1997-02-01	998
14	Mata Rocha	2001-03-12	3570
15	Maria Carla	1997-02-01	1998
16	Renato Feliz	2001-01-07	6789.34
\.


--
-- TOC entry 3801 (class 0 OID 41206)
-- Dependencies: 244
-- Data for Name: relacao_item_fornecedor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relacao_item_fornecedor (coditem, descricao, valoritem, codfornec, descricao_fornec) FROM stdin;
2	atadura	52.50	8	JJ e Cia.
5	tesoura cirúrgica 15 cm	35.00	6	Barroso e Barroso
6	autoclave 4L analógico	500.00	2	Mendes Araújo
\.


--
-- TOC entry 3778 (class 0 OID 16471)
-- Dependencies: 221
-- Data for Name: venda_itens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.venda_itens (sequencial, codvenda, codigo, quantidade, valor) FROM stdin;
1	3	1	20	4000.00
2	1	3	10	2500.00
3	2	4	5	550.00
4	4	2	3	157.50
5	6	5	100	3500.00
6	5	2	250	13125.00
7	8	7	15	27000.00
8	7	5	20	700.00
9	19	5	3	105.00
10	19	3	1	250.00
12	12	2	4	210.00
21	12	1	4	800.00
13	13	4	1	110.00
14	14	6	1	500.00
15	15	7	1	1800.00
16	16	1	2	400.00
17	16	1	3	600.00
18	17	5	2	70.00
19	17	4	1	110.00
20	18	3	2	500.00
10	11	1	2	400.00
22	20	2	20	1050.00
\.


--
-- TOC entry 3775 (class 0 OID 16433)
-- Dependencies: 218
-- Data for Name: vendas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.vendas (codigo, valor_total_venda, dt_venda, codfunc, codcliente, numero) FROM stdin;
1	750.00	2020-05-11	200	101	1
2	2000.00	2020-09-13	206	100	2
3	1000.00	2020-10-18	202	105	3
4	3000.00	2020-01-12	201	104	4
5	2000.00	2020-03-01	204	101	5
6	5000.00	2020-05-14	205	100	6
7	6700.00	2020-08-11	204	103	7
8	3100.00	2020-12-03	203	102	8
19	750.00	2023-04-10	200	101	\N
20	750.00	2023-04-11	200	102	\N
12	750.00	2023-04-11	206	103	\N
13	750.00	2023-04-02	206	104	\N
14	750.00	2023-04-10	205	101	\N
15	750.00	2023-03-12	205	101	\N
16	750.00	2023-03-14	205	101	\N
17	750.00	2023-03-16	205	101	\N
18	750.00	2023-03-17	201	101	\N
40	1200.00	2023-03-17	205	102	\N
41	630.00	2023-03-17	201	104	\N
11	110.00	2021-04-28	201	105	1
9	100.00	2023-10-18	202	105	9
\.


--
-- TOC entry 3860 (class 0 OID 0)
-- Dependencies: 254
-- Name: alterada_cod_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alterada_cod_seq', 5, true);


--
-- TOC entry 3861 (class 0 OID 0)
-- Dependencies: 235
-- Name: aluno_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.aluno_id_seq', 1, false);


--
-- TOC entry 3862 (class 0 OID 0)
-- Dependencies: 237
-- Name: categoria_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categoria_id_seq', 1, false);


--
-- TOC entry 3863 (class 0 OID 0)
-- Dependencies: 226
-- Name: compras_itens_sequencial_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.compras_itens_sequencial_seq', 1, false);


--
-- TOC entry 3864 (class 0 OID 0)
-- Dependencies: 239
-- Name: curso_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.curso_id_seq', 1, false);


--
-- TOC entry 3865 (class 0 OID 0)
-- Dependencies: 233
-- Name: instrutor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.instrutor_id_seq', 5, true);


--
-- TOC entry 3866 (class 0 OID 0)
-- Dependencies: 256
-- Name: log_cliente_cod_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.log_cliente_cod_seq', 1, false);


--
-- TOC entry 3867 (class 0 OID 0)
-- Dependencies: 258
-- Name: log_historico_salarial_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.log_historico_salarial_id_seq', 1, true);


--
-- TOC entry 3868 (class 0 OID 0)
-- Dependencies: 260
-- Name: log_id_log_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.log_id_log_seq', 1, false);


--
-- TOC entry 3869 (class 0 OID 0)
-- Dependencies: 252
-- Name: logex2_cod_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.logex2_cod_seq', 3, true);


--
-- TOC entry 3870 (class 0 OID 0)
-- Dependencies: 247
-- Name: logitens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.logitens_id_seq', 1, false);


--
-- TOC entry 3871 (class 0 OID 0)
-- Dependencies: 245
-- Name: notas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.notas_id_seq', 5, true);


--
-- TOC entry 3872 (class 0 OID 0)
-- Dependencies: 222
-- Name: ordens_itens_sequencial_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ordens_itens_sequencial_seq', 1, false);


--
-- TOC entry 3873 (class 0 OID 0)
-- Dependencies: 230
-- Name: pessoas_cod_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pessoas_cod_seq', 818, true);


--
-- TOC entry 3874 (class 0 OID 0)
-- Dependencies: 249
-- Name: precos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.precos_id_seq', 1, false);


--
-- TOC entry 3575 (class 2606 OID 41423)
-- Name: alterada alterada_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alterada
    ADD CONSTRAINT alterada_pkey PRIMARY KEY (cod);


--
-- TOC entry 3561 (class 2606 OID 41101)
-- Name: aluno_curso aluno_curso_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aluno_curso
    ADD CONSTRAINT aluno_curso_pkey PRIMARY KEY (aluno_id, curso_id);


--
-- TOC entry 3553 (class 2606 OID 41075)
-- Name: aluno aluno_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aluno
    ADD CONSTRAINT aluno_pkey PRIMARY KEY (id);


--
-- TOC entry 3555 (class 2606 OID 41084)
-- Name: categoria categoria_nome_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categoria
    ADD CONSTRAINT categoria_nome_key UNIQUE (nome);


--
-- TOC entry 3557 (class 2606 OID 41082)
-- Name: categoria categoria_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categoria
    ADD CONSTRAINT categoria_pkey PRIMARY KEY (id);


--
-- TOC entry 3517 (class 2606 OID 16398)
-- Name: clientes clientes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_pkey PRIMARY KEY (codcliente);


--
-- TOC entry 3543 (class 2606 OID 16526)
-- Name: compras_itens compras_itens_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.compras_itens
    ADD CONSTRAINT compras_itens_pkey PRIMARY KEY (sequencial);


--
-- TOC entry 3541 (class 2606 OID 16514)
-- Name: compras compras_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.compras
    ADD CONSTRAINT compras_pkey PRIMARY KEY (codigo);


--
-- TOC entry 3545 (class 2606 OID 16542)
-- Name: contas_pagar contas_pagar_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contas_pagar
    ADD CONSTRAINT contas_pagar_pkey PRIMARY KEY (numero);


--
-- TOC entry 3529 (class 2606 OID 16457)
-- Name: contas_receber contas_receber_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contas_receber
    ADD CONSTRAINT contas_receber_pkey PRIMARY KEY (cod);


--
-- TOC entry 3559 (class 2606 OID 41091)
-- Name: curso curso_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.curso
    ADD CONSTRAINT curso_pkey PRIMARY KEY (id);


--
-- TOC entry 3547 (class 2606 OID 16552)
-- Name: despesas despesas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.despesas
    ADD CONSTRAINT despesas_pkey PRIMARY KEY (codigo);


--
-- TOC entry 3519 (class 2606 OID 16403)
-- Name: fones_clientes fones_clientes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fones_clientes
    ADD CONSTRAINT fones_clientes_pkey PRIMARY KEY (cliente, num_telefone);


--
-- TOC entry 3537 (class 2606 OID 16509)
-- Name: fornecedores fornecedores_cnpj_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fornecedores
    ADD CONSTRAINT fornecedores_cnpj_key UNIQUE (cnpj);


--
-- TOC entry 3539 (class 2606 OID 16507)
-- Name: fornecedores fornecedores_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fornecedores
    ADD CONSTRAINT fornecedores_pkey PRIMARY KEY (codigo);


--
-- TOC entry 3521 (class 2606 OID 16416)
-- Name: funcionarios funcionarios_cpf_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.funcionarios
    ADD CONSTRAINT funcionarios_cpf_key UNIQUE (cpf);


--
-- TOC entry 3523 (class 2606 OID 16414)
-- Name: funcionarios funcionarios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.funcionarios
    ADD CONSTRAINT funcionarios_pkey PRIMARY KEY (codfunc);


--
-- TOC entry 3551 (class 2606 OID 41045)
-- Name: instrutor instrutor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.instrutor
    ADD CONSTRAINT instrutor_pkey PRIMARY KEY (id);


--
-- TOC entry 3531 (class 2606 OID 16470)
-- Name: itens itens_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.itens
    ADD CONSTRAINT itens_pkey PRIMARY KEY (codigo);


--
-- TOC entry 3577 (class 2606 OID 41445)
-- Name: log_cliente log_cliente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.log_cliente
    ADD CONSTRAINT log_cliente_pkey PRIMARY KEY (cod);


--
-- TOC entry 3579 (class 2606 OID 41470)
-- Name: log_historico_salarial log_historico_salarial_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.log_historico_salarial
    ADD CONSTRAINT log_historico_salarial_pkey PRIMARY KEY (id);


--
-- TOC entry 3581 (class 2606 OID 41520)
-- Name: log log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.log
    ADD CONSTRAINT log_pkey PRIMARY KEY (id_log);


--
-- TOC entry 3573 (class 2606 OID 41389)
-- Name: logex2 logex2_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logex2
    ADD CONSTRAINT logex2_pkey PRIMARY KEY (cod);


--
-- TOC entry 3567 (class 2606 OID 41349)
-- Name: logitens logitens_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logitens
    ADD CONSTRAINT logitens_pkey PRIMARY KEY (id);


--
-- TOC entry 3565 (class 2606 OID 41255)
-- Name: notas notas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notas
    ADD CONSTRAINT notas_pkey PRIMARY KEY (id);


--
-- TOC entry 3535 (class 2606 OID 16492)
-- Name: ordens_itens ordens_itens_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ordens_itens
    ADD CONSTRAINT ordens_itens_pkey PRIMARY KEY (sequencial);


--
-- TOC entry 3525 (class 2606 OID 16422)
-- Name: ordens_servico ordens_servico_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ordens_servico
    ADD CONSTRAINT ordens_servico_pkey PRIMARY KEY (numero);


--
-- TOC entry 3549 (class 2606 OID 41020)
-- Name: pessoas pessoas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pessoas
    ADD CONSTRAINT pessoas_pkey PRIMARY KEY (cod);


--
-- TOC entry 3569 (class 2606 OID 41360)
-- Name: precos precos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.precos
    ADD CONSTRAINT precos_pkey PRIMARY KEY (id);


--
-- TOC entry 3585 (class 2606 OID 41587)
-- Name: produto1 produto1_descricao_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produto1
    ADD CONSTRAINT produto1_descricao_key UNIQUE (descricao);


--
-- TOC entry 3587 (class 2606 OID 41585)
-- Name: produto1 produto1_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produto1
    ADD CONSTRAINT produto1_pkey PRIMARY KEY (cod_prod);


--
-- TOC entry 3571 (class 2606 OID 41372)
-- Name: produto produto_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produto
    ADD CONSTRAINT produto_pkey PRIMARY KEY (cd);


--
-- TOC entry 3583 (class 2606 OID 41577)
-- Name: professor professor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.professor
    ADD CONSTRAINT professor_pkey PRIMARY KEY (id);


--
-- TOC entry 3563 (class 2606 OID 41212)
-- Name: relacao_item_fornecedor relacao_item_fornecedor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relacao_item_fornecedor
    ADD CONSTRAINT relacao_item_fornecedor_pkey PRIMARY KEY (coditem);


--
-- TOC entry 3533 (class 2606 OID 16475)
-- Name: venda_itens venda_itens_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.venda_itens
    ADD CONSTRAINT venda_itens_pkey PRIMARY KEY (sequencial, codvenda);


--
-- TOC entry 3527 (class 2606 OID 16437)
-- Name: vendas vendas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vendas
    ADD CONSTRAINT vendas_pkey PRIMARY KEY (codigo);


--
-- TOC entry 3614 (class 2620 OID 41244)
-- Name: venda_itens atualiza_qtd_estoque; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER atualiza_qtd_estoque BEFORE INSERT ON public.venda_itens FOR EACH ROW EXECUTE FUNCTION public.atualiza_qtd_estoque();


--
-- TOC entry 3612 (class 2620 OID 41242)
-- Name: vendas exclui_itens_da_venda; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER exclui_itens_da_venda BEFORE DELETE ON public.vendas FOR EACH ROW EXECUTE FUNCTION public.exclui_itens_venda();


--
-- TOC entry 3616 (class 2620 OID 41437)
-- Name: alterada gera_log; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER gera_log AFTER INSERT OR DELETE OR UPDATE ON public.alterada FOR EACH STATEMENT EXECUTE FUNCTION public.gera_log();


--
-- TOC entry 3611 (class 2620 OID 41472)
-- Name: funcionarios historico_salarial; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER historico_salarial AFTER UPDATE ON public.funcionarios FOR EACH ROW WHEN ((old.salario <> new.salario)) EXECUTE FUNCTION public.historico_salarial();


--
-- TOC entry 3609 (class 2620 OID 41460)
-- Name: clientes insere_sr_nome_clientes; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER insere_sr_nome_clientes AFTER INSERT ON public.clientes FOR EACH ROW EXECUTE FUNCTION public.insere_sr_nome_clientes();


--
-- TOC entry 3617 (class 2620 OID 41447)
-- Name: alterada log_cliente; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER log_cliente AFTER INSERT OR DELETE OR UPDATE ON public.alterada FOR EACH STATEMENT EXECUTE FUNCTION public.log_cliente();


--
-- TOC entry 3613 (class 2620 OID 41393)
-- Name: itens qtd_estoque_negativa; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER qtd_estoque_negativa BEFORE INSERT OR UPDATE ON public.itens FOR EACH ROW EXECUTE FUNCTION public.qtd_estoque_negativa();


--
-- TOC entry 3610 (class 2620 OID 41461)
-- Name: clientes testa_cpf_nulo; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER testa_cpf_nulo BEFORE INSERT OR UPDATE ON public.clientes FOR EACH ROW EXECUTE FUNCTION public.testa_cpf_nulo();


--
-- TOC entry 3615 (class 2620 OID 41374)
-- Name: produto trigproduto; Type: TRIGGER; Schema: public; Owner: postgres
--

CREATE TRIGGER trigproduto BEFORE INSERT OR UPDATE ON public.produto FOR EACH ROW EXECUTE FUNCTION public.vquant();


--
-- TOC entry 3606 (class 2606 OID 41102)
-- Name: aluno_curso aluno_curso_aluno_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aluno_curso
    ADD CONSTRAINT aluno_curso_aluno_id_fkey FOREIGN KEY (aluno_id) REFERENCES public.aluno(id);


--
-- TOC entry 3607 (class 2606 OID 41107)
-- Name: aluno_curso aluno_curso_curso_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aluno_curso
    ADD CONSTRAINT aluno_curso_curso_id_fkey FOREIGN KEY (curso_id) REFERENCES public.curso(id);


--
-- TOC entry 3600 (class 2606 OID 16515)
-- Name: compras compras_codfornecedor_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.compras
    ADD CONSTRAINT compras_codfornecedor_fkey FOREIGN KEY (codfornecedor) REFERENCES public.fornecedores(codigo);


--
-- TOC entry 3601 (class 2606 OID 16527)
-- Name: compras_itens compras_itens_codcompra_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.compras_itens
    ADD CONSTRAINT compras_itens_codcompra_fkey FOREIGN KEY (codcompra) REFERENCES public.compras(codigo);


--
-- TOC entry 3602 (class 2606 OID 16532)
-- Name: compras_itens compras_itens_coditem_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.compras_itens
    ADD CONSTRAINT compras_itens_coditem_fkey FOREIGN KEY (coditem) REFERENCES public.itens(codigo);


--
-- TOC entry 3603 (class 2606 OID 16543)
-- Name: contas_pagar contas_pagar_compra_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contas_pagar
    ADD CONSTRAINT contas_pagar_compra_fkey FOREIGN KEY (compra) REFERENCES public.compras(codigo);


--
-- TOC entry 3595 (class 2606 OID 16458)
-- Name: contas_receber contas_receber_codigo_vendas_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contas_receber
    ADD CONSTRAINT contas_receber_codigo_vendas_fkey FOREIGN KEY (codigo_vendas) REFERENCES public.vendas(codigo);


--
-- TOC entry 3605 (class 2606 OID 41092)
-- Name: curso curso_categoria_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.curso
    ADD CONSTRAINT curso_categoria_id_fkey FOREIGN KEY (categoria_id) REFERENCES public.categoria(id);


--
-- TOC entry 3604 (class 2606 OID 16553)
-- Name: contas_pagar despesas_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contas_pagar
    ADD CONSTRAINT despesas_fkey FOREIGN KEY (despesas) REFERENCES public.despesas(codigo);


--
-- TOC entry 3589 (class 2606 OID 24577)
-- Name: funcionarios fk_func_chefe; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.funcionarios
    ADD CONSTRAINT fk_func_chefe FOREIGN KEY (codchefe) REFERENCES public.funcionarios(codfunc);


--
-- TOC entry 3588 (class 2606 OID 16404)
-- Name: fones_clientes fones_clientes_cliente_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fones_clientes
    ADD CONSTRAINT fones_clientes_cliente_fkey FOREIGN KEY (cliente) REFERENCES public.clientes(codcliente);


--
-- TOC entry 3608 (class 2606 OID 41597)
-- Name: itensvenda itensvenda_cod_venda_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.itensvenda
    ADD CONSTRAINT itensvenda_cod_venda_fkey FOREIGN KEY (cod_venda) REFERENCES public.produto1(cod_prod) ON DELETE CASCADE;


--
-- TOC entry 3598 (class 2606 OID 16498)
-- Name: ordens_itens ordens_itens_codigo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ordens_itens
    ADD CONSTRAINT ordens_itens_codigo_fkey FOREIGN KEY (codigo) REFERENCES public.itens(codigo);


--
-- TOC entry 3599 (class 2606 OID 16493)
-- Name: ordens_itens ordens_itens_numero_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ordens_itens
    ADD CONSTRAINT ordens_itens_numero_fkey FOREIGN KEY (numero) REFERENCES public.ordens_servico(numero);


--
-- TOC entry 3590 (class 2606 OID 16428)
-- Name: ordens_servico ordens_servico_codcliente_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ordens_servico
    ADD CONSTRAINT ordens_servico_codcliente_fkey FOREIGN KEY (codcliente) REFERENCES public.clientes(codcliente);


--
-- TOC entry 3591 (class 2606 OID 16423)
-- Name: ordens_servico ordens_servico_codfunc_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ordens_servico
    ADD CONSTRAINT ordens_servico_codfunc_fkey FOREIGN KEY (codfunc) REFERENCES public.funcionarios(codfunc);


--
-- TOC entry 3596 (class 2606 OID 16481)
-- Name: venda_itens venda_itens_codigo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.venda_itens
    ADD CONSTRAINT venda_itens_codigo_fkey FOREIGN KEY (codigo) REFERENCES public.itens(codigo);


--
-- TOC entry 3597 (class 2606 OID 41237)
-- Name: venda_itens venda_itens_codvenda_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.venda_itens
    ADD CONSTRAINT venda_itens_codvenda_fkey FOREIGN KEY (codvenda) REFERENCES public.vendas(codigo) ON DELETE CASCADE;


--
-- TOC entry 3592 (class 2606 OID 16443)
-- Name: vendas vendas_codcliente_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vendas
    ADD CONSTRAINT vendas_codcliente_fkey FOREIGN KEY (codcliente) REFERENCES public.clientes(codcliente);


--
-- TOC entry 3593 (class 2606 OID 16438)
-- Name: vendas vendas_codfunc_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vendas
    ADD CONSTRAINT vendas_codfunc_fkey FOREIGN KEY (codfunc) REFERENCES public.funcionarios(codfunc);


--
-- TOC entry 3594 (class 2606 OID 16448)
-- Name: vendas vendas_numero_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vendas
    ADD CONSTRAINT vendas_numero_fkey FOREIGN KEY (numero) REFERENCES public.ordens_servico(numero);


--
-- TOC entry 3830 (class 0 OID 0)
-- Dependencies: 3829
-- Name: DATABASE aula; Type: ACL; Schema: -; Owner: postgres
--

GRANT ALL ON DATABASE aula TO bernardo;


--
-- TOC entry 3831 (class 0 OID 0)
-- Dependencies: 374
-- Name: FUNCTION insere_sr_nome_clientes(); Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON FUNCTION public.insere_sr_nome_clientes() TO roberto;


--
-- TOC entry 3835 (class 0 OID 0)
-- Dependencies: 214
-- Name: TABLE clientes; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.clientes TO vendedores;
GRANT SELECT,INSERT ON TABLE public.clientes TO roberto;


--
-- TOC entry 3836 (class 0 OID 0)
-- Dependencies: 214 3835
-- Name: COLUMN clientes.nome; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT(nome) ON TABLE public.clientes TO funcionario WITH GRANT OPTION;
SET SESSION AUTHORIZATION funcionario;
GRANT SELECT(nome) ON TABLE public.clientes TO ana;
RESET SESSION AUTHORIZATION;


--
-- TOC entry 3837 (class 0 OID 0)
-- Dependencies: 214 3835
-- Name: COLUMN clientes.endereco; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT(endereco) ON TABLE public.clientes TO funcionario WITH GRANT OPTION;
SET SESSION AUTHORIZATION funcionario;
GRANT SELECT(endereco) ON TABLE public.clientes TO ana;
RESET SESSION AUTHORIZATION;


--
-- TOC entry 3838 (class 0 OID 0)
-- Dependencies: 214 3835
-- Name: COLUMN clientes.tipo_cliente; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT(tipo_cliente) ON TABLE public.clientes TO funcionario WITH GRANT OPTION;
SET SESSION AUTHORIZATION funcionario;
GRANT SELECT(tipo_cliente) ON TABLE public.clientes TO ana;
RESET SESSION AUTHORIZATION;


--
-- TOC entry 3839 (class 0 OID 0)
-- Dependencies: 217
-- Name: TABLE ordens_servico; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.ordens_servico TO vendedores;


--
-- TOC entry 3841 (class 0 OID 0)
-- Dependencies: 228
-- Name: TABLE contas_pagar; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.contas_pagar TO financeiro;


--
-- TOC entry 3842 (class 0 OID 0)
-- Dependencies: 219
-- Name: TABLE contas_receber; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,DELETE,UPDATE ON TABLE public.contas_receber TO coletores;


--
-- TOC entry 3844 (class 0 OID 0)
-- Dependencies: 224
-- Name: TABLE fornecedores; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT ON TABLE public.fornecedores TO andrew;


--
-- TOC entry 3845 (class 0 OID 0)
-- Dependencies: 220
-- Name: TABLE itens; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.itens TO time_de_vendas;
GRANT SELECT ON TABLE public.itens TO ana;


--
-- TOC entry 3846 (class 0 OID 0)
-- Dependencies: 221
-- Name: TABLE venda_itens; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.venda_itens TO vendedores;


--
-- TOC entry 3847 (class 0 OID 0)
-- Dependencies: 218
-- Name: TABLE vendas; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.vendas TO vendedores;


--
-- TOC entry 3855 (class 0 OID 0)
-- Dependencies: 223
-- Name: TABLE ordens_itens; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.ordens_itens TO vendedores;


--
-- TOC entry 3859 (class 0 OID 0)
-- Dependencies: 267
-- Name: TABLE view_compras; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT ON TABLE public.view_compras TO carlos;


--
-- TOC entry 3822 (class 0 OID 49794)
-- Dependencies: 266 3825
-- Name: cliente_func_os; Type: MATERIALIZED VIEW DATA; Schema: public; Owner: postgres
--

REFRESH MATERIALIZED VIEW public.cliente_func_os;


--
-- TOC entry 3823 (class 0 OID 50195)
-- Dependencies: 271 3825
-- Name: info_contas_pagar; Type: MATERIALIZED VIEW DATA; Schema: public; Owner: postgres
--

REFRESH MATERIALIZED VIEW public.info_contas_pagar;


-- Completed on 2023-11-14 14:18:38 UTC

--
-- PostgreSQL database dump complete
--

--
-- Database "postgres" dump
--

\connect postgres

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2 (Debian 15.2-1.pgdg110+1)
-- Dumped by pg_dump version 15.2

-- Started on 2023-11-14 14:18:38 UTC

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

-- Completed on 2023-11-14 14:18:38 UTC

--
-- PostgreSQL database dump complete
--

--
-- Database "view-permissoes-supabase" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2 (Debian 15.2-1.pgdg110+1)
-- Dumped by pg_dump version 15.2

-- Started on 2023-11-14 14:18:38 UTC

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

--
-- TOC entry 3494 (class 1262 OID 52999)
-- Name: view-permissoes-supabase; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "view-permissoes-supabase" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';


ALTER DATABASE "view-permissoes-supabase" OWNER TO postgres;

\connect -reuse-previous=on "dbname='view-permissoes-supabase'"

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
-- TOC entry 214 (class 1259 OID 53000)
-- Name: clientes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.clientes (
    codcliente integer NOT NULL,
    nome character varying(50) NOT NULL,
    endereco character varying(50) NOT NULL,
    tipo_cliente character(1),
    rg character(15),
    cpf character(15),
    cnpj character(14),
    obs text,
    CONSTRAINT clientes_codcliente_check CHECK ((codcliente > 0)),
    CONSTRAINT clientes_tipo_cliente_check CHECK (((tipo_cliente = 'F'::bpchar) OR (tipo_cliente = 'J'::bpchar)))
);


ALTER TABLE public.clientes OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 53120)
-- Name: compras; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.compras (
    codigo integer NOT NULL,
    codfornecedor integer NOT NULL,
    data date,
    valor_total numeric(10,2),
    numero_nota integer NOT NULL
);


ALTER TABLE public.compras OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 53131)
-- Name: compras_itens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.compras_itens (
    sequencial integer NOT NULL,
    codcompra integer NOT NULL,
    coditem integer NOT NULL,
    desconto numeric(4,2),
    quantidade integer,
    valor numeric(10,2),
    valor_total numeric(10,2)
);


ALTER TABLE public.compras_itens OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 53130)
-- Name: compras_itens_sequencial_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.compras_itens_sequencial_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.compras_itens_sequencial_seq OWNER TO postgres;

--
-- TOC entry 3499 (class 0 OID 0)
-- Dependencies: 226
-- Name: compras_itens_sequencial_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.compras_itens_sequencial_seq OWNED BY public.compras_itens.sequencial;


--
-- TOC entry 228 (class 1259 OID 53147)
-- Name: contas_pagar; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.contas_pagar (
    numero integer NOT NULL,
    num_boleto character varying(30),
    tipo integer NOT NULL,
    data_vencimento date,
    data_pagamento date,
    valor_pago numeric(10,2),
    valor numeric(10,2),
    data_lancamento date,
    desconto numeric(10,2),
    compra integer,
    despesas integer,
    CONSTRAINT contas_pagar_tipo_check CHECK (((tipo = 1) OR (tipo = 2)))
);


ALTER TABLE public.contas_pagar OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 53063)
-- Name: contas_receber; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.contas_receber (
    cod integer NOT NULL,
    data_lancamento date NOT NULL,
    data_vencimento date NOT NULL,
    valor numeric(10,2) NOT NULL,
    data_pagamento date,
    valor_pagamento numeric(10,2),
    codigo_vendas integer NOT NULL
);


ALTER TABLE public.contas_receber OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 53158)
-- Name: despesas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.despesas (
    codigo integer NOT NULL,
    descricao character varying(50)
);


ALTER TABLE public.despesas OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 53009)
-- Name: fones_clientes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fones_clientes (
    cliente integer NOT NULL,
    num_telefone character(10) NOT NULL
);


ALTER TABLE public.fones_clientes OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 53113)
-- Name: fornecedores; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fornecedores (
    codigo integer NOT NULL,
    descricao character varying(100),
    endereco character varying(50),
    contato character varying(50),
    cnpj character varying(14)
);


ALTER TABLE public.fornecedores OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 53019)
-- Name: funcionarios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.funcionarios (
    codfunc integer NOT NULL,
    nome character varying(50) NOT NULL,
    endereco character varying(50) NOT NULL,
    cpf character(11) NOT NULL,
    tipo character(1),
    CONSTRAINT funcionarios_tipo_check CHECK (((tipo = '1'::bpchar) OR (tipo = '2'::bpchar) OR (tipo = '3'::bpchar)))
);


ALTER TABLE public.funcionarios OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 53073)
-- Name: itens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.itens (
    codigo integer NOT NULL,
    valor numeric(10,2) NOT NULL,
    custo numeric(10,2) NOT NULL,
    descricao text,
    desconto numeric(4,2),
    tipo character(1),
    estoque real,
    CONSTRAINT itens_tipo_check CHECK (((tipo = 'p'::bpchar) OR (tipo = 's'::bpchar)))
);


ALTER TABLE public.itens OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 53081)
-- Name: venda_itens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.venda_itens (
    sequencial integer NOT NULL,
    codvenda integer NOT NULL,
    codigo integer,
    quantidade real,
    valor numeric(10,2)
);


ALTER TABLE public.venda_itens OWNER TO postgres;

--
-- TOC entry 236 (class 1259 OID 53206)
-- Name: info_3produtos_mais_vendidos; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.info_3produtos_mais_vendidos AS
 SELECT itens.codigo,
    itens.descricao AS descricao_item
   FROM (public.itens
     JOIN public.venda_itens ON ((itens.codigo = venda_itens.codigo)))
  GROUP BY itens.codigo, itens.descricao
  ORDER BY (sum(venda_itens.quantidade)) DESC
 LIMIT 3;


ALTER TABLE public.info_3produtos_mais_vendidos OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 53172)
-- Name: info_cliente_telefone; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.info_cliente_telefone AS
 SELECT clientes.nome AS cliente,
        CASE
            WHEN (fones_clientes.num_telefone IS NOT NULL) THEN fones_clientes.num_telefone
            ELSE 'sem telefone'::bpchar
        END AS telefone
   FROM (public.clientes
     LEFT JOIN public.fones_clientes ON ((clientes.codcliente = fones_clientes.cliente)));


ALTER TABLE public.info_cliente_telefone OWNER TO postgres;

--
-- TOC entry 234 (class 1259 OID 53191)
-- Name: info_contas_pagar; Type: MATERIALIZED VIEW; Schema: public; Owner: postgres
--

CREATE MATERIALIZED VIEW public.info_contas_pagar AS
 SELECT contas_pagar.num_boleto,
    contas_pagar.data_vencimento,
    contas_pagar.valor,
    contas_pagar.desconto,
    contas_pagar.compra,
    contas_pagar.data_lancamento
   FROM public.contas_pagar
  WITH NO DATA;


ALTER TABLE public.info_contas_pagar OWNER TO postgres;

--
-- TOC entry 237 (class 1259 OID 53211)
-- Name: info_itens; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.info_itens AS
 SELECT i.codigo,
    i.descricao,
    to_char(i.valor, 'L9G999G990D99'::text) AS valor,
    i.estoque,
    f.descricao AS fornecedores,
    max(c.data) AS data_ultima_compra
   FROM (((public.itens i
     JOIN public.compras_itens ci ON ((i.codigo = ci.coditem)))
     JOIN public.compras c ON ((c.codigo = ci.codcompra)))
     JOIN public.fornecedores f ON ((f.codigo = c.codfornecedor)))
  GROUP BY i.codigo, i.descricao, i.valor, i.estoque, f.descricao;


ALTER TABLE public.info_itens OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 53168)
-- Name: info_itens_cod_desc_val; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.info_itens_cod_desc_val AS
 SELECT itens.codigo,
    itens.descricao,
    itens.valor
   FROM public.itens;


ALTER TABLE public.info_itens_cod_desc_val OWNER TO postgres;

--
-- TOC entry 238 (class 1259 OID 53216)
-- Name: info_itens_iten_val_desc; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.info_itens_iten_val_desc AS
 SELECT itens.descricao AS item,
    to_char(itens.valor, 'L9G999G990D99'::text) AS valor,
    itens.desconto
   FROM public.itens;


ALTER TABLE public.info_itens_iten_val_desc OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 53043)
-- Name: vendas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.vendas (
    codigo integer NOT NULL,
    valor_total_venda numeric(10,2),
    dt_venda date NOT NULL,
    codfunc integer NOT NULL,
    codcliente integer NOT NULL,
    numero integer
);


ALTER TABLE public.vendas OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 53187)
-- Name: info_vendas; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.info_vendas AS
 SELECT v.codigo AS cod_venda,
    v.dt_venda,
    v.valor_total_venda,
    cl.nome AS cliente,
    f.nome AS funcionario
   FROM ((public.clientes cl
     JOIN public.vendas v ON ((cl.codcliente = v.codcliente)))
     JOIN public.funcionarios f ON ((f.codfunc = v.codfunc)));


ALTER TABLE public.info_vendas OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 53181)
-- Name: info_vendas_2023; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.info_vendas_2023 AS
 SELECT itens.descricao AS descricao_item,
    sum(venda_itens.quantidade) AS numero_unidades_vendidas
   FROM ((public.itens
     JOIN public.venda_itens ON ((itens.codigo = venda_itens.codigo)))
     JOIN public.vendas ON ((venda_itens.codvenda = vendas.codigo)))
  WHERE (to_char((vendas.dt_venda)::timestamp with time zone, 'YYYY'::text) = '2023'::text)
  GROUP BY itens.descricao;


ALTER TABLE public.info_vendas_2023 OWNER TO postgres;

--
-- TOC entry 235 (class 1259 OID 53201)
-- Name: info_vendas_mensais; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.info_vendas_mensais AS
 SELECT to_char((vendas.dt_venda)::timestamp with time zone, 'MM'::text) AS mes,
    sum(vendas.valor_total_venda) AS valor_total_vendas,
    sum(venda_itens.quantidade) AS num_produtos_vendidos
   FROM ((public.vendas
     JOIN public.venda_itens ON ((vendas.codigo = venda_itens.codvenda)))
     JOIN public.itens ON ((venda_itens.codigo = itens.codigo)))
  GROUP BY (to_char((vendas.dt_venda)::timestamp with time zone, 'MM'::text))
  ORDER BY (to_char((vendas.dt_venda)::timestamp with time zone, 'MM'::text));


ALTER TABLE public.info_vendas_mensais OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 53097)
-- Name: ordens_itens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ordens_itens (
    sequencial integer NOT NULL,
    numero integer NOT NULL,
    codigo integer NOT NULL,
    desconto numeric(4,2),
    quantidade real,
    valor numeric(10,2),
    valor_total numeric(10,2)
);


ALTER TABLE public.ordens_itens OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 53096)
-- Name: ordens_itens_sequencial_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ordens_itens_sequencial_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ordens_itens_sequencial_seq OWNER TO postgres;

--
-- TOC entry 3505 (class 0 OID 0)
-- Dependencies: 222
-- Name: ordens_itens_sequencial_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ordens_itens_sequencial_seq OWNED BY public.ordens_itens.sequencial;


--
-- TOC entry 217 (class 1259 OID 53027)
-- Name: ordens_servico; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ordens_servico (
    numero integer NOT NULL,
    data date,
    valor_total numeric(10,2),
    status character(1),
    codfunc integer NOT NULL,
    codcliente integer NOT NULL,
    CONSTRAINT ordens_servico_status_check CHECK (((status = 'a'::bpchar) OR (status = 'f'::bpchar)))
);


ALTER TABLE public.ordens_servico OWNER TO postgres;

--
-- TOC entry 3266 (class 2604 OID 53134)
-- Name: compras_itens sequencial; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.compras_itens ALTER COLUMN sequencial SET DEFAULT nextval('public.compras_itens_sequencial_seq'::regclass);


--
-- TOC entry 3265 (class 2604 OID 53100)
-- Name: ordens_itens sequencial; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ordens_itens ALTER COLUMN sequencial SET DEFAULT nextval('public.ordens_itens_sequencial_seq'::regclass);


--
-- TOC entry 3472 (class 0 OID 53000)
-- Dependencies: 214
-- Data for Name: clientes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.clientes (codcliente, nome, endereco, tipo_cliente, rg, cpf, cnpj, obs) FROM stdin;
100	José da Silva	Av. Bento Gonçalves	F	\N	\N	\N	xyz
101	Maria Silveira	Tiradentes	F	\N	\N	\N	xxx
102	Roberto Pereira	Dom Pedro II	F	\N	\N	\N	xyz
103	Valéria Ferreira	Av. Bento Gonçalves	F	\N	\N	\N	yyy
104	Atacado Martins	General Osório	J	\N	\N	\N	xyz
105	Mercado Silveira	Gomes Carneiro	J	\N	\N	\N	xxx
106	Isabela Medeiros	Av. Carlos Monteiro	F	\N	\N	\N	xyz
107	gustavo	Av. Bento Gonçalves	F	\N	03044157924    	\N	pessoa fisica
\.


--
-- TOC entry 3483 (class 0 OID 53120)
-- Dependencies: 225
-- Data for Name: compras; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.compras (codigo, codfornecedor, data, valor_total, numero_nota) FROM stdin;
100	1	2016-05-12	5000.00	2568412
101	5	2016-09-12	7500.00	5647823
102	7	2016-12-23	20000.00	8457693
103	8	2017-02-18	5750.00	3254812
104	2	2017-05-26	7200.00	69854714
105	4	2017-09-30	6000.00	2145795
106	3	2017-11-17	2000.00	25478591
107	6	2017-12-22	2500.00	36547823
\.


--
-- TOC entry 3485 (class 0 OID 53131)
-- Dependencies: 227
-- Data for Name: compras_itens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.compras_itens (sequencial, codcompra, coditem, desconto, quantidade, valor, valor_total) FROM stdin;
1	102	3	\N	5	4000.00	4000.00
2	103	2	\N	2	7000.00	7000.00
3	105	7	\N	3	4000.00	4000.00
4	103	8	\N	7	9000.00	9000.00
5	101	4	\N	4	8000.00	8000.00
6	106	1	\N	2	5000.00	5000.00
7	104	6	\N	6	15000.00	15000.00
8	107	5	\N	9	9000.00	9000.00
\.


--
-- TOC entry 3486 (class 0 OID 53147)
-- Dependencies: 228
-- Data for Name: contas_pagar; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.contas_pagar (numero, num_boleto, tipo, data_vencimento, data_pagamento, valor_pago, valor, data_lancamento, desconto, compra, despesas) FROM stdin;
2	2664	1	2017-02-22	2017-02-22	5750.00	5750.00	2017-02-18	\N	103	\N
4	5689	1	2017-11-23	2017-11-23	2000.00	2000.00	2017-11-17	\N	106	\N
5	1458	1	2017-12-25	2017-12-25	2500.00	2500.00	2017-12-22	\N	107	\N
7	7584	2	2016-05-27	2016-05-27	20000.00	20000.00	2017-12-23	\N	102	\N
8	3658	2	2017-05-10	2017-05-30	7200.00	7200.00	2017-05-26	\N	104	\N
1	2354	1	2016-05-15	2016-05-15	5000.00	5000.00	2016-05-10	1000.00	100	\N
3	2354	1	2017-10-15	2017-10-15	6000.00	6000.00	2016-09-30	1200.00	105	\N
6	6985	1	2017-09-26	2017-09-26	7500.00	7500.00	2016-09-16	1500.00	101	\N
\.


--
-- TOC entry 3477 (class 0 OID 53063)
-- Dependencies: 219
-- Data for Name: contas_receber; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.contas_receber (cod, data_lancamento, data_vencimento, valor, data_pagamento, valor_pagamento, codigo_vendas) FROM stdin;
300	2020-05-13	2020-05-30	1000.00	2020-05-29	1000.00	1
301	2020-09-14	2020-09-29	2500.00	2020-09-28	2000.00	2
302	2020-10-23	2020-10-26	1200.00	2020-10-26	1200.00	3
303	2020-01-23	2020-01-30	3000.00	2020-01-29	3000.00	4
305	2020-03-02	2020-03-10	2700.00	2020-03-10	2700.00	5
306	2020-05-16	2020-05-30	5000.00	2020-05-29	5000.00	6
307	2020-08-13	2020-08-22	7000.00	\N	\N	7
308	2020-10-05	2020-10-10	3200.00	\N	\N	8
\.


--
-- TOC entry 3487 (class 0 OID 53158)
-- Dependencies: 229
-- Data for Name: despesas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.despesas (codigo, descricao) FROM stdin;
1	água
2	luz
3	funcionários
4	produtos de limpeza
5	material de escritório
6	telefone
7	limpeza
8	seguraça
\.


--
-- TOC entry 3473 (class 0 OID 53009)
-- Dependencies: 215
-- Data for Name: fones_clientes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.fones_clientes (cliente, num_telefone) FROM stdin;
100	32274586  
101	32253326  
102	32273370  
103	32224586  
104	32256948  
105	32226548  
\.


--
-- TOC entry 3482 (class 0 OID 53113)
-- Dependencies: 224
-- Data for Name: fornecedores; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.fornecedores (codigo, descricao, endereco, contato, cnpj) FROM stdin;
1	Bento e Cia	Dom Pedro II	32254896	83848582000198
2	Mendes Araújo	Av. Dom Joaquim	32275692	52236265000197
3	Bezerra Júnior	Av. Fernando Osório	32226578	75112555000124
4	Fonseca Ltda.	Praça XX de setembro	32273370	46631334000164
5	Joaquim e Cia	Av. Duque de Caxias	32227343	820824419902
6	Barroso e Barroso	General Osório	32296548	45995532000144
7	Padilha Ltda.	Marechal Deodoro	32252571	98467579991
8	JJ e Cia.	Dom Pedro II	32258691	22065998000145
\.


--
-- TOC entry 3474 (class 0 OID 53019)
-- Dependencies: 216
-- Data for Name: funcionarios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.funcionarios (codfunc, nome, endereco, cpf, tipo) FROM stdin;
200	José da Silveira	Marechal Deodoro	81754656200	3
201	Mariana Costa	José Bonifácio	77486491460	2
202	Marcia Gonçalves	Av. Ferreira Viana	55684414729	2
203	Sergio Pires	José Bonifácio	87162502300	1
204	Cristian Tavares	Av. 25 de julho	33817362641	3
205	Mateus Santos	Gonçalves Chaves	52564250645	1
206	Fabiano Nobre	Av. Dom Joaquim	30212787365	3
\.


--
-- TOC entry 3478 (class 0 OID 53073)
-- Dependencies: 220
-- Data for Name: itens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.itens (codigo, valor, custo, descricao, desconto, tipo, estoque) FROM stdin;
1	200.00	160.00	aparelho de pressão	\N	p	500
2	50.00	35.00	atadura	\N	p	500
3	250.00	180.00	estetoscópio	\N	p	100
4	110.00	65.00	termômetro auricular	\N	p	500
5	35.00	10.00	tesoura cirúrgica 15 cm	\N	p	500
6	500.00	350.00	autoclave 4L analógico	\N	s	400
7	1800.00	1450.00	centrífuga de bancada com rotor velocidade 0-4000RPM K14-4000	\N	p	500
8	850.00	600.00	desumidificador	\N	p	500
\.


--
-- TOC entry 3481 (class 0 OID 53097)
-- Dependencies: 223
-- Data for Name: ordens_itens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ordens_itens (sequencial, numero, codigo, desconto, quantidade, valor, valor_total) FROM stdin;
1	2	3	\N	2	600.00	600.00
2	3	2	\N	3	2400.00	2400.00
3	1	1	\N	1	300.00	300.00
4	4	6	\N	4	800.00	800.00
5	8	5	\N	5	1500.00	1500.00
6	7	4	\N	2	2400.00	2400.00
7	5	8	\N	3	90.00	90.00
8	6	7	\N	2	300.00	300.00
\.


--
-- TOC entry 3475 (class 0 OID 53027)
-- Dependencies: 217
-- Data for Name: ordens_servico; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ordens_servico (numero, data, valor_total, status, codfunc, codcliente) FROM stdin;
1	2020-05-12	1000.00	f	200	101
2	2020-09-15	2500.00	f	206	100
3	2020-10-20	1200.00	f	202	105
4	2020-01-23	3000.00	f	201	104
5	2020-03-02	2700.00	a	204	101
6	2020-05-16	5000.00	f	200	100
7	2020-08-13	7000.00	f	204	103
8	2020-10-05	3200.00	a	206	102
\.


--
-- TOC entry 3479 (class 0 OID 53081)
-- Dependencies: 221
-- Data for Name: venda_itens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.venda_itens (sequencial, codvenda, codigo, quantidade, valor) FROM stdin;
1	3	1	20	4000.00
2	1	3	10	2500.00
3	2	4	5	550.00
4	4	2	3	150.00
5	6	5	100	300.00
6	5	2	250	8750.00
7	8	7	15	27000.00
8	7	5	20	175.00
\.


--
-- TOC entry 3476 (class 0 OID 53043)
-- Dependencies: 218
-- Data for Name: vendas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.vendas (codigo, valor_total_venda, dt_venda, codfunc, codcliente, numero) FROM stdin;
1	750.00	2020-05-11	200	101	1
2	2000.00	2020-09-13	206	100	2
3	1000.00	2020-10-18	202	105	3
4	3000.00	2020-01-12	201	104	4
6	5000.00	2020-05-14	205	100	6
8	3100.00	2020-12-03	203	102	8
7	6700.00	2023-08-11	204	103	7
5	2000.00	2023-03-01	204	101	5
\.


--
-- TOC entry 3506 (class 0 OID 0)
-- Dependencies: 226
-- Name: compras_itens_sequencial_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.compras_itens_sequencial_seq', 1, false);


--
-- TOC entry 3507 (class 0 OID 0)
-- Dependencies: 222
-- Name: ordens_itens_sequencial_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ordens_itens_sequencial_seq', 1, false);


--
-- TOC entry 3274 (class 2606 OID 53008)
-- Name: clientes clientes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_pkey PRIMARY KEY (codcliente);


--
-- TOC entry 3300 (class 2606 OID 53136)
-- Name: compras_itens compras_itens_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.compras_itens
    ADD CONSTRAINT compras_itens_pkey PRIMARY KEY (sequencial);


--
-- TOC entry 3298 (class 2606 OID 53124)
-- Name: compras compras_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.compras
    ADD CONSTRAINT compras_pkey PRIMARY KEY (codigo);


--
-- TOC entry 3302 (class 2606 OID 53152)
-- Name: contas_pagar contas_pagar_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contas_pagar
    ADD CONSTRAINT contas_pagar_pkey PRIMARY KEY (numero);


--
-- TOC entry 3286 (class 2606 OID 53067)
-- Name: contas_receber contas_receber_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contas_receber
    ADD CONSTRAINT contas_receber_pkey PRIMARY KEY (cod);


--
-- TOC entry 3304 (class 2606 OID 53162)
-- Name: despesas despesas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.despesas
    ADD CONSTRAINT despesas_pkey PRIMARY KEY (codigo);


--
-- TOC entry 3276 (class 2606 OID 53013)
-- Name: fones_clientes fones_clientes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fones_clientes
    ADD CONSTRAINT fones_clientes_pkey PRIMARY KEY (cliente, num_telefone);


--
-- TOC entry 3294 (class 2606 OID 53119)
-- Name: fornecedores fornecedores_cnpj_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fornecedores
    ADD CONSTRAINT fornecedores_cnpj_key UNIQUE (cnpj);


--
-- TOC entry 3296 (class 2606 OID 53117)
-- Name: fornecedores fornecedores_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fornecedores
    ADD CONSTRAINT fornecedores_pkey PRIMARY KEY (codigo);


--
-- TOC entry 3278 (class 2606 OID 53026)
-- Name: funcionarios funcionarios_cpf_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.funcionarios
    ADD CONSTRAINT funcionarios_cpf_key UNIQUE (cpf);


--
-- TOC entry 3280 (class 2606 OID 53024)
-- Name: funcionarios funcionarios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.funcionarios
    ADD CONSTRAINT funcionarios_pkey PRIMARY KEY (codfunc);


--
-- TOC entry 3288 (class 2606 OID 53080)
-- Name: itens itens_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.itens
    ADD CONSTRAINT itens_pkey PRIMARY KEY (codigo);


--
-- TOC entry 3292 (class 2606 OID 53102)
-- Name: ordens_itens ordens_itens_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ordens_itens
    ADD CONSTRAINT ordens_itens_pkey PRIMARY KEY (sequencial);


--
-- TOC entry 3282 (class 2606 OID 53032)
-- Name: ordens_servico ordens_servico_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ordens_servico
    ADD CONSTRAINT ordens_servico_pkey PRIMARY KEY (numero);


--
-- TOC entry 3290 (class 2606 OID 53085)
-- Name: venda_itens venda_itens_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.venda_itens
    ADD CONSTRAINT venda_itens_pkey PRIMARY KEY (sequencial, codvenda);


--
-- TOC entry 3284 (class 2606 OID 53047)
-- Name: vendas vendas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vendas
    ADD CONSTRAINT vendas_pkey PRIMARY KEY (codigo);


--
-- TOC entry 3316 (class 2606 OID 53125)
-- Name: compras compras_codfornecedor_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.compras
    ADD CONSTRAINT compras_codfornecedor_fkey FOREIGN KEY (codfornecedor) REFERENCES public.fornecedores(codigo);


--
-- TOC entry 3317 (class 2606 OID 53137)
-- Name: compras_itens compras_itens_codcompra_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.compras_itens
    ADD CONSTRAINT compras_itens_codcompra_fkey FOREIGN KEY (codcompra) REFERENCES public.compras(codigo);


--
-- TOC entry 3318 (class 2606 OID 53142)
-- Name: compras_itens compras_itens_coditem_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.compras_itens
    ADD CONSTRAINT compras_itens_coditem_fkey FOREIGN KEY (coditem) REFERENCES public.itens(codigo);


--
-- TOC entry 3319 (class 2606 OID 53153)
-- Name: contas_pagar contas_pagar_compra_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contas_pagar
    ADD CONSTRAINT contas_pagar_compra_fkey FOREIGN KEY (compra) REFERENCES public.compras(codigo);


--
-- TOC entry 3311 (class 2606 OID 53068)
-- Name: contas_receber contas_receber_codigo_vendas_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contas_receber
    ADD CONSTRAINT contas_receber_codigo_vendas_fkey FOREIGN KEY (codigo_vendas) REFERENCES public.vendas(codigo);


--
-- TOC entry 3320 (class 2606 OID 53163)
-- Name: contas_pagar despesas_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contas_pagar
    ADD CONSTRAINT despesas_fkey FOREIGN KEY (despesas) REFERENCES public.despesas(codigo);


--
-- TOC entry 3305 (class 2606 OID 53014)
-- Name: fones_clientes fones_clientes_cliente_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fones_clientes
    ADD CONSTRAINT fones_clientes_cliente_fkey FOREIGN KEY (cliente) REFERENCES public.clientes(codcliente);


--
-- TOC entry 3314 (class 2606 OID 53108)
-- Name: ordens_itens ordens_itens_codigo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ordens_itens
    ADD CONSTRAINT ordens_itens_codigo_fkey FOREIGN KEY (codigo) REFERENCES public.itens(codigo);


--
-- TOC entry 3315 (class 2606 OID 53103)
-- Name: ordens_itens ordens_itens_numero_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ordens_itens
    ADD CONSTRAINT ordens_itens_numero_fkey FOREIGN KEY (numero) REFERENCES public.ordens_servico(numero);


--
-- TOC entry 3306 (class 2606 OID 53038)
-- Name: ordens_servico ordens_servico_codcliente_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ordens_servico
    ADD CONSTRAINT ordens_servico_codcliente_fkey FOREIGN KEY (codcliente) REFERENCES public.clientes(codcliente);


--
-- TOC entry 3307 (class 2606 OID 53033)
-- Name: ordens_servico ordens_servico_codfunc_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ordens_servico
    ADD CONSTRAINT ordens_servico_codfunc_fkey FOREIGN KEY (codfunc) REFERENCES public.funcionarios(codfunc);


--
-- TOC entry 3312 (class 2606 OID 53091)
-- Name: venda_itens venda_itens_codigo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.venda_itens
    ADD CONSTRAINT venda_itens_codigo_fkey FOREIGN KEY (codigo) REFERENCES public.itens(codigo);


--
-- TOC entry 3313 (class 2606 OID 53086)
-- Name: venda_itens venda_itens_codvenda_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.venda_itens
    ADD CONSTRAINT venda_itens_codvenda_fkey FOREIGN KEY (codvenda) REFERENCES public.vendas(codigo);


--
-- TOC entry 3308 (class 2606 OID 53053)
-- Name: vendas vendas_codcliente_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vendas
    ADD CONSTRAINT vendas_codcliente_fkey FOREIGN KEY (codcliente) REFERENCES public.clientes(codcliente);


--
-- TOC entry 3309 (class 2606 OID 53048)
-- Name: vendas vendas_codfunc_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vendas
    ADD CONSTRAINT vendas_codfunc_fkey FOREIGN KEY (codfunc) REFERENCES public.funcionarios(codfunc);


--
-- TOC entry 3310 (class 2606 OID 53058)
-- Name: vendas vendas_numero_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vendas
    ADD CONSTRAINT vendas_numero_fkey FOREIGN KEY (numero) REFERENCES public.ordens_servico(numero);


--
-- TOC entry 3495 (class 0 OID 0)
-- Dependencies: 214
-- Name: TABLE clientes; Type: ACL; Schema: public; Owner: postgres
--

GRANT INSERT ON TABLE public.clientes TO roberto;


--
-- TOC entry 3496 (class 0 OID 0)
-- Dependencies: 214 3495
-- Name: COLUMN clientes.nome; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT(nome) ON TABLE public.clientes TO funcionario WITH GRANT OPTION;
GRANT SELECT(nome) ON TABLE public.clientes TO cleber WITH GRANT OPTION;


--
-- TOC entry 3497 (class 0 OID 0)
-- Dependencies: 214 3495
-- Name: COLUMN clientes.endereco; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT(endereco) ON TABLE public.clientes TO funcionario WITH GRANT OPTION;
GRANT SELECT(endereco) ON TABLE public.clientes TO cleber WITH GRANT OPTION;


--
-- TOC entry 3498 (class 0 OID 0)
-- Dependencies: 214 3495
-- Name: COLUMN clientes.tipo_cliente; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT(tipo_cliente) ON TABLE public.clientes TO funcionario WITH GRANT OPTION;
GRANT SELECT(tipo_cliente) ON TABLE public.clientes TO cleber WITH GRANT OPTION;


--
-- TOC entry 3500 (class 0 OID 0)
-- Dependencies: 228
-- Name: TABLE contas_pagar; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.contas_pagar TO financeiro;


--
-- TOC entry 3501 (class 0 OID 0)
-- Dependencies: 219
-- Name: TABLE contas_receber; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT,DELETE,UPDATE ON TABLE public.contas_receber TO coletores;


--
-- TOC entry 3502 (class 0 OID 0)
-- Dependencies: 224
-- Name: TABLE fornecedores; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT ON TABLE public.fornecedores TO andrew;
GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.fornecedores TO deptcompras;


--
-- TOC entry 3503 (class 0 OID 0)
-- Dependencies: 220
-- Name: TABLE itens; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT ON TABLE public.itens TO ana;
GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.itens TO time_de_vendas;


--
-- TOC entry 3504 (class 0 OID 0)
-- Dependencies: 232
-- Name: TABLE info_vendas_2023; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT ON TABLE public.info_vendas_2023 TO maria;


--
-- TOC entry 3488 (class 0 OID 53191)
-- Dependencies: 234 3490
-- Name: info_contas_pagar; Type: MATERIALIZED VIEW DATA; Schema: public; Owner: postgres
--

REFRESH MATERIALIZED VIEW public.info_contas_pagar;


-- Completed on 2023-11-14 14:18:38 UTC

--
-- PostgreSQL database dump complete
--

-- Completed on 2023-11-14 14:18:38 UTC

--
-- PostgreSQL database cluster dump complete
--

