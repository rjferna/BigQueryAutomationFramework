## Intro
The goal of this project repository is to build a data ingestion framework to support automated data collection leveraging GCP storage & Bigquery.

## Prerequisites

1. GCP Account (Free trial is offered)
    * Create a BigQuery Project for Metadata Utilities.
    * Create bucket for Metadata project
    * Create a Service Account for Metadata Project
    * Generate a keyfile Metadata Project

2. CoinCap API Key
    * To Generate API key refer to: <a href="https://docs.coincap.io/#intro" target="_blank">CoinCap - Documentation</a> 


## Bigquery Metadata Utility Objects

The automation is utilizing a handful of BigQuery tables in the `dw-metadata-utilites` project which holds the dataset `metadata-utilities`.
A user will enter data source connection information, table ingestion configurations, and column details into the SQL tables. lastly, the user executes the 
python controller script with the required data ingestion arguements which help identify the source we are accessing for extraction. 

The controller script will then pull the required data ingestion details from the `metadata-utilities` tables and begin extraction from the data source. Writing 
the data into the target GCP storage. As the controller script runs, a log file is generated detailing each action taken by the controller script. As well as the 
Start & End datetimestamps of the workflow execution which is recorded in the `workflow_action_history` table with a unique `process_id` for each job execution.

**ER Diagram:**
![alt text](metadata_utilities.png)


**INGESTION_CONNECTION_INFO**
This table will hold endpoint connection information as well as encrypted credentials

![alt text](connection_info.png)

**INGESTION_CONFIG** 
The Ingestion Config table contains data/table ingestion configurations such as ingestion type, primary key, incremental or full data load, delimiter, file type etc.

![alt text](ingestion_config.png)

**INGESTION_COLUMN_DETAILS**
The Ingestion Column Details table contains column details for the data that is being ingested such as column names, data types, ordinal positions, target table

![alt text](ingestion_column_details.png)

**WORKFLOW_ACTION_HISTORY**
The Workflow Action History table contains an audit log of all workflow actions including connection_name, Start & End datetimestamps and the Workflow Status for each data 
ingestion workflow that is executed.

| Interpretation | Status |
|----------------|--------|
| In-Progress    | 0      |
| Complete       | 1      |
| Failed         | -1     |


![alt text](workflow_action_history.png)

**CHANGE_EVENT**

TBD...

## Data Ingestions: 

**CoinCap**

CoinCap is a useful tool for real-time pricing and market activity for over 1,000 cryptocurrencies. By collecting exchange data from thousands of markets, we are able to offer
transparent and accurate data on asset price and availability. 

CoinCap: <a href="https://docs.coincap.io/#intro" target="_blank">CoinCap - Documentation</a>

**AWS S3 BUCKET**

TBD ...

**GCP BUCKET**

TBD ...

**SFTP**

TBD ...


### Parser details

**Description: The data will be first loaded to a Flat File**

* **-s:** The section name of configuration file, which will be used to direct workflow execution.

* **-cn:** The connection name of the data source, which will be used to get the data source connection details.

* **-a:** The asset name which will be used to get the object information.

* **-lt:** Overrides the data load type. If not specified, the program will use the value in `ingestion_config` SQL table
    * FULL
    * INCR

* **-c:** The configuration file to be used. If not specified, the program will try to find it with "./config.ini"

* **-l:** Logging level, "info" by default.
    * info
    * debug
    * warning
    * error

* **--print_log:** Whether print the log to console. False by default


### Example Data Ingestion Executions:

* **Crypto Asset data:** 
``` 
python3 controller.py -s REQUEST -cn COINCAP_ASSET -a COINCAP_ASSETS -l info 
```

* **BITCOIN ASSET HISTORY:** 
```
python3 controller.py -s REQUEST -cn COINCAP_BITCOIN_HISTORY -a COINCAP_BITCOIN_HISTORY -l info
```

* **CRYPTO EXCHANGE DATA:** 
```
python3 controller.py -s REQUEST -cn COINCAP_EXCHANGES -a COINCAP_EXCHANGES -l info
```

* **CRYPTO COIN RATES:** 
```
python3 controller.py -s REQUEST -cn COINCAP_RATES -a COINCAP_RATES -l info
```

* **CRYPTO MARKETS DATA:** 
```
python3 controller.py -s REQUEST -cn COINCAP_MARKETS -a COINCAP_MARKETS -l info
```

* **CRYPTO ASSET With LOAD TYPE OVERRIDE:** 
```
python3 controller.py -s REQUEST -cn COINCAP_ASSETS -a COINCAP_ASSETS -lt INCR -l info
```

* **CRYPTO ASSET With PRESET CONFIG:** 
```
python3 controller.py -s REQUEST -cn COINCAP_ASSETS -a COINCAP_ASSETS -c ./new_config.ini -l info
```

### TODO: 
* ~~Upload data to respective GCP Bucket~~ 
* ~~Upload Log to GCP metadata bucket after job execution~~
* ~~Archive Legacy data file.~~
* ~~Add functionality to create external table.~~
* ~~Add functionality to create internal tables.~~
    * ~~Staging Table with Ingestion column details~~ 
    * ~~Reference Tables with DW Created Datetime & Load Datetime~~
* ~~Add functionality for Full data load on Reference Table.~~
* ~~Add functionality for Incremental data load on Reference Tables.~~
* Add S3 as a Data Source
* Add GCP Bucket as a Data Source
* Add SFTP connection as a Data Source
* Add Change Event metadata log to record pre/post changes on column level.

