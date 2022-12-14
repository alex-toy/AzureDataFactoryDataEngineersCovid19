# Azure Data Factory Data Engineers Covid 19


## Topics covered in this project

1. Azure Data Factory

- Building a solution architecture for a data engineering solution using Azure Data Engineering technologies such as Azure Data Factory (ADF), Azure Data Lake Gen2, Azure Blob Storage, Azure SQL Database, Azure Databricks, Azure HDInsight and Microsoft PowerBI.
- Integrating data from HTTP clients, Azure Blob Storage and Azure Data Lake Gen2 using Azure Data Factory.
- Branching and Chaining activities in Azure Data Factory (ADF) Pipelines using control flow activities such as Get Metadata. If Condition, ForEach, Delete, Validation etc.
- Using Parameters and Variables in Pipelines, Datasets and LinkedServices to create a metadata driven pipelines in Azure Data Factory (ADF)
- Debugging the data pipelines and resolving issues.
- Scheduling pipelines using triggers such as Event Trigger, Schedule Trigger and Tumbling Window Trigger in Azure Data Factory (ADF)
- Creating Mapping Data Flows to create transformation logic. The course covers all of the transformation steps such as Source, Filter, Select, Pivot, Lookup, Conditional Split, Derived Column, Aggregate, Join and Sink transformation.
- Debugging data flows, investigating issues, fixing failures etc
- Implementing Azure Data Factory pipelines to invoke Mapping Data Flows and executing them.
- Creating ADF pipelines to execute HDInsight activities and carry out data transformations.
- Creating ADF pipelines to execute Databricks Notebook activities to carry out transformations.
- Creating dependency between pipelines to orchestrate the data flow
- Creating dependency between triggers to orchestrate the data flow
- Monitoring data pipelines, creating alerts, reporting of metrics from the Azure Data Factory Monitor.
- Monitoring of Data Factory pipelines using Azure Monitor and setting diagnostic setting to be forwarded to Azure Storage Account or Log Analytics Workspace.
- Creating Log Analytics workspace, creating workbooks and charts from log analytics on the Azure Data Factory pipelines
-Implementing the Azure Data Factory Analytics monitoring tool and how to extend the capability further.

2. Azure Storage Solutions

- Creating Azure Storage Account, Creating containers, Uploading data, Access Control (IAM), Using Azure Storage explorer to interact with the storage account
- Creating Azure Data Lake Gen2, Creating containers, Uploading data, Access Control (IAM), Using Azure Storage explorer to interact with the storage account
- Creating Azure SQL Database, Pricing Tiers, Creating Admin User, Creating Tables, Loading Data and Querying the database.

3. Azure HDInsight & Databricks

- Creating HDInsight Clusters, Interacting with the UI, Using Ambari, Creating Hive tables, Invoking HDInsight activities from Azure Data Factory
- Creating Azure Databricks Workspace, Creating Databricks clusters, Mounting storage accounts, Creating Databricks notebooks, performing transformations using Databricks notebooks, Invoking Databricks notebooks from Azure Data Factory.

<img src="/pictures/adf_architecture.png" title="adf architecture"  width="800">


## Environment Setup

1. Create **Data Factory**

<img src="/pictures/create_data_factory.png" title="create data factory"  width="500">
<img src="/pictures/create_data_factory2.png" title="create data factory"  width="800">

2. Create **Storage Account**

<img src="/pictures/create_storage_account.png" title="create storage account"  width="500">

3. Create **Azure DataLake Storage Gen2**

<img src="/pictures/create_storage_gen.png" title="create storage gen2"  width="500">
<img src="/pictures/create_storage_gen2.png" title="create storage gen2"  width="500">

4. Create **Azure SQL Database**

<img src="/pictures/create_sql.png" title="create sql database"  width="500">
<img src="/pictures/create_sql2.png" title="create sql database"  width="800">


## Data Ingestion From Azure Blob

1. Data ingestion from **Azure Blob**

<img src="/pictures/linked_services.png" title="linked services"  width="800">
<img src="/pictures/linked_service_sa.png" title="linked services storage account"  width="500">
<img src="/pictures/linked_service_gen2.png" title="linked services gen2"  width="500">
<img src="/pictures/linked_service_all.png" title="linked services all"  width="800">

2. Data sets

<img src="/pictures/new_dataset.png" title="new dataset"  width="400">

Choose *Azure blob Storage* and *delimited text* :

<img src="/pictures/population_dataset.png" title="population dataset"  width="400">
<img src="/pictures/population_dataset2.png" title="population dataset"  width="800">

Choose *Azure Datalake Storage gen2* and *delimited text* :

<img src="/pictures/population_dataset_gen2.png" title="population dataset"  width="400">
Caution : you should add *population* for Directory below.
<img src="/pictures/population_dataset_gen22.png" title="population dataset"  width="800">

In the end, click *Validate all* and *Publish all*.
<img src="/pictures/publish_all_dataset.png" title="population dataset"  width="800">

3. Pipeline

<img src="/pictures/new_pipeline.png" title="new pipeline"  width="400">
<img src="/pictures/copy_population_pipeline.png" title="copy population pipeline"  width="800">
<img src="/pictures/copy_population_pipeline2.png" title="copy population pipeline"  width="800">
<img src="/pictures/copy_population_pipeline3.png" title="copy population pipeline"  width="800">
<img src="/pictures/copy_population_pipeline4.png" title="copy population pipeline validate"  width="800">
<img src="/pictures/copy_population_pipeline5.png" title="copy population pipeline debug"  width="800">

In the end, *Publish all*. You should then find the file *population_by_age_tsv* under the *population* folder in the *alexeicovidgen2* storage account.
<img src="/pictures/population_after_pipeline.png" title="population after pipeline"  width="800">

4. Control Flow Activities - Validation Activity

<img src="/pictures/validation_activity.png" title="validation activity"  width="400">
<img src="/pictures/validation_activity2.png" title="validation activity"  width="800">
<img src="/pictures/validation_activity_debug.png" title="validation activity debug"  width="800">

5. Control Flow Activities - Get Metadata

<img src="/pictures/get_metadata.png" title="get metadata"  width="400">

Grab an *If condition* item from the *iteration & conditionals* section.

<img src="/pictures/get_metadata_condition.png" title="get metadata condition"  width="800">
<img src="/pictures/get_metadata_condition2.png" title="get metadata condition"  width="800">

Grab an *Web* item from the *General* section and put it in the false activities.

<img src="/pictures/false_number_columns.png" title="bad number of columns activities"  width="500">

6. Control Flow Activities - Delete activity

Grab an *Delete* item from the *General* section and put it in the true activities.

<img src="/pictures/delete_activity.png" title="delete activity"  width="800">

At the end, publish the pipeline.

7. Control Flow Activities - Create Event Trigger

<img src="/pictures/create_event_trigger.png" title="create event trigger"  width="800">
<img src="/pictures/create_event_trigger2.png" title="create event trigger"  width="800">

Add the trigger to the pipeline
<img src="/pictures/add_trigger_to_pipeline.png" title="add trigger to pipeline"  width="800">

At the end, publish all.

Now upload a file to the *population* container and the pipeline should be triggered successfully.
<img src="/pictures/trigger.png" title="pipeline triggered"  width="800">

And you should see the pipeline run successfully
<img src="/pictures/pipeline_run_successful.png" title="pipeline run successful"  width="800">



## Data Ingestion From HTTP

For the following, use the following URL : 
base URL : https://raw.githubusercontent.com
relative URL : cloudboxacademy/covid19/main/ecdc_data/cases_deaths.csv

1. Create **Linked Services**

Choose *HTTP*

<img src="/pictures/ls_http.png" title="http linked service"  width="400">

2. Create **Dataset**

Choose *HTTP*, *Delimitedtext*

<img src="/pictures/dataset_http.png" title="http dataset"  width="400">

3. Create **Dataset gen2**

Choose *gen2*, *Delimitedtext*

<img src="/pictures/dataset_gen2_http.png" title="http dataset gen2"  width="400">

4. Create **Pipeline**

<img src="/pictures/pipeline_http.png" title="http pipeline"  width="800">

Debug and check that the file is present in the container

<img src="/pictures/pipeline_http_debug.png" title="http pipeline debug"  width="800">

5. Add parameters

<img src="/pictures/parameters.png" title="parameters"  width="800">
<img src="/pictures/parameters2.png" title="parameters"  width="800">
<img src="/pictures/pipeline_parameters.png" title="pipeline parameters"  width="800">
<img src="/pictures/pipeline_parameters2.png" title="pipeline parameters"  width="800">
<img src="/pictures/pipeline_parameters3.png" title="pipeline parameters"  width="800">



## Data Flows

1. Source tranformation

<img src="/pictures/source_transformation.png" title="source transformation"  width="800">
<img src="/pictures/source_transformation2.png" title="source transformation"  width="800">
<img src="/pictures/source_transformation3.png" title="source transformation"  width="800">

2. Filter tranformation

<img src="/pictures/filter_transformation.png" title="filter transformation"  width="800">
<img src="/pictures/filter_transformation2.png" title="filter transformation"  width="800">
<img src="/pictures/filter_transformation3.png" title="filter transformation"  width="800">

3. Select tranformation

<img src="/pictures/select_transformation.png" title="select transformation"  width="800">
<img src="/pictures/select_transformation2.png" title="select transformation"  width="800">

4. Pivot tranformation

<img src="/pictures/pivot_transformation.png" title="pivot transformation"  width="800">
<img src="/pictures/pivot_transformation2.png" title="pivot transformation"  width="800">

5. Lookup tranformation

<img src="/pictures/lookup_transformation.png" title="lookup transformation"  width="800">
<img src="/pictures/lookup_transformation2.png" title="lookup transformation"  width="800">
<img src="/pictures/lookup_transformation3.png" title="lookup transformation"  width="800">

6. Sink tranformation

<img src="/pictures/sink_transformation.png" title="sink transformation"  width="800">

7. Create ADF pipeline

<img src="/pictures/create_pipeline.png" title="create pipeline"  width="800">
<img src="/pictures/processed_files.png" title="processed_files"  width="800">



## Data Flows Hospital admission data

1. Source transformation

<img src="/pictures/source_transformation_hospital_admissions.png" title="source transformation"  width="800">

2. Select transformation

<img src="/pictures/select_transformation_ha.png" title="select transformation"  width="800">

3. Lookup transformation

<img src="/pictures/lookup_transformation_ha.png" title="lookup transformation"  width="800">
<img src="/pictures/lookup_transformation_ha2.png" title="lookup transformation"  width="800">

4. Split transformation

<img src="/pictures/split_transformation_ha.png" title="split transformation"  width="800">

5. Derived Column transformation

<img src="/pictures/derive_transformation_ha.png" title="derived column transformation"  width="600">

6. Aggregate transformation

<img src="/pictures/aggregate_transformation_ha.png" title="aggregate transformation"  width="600">

7. Join transformation

<img src="/pictures/join_transformation_ha.png" title="join transformation"  width="800">

8. Pivot transformation

<img src="/pictures/pivot_transformation_ha.png" title="pivot transformation"  width="800">
<img src="/pictures/pivot_transformation_ha2.png" title="pivot transformation"  width="800">
<img src="/pictures/pivot_transformation_ha3.png" title="pivot transformation"  width="800">
<img src="/pictures/pivot_transformation_ha4.png" title="pivot transformation"  width="800">

9. Sort transformation

<img src="/pictures/sort_transformation_ha.png" title="sort transformation"  width="800">



## HDInsight Activity

1. Create HDInsight Cluster

<img src="/pictures/managed_identity.png" title="managed identity"  width="800">
<img src="/pictures/create_cluster.png" title="create cluster"  width="600">



## Databricks Activity

1. Create Azure Databricks Service

<img src="/pictures/databricks.png" title="create databricks"  width="800">

1. Create Cluster

<img src="/pictures/cluster.png" title="create cluster"  width="800">









