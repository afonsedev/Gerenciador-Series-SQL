call consultarSerie();
call consultarEpisodio(10, 1, 1);

call criarEpisodio(10, 3, 2, 'The Calm', 'The Calm', '2014-10-08',  60,  'Episódio adicionado', null);
select ds_sinopse from episodio where cd_serie = 10 and cd_temporada = 3 and cd_episodio = 2;

call editarEpisodio(10, 3, 2, 55);
select ii_duracao from episodio where cd_serie =10 and cd_temporada = 3 and cd_episodio = 2;

call excluirEpisodio(10, 3, 2);

call criarGenero(21, 'Anime');
select nm_genero from genero where cd_genero = 21;
select nm_genero from genero;

call editarGenero(21, 'Podcast');
select nm_genero from genero where cd_genero = 21;

call excluirGenero (21, 'Podcast');
-- delete from genero where cd_genero = 21;
