 use biblioteka;

set foreign_key_checks = 0;
truncate dobavljac;
truncate izdavac;
truncate autor;
truncate kupac;
truncate knjiga;
set foreign_key_checks = 1;

   #dobavljac
   
insert into dobavljac ( brfirme, firma) values
    ('111111', 'Mikro knjiga - Crna Gora'),
    ('111112', 'Alba Greaca -Beograd'),
    ('111113', 'Princ DOO - Beograd'),
    ('111114', 'Alnari - Beograd'),
    ('111115', 'Libri -Banja Luka'),
    ('111116', 'Beoknjiga - Crna Gora');
    
   #izdavac 
   
   insert into izdavac( naziv, grad, drzava) values
    ('Admiral Books', 'Beograd', 'Srbija'),
     ('Akdademska', 'Sarajevo', 'Bosna i Hercegovina'),
      ('Books AGM', 'Skoplje', 'Makedonija'),
       (' Merkator', 'Podgorica', 'Crna Gora'),
        ('Algoritam', 'Novi Sad', 'Srbija'),
         ('Gradska knjizara', 'Bar', 'Crna Gora');
    
   
#autor
insert into autor( id_autor, ime, prezime, biografija) values
 ('1', 'Fjodor', 'Dostojevski', 'Fjodor Mihajlovič Dostojevski (rus. Фёдор Михайлович Достоевский; rođen 11. novembra, odnosno 30. oktobra po starom kalendaru, 1821. godine u Moskvi, preminuo 9. februara, odnosno 28. januara po starom kalendaru, 1881. godine u Sankt Peterburgu) bio je ruski pisac i jedan od najvećih pisaca svih vremena.'),
 ('2', 'Albert', 'Kami', 'Alber Kami (franc. Albert Camus; 7. novembar 1913 — 4. januar 1960) bio je francuski pisac, filozof i novinar. Dobitnik nobelove nagrade za književnost 1957. godine. Poznat je po svom karakterističnom stilu pisanja i tematikama svojih dela. Čitav njegov opus temelji se na ideji apsurda ljudske egzistencije. Modernog čoveka naziva bludnim, ciničnim monstrumom, a kao suprotnost svetu današnjice evocira antičku Grčku, koja je „u svemu znala naći pravu meru”.'),
 ('3', 'Ivo', 'Andric', 'Ivo Andrić (Dolac, kod Travnika, 9. oktobar 1892 — Beograd, 13. mart 1975) bio je srpski i jugoslovenski[a] književnik i diplomata Kraljevine Jugoslavije.'),
 ('4', 'Paulo', 'Koeljo', 'Rođen je u Rio de Žaneiru 24. avgusta 1947. godine. Vodio je izuzetno zanimljiv život. Duh pobune odredio je njegovu mladost: bio je hipik, pisao je tekstove za pesme nekolicine čuvenih brazilskih pop zvezda, uključujući Elisa Reginu i Raula Seišasa. Kratko posle toga zaposlio se kao novinar. Paulo Koeljo je proučavao magiju i okultizam od svoje 25. godine. Pošto je pešice prešao put dug 830 km na hodočašću do Santijaga de Kompostele, napisao je 1986. godine knjigu Dnevnik jednog čarobnjaka (port. O diário de um mago), koja je ubrzo postala bestseler u Brazilu.'), 
  ('5', 'Umberto', 'Eko', 'Umberto Eko (ital. Umberto Eco; Alesandrija, Pijemont, 5. januar 1932 — 19. februar 2016) bio je italijanski pisac, filozof, estetičar, semiolog, teoretičar književnosti, esejist i istoričar srednjeg veka. Poznat je po svojim romanima i značajnim esejističkim delima.'),
  ('6', 'Mihail', 'Bulgakov', 'Mihail Afanasijevič Bulgakov (rus. Михаи́л Афана́сьевич Булга́ков; Kijev, 15. maj 1891 — Moskva, 10. mart 1940) bio je ruski pisac, dramaturg i pozorišni reditelj. Pisao je na ruskom jeziku. Autor je velikog broja pripovedaka, priča, feljtona, pozorišnih komada, dramatizacija, filmskih scenarija i operskih libreta.');
  
 # kupac
 insert into kupac( id_kupac, ime, prezime, ulica, broj, mjesto, br_racuna) values
    ('1', 'Petar', 'Petrovic', 'Petrovicka', '10', 'CG', '1223344556' ),
        ('2', 'Marko', 'Markovic', 'Markovska', '13', 'CG', '56757344556' ),
            ('3', 'Janko', 'Jankovic', 'Jankovska', '43', 'SR', '122375676556' ),
                ('4', 'Milan', 'Milankovic', 'Milanska', '30', 'SR', '12233476564556' ),
                    ('5', 'Ivan', 'Ivanovic', 'Ivanska', '11', 'CG', '122787684556' ),
                        ('6', 'Mitar', 'Mitrovic', 'Mitrovska', '57', 'CG', '128768679344556' );
                        
 # knjiga 
                       
 insert into knjiga ( barcode, izdavaci, autori, naslov) values
    ('1234567890', 'Graska knjizara', 'Fjord Mihajlovic Dostojevski', 'Zlocin i kazna' ),
        ('99993239432', 'Graska knjizara', 'Albert Kami', 'Stranac' ),
            ('8888324890', 'Graska knjizara', 'Ivo Andric', 'Prokleta Avlija' ),
                ('23492302', 'Graska knjizara', 'Paulo Koeljo', 'Alhemicar' ),
                    ('334555521', 'Graska knjizara', 'Umberto Eko', 'Prasko groblje' ),
                        ('423423541', 'Graska knjizara', 'Mihail Bulgakov', 'Majstor i margarita' );
