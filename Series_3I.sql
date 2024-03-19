Drop Schema if Exists Series_3N;
Create Schema Series_3N;
Use Series_3N;

Create Table serie
(
   cd_serie int, 
   nm_adaptado varchar(200),
   nm_original varchar(200),
   ds_sinopse text,
   aa_lancamento int, 
   constraint pk_serie primary key (cd_serie)
);

Create Table genero
(
   cd_genero int,
   nm_genero varchar(200),
   constraint pk_genero primary key (cd_genero)
);

Create Table serie_genero
(
   cd_serie int,   
   cd_genero int,
   constraint pk_serie_genero primary key (cd_serie, cd_genero),
   constraint fk_serie_genero_serie foreign key (cd_serie)
      references serie(cd_serie),
   constraint fk_serie_genero_genero foreign key (cd_genero)
      references genero(cd_genero)
);

Create Table episodio
(
   cd_serie int,
   cd_temporada int,
   cd_episodio int, 
   nm_adaptado varchar(255),
   nm_original varchar(255),
   dt_exibicao date,
   ii_duracao int,
   ds_sinopse text,
   ds_observacao text,
   constraint pk_episodio primary key (cd_serie, cd_temporada, cd_episodio),
   constraint fk_episodio_serie foreign key (cd_serie)
      references serie(cd_serie)
);

/* GENERO */
Insert into genero values (1,'Ação');
Insert into genero values (2,'Animação');
Insert into genero values (3,'Aventura');
Insert into genero values (4,'Comédia');
Insert into genero values (5,'Documentário');
Insert into genero values (6,'Drama');
Insert into genero values (7,'Fantasia');
Insert into genero values (8,'Ficção científica');
Insert into genero values (9,'Horror');
Insert into genero values (10,'Musical');
Insert into genero values (11,'Romance');
Insert into genero values (12,'Suspense');
Insert into genero values (13,'Terror');
Insert into genero values (14,'Western');
Insert into genero values (15,'Crime');
Insert into genero values (16,'Família');
Insert into genero values (17,'Guerra');
Insert into genero values (18,'Mistério');
Insert into genero values (19,'Histórico');
Insert into genero values (20,'Biográfico');

/* SERIES */

Insert into serie values (1,'Star Trek: Picard','Star Trek: Picard','O capitão Jean-Luc Picard, outrora um dos oficiais mais renomados da Frota Estelar, embarca em uma nova aventura no século XXIV. Ele lidera uma tripulação diversificada em missões para desvendar segredos do passado e enfrentar desafios do presente, enquanto lida com suas próprias questões pessoais.', 2020);
Insert into serie values (2,'Friends', 'Friends', 'A série acompanha um grupo de amigos: Ross, Rachel, Monica, Chandler, Joey e Phoebe, que vivem em Nova York e enfrentam juntos os desafios da vida, trabalho, relacionamentos e amizade.', 1994);
Insert into serie values (3,'Stranger Things','Stranger Things','Um grupo de crianças em uma pequena cidade descobre uma série de eventos sobrenaturais e experimentos secretos do governo, quando um menino desaparece misteriosamente. Eles se unem para enfrentar forças sinistras, incluindo uma dimensão paralela conhecida como O Mundo Invertido.', 2016);
Insert into serie values (4,'The Big Bang Theory','The Big Bang Theory','A série acompanha um grupo de amigos nerds e socialmente desajeitados, incluindo os físicos Leonard e Sheldon, que vivem em frente a uma bela vizinha, Penny. A série mostra suas vidas cotidianas, seus interesses em ciência, quadrinhos e cultura nerd, e as dinâmicas de amizade e relacionamentos.', 2007);
Insert into serie values (5,'Três é Demais', 'Full House', 'Após a morte de sua esposa, o pai de família Danny Tanner pede ajuda ao seu cunhado Jesse e ao amigo Joey para cuidarem de suas três filhas. Juntos, eles enfrentam os desafios da paternidade e compartilham momentos divertidos e emocionantes na casa cheia de amor.', 1987);
Insert into serie values (6,'Agentes da S.H.I.E.L.D.', 'Marvel\'s Agents of S.H.I.E.L.D.', 'A série segue as aventuras de uma equipe de agentes especiais da S.H.I.E.L.D., uma organização secreta do governo, enquanto eles lidam com ameaças sobrenaturais, super-humanos e tecnologia avançada. Eles enfrentam desafios e investigam mistérios em um mundo pós Os Vingadores.', 2013);
Insert into serie values (7,'Supernatural', 'Supernatural', 'A série acompanha os irmãos Sam e Dean Winchester, que caçam criaturas sobrenaturais, demônios, fantasmas, monstros e outras ameaças sobrenaturais. Eles viajam pelos Estados Unidos em busca de respostas sobre a misteriosa morte de sua mãe e enfrentam desafios relacionados ao sobrenatural.' , 2005);
Insert into serie values (8,'Três é Demais', 'Fuller House', 'A série é uma continuação de Três é Demais (Full House) e acompanha D.J. Tanner-Fuller, que é agora uma veterinária e mãe solteira. Com a ajuda de sua irmã Stephanie e sua melhor amiga Kimmy, ela cria seus três filhos em São Francisco. A série apresenta um elenco nostálgico e segue as aventuras e desafios da vida em família.' , 2016);
Insert into serie values (9, 'Star Trek: Discovery', 'Star Trek: Discovery', 'A série se passa aproximadamente 10 anos antes dos eventos da série original Star Trek e acompanha as aventuras da tripulação da nave estelar USS Discovery. Eles exploram novos mundos, encontram novas formas de vida e enfrentam desafios intergalácticos enquanto descobrem segredos que podem mudar o curso da galáxia.' , 2017);
Insert into serie values (10,'Arrow', 'Arrow', 'A série acompanha a história de Oliver Queen, um bilionário que retorna para sua cidade natal depois de ficar preso em uma ilha por cinco anos. Ele se torna um vigilante encapuzado conhecido como Arqueiro Verde, lutando contra a criminalidade e corrupção em sua cidade. A série explora sua jornada pessoal, suas habilidades de combate e seus desafios em conciliar sua vida dupla.' , 2012);

/* SERIE GENERO */

Insert into serie_genero values (1, 6);
Insert into serie_genero values (1, 8);
Insert into serie_genero values (2, 4);
Insert into serie_genero values (3, 6);
Insert into serie_genero values (3, 7);
Insert into serie_genero values (4, 4);
Insert into serie_genero values (5, 4);
Insert into serie_genero values (5, 6);
Insert into serie_genero values (5, 16);
Insert into serie_genero values (6, 6);
Insert into serie_genero values (6, 7);
Insert into serie_genero values (6, 13);
Insert into serie_genero values (7, 6);
Insert into serie_genero values (7, 7);
Insert into serie_genero values (7, 13);
Insert into serie_genero values (8, 4);
Insert into serie_genero values (8, 6);
Insert into serie_genero values (8, 16);
Insert into serie_genero values (9, 1);
Insert into serie_genero values (9, 8);
Insert into serie_genero values (10, 1);
Insert into serie_genero values (10, 3);
Insert into serie_genero values (10, 15);

/* EPISODIOS */ 

-- PICARD
Insert into episodio values (1,1,1, 'Recordações', 'Remembrance', '2020-01-23',46, 'Jean-Luc Picard, agora aposentado da Frota Estelar, é abordado por uma jovem misteriosa com uma conexão com seu passado. Ele é levado a uma missão pessoal que o coloca de volta ao centro de uma conspiração galáctica.','O primeiro episódio de Star Trek: Picard é bem estruturado e consegue apresentar uma história intrigante, além de fazer referências à mitologia de Star Trek, como a presença de personagens e elementos dos episódios e filmes anteriores. O episódio também estabelece bem a personalidade de Picard como um personagem complexo e maduro, lidando com questões de arrependimento e saudade.');
Insert into episodio values (1,1,2, 'Mapas e Lendas', 'Maps and Legends', '2020-01-23', 46, 'Picard busca respostas sobre a missão da jovem misteriosa. Enquanto isso, a Frota Estelar lida com a ameaça dos sintéticos e o comodoro Oh mantém segredos sombrios.', null);
Insert into episodio values (1,1,3, 'O Fim é o Começo', 'The End is the Beginning', '2017-05-01', 22, 'Depois de refletir sobre o passado com Raffi, Picard contrata seu parceiro, Cristobal Rios, para ajudá-lo em sua busca por Bruce Maddox; O trabalho de Soji no cubo Borg chama a atenção do diretor executivo.', null);
Insert into episodio values (1,1,4, 'Candura Absoluta', 'Absolute Candor', '2017-05-01', 22, 'No caminho para Freecloud, Picard pede uma parada em um planeta romulano refugiado, onde se reúne com Elnor, o jovem romulano com quem fez amizade quatorze anos atrás; Narek continua a aprender mais sobre Soji.', null);
Insert into episodio values (1,1,5, 'Cidade de Poeira de Estrelas', 'Stardust City Rag', '2017-05-01', 22, 'A tripulação do La Sirena chega a Freecloud e encontra Bruce Maddox em uma situação precária, então Seven of Nine, o ex-Borg que eles pegaram recentemente, dá sua ajuda.', null);
Insert into episodio values (1,1,6, 'A Caixa Impossível', 'The Impossible Box', '2017-05-01', 22, 'Picard e a equipe rastreiam Soji até o cubo Borg, forçando Picard a enfrentar as memórias de ser Locutus; Narek acredita que encontrou uma maneira de explorar com segurança as informações de Soji.', null);
Insert into episodio values (1,1,7, 'Nepenthe', 'Nepenthe', '2017-05-01', 22, 'Picard e Soji, que está lutando para entender suas memórias recentemente desbloqueadas, viajam para um planeta que por acaso é o lar dos velhos amigos de Picard, Will Riker e Deanna Troi; Elnor e Hugh são deixados no cubo Borg para enfrentar Narissa.', null);
Insert into episodio values (1,1,8, ' Peças Quebradas', 'Broken Pieces', '2017-05-01', 22, 'Picard percebe o quão longe alguns irão para proteger segredos que remontam a gerações quando as verdades sobre o ataque a Marte são reveladas; Narissa ordena que seus guardas capturem Elnor, desencadeando uma reação em cadeia no cubo Borg.', null);
Insert into episodio values (1,1,9, ' Et in Arcadia Ego, Parte 1', 'Et in Arcadia Ego, Part 1', '2017-05-01', 22, 'Com os romulanos em sua perseguição, Picard e a tripulação finalmente chegam ao planeta natal de Soji - e descobrem mais do que esperavam sobre os habitantes', null);
Insert into episodio values (1,1,10, 'Et in Arcadia Ego, Parte 2', 'Et in Arcadia Ego, Part 2', '2017-05-01', 22, 'Picard e sua equipe enfrentam os romulanos e os sintéticos de Coppelius em um confronto final.', null);

-- FRIENDS
Insert into episodio values (2,1,1, 'The One Where Monica Gets a Roommate', 'The One Where Monica Gets a Roommate', '1994-09-22', 22, 'O episódio introduz os personagens principais e suas dinâmicas enquanto Monica recebe uma nova colega de quarto, Rachel, que acabou de deixar seu noivo no altar.', null);
Insert into episodio values (2,1,2, 'The One with the Sonogram at the End', 'The One with the Sonogram at the End', '1994-09-29', 22, 'Ross acompanha Carol para seu ultrassom e descobre o sexo do bebê, enquanto Chandler e Joey conhecem a atriz pornô que vive no prédio.', null);
Insert into episodio values (2,1,3, 'The One with the Thumb','The One with the Thumb', '1994-10-06', 22, 'Phoebe encontra um polegar em sua lata de refrigerante e Monica está pronta para sair com um homem mais jovem.', null);
Insert into episodio values (2,2,1, 'The One with Ross New Girlfriend', 'The One with Ross New Girlfriend', '1995-09-21', 22, 'Ross começa a namorar uma colega de trabalho, mas sua ex-esposa, Carol, está prestes a ter o bebê.', null);
Insert into episodio values (2,2,2, 'The One with the Breast Milk', 'The One with the Breast Milk', '1995-09-28', 22, 'Ross fica chocado quando descobre que a mãe de Chandler é uma ex-estrela pornô, enquanto Joey experimenta o leite materno de Phoebe.', null);
Insert into episodio values (2,3,1, 'The One with the Princess Leia Fantasy', 'The One with the Princess Leia Fantasy', '1996-09-19', 22, 'Monica surpreende Chandler com sua fantasia de Princesa Leia, enquanto Ross se preocupa com a amizade entre Rachel e Joey.', null);
Insert into episodio values (2,4,1, 'The One with the Jellyfish', 'The One with the Jellyfish', '1997-09-25', 22, 'Durante uma viagem à praia, Ross fica dividido entre dois amores, Rachel e Bonnie. Enquanto isso, Chandler sofre as consequências de uma brincadeira.', null);
Insert into episodio values (2,4,2, 'The One with the Cat', 'The One with the Cat', '1997-10-02', 22, 'Phoebe encontra um gato e acredita que seja a reencarnação de sua avó. Enquanto isso, Ross tenta convencer Rachel de que sua aventura na praia foi um erro.', null);
Insert into episodio values (2,4,3, 'The One with the Cuffs', 'The One with the Cuffs', '1997-10-09', 22, 'Chandler fica acidentalmente preso em um banheiro enquanto estava com uma mulher. Enquanto isso, Joey se torna o garoto-propaganda de um produto de proteção masculina.', null);
Insert into episodio values (2,4,4, 'The One with the Ballroom Dancing', 'The One with the Ballroom Dancing', '1997-10-16', 22, 'Monica decide aprender dança de salão e convence Joey a ser seu parceiro. Enquanto isso, Ross e Rachel têm dificuldades em definir os termos de seu relacionamento.', null);

-- STRANGER THINGS
Insert into episodio values (3,1,1, 'Capítulo Um: O Desaparecimento de Will Byers', 'Chapter One: The Vanishing of Will Byers', '2016-07-15', 48, 'O jovem Will Byers desaparece misteriosamente em Hawkins, Indiana, levando seus amigos a embarcar em uma busca perigosa e encontrar uma garota misteriosa com poderes sobrenaturais.', null);
Insert into episodio values (3,1,2, 'Capítulo Dois: A Estranha na Rua Maple', 'Chapter Two: The Weirdo on Maple Street', '2016-07-15', 55, 'Enquanto a busca por Will continua, a cidade de Hawkins fica em alerta quando um monstro misterioso começa a aterrorizar os moradores.', null);
Insert into episodio values (3,1,3, 'Capítulo Três: Holly, Jolly', 'Chapter Three: Holly, Jolly', '2016-07-15', 51, 'Enquanto Joyce busca respostas sobrenaturais para o desaparecimento de Will, Mike e seus amigos encontram uma maneira de se comunicar com ele, enquanto a amizade de Eleven com eles cresce.', null);
Insert into episodio values (3,2,1, 'Capítulo Um: MadMax', 'Chapter One: MadMax', '2017-10-27', 54, 'Um ano após os eventos da primeira temporada, uma nova ameaça aterroriza Hawkins, enquanto os meninos conhecem Max, uma nova colega de classe misteriosa.', null);
Insert into episodio values (3,2,2, 'Capítulo Dois: Gostosura ou Travessura','Chapter Two: Trick or Treat, Freak', '2017-10-27', 56, 'Enquanto o Halloween chega a Hawkins, Will enfrenta visões aterrorizantes, e Eleven descobre pistas sobre seu passado.', null);
Insert into episodio values (3,3,1, 'Capítulo Um: Suzie, Você Copiou?', 'Chapter One: Suzie, Do You Copy?', '2019-07-04', 51, 'No verão de 1985, enquanto a cidade se prepara para o Dia da Independência, os segredos de Hawkins são ameaçados por forças sinistras novamente.', null);

-- THE BIG BANG THEORY
Insert into episodio values (4,1,1, 'The Big Bran Hypothesis', 'The Big Bran Hypothesis', '2007-09-24', 22, 'Sheldon e Leonard conhecem Penny, sua nova vizinha, e tentam descobrir uma maneira de socializar com ela.', null);
Insert into episodio values (4,1,2, 'The Big Bran Hypothesis', 'The Big Bran Hypothesis','2007-10-01', 20, 'Sheldon tenta ajudar Leonard a se livrar de uma infestação de pombos em seu apartamento, enquanto Penny revela seu interesse em um de seus amigos.', null);
Insert into episodio values (4,1,3, 'The Fuzzy Boots Corollary', 'The Fuzzy Boots Corollary', '2007-10-08', 22, 'Leonard se sente intimidado quando um famoso físico visita o laboratório de Sheldon, enquanto Howard encontra uma maneira de impressionar as mulheres.', null);
Insert into episodio values (4,2,1, 'The Bad Fish Paradigm', 'The Bad Fish Paradigm', '2008-09-22', 22, 'Leonard enfrenta dificuldades em seu relacionamento com Penny, enquanto Sheldon tenta ajudar Raj a superar sua incapacidade de falar com mulheres.', null);
Insert into episodio values (4,2,2, 'The Codpiece Topology', 'The Codpiece Topology', '2008-09-29', 21, 'Sheldon se envolve em uma disputa territorial com um rival no trabalho, enquanto Penny tenta se tornar amiga de seus amigos nerds.', null);
Insert into episodio values (4,3,1, 'The Electric Can Opener Fluctuation', 'The Electric Can Opener Fluctuation', '2009-09-21', 22, 'Leonard tenta manter sua relação com Penny em segredo dos amigos, enquanto Sheldon lida com mudanças em sua rotina diária.', null);

-- FULL HOUSE
Insert into episodio values (5,1,1, 'Our Very First Show', 'Our Very First Show', '1987-09-22', 23, 'Danny Tanner, viúvo e pai de três filhas, recebe ajuda de seu cunhado Jesse e seu amigo Joey para cuidar das crianças e administrar a casa.', null);
Insert into episodio values (5,1,2, 'Our Very First Night', 'Our Very First Night', '1987-09-25', 23, 'Danny tem dificuldades em dormir sozinho pela primeira vez desde a morte de sua esposa, enquanto Jesse e Joey enfrentam os desafios de cuidar das crianças.', null);
Insert into episodio values (5,1,3, 'The First Day of School', 'The First Day of School', '1987-10-02', 23, 'As meninas enfrentam o primeiro dia de aula, cada uma com suas próprias preocupações e desafios, enquanto Danny lida com sua ansiedade de voltar a trabalhar.', null);
Insert into episodio values (5,2,1, 'Cutting It Close', 'Cutting It Close', '1988-10-14', 23, 'Stephanie corta o cabelo de Jesse sem permissão, causando tensões familiares, enquanto Danny tenta lidar com as demandas de seu novo emprego.', null);
Insert into episodio values (5,2,2, 'Tanner vs. Gibbler', 'Tanner vs. Gibbler', '1988-10-21', 23, 'Danny e Joey ficam em lados opostos durante um jogo de basquete entre as famílias Tanner e Gibbler, enquanto Jesse tenta se tornar um modelo.', null);
Insert into episodio values (5,3,1, 'Tanner Island', 'Tanner Island', '1989-09-22', 23, 'A família Tanner vai para uma ilha tropical para passar as férias de verão, onde enfrentam desafios, diversão e momentos de união.', null);

-- SHIELD
Insert into episodio values (6,1,1, 'Pilot', 'Pilot', '2013-09-24', 45, 'O agente Phil Coulson monta uma equipe de agentes altamente treinados para investigar casos estranhos e proteger o mundo de ameaças desconhecidas.', null);
Insert into episodio values (6,1,2, '0-8-4', '0-8-4', '2013-10-01', 45, 'A equipe de Coulson viaja para o Peru em busca de um objeto misterioso conhecido como 0-8-4, enquanto lidam com traição e confrontos perigosos.', null);
Insert into episodio values (6,1,3, 'The Asset', 'The Asset', '2013-10-08', 45, 'A equipe de Coulson é designada para proteger um cientista que está desenvolvendo um dispositivo perigoso e valioso.', null);
Insert into episodio values (6,2,1, 'Shadows', 'Shadows', '2014-09-23', 45, 'Após a queda da S.H.I.E.L.D., Coulson e sua equipe trabalham secretamente para proteger pessoas com poderes especiais enquanto enfrentam uma nova organização inimiga.', null);
Insert into episodio values (6,2,2, 'Heavy is the Head', 'Heavy is the Head', '2014-09-30', 45, 'Coulson e sua equipe enfrentam a ameaça do General Talbot enquanto tentam resgatar um amigo capturado.', null);
Insert into episodio values (6,3,1, 'Laws of Nature', 'Laws of Nature', '2015-09-29', 45, 'Após o surgimento de pessoas com poderes misteriosos, Coulson e sua equipe se esforçam para rastrear e proteger os Inumanos.', null);

-- SUPERNATURAL
Insert into episodio values (7,1,1, 'Piloto', 'Pilot', '2005-09-13', 45, 'Os irmãos Sam e Dean Winchester seguem o rastro de seu pai desaparecido, enfrentando criaturas sobrenaturais ao longo do caminho.', null);
Insert into episodio values (7,1,2, 'Wendigo', 'Wendigo', '2005-09-20', 45, 'Sam e Dean investigam o desaparecimento de pessoas em uma floresta, que está sendo assombrada por um lendário Wendigo.',null);
Insert into episodio values (7,1,3, 'Dead in the Water', 'Dead in the Water', '2005-09-27', 45, 'Sam e Dean vão a uma pequena cidade onde pessoas estão morrendo misteriosamente em um lago, e descobrem uma conexão com uma tragédia do passado.', null);
Insert into episodio values (7,2,1, 'In My Time of Dying', 'In My Time of Dying', '2006-09-28', 45, 'Após um acidente de carro grave, Dean luta entre a vida e a morte, enquanto Sam faz um pacto desesperado para salvá-lo.', null);
Insert into episodio values (7,2,2, 'Everybody Loves a Clown', 'Everybody Loves a Clown', '2006-10-05', 45, 'Sam e Dean investigam uma série de assassinatos em um circo itinerante, enquanto lidam com a perda de seu pai.', null);
Insert into episodio values (7,3,1, 'The Magnificent Seven', 'The Magnificent Seven', '2007-10-04', 45, 'Os irmãos Winchester enfrentam sete demônios mortais que estão espalhando caos e destruição pelo país.', null);

-- FULLER HOUSE
Insert into episodio values (8,1,1, 'Our Very First Show, Again', 'Our Very First Show, Again', '2016-02-26', 30, 'DJ Tanner-Fuller é uma veterinária e mãe recentemente viúva que precisa lidar com a vida agitada de criar três filhos, com a ajuda de sua irmã Stephanie e sua amiga Kimmy.', null);
Insert into episodio values (8,1,2, 'Moving Day', 'Moving Day', '2016-02-26', 30, 'DJ tenta se ajustar à nova vida de solteira enquanto lida com as confusões dos seus filhos, Stephanie encontra um novo emprego e Kimmy se muda para a casa de DJ com sua filha.', null);
Insert into episodio values (8,1,3, 'Funner House', 'Funner House', '2016-02-26', 30, 'DJ organiza uma festa de aniversário para seu filho mais novo, mas acaba enfrentando diversos desafios. Enquanto isso, Stephanie lida com uma questão pessoal importante.', null);
Insert into episodio values (8,2,1, 'Welcome Back', 'Welcome Back', '2016-12-09', 30, 'DJ tem dificuldades em administrar a casa e lidar com problemas familiares enquanto Stephanie planeja uma festa de aniversário surpresa para Kimmy.', null);
Insert into episodio values (8,2,2, 'Mom Interference', 'Mom Interference', '2016-12-09', 30, 'DJ e Stephanie entram em conflito quando tentam ajudar Kimmy com seu relacionamento. Enquanto isso, Jackson e Ramona se preparam para uma apresentação escolar.', null);
Insert into episodio values (8,3,1, 'Best Summer Ever', 'Best Summer Ever', '2017-09-22', 30, 'A família Fuller se reúne para as férias de verão e enfrenta desafios e aventuras juntos.', null);

-- DISCOVERY
Insert into episodio values (9,1,1, 'The Vulcan Hello', 'The Vulcan Hello', '2017-09-24', 60, 'A oficial da Frota Estelar, Michael Burnham, enfrenta um dilema ético ao se deparar com uma ameaça Klingon enquanto serve a bordo da USS Shenzhou.', null);
Insert into episodio values (9,1,2, 'Battle at the Binary Stars', 'Battle at the Binary Stars', '2017-09-24', 60, 'A USS Shenzhou se envolve em uma batalha épica contra as forças Klingon, levando a consequências devastadoras.', null);
Insert into episodio values (9,1,3, 'Context is for Kings', 'Context is for Kings', '2017-10-01', 60, 'Michael Burnham encontra-se a bordo da USS Discovery, uma nave estelar experimental com uma missão misteriosa, e precisa se adaptar a uma nova tripulação e uma nova realidade.', null);
Insert into episodio values (9,2,1, 'Brother', 'Brother', '2019-01-17', 60, 'A Discovery recebe um sinal de socorro de uma nave estelar em perigo e a tripulação embarca em uma missão de resgate arriscada que revela segredos surpreendentes.', null);
Insert into episodio values (9,2,2, 'New Eden', 'New Eden', '2019-01-24', 60, 'A Discovery investiga um planeta habitado por humanos que foram transportados para lá séculos atrás, enfrentando um dilema ético sobre a intervenção da Federação.', null);
Insert into episodio values (9,3,1, 'That Hope Is You, Part 1', 'That Hope Is You, Part 1', '2020-10-15', 60, 'Após um salto temporal, a comandante Michael Burnham se encontra em um futuro distante e precisa se adaptar a uma realidade desconhecida.', null);

-- ARROW
Insert into episodio values (10,1,1, 'Pilot', 'Pilot', '2012-10-10', 60, 'Após sobreviver a um naufrágio, Oliver Queen retorna para casa e se torna um vigilante, usando suas habilidades de arqueiro para combater o crime e proteger sua cidade.', null);
Insert into episodio values (10,1,2, 'Honor Thy Father', 'Honor Thy Father', '2012-10-17', 60, 'Oliver investiga um empresário corrupto que está envolvido em atividades ilegais. Enquanto isso, flashbacks revelam mais sobre sua vida na ilha.', null);
Insert into episodio values (10,1,3, 'Lone Gunmen', 'Lone Gunmen', '2012-10-24', 60, 'Oliver busca vingança contra um homem que está aterrorizando a cidade com uma série de assassinatos, mas acaba descobrindo uma conexão inesperada com seu passado.', null);
Insert into episodio values (10,2,1, 'City of Heroes', 'City of Heroes', '2013-10-09', 60, 'Após os eventos devastadores da temporada anterior, Oliver retorna a Starling City e deve enfrentar novas ameaças enquanto lida com as consequências de suas ações.', null);
Insert into episodio values (10,2,2, 'Identity', 'Identity', '2013-10-16', 60, 'Oliver tenta equilibrar sua vida como vigilante e empresário, enquanto um novo inimigo conhecido como O Máscara aparece na cidade.', null);
Insert into episodio values (10,3,1, 'The Calm', 'The Calm', '2014-10-08', 60, 'Oliver e Felicity tentam levar uma vida normal, mas são forçados a retornar à ação quando um novo vilão surge em Starling City.', null);
