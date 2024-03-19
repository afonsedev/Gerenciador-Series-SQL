Delimiter $$


-- Exibir séries na Combobox 
Drop Procedure if exists consultarSerie$$
Create Procedure consultarSerie()
begin
	Select nm_adaptado, cd_serie from serie;
end$$


-- Exibir informações sobre os episódios
drop procedure if exists consultarEpisodio$$
create procedure consultarEpisodio(Pcd_serie int, Pcd_temporada int, Pcd_episodio int /*Pnm_adaptado varchar (255), 
															  Pnm_original varchar(255), Pdt_exibicao date, Pii_duracao int, Pds_sinopse text */)
begin
	select * from episodio 
	where cd_serie = Pcd_serie and cd_temporada = Pcd_temporada and cd_episodio = Pcd_episodio; /* and nm_adaptado = Pnm_adaptado and 
				nm_original = Pnm_original  and dt_exibicao = Pdt_exibicao and ii_duracao = Pii_duracao and ds_sinopse = Pds_sinopse;*/
end$$


drop procedure if exists criarEpisodio$$
-- especificar parâmetro
create procedure criarEpisodio(cd_serie int, cd_temporada int, cd_episodio int, nm_adaptado varchar (255), nm_original varchar(255), 
							   dt_exibicao date, ii_duracao int, ds_sinopse text, ds_observacao text)
begin
	Insert into episodio values (cd_serie, cd_temporada, cd_episodio, nm_adaptado, nm_original, dt_exibicao, ii_duracao, ds_sinopse, ds_observacao);
end$$


-- Editar episódio
drop procedure if exists editarEpisodio$$
create procedure editarEpisodio(Pcd_serie int, Pcd_temporada int, Pcd_episodio int, Pii_duracao int)
begin
	update episodio set ii_duracao = Pii_duracao where cd_serie = Pcd_serie and cd_temporada = Pcd_temporada and cd_episodio = Pcd_episodio;
end$$

 
-- Excluir Episódio
drop procedure if exists excluirEpisodio$$
create procedure excluirEpisodio(Pcd_serie int, Pcd_temporada int, Pcd_episodio int)
begin
	delete from episodio where cd_serie = Pcd_serie and cd_temporada = Pcd_temporada and cd_episodio = Pcd_episodio;
end$$ 


-- Criar Gênero
drop procedure if exists criarGenero$$
create procedure criarGenero (cd_genero int, nm_genero varchar(200) )
begin
	 insert into genero values (cd_genero, nm_genero);
end$$


-- Editar Gênero
drop procedure if exists editarGenero$$ 
create procedure editarGenero (Pcd_genero int, Pnm_genero varchar(200) )
begin
	update genero set nm_genero = Pnm_genero where cd_genero = Pcd_genero;
end$$


-- Excluir Gênero
drop procedure if exists excluirGenero$$
create procedure excluirGenero (Pcd_genero int, Pnm_genero varchar(200) )
begin
	delete from genero where cd_genero = Pcd_genero and nm_genero = Pnm_genero;
end$$


Delimiter ;