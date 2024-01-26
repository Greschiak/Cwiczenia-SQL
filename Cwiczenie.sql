REATE SCHEMA uczelnia2024;
SET search_path = uczelnia2024;

CREATE TABLE wykladowcy (
  wykladowca_id VARCHAR(4) PRIMARY KEY,
  nazwisko		VARCHAR(25) NOT NULL,
  imie			VARCHAR(15),
  kod			VARCHAR(5),
  miasto		VARCHAR(15),
  e_mail		VARCHAR(30)
);

INSERT INTO wykladowcy VALUES ('0001', 'Bober', 'Dariusz', '20470', 'Lublin', 'borowik@pluton.lublin.pl');
INSERT INTO wykladowcy VALUES ('0002', 'Bober', 'Mateusz', '20610', 'Lublin', 'mati@antenor.lublin.pl');
INSERT INTO wykladowcy VALUES ('0003', 'Kulawik', 'Wojciech', '48618', 'Rzeszów', 'kulaiwik@szoszon.rzeszow.pl');
INSERT INTO wykladowcy VALUES ('0004', 'Tuźnik', 'Piotr', '20202', 'Lublin',  'piotrt@pluton.lublin.pl');
INSERT INTO wykladowcy VALUES ('0005', 'Rząsa', 'Wojciech', '20240', 'Rzeszów','wrzasa@univ.rzeszow.pl');
INSERT INTO wykladowcy VALUES ('0006', 'Kopniak', 'Piotr', '20070', 'Lublin', 'copy@cs.pollub.pl');
INSERT INTO wykladowcy VALUES ('0007', 'Pieńkowski', 'Maciej', '20554', 'Rzeszów','pama@it.rzeszow.pl');
INSERT INTO wykladowcy VALUES ('0008', 'Pieńkowski', 'Mateusz', '20554', 'Lublin', 'pamat@pluton.lublin.pl');
INSERT INTO wykladowcy VALUES ('0009', 'Sum', 'Andrzej', '20470', 'Dębica',  'sum@eltecol.pilzno.pl');
INSERT INTO wykladowcy VALUES ('0010', 'Krawiec', 'Alicja', '20234', 'Kraków', 'alak@agh.edu.pl');
INSERT INTO wykladowcy VALUES ('0011', 'Hubert', 'Ptasznik', '20299', 'Warszawa', 'ptasznik@ux.edu.pl');


CREATE TABLE studenci (
  student_id	VARCHAR(7) NOT NULL PRIMARY KEY,
  nazwisko		VARCHAR(25) NOT NULL,
  imie			VARCHAR(15),
  data_ur		DATE,
  miejsce_ur	VARCHAR(15),
  pesel			VARCHAR(11) UNIQUE,
  kod			VARCHAR(5),
  miasto		VARCHAR(15),
  ulica			VARCHAR(30),
  numer			VARCHAR(8),
  tel			VARCHAR(12),
  fax			VARCHAR(12),
  e_mail		VARCHAR(30)
);

INSERT INTO studenci VALUES ('0000049', 'Szafraniec', 'Anna', NULL, 'Lublin','17047701583', '20145', 'Rzeszów', 'Daszyńskiego', '119', NULL,NULL, NULL);
INSERT INTO studenci VALUES ('0000050', 'Sobczyk', 'Katarzyna', NULL, 'Lubartów','20057604185', '21850', 'Lubartów', 'Długa', '5', NULL,NULL, NULL);
INSERT INTO studenci VALUES ('0000060', 'Biegas', 'Antoni', NULL, 'Rzeszów', '77071401281', '20551', 'Rzeszów', 'Herbowa', '18/71', '815267514',NULL, NULL);
INSERT INTO studenci VALUES ('0000061', 'Biegas', 'Kamila', NULL, 'Rzeszów', '15028310821', '20551', 'Rzeszów', 'Herbowa', '18/71', '815267514',NULL, NULL);
INSERT INTO studenci VALUES ('0000062', 'Krecha', 'Mateusz', NULL, 'Rzeszów', '78070702922', '20706', 'Rzeszów', 'Śnieżyńskiego', '9', '815341144',NULL, NULL);
INSERT INTO studenci VALUES ('0000063', 'Kita', 'Anna', NULL, 'Krasienin', '77062003528', '22300', 'Krasienin', 'Kr. Jadwigi', '25', '825764636',NULL, NULL);
INSERT INTO studenci VALUES ('0500323', 'Sławkowska', 'Aneta', NULL, 'Rzeszów', '77101003960', '24333', 'Wrzelowiec', 'Krasna', '165a', NULL,NULL, NULL);
INSERT INTO studenci VALUES ('0500324', 'Pylak', 'Iwona', NULL, 'Dębica', '78092008783', '22453', 'Dębina', 'Medalionów', '36', '846800136',NULL, NULL);
INSERT INTO studenci VALUES ('0500325', 'Święchowska', 'Paulina', NULL, 'Siedlce', '27087806425', '08110', 'Siedlce', 'Kasprowicza', '1','2222864',NULL, NULL);
INSERT INTO studenci VALUES ('0500326', 'Chrzan', 'Matylda', NULL, 'Rzeszów', '72121202441', '20325', 'Lublin', 'Wierzbowa', '13/82','817452594',NULL, NULL);
INSERT INTO studenci VALUES ('0500327', 'Surowiec', 'Marta', NULL, 'Rzeszów', '79010112451', '20329', 'Warszawa', 'Grochowska', '1/1','505252524',NULL, NULL);


CREATE TABLE kierunki (
  kierunek_id NUMERIC(2) NOT NULL PRIMARY KEY,
  nazwa		  VARCHAR(80) NOT NULL,
  opis		  VARCHAR(255),
  stopien     VARCHAR(15) NOT NULL,
  s_ects	  NUMERIC(5) DEFAULT 70
);

INSERT INTO kierunki VALUES (1, 'Informatyka techniczna', 'Nauczanie przedmiotu informatyki w szkołach podstawowych i średnich', 'Licencjat', 40);
INSERT INTO kierunki VALUES (2, 'Grafika komputerowa', 'Tworzenie grafiki komputerowej w zastosowaniach profesionalnych', 'Inżynier', 60);
INSERT INTO kierunki VALUES (3, 'Bazy danych', 'Zastosowanie baz danych, projektowanie, administracja i eksploatacja', 'Inżynier', 60);
INSERT INTO kierunki VALUES (4, 'Gry i multimedia', 'Tworzenie gier komputerowych, zastosowania mulimediów', 'Licencjat', 60);
INSERT INTO kierunki VALUES (5, 'Bankowość i ubezpieczenia', 'Użytkowanie systemów IT w bankowości i ubezpieczeniach, podstawy matematyczne', 'Licencjat', 70);
INSERT INTO kierunki VALUES (6, 'Systemy klasy ERP', 'Zarządzanie systemami wsparcia procesów biznesowych w przedsiębiorstwie', 'Inżynier', 60);
INSERT INTO kierunki VALUES (7, 'BI i systemy eksperckie', 'Tworzenie modeli, mapowanie procesów w systemach podejmowania decyzji', 'Magister', 70);
INSERT INTO kierunki VALUES (8, 'Przetwarzanie obrazów medycznych', 'Wsparcie w pozyskiwaniu i pretwarzaniu obrazów medycznych', 'Inżynier', 50);
INSERT INTO kierunki VALUES (9, 'Zarządzanie zespołem', 'Tworzenie i zarządzanie zespołami projektowycmi', 'Magister', 70);
INSERT INTO kierunki VALUES (10, 'Logistyka z elementami zarządzania', 'Zarządzania łańcchem przepływów dóbr i usług w gospodarce', 'Inżynier', 60);
INSERT INTO kierunki VALUES (11, 'Odnawialne źródła energii', 'Technologie i zarządzanie w obszarze odnawialnych i alternatywnych źródeł energii', 'Magister', 60);


CREATE TABLE przedmioty (
   przedmiot_id NUMERIC(1) NOT NULL PRIMARY KEY,
   nazwa		VARCHAR(40) NOT NULL,
   opis			VARCHAR(200),
   rodzaj		VARCHAR(10) DEFAULT ('Wykład'),   
   ECTS		    NUMERIC DEFAULT 10 CHECK (ECTS > 0)
);

INSERT INTO przedmioty(Przedmiot_id, nazwa, opis)  VALUES (1, 'Podstawy technik informatycznych','Przedmiot ten sprawdza znajomość podtaw i pojęć z zakresu użytkowania komputerów.' );
INSERT INTO przedmioty(Przedmiot_id, nazwa, opis)  VALUES (2, 'Systemy wbudowane', 'Celem tego przedmiotu jest sprawdzenie wiedzy na temat pracy systemów wbudowanych stosowanych w przemyśle i bankowości.');
INSERT INTO przedmioty(Przedmiot_id, nazwa, opis)  VALUES (3, 'Edytory tekstów', 'Przedmiot ten sprawdza umiejętność przetwarzania tekstu. Jest przeznaczony do oceny umiejętności korzystania z edytora tekstu w celu tworzenia dokumentów.');
INSERT INTO przedmioty(Przedmiot_id, nazwa, opis)  VALUES (4, 'Arkusze kalkulacyjne', 'Przedmiot ten weryfikuje doświadczenie w projektowaniu i stosowaniu arkusza oraz znajomość jego podstawowych funkcji.');
INSERT INTO przedmioty(Przedmiot_id, nazwa, opis)  VALUES (5, 'Bazy danych', 'Przedmiot ten sprawdza umiejętności tworzenia małej bazy danych przy użyciu standardowego pakietu bazy danych oraz tworzenia prostych zapytań i raportów z istniejącej bazy danych.');
INSERT INTO przedmioty(Przedmiot_id, nazwa, opis)  VALUES (6, 'Grafika komputerowa', 'Przedmiot ten sprawdza umiejętność używania narzędzi do tworzenia prezentacji multimedialnych oraz prostej grafiki.');
INSERT INTO przedmioty(Przedmiot_id, nazwa, opis)  VALUES (7, 'Usługi w sieciach rozległych', 'Przedmiot ten sprawdza znajomość pojęć sieciowych, umiejętność korzystania z poczty elektronicznej i wiedzę o tym, co jest dostępne w sieciowych serwisach informacyjnych.');
INSERT INTO przedmioty(Przedmiot_id, nazwa, opis)  VALUES (8, 'Elementy fizyki', 'Pierwsza pracownia fizyczna - ćwiczenia laboratoryjne.');


CREATE TABLE zaliczenia (
  nr_zal   			NUMERIC(7) NOT NULL PRIMARY KEY,
  student_id		VARCHAR(7) NOT NULL,
  przedmiot_id		NUMERIC(1) NOT NULL,
  wykladowca_id		VARCHAR(4) NOT NULL,
  data_zal			DATE,
  kierunek_id		NUMERIC(2) NOT NULL,
  wynik				VARCHAR(10)
);

ALTER TABLE zaliczenia ADD FOREIGN KEY (student_id) REFERENCES studenci (student_id);
ALTER TABLE zaliczenia ADD FOREIGN KEY (przedmiot_id) REFERENCES przedmioty (przedmiot_id);
ALTER TABLE zaliczenia ADD FOREIGN KEY (wykladowca_id) REFERENCES wykladowcy (wykladowca_id);
ALTER TABLE zaliczenia ADD FOREIGN KEY (kierunek_id) REFERENCES kierunki (kierunek_id);

INSERT INTO zaliczenia VALUES (1, '0000049', 1, '0004', '2007-01-05', 1, 'Zaliczony');
INSERT INTO zaliczenia VALUES (2, '0000050', 1, '0004', '2007-01-12', 1, 'Zaliczony');
INSERT INTO zaliczenia VALUES (3, '0000049', 2, '0004', '2007-01-02', 1, 'Zaliczony');
INSERT INTO zaliczenia VALUES (4, '0000050', 2, '0004', '2007-01-12', 1, 'Zaliczony');
INSERT INTO zaliczenia VALUES (5, '0000060', 1, '0001', '2011-02-20', 2, 'Zaliczony');
INSERT INTO zaliczenia VALUES (6, '0000061', 1, '0002', '2011-02-10', 2, 'Zaliczony');
INSERT INTO zaliczenia VALUES (7, '0000049', 3, '0005', '2010-04-19', 3, 'Zaliczony');
INSERT INTO zaliczenia VALUES (8, '0000050', 3, '0009', '2010-04-20', 2, 'Zaliczony');
INSERT INTO zaliczenia VALUES (9, '0000060', 2, '0006', '2010-04-27', 4, 'Zaliczony');
INSERT INTO zaliczenia VALUES (10, '0000060', 3, '0006', '2010-05-04', 4, 'Zaliczony');
INSERT INTO zaliczenia VALUES (11, '0000061', 2, '0004', '2010-05-07', 1, 'Zaliczony');
INSERT INTO zaliczenia VALUES (12, '0000061', 3, '0001', '2010-05-10', 2, 'Zaliczony');
INSERT INTO zaliczenia VALUES (13, '0000049', 4, '0004', '2010-02-20', 1, 'Zaliczony');
INSERT INTO zaliczenia VALUES (14, '0000050', 4, '0002', '2011-02-20', 1, 'Zaliczony');
INSERT INTO zaliczenia VALUES (15, '0000049', 5, '0008', '2010-03-30', 8, 'Zaliczony');
INSERT INTO zaliczenia VALUES (16, '0000050', 5, '0003', '2010-03-10', 2, 'Zaliczony');
INSERT INTO zaliczenia VALUES (17, '0000060', 4, '0009', '2011-03-11', 6, 'Zaliczony');
INSERT INTO zaliczenia VALUES (18, '0000061', 5, '0001', '2011-03-11', 8, 'Zaliczony');
INSERT INTO zaliczenia VALUES (19, '0000049', 6, '0007', '2010-04-26', 3, 'Zaliczony');
INSERT INTO zaliczenia VALUES (20, '0000060', 5, '0007', '2010-04-27', 4, 'Zaliczony');
INSERT INTO zaliczenia VALUES (21, '0000050', 6, '0004', '2010-04-30', 4, 'Zaliczony');
INSERT INTO zaliczenia VALUES (22, '0000060', 7, '0006', '2010-04-07', 5, 'Zaliczony');
INSERT INTO zaliczenia VALUES (23, '0000061', 6, '0002', '2009-04-23', 5, 'Zaliczony');
INSERT INTO zaliczenia VALUES (24, '0000049', 7, '0010', '2009-05-07', 9, 'Zaliczony');
INSERT INTO zaliczenia VALUES (25, '0000050', 7, '0010', '2009-05-09', 9, 'Zaliczony');
INSERT INTO zaliczenia VALUES (26, '0000060', 6, '0002', '2011-05-16', 1, 'Zaliczony');
INSERT INTO zaliczenia VALUES (27, '0000061', 4, '0007', '2011-05-28', 2, 'Zaliczony');
INSERT INTO zaliczenia VALUES (28, '0000061', 7, '0003', '2011-05-10', 2, 'Zaliczony');
INSERT INTO zaliczenia VALUES (29, '0000062', 1, '0001', '2011-05-21', 2, 'Zaliczony');
INSERT INTO zaliczenia VALUES (30, '0000062', 2, '0002', '2010-05-10', 3, 'Zaliczony');
INSERT INTO zaliczenia VALUES (31, '0000063', 7, '0009', '2009-03-21', 2, 'Zaliczony');
INSERT INTO zaliczenia VALUES (32, '0000062', 3, '0003', '2009-09-01', 9, 'Zaliczony');
INSERT INTO zaliczenia VALUES (33, '0000063', 6, '0006', '2009-09-02', 5, 'Zaliczony');
INSERT INTO zaliczenia VALUES (35, '0000063', 5, '0006', '2010-05-31', 9, 'Zaliczony');
INSERT INTO zaliczenia VALUES (36, '0000063', 2, '0005', '2009-06-10', 2, 'Zaliczony');
INSERT INTO zaliczenia VALUES (37, '0000062', 5, '0006', '2011-06-10', 2, 'Zaliczony');
INSERT INTO zaliczenia VALUES (38, '0000062', 4, '0004', '2009-07-01', 10, 'Zaliczony');
INSERT INTO zaliczenia VALUES (39, '0000063', 3, '0003', '2009-07-04', 4, 'Zaliczony');
INSERT INTO zaliczenia VALUES (40, '0000063', 4, '0004', '2009-07-09', 10, 'Zaliczony');
INSERT INTO zaliczenia VALUES (41, '0000063', 1, '0002', '2011-07-01', 1, 'Negatywny');
INSERT INTO zaliczenia VALUES (42, '0000062', 6, '0007', '2011-07-02', 4, 'Zaliczony');
INSERT INTO zaliczenia VALUES (43, '0000062', 7, '0008', '2009-09-03', 1, 'Zaliczony');
INSERT INTO zaliczenia VALUES (44, '0000063', 1, '0002', '2011-07-01', 1, 'Zaliczony');
INSERT INTO zaliczenia VALUES (45, '0500324', 1, '0001', '2011-09-20', 1, 'Negatywny');
INSERT INTO zaliczenia VALUES (46, '0500323', 2, '0003', '2011-09-10', 1, 'Negatywny');
INSERT INTO zaliczenia VALUES (47, '0500324', 2, '0003', '2010-09-09', 1, 'Negatywny');
INSERT INTO zaliczenia VALUES (48, '0500324', 1, '0006', '2010-09-11', 1, 'Zaliczony');
INSERT INTO zaliczenia VALUES (49, '0500323', 1, '0006', '2005-09-12', 1, 'Zaliczony');
INSERT INTO zaliczenia VALUES (50, '0500323', 2, '0004', '2010-09-24', 1, 'Zaliczony');
INSERT INTO zaliczenia VALUES (51, '0500324', 2, '0004', '2007-09-10', 1, 'Zaliczony');
INSERT INTO zaliczenia VALUES (52, '0500323', 3, '0008', '2007-10-01', 10, 'Zaliczony');
INSERT INTO zaliczenia VALUES (53, '0500323', 4, '0009', '2007-09-28', 9, 'Zaliczony');
INSERT INTO zaliczenia VALUES (54, '0500324', 3, '0008', '2009-09-30', 10, 'Zaliczony');
INSERT INTO zaliczenia VALUES (55, '0500324', 4, '0009', '2009-09-14', 8, 'Zaliczony');
INSERT INTO zaliczenia VALUES (56, '0500323', 5, '0008', '2009-11-10', 6, 'Zaliczony');
INSERT INTO zaliczenia VALUES (57, '0500323', 7, '0009', '2010-10-30', 4, 'Zaliczony');
INSERT INTO zaliczenia VALUES (58, '0500324', 5, '0008', '2010-10-20', 5, 'Zaliczony');
INSERT INTO zaliczenia VALUES (59, '0500323', 6, '0009', '2010-10-10', 9, 'Zaliczony');
INSERT INTO zaliczenia VALUES (60, '0500324', 7, '0009', '2010-10-18', 6, 'Zaliczony');
INSERT INTO zaliczenia VALUES (61, '0500324', 6, '0008', '2010-10-19', 9, 'Negatywny');
INSERT INTO zaliczenia VALUES (62, '0500324', 4, '0009', '2010-10-21', 1, 'Zaliczony');


-- Szacowane poziomy trudności:
-- [bardzo łatwe]/[łatwe]/[średnie]/[trochę trudne]/[trudne]

-- 1. Wyświetlić wszystkie informacje z tabeli przedmioty z wyjątkiem pola opis. [bardzo łatwe]

select  przedmiot_id, nazwa, rodzaj, ECTS from przedmioty;

-- 2. Wyświetlić podstawowe informacje o studentach (nazwisko, imie, student_id) 
-- posortowane malejąco wg nazwiska. [bardzo łatwe]

select  nazwisko, imie, student_id from studenci order by nazwisko desc;

-- 3. Wyświetlić informacje (nazwisko, imie, id) o wykładowcach z Lublina. [bardzo łatwe]

select nazwisko,imie, wykladowca_id from wykladowcy where miasto ='Lublin';
select nazwisko,imie, wykladowca_id from uczelnia2024.wykladowcy where upper(miasto) = 'LUBLIN'


-- 4. Podać informacje, kiedy egzaminowany o id 0000049 zdawał egzaminy z poszczególnych
-- przedmiotów. Uporządkować informacje według czasu zdawania egzaminów. Zmienić format
-- wyświetlania daty tak, by wyświetlana była także informacja o nazwie miesiąca, w którym
-- zdawano egzamin a kolejne elementy daty były oddzielone znakiem /. 08/April/2020 [bardzo łatwe]

select przedmioty.nazwa, to_char(data_zal,'DD/mon/YYYY')  from zaliczenia,przedmioty where przedmioty.przedmiot_id = zaliczenia.przedmiot_id  and student_id ='0000049' order by data_zal;

-- 5. Z jakich przedmiotów przeprowadził egzaminy wykładowca o kodzie 0009? [bardzo łatwe/łatwe]

select p.nazwa  from przedmioty p, zaliczenia z where p.przedmiot_id = z.przedmiot_id and z.wykladowca_id ='0009';

-- 6. Jakie osoby były egzaminowane przez wykładowcę o kodzie 0001? [bardzo łatwe/łatwe]

select s.student_id, s.nazwisko, s.imie from studenci s, zaliczenia z where s.student_id = z.student_id and z.wykladowca_id ='0001';

-- 7. Podać informację, w jakie dni tygodnia student o id 0000060 zdawał poszczególne przedmioty. [bardzo łatwe]

select p.nazwa, to_char(z.data_zal,'D'), to_char(z.data_zal,'Day')  from zaliczenia z , przedmioty p where p.przedmiot_id = z.przedmiot_id; 

-- 8. Wyświetlić informację, kto, jaki przedmiot i kiedy zdawał w okresie 
-- od 20 kwietnia 2009 do 20 maja 2009. [bardzo łatwe/łatwe]

select s.student_id,s.nazwisko,s.imie,p.nazwa,z.data_zal  from zaliczenia z, studenci s, przedmioty p where z.student_id = s.student_id and p.przedmiot_id = z.przedmiot_id and z.data_zal between '20.04.2009' and '20.05.2009';


-- 9. Jakie przedmioty zdali już egzaminowani o id 0000061 i 0500323? [łatwe]
select distinct p.nazwa  from zaliczenia z, przedmioty p where z.przedmiot_id = p.przedmiot_id and z.wynik ='Zaliczony' and( z.student_id ='0000061' or z.student_id ='0500323');


-- 10. Wyświetlić tych studentów (nazwisko, imie, id), którzy jeszcze nie zdawali przedmiotu o id=7. [łatwe/średnie]

select s.nazwisko,s.imie,s.student_id  from studenci s where not exists(select from zaliczenia z  where z.student_id = s.student_id  and z.przedmiot_id = 7);

-- 11. Wyświetlić informacje o tych kierunkach (id, nazwa), z których nie przeprowadzono jeszcze
-- żadnego zaliczenia. [łatwe]

select k.kierunek_id ,k.nazwa  from kierunki k where not exists (select from zaliczenia z where z.kierunek_id=k.kierunek_id);
select k.kierunek_id, k.nazwa,z.nr_zal  from kierunki k left join zaliczenia z on (z.kierunek_id=k.kierunek_id ) where z.nr_zal is null ; 
-- 12. Którzy wykładowcy mają nazwiska zaczynające się na literę B. Podać ich nazwisko, imię oraz
-- identyfikator? [bardzo łatwe]
select w.wykladowca_id,w.imie,w.nazwisko  from wykladowcy w where nazwisko like 'B%'


-- 13. Podać jakie przedmioty zdawano kierunku numer 3 w miesiącu kwietniu 2010 roku. !!ZMIANA!! [bardzo łatwe]

select * from przedmioty p,zaliczenia z where p.przedmiot_id = z.przedmiot_id and z.kierunek_id = 3 and extract (month from z.data_zal)=4 and extract (year from z.data_zal) = 2010;


-- 14. Ile zaliczeń przeprowadził wykładowca o numerze 0006? !!ZMIANA!! [bardzo łatwe]

select count(*) from zaliczenia z  where z.wykladowca_id ='0006'

-- 15. Podać datę pierwszego i ostatniego zaliczenia przeprowadzonego z kierunku o numerze 1. [bardzo łatwe]
select min(z.data_zal) as Pierwsze_zaliczenie, max(z.data_zal) as Drugie_zaliczenie  from zaliczenia z where kierunek_id = 1;


-- 16. W ilu zaliczeniach student o id 0500324 uzyskał pozytywny wynik? [bardzo łatwe]

select count(*) as Pozytwne from zaliczenia z where z.student_id =  '0500324' and z.wynik = 'Zaliczony';  

-- 17. Ile zaliczeń przeprowadzono z poszczególnych kierunków? [łatwe] 

select z.kierunek_id, count(*) as Liczba_zaliczen  from zaliczenia z group by z.kierunek_id;  

-- 18. Ile osób podeszło do zaliczenia z poszczególnych przedmiotów? [łatwe] 

select z.przedmiot_id, p.nazwa, count(z.student_id)  from zaliczenia z,przedmioty p where z.przedmiot_id  = p.przedmiot_id  group by z.przedmiot_id, p.nazwa ;
select * from zaliczenia z;

-- 19. Ile zaliczeń przeprowadzili poszczególni wykładowcy, uwzględnić wszystkich wykładowców? [łatwe/średnie] 

select z.wykladowca_id, count(*) as Liczba_zaliczen from zaliczenia z group by z.wykladowca_id; 

-- 20. Którzy wykładowcy przeprowadzili więcej niż 10 zaliczeń? [łatwe/średnie] 

select z.wykladowca_id, count(*) as Liczba_zaliczen from zaliczenia z  group by z.wykladowca_id having count(*) >10; 

-- 21. Z których kierunków przeprowadzono więcej niż 7 zaliczeń? [łatwe/średnie] 

select z.kierunek_id, k.nazwa  from zaliczenia z,kierunki k where z.kierunek_id = k.kierunek_id group by z.kierunek_id, k.nazwa  having count(*) >7;

-- 22. Jaki przedmiot był zaliczany przez więcej niż 5 studentów? [łatwe/średnie] 

select z.przedmiot_id,p.nazwa  from zaliczenia z,przedmioty p where z.przedmiot_id = p.przedmiot_id group by z.przedmiot_id, p.nazwa having count(z.student_id) >7 ;


-- 23. Na ilu kierunkach studiuje każdy ze studentów?
-- a) pomijając studentów, którzy nie mają nic zaliczone [łatwe]

select z.student_id,s.imie,s.nazwisko,  count(distinct z.kierunek_id) as Liczba_Kierunkow from zaliczenia z,studenci s 
where z.student_id = s.student_id and exists(select * from zaliczenia z2 where  z2.student_id = s.student_id and z2.wynik='Zaliczony')  group by z.student_id,s.imie,s.nazwisko;
select * from studenci s;
select * from zaliczenia z;
select * from kierunki k ;
select * from zaliczenia z2 where z2.wynik='Negatywny';
select * from przedmioty p;
-- b) uwzględniając studentów, którzy nie mają nic zaliczone [średnie]

select z.student_id,s.imie,s.nazwisko,  count(distinct z.kierunek_id) as Liczba_Kierunkow from zaliczenia z,studenci s 
where z.student_id = s.student_id and not exists(select * from zaliczenia z2 where  z2.student_id = s.student_id and z2.wynik='Zaliczony')  group by z.student_id,s.imie,s.nazwisko;

-- 24. Ile punktów ECTS ma zgromadzone każdy ze studentów?
-- a) pomijając studentów, którzy nie mają nic zaliczone [średnie]

select z.student_id,s.imie,s.nazwisko, sum(p.ects) as Liczba_punktow from zaliczenia z,studenci s, przedmioty p  
where z.student_id = s.student_id and z.przedmiot_id = p.przedmiot_id  and exists(select * from zaliczenia z2 where  z2.student_id = s.student_id and z2.wynik='Zaliczony')  group by z.student_id,s.imie,s.nazwisko;

-- b) uwzględniając studentów, którzy nie mają nic zaliczone [średnie/trochę trudne]

select z.student_id,s.imie,s.nazwisko, sum(p.ects) as Liczba_punktow from zaliczenia z,studenci s, przedmioty p  
where z.student_id = s.student_id and z.przedmiot_id = p.przedmiot_id  and not exists(select * from zaliczenia z2 where  z2.student_id = s.student_id and z2.wynik='Zaliczony')  group by z.student_id,s.imie,s.nazwisko;

-- 25. Ilu studentów ukończyło poszczególne kierunki (zdobyło wymaganą liczbę punktów ECTS)? [trochę trudne]

select k.nazwa,(select count(*) as Ilu_Zdalo from studenci s where (select sum(p2.ects) from zaliczenia z3, przedmioty p2 
where z3.przedmiot_id=p2.przedmiot_id and s.student_id = z3.student_id and z3.wynik='Zaliczony') >=k.s_ects ) from kierunki k; 



-- 26. Jaka jest średnia wyników zaliczeń (0.0 - 1.0) dla poszczególnych kierunków, za rok 2009? [łatwe/średnie]

select  count(case when z.wynik = 'Zaliczony' then 1 end)::real / count(*)::real  from kierunki k , zaliczenia z 
where k.kierunek_id  = z.kierunek_id and extract(year from z.data_zal) =2009 group by k.kierunek_id;



-- 27. Podać datę pierwszego i ostatniego zaliczenia przeprowadzonego na kierunku „Gry i multimedia”. [bardzo łatwe]

select z.kierunek_id,k.nazwa , min(z.data_zal) as Pierwsze_zaliczenie, max(z.data_zal) as Ostatnie_zaliczenie  
from zaliczenia z,kierunki k  where z.kierunek_id = k.kierunek_id and z.kierunek_id = 4 group by z.kierunek_id,k.nazwa  ;

-- 28. W którym miesiącu i którego roku przeprowadzono najwięcej zaliczeń?
-- a) bez uwzględnienia remisów: [łatwe/średnie]

select extract (month from data_zal) as miesiac , extract(year from data_zal) as rok,
count(*) as ilosc from zaliczenia group by extract (month from data_zal),extract(year from data_zal) order by ilosc desc limit 1;

-- b) z uwzględniem remisów: [średnie]
select extract (month from data_zal) as miesiac , extract(year from data_zal) as rok,
count(*) as ilosc from zaliczenia group by extract (month from data_zal),extract(year from data_zal) 
having count(*)  = (select count(*) as ilosc from zaliczenia group by extract (month from data_zal),extract(year from data_zal )order by ilosc desc limit 1);


-- 29. Który wykładowca przeprowadził najwięcej zaliczeń z poszczególnych przedmiotów? [trudne]

select p.nazwa, (select z.wykladowca_id  from zaliczenia z  where p.przedmiot_id = z.przedmiot_id  group by z.wykladowca_id order by count(*) desc limit 1) from przedmioty p;  

--select count(*),z.wykladowca_id  from zaliczenia z group by z.wykladowca_id order by count(*) desc limit 1;

-- 30. Który student jako pierwszy podszedł do zaliczenia w ramach każdego z kierunków? [trudne]

select z2.student_id,z2.kierunek_id,z2.data_zal from (select z.kierunek_id, min(z.data_zal) as Najwczesniejsze_Zaliczenie  
from zaliczenia z group by z.kierunek_id)  MM, zaliczenia z2 where z2.data_zal = MM.Najwczesniejsze_Zaliczenie;

-- 31. Który student zdobył najwięcej punktów ECTS w ramach poszczególnych kierunków? [trudne]

select k.nazwa ,  
(select z.student_id 
from zaliczenia z, przedmioty p where z.przedmiot_id = p.przedmiot_id and z.wynik ='Zaliczony'
and z.kierunek_id = k.kierunek_id  
group by z.kierunek_id , z.student_id  order by sum(p.ects) desc limit 1)
from kierunki k;


-- 32. Który student uzyskał negatywny wynik zaliczeń? [bardzo łatwe]



-- 33. Który student uzyskał wynik negatywny najwięcej razy?
-- a) bez uwzględnienia remisów: [łatwe]

select student_id , count(*) from zaliczenia z where z.wynik  = 'Negatywny' group by z.student_id  order by count(*) desc limit 1;

-- b) z uwzględniem remisów: [średnie/trochę trudne]
select student_id from zaliczenia z where z.wynik  = 'Negatywny' group by student_id  having count(*) = 
(select count(*) from zaliczenia z where z.wynik  = 'Negatywny' group by student_id  order by count(*) desc limit 1)

-- 34. Z którego przedmiotu najwięcej razy wystawiono negatywną ocenę z zaliczenia?
-- a) bez uwzględnienia remisów: [łatwe]
 select count(*),z.przedmiot_id  from zaliczenia z where z.wynik  = 'Negatywny' group by przedmiot_id order by count(*) desc limit 1

-- b) z uwzględniem remisów: [średnie/trochę trudne]

select przedmiot_id  from zaliczenia z where z.wynik  = 'Negatywny' group by przedmiot_id having count(*) =
(select count(*) from zaliczenia z where z.wynik  = 'Negatywny' group by przedmiot_id order by count(*) desc limit 1)

-- WIDOKI

-- 1. Stworzyć widok STUDENCI_SECURE zawierające następujące informacje z tabeli studenci:
-- student_id, nazwisko, imie, miasto, ulica, numer, kod. [bardzo łatwe]

create view STUDENCI_SECURE as select student_id,nazwisko,imie,miasto,ulica,numer ,kod  from studenci; 


-- 2. Na podstawie widoku STUDENCI_SECURE wyświetlić informacje o studentach z Rzeszowa. [bardzo łatwe]

select * from STUDENCI_SECURE where miasto ='Rzeszów'

-- 3. Stworzyć widok STUDENCI_ECTS prezentujący dane studenta uzupełnione o liczbę aktualnie
-- uzyskanych punktów ECTS w ramach poszczególnych kierunków. Uwzględnić tylko te
-- kierunki, na których dany student podszedł do zaliczenia. [średnie]

create view STUDENCI_ECTS as select s.student_id ,s.imie, s.nazwisko , z.kierunek_id, sum(p.ects) 
from studenci s, zaliczenia z, przedmioty p where s.student_id = z.student_id and z.przedmiot_id = p.przedmiot_id and z.wynik = 'Zaliczony' group by s.student_id , z.kierunek_id;
select * from STUDENCI_ECTS;

-- 4. Na podstawie perspektywy STUDENCI_ECTS wyświetlić informację jaki kierunek
-- poszczególni studenci już ukończyli. [łatwe]

SELECT se.student_id, se.nazwisko, se.imie, se.kierunek_id, k.nazwa AS
nazwa_kierunku
FROM STUDENCI_ECTS se
JOIN kierunki k ON se.kierunek_id = k.kierunek_id
WHERE se.suma_ects >= k.s_ects;
-- 5. Utworzyć widok WYKADOWCY_WYNIKI_ZAL informujący o liczbie zaliczeń
-- przeprowadzonych przez poszczególnych wykładowców z poszczególnych przedmiotów.
-- Należy osobno zliczyć i zaprezentować liczbę zaliczeń ogółem, liczbę pozytywnych oraz liczbę zaliczeń z wynikiem
-- negatywnym. [średnie]
CREATE VIEW WYKADOWCY_WYNIKI_ZAL AS
SELECT wykladowca_id, przedmiot_id,
COUNT(*) AS liczba_zaliczen_ogolem,
COUNT(CASE WHEN wynik = 'Zaliczony' THEN 1 END) AS
liczba_zaliczen_pozytywnych,
COUNT(CASE WHEN wynik != 'Zaliczony' THEN 1 END) AS
liczba_zaliczen_negatywnych
FROM zaliczenia
GROUP BY wykladowca_id, przedmiot_id;

-- 6. Na podstawie widoku WYKADOWCY_WYNIKI_ZAL, ustalić jaki odsetek przeprowadzonych
-- zaliczeń stanowią zaliczenia z wynikiem negatywnym. [łatwe]
SELECT wykladowca_id, przedmiot_id,
liczba_zaliczen_ogolem,
liczba_zaliczen_negatywnych,
(CAST(liczba_zaliczen_negatywnych AS FLOAT) / liczba_zaliczen_ogolem) *
100 AS procent_negatywnych
FROM WYKADOWCY_WYNIKI_ZAL;

-- 7. Usunąć utworzone widoki. [bardzo łatwe]
DROP VIEW IF EXISTS STUDENCI_SECURE;
DROP VIEW IF EXISTS STUDENCI_ECTS;
DROP VIEW IF EXISTS WYKADOWCY_WYNIKI_ZAL;
