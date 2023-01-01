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


## Environment Setup

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

4. Control Flow Activities - Get Metadata

<img src="/pictures/get_metadata.png" title="get metadata"  width="400">

Grab an *If condition* item from the *iteration & conditionals* section.

<img src="/pictures/get_metadata_condition.png" title="get metadata condition"  width="800">
<img src="/pictures/get_metadata_condition2.png" title="get metadata condition"  width="800">

Grab an *Web* item from the *General* section and put it in the false activities.

<img src="/pictures/false_number_columns.png" title="bad number of columns activities"  width="500">

5. Control Flow Activities - Delete activity

Grab an *Delete* item from the *General* section and put it in the true activities.

<img src="/pictures/delete_activity.png" title="delete activity"  width="800">

At the end, publish the pipeline.
