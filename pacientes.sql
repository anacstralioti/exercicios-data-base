create database pacientes;

CREATE TABLE `bairros` (
  `idBairros` int(11) NOT NULL,
  `nomeBairro` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idBairros`)
);

CREATE TABLE `cidades` (
  `idCidades` int(11) NOT NULL,
  `nomeCidade` varchar(45) NOT NULL,
  PRIMARY KEY (`idCidades`)
);

CREATE TABLE `estadoscivis` (
  `idEstadosCivis` int(11) NOT NULL,
  `estadoCivil` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idEstadosCivis`)
);

CREATE TABLE `generos` (
  `idGeneros` int(11) NOT NULL,
  `genero` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idGeneros`)
);

CREATE TABLE `pacientes` (
  `idPaciente` int(11) NOT NULL,
  `CPF` varchar(11) NOT NULL,
  `NOME` varchar(100) NOT NULL,
  `DATA_NASCIMENTO` date NOT NULL,
  `ENDERECO` varchar(60) DEFAULT NULL,
  `Bairros_idBairros` int(11) NOT NULL,
  `CEP` varchar(8) DEFAULT NULL,
  `NOME_MAE` varchar(100) DEFAULT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  `NOME_SOCIAL` varchar(100) DEFAULT NULL,
  `PRONTUARIO` int(7) DEFAULT NULL,
  `UFs_idUFs` int(11) NOT NULL,
  `Cidades_idCidades` int(11) NOT NULL,
  `Religioes_idReligioes` int(11) NOT NULL,
  `TiposSanguineos_idTiposSanguineos` int(11) NOT NULL,
  `PlanosDeSaúde_idPlanosDeSaúde` int(11) NOT NULL,
  `Generos_idGeneros` int(11) NOT NULL,
  `EstadosCivis_idEstadosCivis` int(11) NOT NULL,
  PRIMARY KEY (`idPaciente`),
  KEY `fk_Pacientes_UFs1_idx` (`UFs_idUFs`),
  KEY `fk_Pacientes_Cidades1_idx` (`Cidades_idCidades`),
  KEY `fk_Pacientes_Religioes1_idx` (`Religioes_idReligioes`),
  KEY `fk_Pacientes_TiposSanguineos1_idx` (`TiposSanguineos_idTiposSanguineos`),
  KEY `fk_Pacientes_PlanosDeSaúde1_idx` (`PlanosDeSaúde_idPlanosDeSaúde`),
  KEY `fk_Pacientes_Bairros1_idx` (`Bairros_idBairros`),
  KEY `fk_Pacientes_EstadosCivis1_idx` (`EstadosCivis_idEstadosCivis`),
  KEY `fk_Pacientes_Generos1_idx` (`Generos_idGeneros`),
  CONSTRAINT `fk_Pacientes_Bairros1` FOREIGN KEY (`Bairros_idBairros`) REFERENCES `bairros` (`idBairros`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pacientes_Cidades1` FOREIGN KEY (`Cidades_idCidades`) REFERENCES `cidades` (`idCidades`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pacientes_EstadosCivis1` FOREIGN KEY (`EstadosCivis_idEstadosCivis`) REFERENCES `estadoscivis` (`idEstadosCivis`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pacientes_Generos1` FOREIGN KEY (`Generos_idGeneros`) REFERENCES `generos` (`idGeneros`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pacientes_PlanosDeSaúde1` FOREIGN KEY (`PlanosDeSaúde_idPlanosDeSaúde`) REFERENCES `planosdesaúde` (`idPlanosDeSaúde`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pacientes_Religioes1` FOREIGN KEY (`Religioes_idReligioes`) REFERENCES `religioes` (`idReligioes`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pacientes_TiposSanguineos1` FOREIGN KEY (`TiposSanguineos_idTiposSanguineos`) REFERENCES `tipossanguineos` (`idTiposSanguineos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pacientes_UFs1` FOREIGN KEY (`UFs_idUFs`) REFERENCES `ufs` (`idUFs`) ON DELETE NO ACTION ON UPDATE NO ACTION
);

CREATE TABLE `planosdesaúde` (
  `idPlanosDeSaúde` int(11) NOT NULL,
  `plano` varchar(45) DEFAULT NULL,
  `situacao` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`idPlanosDeSaúde`)
);

CREATE TABLE `religioes` (
  `idReligioes` int(11) NOT NULL,
  `Religiao` varchar(45) DEFAULT NULL,
  `ObservacoesReligiao` longtext,
  PRIMARY KEY (`idReligioes`)
);

CREATE TABLE `telefones` (
  `IDTELEFONES` int(11) NOT NULL AUTO_INCREMENT,
  `NRO_TELEFONE` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`IDTELEFONES`)
);

CREATE TABLE `tipossanguineos` (
  `idTiposSanguineos` int(11) NOT NULL,
  `tipoSanguineo` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`idTiposSanguineos`)
);

CREATE TABLE `ufs` (
  `idUFs` int(11) NOT NULL AUTO_INCREMENT,
  `UF` varchar(2) NOT NULL,
  `DescricaoUF` varchar(25) NOT NULL,
  PRIMARY KEY (`idUFs`)
);

INSERT INTO `pacientes` VALUES (1, '123.123.123', 'Martim', '0000-00-00', 'Rua dos Imigrantes, 350',
2, '89254-43', 'Mãe do Martim', 'martim.dietterle@catolicasc.org.br', 'Nome Social', 12123, 1, 2, 2, 1, 2, 2, 2),
(2, '12312312345', 'José', '2010-05-15', 'Rua dos Imigrantes, 500', 2, '89254-43', 'Mãe do José', 
'josedascouves@gmail.com', 'Samantha', 32123, 1, 2, 2, 1, 2, 2, 2), (3, '22312312345', 'Maria', '2010-05-15',
'Rua dos Imigrantes, 500', 2, '89254-43', 'Mãe do José', 'maria@gmail.com', 'Maria', 22123, 1, 1, 2, 2, 1, 2, 2);

INSERT INTO `ufs` VALUES (1,'SC','Santa Catarina'),(2,'RS','Rio Grande do Sul'),(10,'PR','Paraná'),(11,'SP','São Paulo');

select * from pacientes