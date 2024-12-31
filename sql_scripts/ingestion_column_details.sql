/* ------------------------------------------------------------------------ */
/* ----------------------- ingestion_column_details ----------------------- */
/* ------------------------------------------------------------------------ */

DROP TABLE IF EXISTS `dw-metadata-utilities.metadata_utilities.ingestion_column_details`;
CREATE TABLE IF NOT EXISTS `dw-metadata-utilities.metadata_utilities.ingestion_column_details` (
  column_name STRING NOT NULL, --ID
  datatype STRING NOT NULL, --STRING
  ordinal_position INT64 NOT NULL, --1
  mapping_column STRING, --ID
  source_system STRING NOT NULL, --COINCAP
  project_id STRING NOT NULL,
  dataset STRING NOT NULL, --COINCAP-DATA-HUB
  table_name STRING NOT NULL, --STG_COINCAP_ASSETS
  modified_by STRING NOT NULL, --ADMIN
  modified_date DATETIME  NOT NULL, --CURRENT_DATETIME
  created_by STRING NOT NULL, --ADMIN
  created_date DATETIME NOT NULL --CURRENT_DATETIME 
);


--ASSETS
INSERT INTO `dw-metadata-utilities.metadata_utilities.ingestion_column_details` 
(column_name,datatype,ordinal_position,mapping_column,source_system, project_id, dataset,table_name,modified_by,modified_date,created_by,created_date) VALUES
   ('ID','STRING',1,'ID','COINCAP','COINCAP-DATA-HUB','COINCAP_DATA','COINCAP_ASSETS','ADMIN',CURRENT_DATETIME,'ADMIN',CURRENT_DATETIME),
   ('RANK','INT64',2,'RANK','COINCAP','COINCAP-DATA-HUB','COINCAP_DATA','COINCAP_ASSETS','ADMIN',CURRENT_DATETIME,'ADMIN',CURRENT_DATETIME),
   ('NAME','STRING',3,'NAME','COINCAP','COINCAP-DATA-HUB','COINCAP_DATA','COINCAP_ASSETS','ADMIN',CURRENT_DATETIME,'ADMIN',CURRENT_DATETIME),
   ('SUPPLY','FLOAT64',4,'SUPPLY','COINCAP','COINCAP-DATA-HUB','COINCAP_DATA','COINCAP_ASSETS','ADMIN',CURRENT_DATETIME,'ADMIN',CURRENT_DATETIME),
   ('MAXSUPPLY','FLOAT64',5,'MAXSUPPLY','COINCAP','COINCAP-DATA-HUB','COINCAP_DATA','COINCAP_ASSETS','ADMIN',CURRENT_DATETIME,'ADMIN',CURRENT_DATETIME),
   ('VOLUMEUSD24HR','FLOAT64',6,'VOLUME_USD_24HR','COINCAP','COINCAP-DATA-HUB','COINCAP_DATA','COINCAP_ASSETS','ADMIN',CURRENT_DATETIME,'ADMIN',CURRENT_DATETIME),
   ('PRICEUSD','FLOAT64',7,'PRICE_USD','COINCAP','COINCAP-DATA-HUB','COINCAP_DATA','COINCAP_ASSETS','ADMIN',CURRENT_DATETIME,'ADMIN',CURRENT_DATETIME),
   ('CHANGEPERCENT24HR','FLOAT64',8,'CHANGE_PERCENT_24HR','COINCAP','COINCAP_DATA','COINCAP-DATA-HUB','COINCAP_ASSETS','ADMIN',CURRENT_DATETIME,'ADMIN',CURRENT_DATETIME),
   ('VWAP24HR','FLOAT64',9,'VWAP_24HR','COINCAP','COINCAP-DATA-HUB','COINCAP_DATA','COINCAP_ASSETS','ADMIN',CURRENT_DATETIME,'ADMIN',CURRENT_DATETIME),
   ('EXPLORER','STRING',10,'EXPLORER','COINCAP','COINCAP-DATA-HUB','COINCAP_DATA','COINCAP_ASSETS','ADMIN',CURRENT_DATETIME,'ADMIN',CURRENT_DATETIME);

--RATES
INSERT INTO `dw-metadata-utilities.metadata_utilities.ingestion_column_details` 
(column_name,datatype,ordinal_position,mapping_column,source_system, project_id, dataset,table_name,modified_by,modified_date,created_by,created_date) VALUES
   ('ID','STRING',1,'ID','COINCAP','COINCAP-DATA-HUB','COINCAP_DATA','COINCAP_RATES','ADMIN',CURRENT_DATETIME,'ADMIN',CURRENT_DATETIME),
   ('SYMBOL','STRING',2,'SYMBOL','COINCAP','COINCAP-DATA-HUB','COINCAP_DATA','COINCAP_RATES','ADMIN',CURRENT_DATETIME,'ADMIN',CURRENT_DATETIME),
   ('CURRENCYSYMBOL','STRING',3,'CURRENCY_SYMBOL','COINCAP','COINCAP-DATA-HUB','COINCAP_DATA','COINCAP_RATES','ADMIN',CURRENT_DATETIME,'ADMIN',CURRENT_DATETIME),
   ('TYPE','STRING',4,'TYPE','COINCAP','COINCAP-DATA-HUB','COINCAP_DATA','COINCAP_RATES','ADMIN',CURRENT_DATETIME,'ADMIN',CURRENT_DATETIME),
   ('RATEUSD','FLOAT64',5,'RATE_USD','COINCAP','COINCAP-DATA-HUB','COINCAP_DATA','COINCAP_RATES','ADMIN',CURRENT_DATETIME,'ADMIN',CURRENT_DATETIME)
   ;

--EXCHANGES
INSERT INTO `dw-metadata-utilities.metadata_utilities.ingestion_column_details` 
(column_name,datatype,ordinal_position,mapping_column,source_system, project_id, dataset,table_name,modified_by,modified_date,created_by,created_date) VALUES
   ('EXCHANGEID','STRING',1,'EXCHANGE_ID','COINCAP','COINCAP-DATA-HUB','COINCAP_EXCHANGES','COINCAP_RATES','ADMIN',CURRENT_DATETIME,'ADMIN',CURRENT_DATETIME),
   ('NAME','STRING',2,'NAME','COINCAP','COINCAP-DATA-HUB','COINCAP_DATA','COINCAP_EXCHANGES','ADMIN',CURRENT_DATETIME,'ADMIN',CURRENT_DATETIME),
   ('RANK','INT64',3,'RANK','COINCAP','COINCAP-DATA-HUB','COINCAP_DATA','COINCAP_EXCHANGES','ADMIN',CURRENT_DATETIME,'ADMIN',CURRENT_DATETIME),
   ('PERCENTTOTALVOLUME','FLOAT64',4,'PERCENT_TOTAL_VOLUME','COINCAP','COINCAP-DATA-HUB','COINCAP_DATA','COINCAP_EXCHANGES','ADMIN',CURRENT_DATETIME,'ADMIN',CURRENT_DATETIME),
   ('VOLUMEUSD','FLOAT64',5,'VOLUME_USD','COINCAP','COINCAP-DATA-HUB','COINCAP_DATA','COINCAP_EXCHANGES','ADMIN',CURRENT_DATETIME,'ADMIN',CURRENT_DATETIME),
   ('TRADINGPAIRS','INT64',6,'TRADING_PAIRS','COINCAP','COINCAP-DATA-HUB','COINCAP_DATA','COINCAP_EXCHANGES','ADMIN',CURRENT_DATETIME,'ADMIN',CURRENT_DATETIME),
   ('SOCKET','STRING',7,'SOCKET','COINCAP','COINCAP-DATA-HUB','COINCAP_DATA','COINCAP_EXCHANGES','ADMIN',CURRENT_DATETIME,'ADMIN',CURRENT_DATETIME),
   ('EXCHANGEURL','STRING',8,'EXCHANGE_URL','COINCAP','COINCAP-DATA-HUB','COINCAP_DATA','COINCAP_EXCHANGES','ADMIN',CURRENT_DATETIME,'ADMIN',CURRENT_DATETIME),
   ('UPDATED','INT64',9,'UPDATED','COINCAP','COINCAP-DATA-HUB','COINCAP_DATA','COINCAP_EXCHANGES','ADMIN',CURRENT_DATETIME,'ADMIN',CURRENT_DATETIME)
   ;   

--MARKETS
INSERT INTO `dw-metadata-utilities.metadata_utilities.ingestion_column_details` 
(column_name,datatype,ordinal_position,mapping_column,source_system, project_id, dataset,table_name,modified_by,modified_date,created_by,created_date) VALUES
   ('EXCHANGEID','STRING',1,'EXCHANGE_ID','COINCAP','COINCAP-DATA-HUB','COINCAP_DATA','COINCAP_MARKETS','ADMIN',CURRENT_DATETIME,'ADMIN',CURRENT_DATETIME),
   ('RANK','INT64',2,'RANK','COINCAP','COINCAP-DATA-HUB','COINCAP_DATA','COINCAP_MARKETS','ADMIN',CURRENT_DATETIME,'ADMIN',CURRENT_DATETIME),
   ('BASESYMBOL','STRING',3,'BASE_SYMBOL','COINCAP','COINCAP-DATA-HUB','COINCAP_DATA','COINCAP_MARKETS','ADMIN',CURRENT_DATETIME,'ADMIN',CURRENT_DATETIME),
   ('BASEID','STRING',4,'BASE_ID','COINCAP','COINCAP-DATA-HUB','COINCAP_DATA','COINCAP_MARKETS','ADMIN',CURRENT_DATETIME,'ADMIN',CURRENT_DATETIME),
   ('QUOTESYMBOL','STRING',5,'QUOTE_SYMBOL','COINCAP','COINCAP-DATA-HUB','COINCAP_DATA','COINCAP_MARKETS','ADMIN',CURRENT_DATETIME,'ADMIN',CURRENT_DATETIME),
   ('QUOTEID','STRING',6,'QUOTE_ID','COINCAP','COINCAP-DATA-HUB','COINCAP_DATA','COINCAP_MARKETS','ADMIN',CURRENT_DATETIME,'ADMIN',CURRENT_DATETIME),
   ('PRICEQUOTE','FLOAT64',7,'PRICE_QUOTE','COINCAP','COINCAP-DATA-HUB','COINCAP_DATA','COINCAP_MARKETS','ADMIN',CURRENT_DATETIME,'ADMIN',CURRENT_DATETIME),
   ('PRICEUSD','FLOAT64',8,'PRICE_USD','COINCAP','COINCAP-DATA-HUB','COINCAP_DATA','COINCAP_MARKETS','ADMIN',CURRENT_DATETIME,'ADMIN',CURRENT_DATETIME),
   ('VOLUMEUSD24HR','FLOAT64',9,'VOLUME_USD_24HR','COINCAP','COINCAP-DATA-HUB','COINCAP_DATA','COINCAP_MARKETS','ADMIN',CURRENT_DATETIME,'ADMIN',CURRENT_DATETIME),
   ('PERCENTEXCHANGEVOLUME','FLOAT64',10,'PERCENT_EXCHANGE_VOLUME','COINCAP','COINCAP-DATA-HUB','COINCAP_DATA','COINCAP_MARKETS','ADMIN',CURRENT_DATETIME,'ADMIN',CURRENT_DATETIME),
   ('TRADESCOUNT24HR','INT64',11,'TRADES_COUNT_24HR','COINCAP','COINCAP-DATA-HUB','COINCAP_DATA','COINCAP_MARKETS','ADMIN',CURRENT_DATETIME,'ADMIN',CURRENT_DATETIME),
   ('UPDATED','INT64',12,'UPDATED','COINCAP','COINCAP-DATA-HUB','COINCAP_DATA','COINCAP_MARKETS','ADMIN',CURRENT_DATETIME,'ADMIN',CURRENT_DATETIME)
   ;

--BITCOIN_HISTORY
INSERT INTO `dw-metadata-utilities.metadata_utilities.ingestion_column_details` 
(column_name,datatype,ordinal_position,mapping_column,source_system, project_id, dataset,table_name,modified_by,modified_date,created_by,created_date) VALUES
('PRICEUSD','FLOAT64',1,'PRICE_USD','COINCAP','COINCAP-DATA-HUB','COINCAP_DATA','COINCAP_BITCOIN_HISTORY','ADMIN',CURRENT_DATETIME,'ADMIN',CURRENT_DATETIME),
('TIME','INT64',2,'TIME','COINCAP','COINCAP-DATA-HUB','COINCAP_DATA','COINCAP_BITCOIN_HISTORY','ADMIN',CURRENT_DATETIME,'ADMIN',CURRENT_DATETIME),
('CIRCULATINGSUPPLY','FLOAT64',3,'CIRCULATING_SUPPLY','COINCAP','COINCAP-DATA-HUB','COINCAP_DATA','COINCAP_BITCOIN_HISTORY','ADMIN',CURRENT_DATETIME,'ADMIN',CURRENT_DATETIME),
('DATE','DATETIME',4,'DATE','COINCAP','COINCAP-DATA-HUB','COINCAP_DATA','COINCAP_BITCOIN_HISTORY','ADMIN',CURRENT_DATETIME,'ADMIN',CURRENT_DATETIME),
;