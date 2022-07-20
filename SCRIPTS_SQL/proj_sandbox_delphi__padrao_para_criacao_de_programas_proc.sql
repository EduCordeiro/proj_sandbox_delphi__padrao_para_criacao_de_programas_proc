CREATE DATABASE IF NOT EXISTS proj_sandbox_delphi__padrao_para_criacao_de_programas_proc;

DROP TABLE IF EXISTS       proj_sandbox_delphi__padrao_para_criacao_de_programas_proc.processamento;
CREATE TABLE IF NOT EXISTS proj_sandbox_delphi__padrao_para_criacao_de_programas_proc.processamento (
   SEQUENCIA                  INTEGER
  ,AUDIT                      varchar(008) default NULL
  ,CIF                        varchar(034) default NULL
  ,PAGINAS                    INTEGER
  ,FOLHAS                     INTEGER
  ,PAGINA_INICIAL             INTEGER
  ,PAGINA_FINAL               INTEGER
  ,NOME                       varchar(040) default NULL
  ,LOGRADOURO                 varchar(100) default NULL
  ,CEP                        varchar(009) default NULL
  ,FILLER_01                  varchar(001) default NULL
  ,FILLER_02                  varchar(001) default NULL
  ,FILLER_03                  varchar(001) default NULL
  ,FILLER_04                  varchar(001) default NULL
  ,FILLER_05                  varchar(001) default NULL
  ,CODIGO_BARRAS              varchar(044) default NULL
  ,FILLER_06                  varchar(001) default NULL
  ,FILLER_07                  varchar(005) default NULL
  ,NOME_2                     varchar(040) default NULL
  ,DEVOLUCAO                  varchar(010) default NULL
  ,LOTE                       varchar(005) default NULL
  ,DATA_POSTAGEM              varchar(006) default NULL
  ,ARQUIVO_AFP                varchar(050) default NULL
  ,ARQUIVO_ZIP                varchar(050) default NULL
  ,MOVIMENTO                  varchar(008) default NULL
  ,OF_FORMULARIO              varchar(010) default NULL
  ,PESO                       INTEGER
  ,ACABAMENTO                 varchar(020) default NULL
  ,PAPEL                      varchar(010) default NULL
  ,INDICE_CEP_PLANO           INTEGER
  ,ARQUIVO_COUNT              INTEGER
  ,PRIMARY KEY(SEQUENCIA)
);

DROP TABLE IF EXISTS       proj_sandbox_delphi__padrao_para_criacao_de_programas_proc.processamento2;
CREATE TABLE IF NOT EXISTS proj_sandbox_delphi__padrao_para_criacao_de_programas_proc.processamento2 (
   LINHA                      TEXT
  ,SEQUENCIA                  INTEGER
  ,ARQUIVO_AFP                VARCHAR(050) default NULL
  ,ARQUIVO_ZIP                varchar(050) default NULL
  ,MOVIMENTO                  varchar(008) default NULL
  ,PRIMARY KEY(SEQUENCIA)

);

drop table if exists proj_sandbox_delphi__padrao_para_criacao_de_programas_proc.tbl_entrada;
create table proj_sandbox_delphi__padrao_para_criacao_de_programas_proc.tbl_entrada(
  seq int auto_increment,
  tipo_reg varchar(2),
  OPERADORA varchar(3),
  CONTRATO varchar(9),
  arquivo varchar(100),
  textolinha VARCHAR(959),
  PRIMARY KEY(seq)
);
/*CREATE INDEX idx_tbl_entrada ON proj_sandbox_delphi__padrao_para_criacao_de_programas_proc.tbl_entrada (seq, tipo_reg, OPERADORA, CONTRATO, arquivo);*/


/*DROP TABLE IF EXISTS proj_sandbox_delphi__padrao_para_criacao_de_programas_proc.controle_arquivos;*/
CREATE TABLE IF NOT EXISTS proj_sandbox_delphi__padrao_para_criacao_de_programas_proc.controle_arquivos (
  LOTE                 int(10)      unsigned NOT NULL,
  DATA_INSERSAO        datetime              NOT NULL,
  ARQUIVO              varchar(100)          NOT NULL,
  PAGINAS              varchar(010)          NOT NULL,
  OBJETOS              varchar(010)          NOT NULL,
  PRIMARY KEY (LOTE, ARQUIVO),
  KEY idx_controle_arquivo (ARQUIVO)
);

CREATE TABLE IF NOT EXISTS proj_sandbox_delphi__padrao_para_criacao_de_programas_proc.LOTES_PEDIDOS (
  LOTE_PEDIDO      int     NOT NULL auto_increment,
  VALIDO           CHAR(1) NOT NULL default 'N',

  DATA_CRIACAO     DATETIME,
  CHAVE            VARCHAR(17),
  ID               VARCHAR(17),
  USUARIO_WIN      VARCHAR(20),
  USUARIO_APP      VARCHAR(20),
  IP               VARCHAR(14),
  LOTE_LOGIN       INT,

  RELATORIO_QTD    MEDIUMBLOB,
  HOSTNAME         varchar(15),
  PRIMARY KEY  (LOTE_PEDIDO)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
