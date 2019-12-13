select * from autor;
# izlistava tabelu autor;
*
use biblioteka;
select ime from autor;
#izlistava kolonu imena siz tabele autor;

*

update autor set prezime = "Andric" where ime "Ivo";

#izlistaj mi tabelu autor i u koloni u kojoj se nalazi Andric naci sa imenom Ivo

*
select * from kupac where prezime = 'Jankovic' ;

#izlistaj mi sva prezimena sa prezimenom Jankovic u koloni kupac

*
select ime, prezime from kupac k  where ime = 'Marko' order by ime;

#tip podataka bi bio rezultat uzlaznom i silaznom redosledu

*

select id_autor, biografija, count(*) from autor a;

#iz tabele autor, izracunaj koliko ima ukuono id_autor i biografija? (6)

select id_autor, biografija, count(*) from autor a 
group by id_autor, biografija having count(*)>1;

# iz kolone id_autor i biografija izlistaj koji imaju vise od jednog istog id_autora i biografiju

