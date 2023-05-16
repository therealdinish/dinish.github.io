{
 "cells": [
  {
   "cell_type": "markdown",
   "id": "4f359fb9",
   "metadata": {
    "_cell_guid": "e3bf2feb-90d0-4fc8-aec5-7b9ba8478c83",
    "_uuid": "bf92298d-9502-4112-b46a-94f55b784bcc",
    "papermill": {
     "duration": 0.026776,
     "end_time": "2023-05-16T12:57:08.759697",
     "exception": false,
     "start_time": "2023-05-16T12:57:08.732921",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# # **Case Study 1: How Does a Bike-Share Navigate Speedy Success?**\n",
    "\n",
    "Author: Dinish Subaramaniam\n",
    "\n",
    "Date: 15/05/2023\n",
    "\n",
    "Welcome to the Cyclistic bike-share analysis case study! As a data analyst I will perform and follow the steps of the data analysis process: ask, prepare, process, analyze, share, and act to answer the key business questions for a fictional company, Cyclistic."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "274a1931",
   "metadata": {
    "_cell_guid": "8121fc97-72ed-4e56-96fd-4da136351973",
    "_uuid": "fa96aab6-3cf2-4728-99f6-2a9b68cc24e7",
    "papermill": {
     "duration": 0.023703,
     "end_time": "2023-05-16T12:57:08.808187",
     "exception": false,
     "start_time": "2023-05-16T12:57:08.784484",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# Background"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "22e07fec",
   "metadata": {
    "_cell_guid": "1c5ae573-458e-435b-81a4-cd9d8045af8b",
    "_uuid": "d7becbc2-f2f6-4d47-b6d2-835a765e11ca",
    "papermill": {
     "duration": 0.027503,
     "end_time": "2023-05-16T12:57:08.862038",
     "exception": false,
     "start_time": "2023-05-16T12:57:08.834535",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**Scenario**\n",
    "\n",
    "I am a junior data analyst working in the marketing analyst team at Cyclistic, a bike-share company in Chicago. The director of marketing believes the company’s future success depends on maximizing the number of annual memberships. Therefore, my team wants to understand how casual riders and annual members use Cyclistic bikes differently. From these insights, my team will design a new marketing strategy to convert casual riders into annual members. \n",
    "\n",
    "**About the company**\n",
    "\n",
    "In 2016, Cyclistic launched a successful bike-share o\u0000ering. Since then, the program has grown to a fleet of 5,824 bicycles that are geotracked and locked into a network of 692 stations across Chicago. The bikes can be unlocked from one station and returned to any other station in the system anytime.\n",
    "Until now, Cyclistic’s marketing strategy relied on building general awareness and appealing to broad consumer segments. One approach that helped make these things possible was the flexibility of its pricing plans: single-ride passes, full-day passes, and annual memberships. Customers who purchase single-ride or full-day passes are referred to as casual riders. Customers who purchase annual memberships are Cyclistic members.\n",
    "Cyclistic’s finance analysts have concluded that annual members are much more profitable than casual riders. Although the pricing flexibility helps Cyclistic attract more customers, The director of marketing believes that maximizing the number of annual members will be key to future growth. Rather than creating a marketing campaign that targets all-new customers, she believes there is a very good chance to convert casual riders into members. She notes that casual riders are already aware of the Cyclistic program and have chosen Cyclistic for their mobility needs."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "a3b01650",
   "metadata": {
    "_cell_guid": "e9d8d9aa-3e3d-443c-a0a5-fb49965a0a70",
    "_uuid": "4a347604-b267-4d23-be58-75f25b87bc80",
    "papermill": {
     "duration": 0.023254,
     "end_time": "2023-05-16T12:57:08.908577",
     "exception": false,
     "start_time": "2023-05-16T12:57:08.885323",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**The goal of this case study**\n",
    "\n",
    "Three questions will guide the future marketing program:\n",
    "1. How do annual members and casual riders use Cyclistic bikes differently?\n",
    "2. Why would casual riders buy Cyclistic annual memberships?\n",
    "3. How can Cyclistic use digital media to influence casual riders to become members?\n",
    "\n",
    "The director of marketing has assigned me the first question to answer: How do annual members and casual riders use Cyclistic bikes differently? \n",
    "\n",
    "In this assignment, I will produce a report with the following deliverables:\n",
    "1. A clear statement of the business task\n",
    "2. A description of all data sources used\n",
    "3. Documentation of any cleaning or manipulation of data\n",
    "4. A summary of my analysis\n",
    "5. Supporting visualizations and key findings"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "7c60df52",
   "metadata": {
    "_cell_guid": "bb31b324-26c0-4915-8aac-14fd1fd0a7b6",
    "_uuid": "a1b7fe01-d8d1-4f61-933c-d0fd4f3ae6c0",
    "papermill": {
     "duration": 0.024412,
     "end_time": "2023-05-16T12:57:08.954905",
     "exception": false,
     "start_time": "2023-05-16T12:57:08.930493",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# **Ask**"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "66d62c21",
   "metadata": {
    "_cell_guid": "d5fa09f9-0325-43cd-ba1f-be9b88701d3f",
    "_uuid": "daad9012-c2f4-4ae7-93e9-4445231e49a9",
    "papermill": {
     "duration": 0.02337,
     "end_time": "2023-05-16T12:57:09.000841",
     "exception": false,
     "start_time": "2023-05-16T12:57:08.977471",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "1. Business Task:\n",
    "In order to maximize the number of annual membership, I, data analyst, will find trend and patterns among casual riders and membership riders, hat would help to design marketing strategies aimed at converting casual riders into annual members. I do not need to raise awareness of annual membership among casual riders as they are already aware of the program. \n",
    "\n",
    "2. Stakeholders\n",
    "- The director of marketing\n",
    "- The marketing analysis team\n",
    "- Cyclistic's Executive team\n",
    "\n",
    "3. Stakeholder's expectation: \n",
    "Design marketing strategies aimed at converting casual riders into annual members. In order to do that, however, the marketing analyst team needs to better understand how annual members and casual riders differ, why casual riders would buy a membership, and how digital media could affect their marketing tactics. The marketing team is interested in analyzing the Cyclistic historical bike trip data to identify trends."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "13c33bc3",
   "metadata": {
    "_cell_guid": "f0efcdc6-03ed-4936-8a78-bbf264e1ae70",
    "_uuid": "ebf03144-b631-439e-b80a-cdf20fda4769",
    "papermill": {
     "duration": 0.022188,
     "end_time": "2023-05-16T12:57:09.047468",
     "exception": false,
     "start_time": "2023-05-16T12:57:09.025280",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# **Prepare**"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "dcbc1253",
   "metadata": {
    "_cell_guid": "263bbbdf-bdfc-487d-816a-1b4ec1b3a4e4",
    "_uuid": "88d3355e-3d93-4d63-ad3d-94e8f19c2fc2",
    "papermill": {
     "duration": 0.026402,
     "end_time": "2023-05-16T12:57:09.098040",
     "exception": false,
     "start_time": "2023-05-16T12:57:09.071638",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "1. DATA TYPE check\n",
    "2. ROOOC Check \n",
    "*     Sampling bias\n",
    "*     Observer bias\n",
    "*     Interpretation bias\n",
    "*     Confirmation bias"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "bdca0f54",
   "metadata": {
    "_cell_guid": "6dced658-f7e0-4caf-8c96-146b39072d61",
    "_uuid": "405135f3-bd51-44f4-b1e0-5afe8159bb3d",
    "papermill": {
     "duration": 0.027636,
     "end_time": "2023-05-16T12:57:09.152688",
     "exception": false,
     "start_time": "2023-05-16T12:57:09.125052",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "About the data set:\n",
    "\n",
    "Since Cyclistic is a fictional company, I will use Divvy’s, a bike-share program based in Chicago, data from January 2022 - December 2022 to complete this case study. To download the data, please use [this link](http://divvy-tripdata.s3.amazonaws.com/index.html). This data was made public by Motivate International Inc, under [this license](http://www.divvybikes.com/data-license-agreement). Due to data privacy issues, personal information has been removed or encrypted."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 1,
   "id": "8f7117f5",
   "metadata": {
    "_cell_guid": "aa60349f-d4d8-45b4-9bac-15f9fbceb891",
    "_kg_hide-input": true,
    "_kg_hide-output": false,
    "_uuid": "3a1f7f2d-f92f-4ad9-9227-e4bb694939b5",
    "collapsed": false,
    "execution": {
     "iopub.execute_input": "2023-05-16T12:57:09.211011Z",
     "iopub.status.busy": "2023-05-16T12:57:09.206683Z",
     "iopub.status.idle": "2023-05-16T12:57:11.147813Z",
     "shell.execute_reply": "2023-05-16T12:57:11.145581Z"
    },
    "jupyter": {
     "outputs_hidden": false
    },
    "papermill": {
     "duration": 1.9734,
     "end_time": "2023-05-16T12:57:11.151885",
     "exception": false,
     "start_time": "2023-05-16T12:57:09.178485",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "── \u001b[1mAttaching core tidyverse packages\u001b[22m ──────────────────────── tidyverse 2.0.0 ──\n",
      "\u001b[32m✔\u001b[39m \u001b[34mdplyr    \u001b[39m 1.1.0     \u001b[32m✔\u001b[39m \u001b[34mreadr    \u001b[39m 2.1.4\n",
      "\u001b[32m✔\u001b[39m \u001b[34mforcats  \u001b[39m 1.0.0     \u001b[32m✔\u001b[39m \u001b[34mstringr  \u001b[39m 1.5.0\n",
      "\u001b[32m✔\u001b[39m \u001b[34mggplot2  \u001b[39m 3.4.1     \u001b[32m✔\u001b[39m \u001b[34mtibble   \u001b[39m 3.1.8\n",
      "\u001b[32m✔\u001b[39m \u001b[34mlubridate\u001b[39m 1.9.2     \u001b[32m✔\u001b[39m \u001b[34mtidyr    \u001b[39m 1.3.0\n",
      "\u001b[32m✔\u001b[39m \u001b[34mpurrr    \u001b[39m 1.0.1     \n",
      "── \u001b[1mConflicts\u001b[22m ────────────────────────────────────────── tidyverse_conflicts() ──\n",
      "\u001b[31m✖\u001b[39m \u001b[34mdplyr\u001b[39m::\u001b[32mfilter()\u001b[39m masks \u001b[34mstats\u001b[39m::filter()\n",
      "\u001b[31m✖\u001b[39m \u001b[34mdplyr\u001b[39m::\u001b[32mlag()\u001b[39m    masks \u001b[34mstats\u001b[39m::lag()\n",
      "\u001b[36mℹ\u001b[39m Use the conflicted package (\u001b[3m\u001b[34m<http://conflicted.r-lib.org/>\u001b[39m\u001b[23m) to force all conflicts to become errors\n"
     ]
    }
   ],
   "source": [
    "library(tidyverse)  #helps wrangle data\n",
    "library(lubridate)  #helps wrangle date attributes\n",
    "library(ggplot2)  #helps visualize data\n",
    "library(dplyr) #helps clean data\n",
    "library(tidyr) #helps clean data\n",
    "library(geosphere) #helps with geographic calculations"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 2,
   "id": "76d839ec",
   "metadata": {
    "_cell_guid": "c45a580c-591f-4b77-abf2-247e432fae2f",
    "_kg_hide-input": false,
    "_kg_hide-output": false,
    "_uuid": "02db05b8-3104-4494-b9be-8c9a61769c69",
    "collapsed": false,
    "execution": {
     "iopub.execute_input": "2023-05-16T12:57:11.245234Z",
     "iopub.status.busy": "2023-05-16T12:57:11.205208Z",
     "iopub.status.idle": "2023-05-16T12:59:29.070760Z",
     "shell.execute_reply": "2023-05-16T12:59:29.068408Z"
    },
    "jupyter": {
     "outputs_hidden": false
    },
    "papermill": {
     "duration": 137.89843,
     "end_time": "2023-05-16T12:59:29.075630",
     "exception": false,
     "start_time": "2023-05-16T12:57:11.177200",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "# Read the trip data from 202201 - 202212 (12 months)\n",
    "tripdata_2022_01 <- read.csv(\"/kaggle/input/cyclistic/202201-divvy-tripdata.csv\")\n",
    "tripdata_2022_02 <- read.csv(\"/kaggle/input/cyclistic/202202-divvy-tripdata.csv\")\n",
    "tripdata_2022_03 <- read.csv(\"/kaggle/input/cyclistic/202203-divvy-tripdata.csv\")\n",
    "tripdata_2022_04 <- read.csv(\"/kaggle/input/cyclistic/202204-divvy-tripdata.csv\")\n",
    "tripdata_2022_05 <- read.csv(\"/kaggle/input/cyclistic/202205-divvy-tripdata.csv\")\n",
    "tripdata_2022_06 <- read.csv(\"/kaggle/input/cyclistic/202206-divvy-tripdata.csv\")\n",
    "tripdata_2022_07 <- read.csv(\"/kaggle/input/cyclistic/202207-divvy-tripdata.csv\")\n",
    "tripdata_2022_08 <- read.csv(\"/kaggle/input/cyclistic/202208-divvy-tripdata.csv\")\n",
    "tripdata_2022_09 <- read.csv(\"/kaggle/input/cyclistic/202209-divvy-tripdata.csv\")\n",
    "tripdata_2022_10 <- read.csv(\"/kaggle/input/cyclistic/202210-divvy-tripdata.csv\")\n",
    "tripdata_2022_11 <- read.csv(\"/kaggle/input/cyclistic/202211-divvy-tripdata.csv\")\n",
    "tripdata_2022_12 <- read.csv(\"/kaggle/input/cyclistic/202212-divvy-tripdata.csv\")"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 3,
   "id": "46f4e601",
   "metadata": {
    "_cell_guid": "c3b244e6-b101-43a7-8159-0030aef20f7e",
    "_uuid": "a54e0c5b-9554-4df8-924b-25bf54ceb571",
    "collapsed": false,
    "execution": {
     "iopub.execute_input": "2023-05-16T12:59:29.129695Z",
     "iopub.status.busy": "2023-05-16T12:59:29.127940Z",
     "iopub.status.idle": "2023-05-16T12:59:29.223176Z",
     "shell.execute_reply": "2023-05-16T12:59:29.221269Z"
    },
    "jupyter": {
     "outputs_hidden": false
    },
    "papermill": {
     "duration": 0.122343,
     "end_time": "2023-05-16T12:59:29.226041",
     "exception": false,
     "start_time": "2023-05-16T12:59:29.103698",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'ride_id'</li><li>'rideable_type'</li><li>'started_at'</li><li>'ended_at'</li><li>'start_station_name'</li><li>'start_station_id'</li><li>'end_station_name'</li><li>'end_station_id'</li><li>'start_lat'</li><li>'start_lng'</li><li>'end_lat'</li><li>'end_lng'</li><li>'member_casual'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'ride\\_id'\n",
       "\\item 'rideable\\_type'\n",
       "\\item 'started\\_at'\n",
       "\\item 'ended\\_at'\n",
       "\\item 'start\\_station\\_name'\n",
       "\\item 'start\\_station\\_id'\n",
       "\\item 'end\\_station\\_name'\n",
       "\\item 'end\\_station\\_id'\n",
       "\\item 'start\\_lat'\n",
       "\\item 'start\\_lng'\n",
       "\\item 'end\\_lat'\n",
       "\\item 'end\\_lng'\n",
       "\\item 'member\\_casual'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'ride_id'\n",
       "2. 'rideable_type'\n",
       "3. 'started_at'\n",
       "4. 'ended_at'\n",
       "5. 'start_station_name'\n",
       "6. 'start_station_id'\n",
       "7. 'end_station_name'\n",
       "8. 'end_station_id'\n",
       "9. 'start_lat'\n",
       "10. 'start_lng'\n",
       "11. 'end_lat'\n",
       "12. 'end_lng'\n",
       "13. 'member_casual'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       " [1] \"ride_id\"            \"rideable_type\"      \"started_at\"        \n",
       " [4] \"ended_at\"           \"start_station_name\" \"start_station_id\"  \n",
       " [7] \"end_station_name\"   \"end_station_id\"     \"start_lat\"         \n",
       "[10] \"start_lng\"          \"end_lat\"            \"end_lng\"           \n",
       "[13] \"member_casual\"     "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'ride_id'</li><li>'rideable_type'</li><li>'started_at'</li><li>'ended_at'</li><li>'start_station_name'</li><li>'start_station_id'</li><li>'end_station_name'</li><li>'end_station_id'</li><li>'start_lat'</li><li>'start_lng'</li><li>'end_lat'</li><li>'end_lng'</li><li>'member_casual'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'ride\\_id'\n",
       "\\item 'rideable\\_type'\n",
       "\\item 'started\\_at'\n",
       "\\item 'ended\\_at'\n",
       "\\item 'start\\_station\\_name'\n",
       "\\item 'start\\_station\\_id'\n",
       "\\item 'end\\_station\\_name'\n",
       "\\item 'end\\_station\\_id'\n",
       "\\item 'start\\_lat'\n",
       "\\item 'start\\_lng'\n",
       "\\item 'end\\_lat'\n",
       "\\item 'end\\_lng'\n",
       "\\item 'member\\_casual'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'ride_id'\n",
       "2. 'rideable_type'\n",
       "3. 'started_at'\n",
       "4. 'ended_at'\n",
       "5. 'start_station_name'\n",
       "6. 'start_station_id'\n",
       "7. 'end_station_name'\n",
       "8. 'end_station_id'\n",
       "9. 'start_lat'\n",
       "10. 'start_lng'\n",
       "11. 'end_lat'\n",
       "12. 'end_lng'\n",
       "13. 'member_casual'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       " [1] \"ride_id\"            \"rideable_type\"      \"started_at\"        \n",
       " [4] \"ended_at\"           \"start_station_name\" \"start_station_id\"  \n",
       " [7] \"end_station_name\"   \"end_station_id\"     \"start_lat\"         \n",
       "[10] \"start_lng\"          \"end_lat\"            \"end_lng\"           \n",
       "[13] \"member_casual\"     "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'ride_id'</li><li>'rideable_type'</li><li>'started_at'</li><li>'ended_at'</li><li>'start_station_name'</li><li>'start_station_id'</li><li>'end_station_name'</li><li>'end_station_id'</li><li>'start_lat'</li><li>'start_lng'</li><li>'end_lat'</li><li>'end_lng'</li><li>'member_casual'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'ride\\_id'\n",
       "\\item 'rideable\\_type'\n",
       "\\item 'started\\_at'\n",
       "\\item 'ended\\_at'\n",
       "\\item 'start\\_station\\_name'\n",
       "\\item 'start\\_station\\_id'\n",
       "\\item 'end\\_station\\_name'\n",
       "\\item 'end\\_station\\_id'\n",
       "\\item 'start\\_lat'\n",
       "\\item 'start\\_lng'\n",
       "\\item 'end\\_lat'\n",
       "\\item 'end\\_lng'\n",
       "\\item 'member\\_casual'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'ride_id'\n",
       "2. 'rideable_type'\n",
       "3. 'started_at'\n",
       "4. 'ended_at'\n",
       "5. 'start_station_name'\n",
       "6. 'start_station_id'\n",
       "7. 'end_station_name'\n",
       "8. 'end_station_id'\n",
       "9. 'start_lat'\n",
       "10. 'start_lng'\n",
       "11. 'end_lat'\n",
       "12. 'end_lng'\n",
       "13. 'member_casual'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       " [1] \"ride_id\"            \"rideable_type\"      \"started_at\"        \n",
       " [4] \"ended_at\"           \"start_station_name\" \"start_station_id\"  \n",
       " [7] \"end_station_name\"   \"end_station_id\"     \"start_lat\"         \n",
       "[10] \"start_lng\"          \"end_lat\"            \"end_lng\"           \n",
       "[13] \"member_casual\"     "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'ride_id'</li><li>'rideable_type'</li><li>'started_at'</li><li>'ended_at'</li><li>'start_station_name'</li><li>'start_station_id'</li><li>'end_station_name'</li><li>'end_station_id'</li><li>'start_lat'</li><li>'start_lng'</li><li>'end_lat'</li><li>'end_lng'</li><li>'member_casual'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'ride\\_id'\n",
       "\\item 'rideable\\_type'\n",
       "\\item 'started\\_at'\n",
       "\\item 'ended\\_at'\n",
       "\\item 'start\\_station\\_name'\n",
       "\\item 'start\\_station\\_id'\n",
       "\\item 'end\\_station\\_name'\n",
       "\\item 'end\\_station\\_id'\n",
       "\\item 'start\\_lat'\n",
       "\\item 'start\\_lng'\n",
       "\\item 'end\\_lat'\n",
       "\\item 'end\\_lng'\n",
       "\\item 'member\\_casual'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'ride_id'\n",
       "2. 'rideable_type'\n",
       "3. 'started_at'\n",
       "4. 'ended_at'\n",
       "5. 'start_station_name'\n",
       "6. 'start_station_id'\n",
       "7. 'end_station_name'\n",
       "8. 'end_station_id'\n",
       "9. 'start_lat'\n",
       "10. 'start_lng'\n",
       "11. 'end_lat'\n",
       "12. 'end_lng'\n",
       "13. 'member_casual'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       " [1] \"ride_id\"            \"rideable_type\"      \"started_at\"        \n",
       " [4] \"ended_at\"           \"start_station_name\" \"start_station_id\"  \n",
       " [7] \"end_station_name\"   \"end_station_id\"     \"start_lat\"         \n",
       "[10] \"start_lng\"          \"end_lat\"            \"end_lng\"           \n",
       "[13] \"member_casual\"     "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'ride_id'</li><li>'rideable_type'</li><li>'started_at'</li><li>'ended_at'</li><li>'start_station_name'</li><li>'start_station_id'</li><li>'end_station_name'</li><li>'end_station_id'</li><li>'start_lat'</li><li>'start_lng'</li><li>'end_lat'</li><li>'end_lng'</li><li>'member_casual'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'ride\\_id'\n",
       "\\item 'rideable\\_type'\n",
       "\\item 'started\\_at'\n",
       "\\item 'ended\\_at'\n",
       "\\item 'start\\_station\\_name'\n",
       "\\item 'start\\_station\\_id'\n",
       "\\item 'end\\_station\\_name'\n",
       "\\item 'end\\_station\\_id'\n",
       "\\item 'start\\_lat'\n",
       "\\item 'start\\_lng'\n",
       "\\item 'end\\_lat'\n",
       "\\item 'end\\_lng'\n",
       "\\item 'member\\_casual'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'ride_id'\n",
       "2. 'rideable_type'\n",
       "3. 'started_at'\n",
       "4. 'ended_at'\n",
       "5. 'start_station_name'\n",
       "6. 'start_station_id'\n",
       "7. 'end_station_name'\n",
       "8. 'end_station_id'\n",
       "9. 'start_lat'\n",
       "10. 'start_lng'\n",
       "11. 'end_lat'\n",
       "12. 'end_lng'\n",
       "13. 'member_casual'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       " [1] \"ride_id\"            \"rideable_type\"      \"started_at\"        \n",
       " [4] \"ended_at\"           \"start_station_name\" \"start_station_id\"  \n",
       " [7] \"end_station_name\"   \"end_station_id\"     \"start_lat\"         \n",
       "[10] \"start_lng\"          \"end_lat\"            \"end_lng\"           \n",
       "[13] \"member_casual\"     "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'ride_id'</li><li>'rideable_type'</li><li>'started_at'</li><li>'ended_at'</li><li>'start_station_name'</li><li>'start_station_id'</li><li>'end_station_name'</li><li>'end_station_id'</li><li>'start_lat'</li><li>'start_lng'</li><li>'end_lat'</li><li>'end_lng'</li><li>'member_casual'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'ride\\_id'\n",
       "\\item 'rideable\\_type'\n",
       "\\item 'started\\_at'\n",
       "\\item 'ended\\_at'\n",
       "\\item 'start\\_station\\_name'\n",
       "\\item 'start\\_station\\_id'\n",
       "\\item 'end\\_station\\_name'\n",
       "\\item 'end\\_station\\_id'\n",
       "\\item 'start\\_lat'\n",
       "\\item 'start\\_lng'\n",
       "\\item 'end\\_lat'\n",
       "\\item 'end\\_lng'\n",
       "\\item 'member\\_casual'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'ride_id'\n",
       "2. 'rideable_type'\n",
       "3. 'started_at'\n",
       "4. 'ended_at'\n",
       "5. 'start_station_name'\n",
       "6. 'start_station_id'\n",
       "7. 'end_station_name'\n",
       "8. 'end_station_id'\n",
       "9. 'start_lat'\n",
       "10. 'start_lng'\n",
       "11. 'end_lat'\n",
       "12. 'end_lng'\n",
       "13. 'member_casual'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       " [1] \"ride_id\"            \"rideable_type\"      \"started_at\"        \n",
       " [4] \"ended_at\"           \"start_station_name\" \"start_station_id\"  \n",
       " [7] \"end_station_name\"   \"end_station_id\"     \"start_lat\"         \n",
       "[10] \"start_lng\"          \"end_lat\"            \"end_lng\"           \n",
       "[13] \"member_casual\"     "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'ride_id'</li><li>'rideable_type'</li><li>'started_at'</li><li>'ended_at'</li><li>'start_station_name'</li><li>'start_station_id'</li><li>'end_station_name'</li><li>'end_station_id'</li><li>'start_lat'</li><li>'start_lng'</li><li>'end_lat'</li><li>'end_lng'</li><li>'member_casual'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'ride\\_id'\n",
       "\\item 'rideable\\_type'\n",
       "\\item 'started\\_at'\n",
       "\\item 'ended\\_at'\n",
       "\\item 'start\\_station\\_name'\n",
       "\\item 'start\\_station\\_id'\n",
       "\\item 'end\\_station\\_name'\n",
       "\\item 'end\\_station\\_id'\n",
       "\\item 'start\\_lat'\n",
       "\\item 'start\\_lng'\n",
       "\\item 'end\\_lat'\n",
       "\\item 'end\\_lng'\n",
       "\\item 'member\\_casual'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'ride_id'\n",
       "2. 'rideable_type'\n",
       "3. 'started_at'\n",
       "4. 'ended_at'\n",
       "5. 'start_station_name'\n",
       "6. 'start_station_id'\n",
       "7. 'end_station_name'\n",
       "8. 'end_station_id'\n",
       "9. 'start_lat'\n",
       "10. 'start_lng'\n",
       "11. 'end_lat'\n",
       "12. 'end_lng'\n",
       "13. 'member_casual'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       " [1] \"ride_id\"            \"rideable_type\"      \"started_at\"        \n",
       " [4] \"ended_at\"           \"start_station_name\" \"start_station_id\"  \n",
       " [7] \"end_station_name\"   \"end_station_id\"     \"start_lat\"         \n",
       "[10] \"start_lng\"          \"end_lat\"            \"end_lng\"           \n",
       "[13] \"member_casual\"     "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'ride_id'</li><li>'rideable_type'</li><li>'started_at'</li><li>'ended_at'</li><li>'start_station_name'</li><li>'start_station_id'</li><li>'end_station_name'</li><li>'end_station_id'</li><li>'start_lat'</li><li>'start_lng'</li><li>'end_lat'</li><li>'end_lng'</li><li>'member_casual'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'ride\\_id'\n",
       "\\item 'rideable\\_type'\n",
       "\\item 'started\\_at'\n",
       "\\item 'ended\\_at'\n",
       "\\item 'start\\_station\\_name'\n",
       "\\item 'start\\_station\\_id'\n",
       "\\item 'end\\_station\\_name'\n",
       "\\item 'end\\_station\\_id'\n",
       "\\item 'start\\_lat'\n",
       "\\item 'start\\_lng'\n",
       "\\item 'end\\_lat'\n",
       "\\item 'end\\_lng'\n",
       "\\item 'member\\_casual'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'ride_id'\n",
       "2. 'rideable_type'\n",
       "3. 'started_at'\n",
       "4. 'ended_at'\n",
       "5. 'start_station_name'\n",
       "6. 'start_station_id'\n",
       "7. 'end_station_name'\n",
       "8. 'end_station_id'\n",
       "9. 'start_lat'\n",
       "10. 'start_lng'\n",
       "11. 'end_lat'\n",
       "12. 'end_lng'\n",
       "13. 'member_casual'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       " [1] \"ride_id\"            \"rideable_type\"      \"started_at\"        \n",
       " [4] \"ended_at\"           \"start_station_name\" \"start_station_id\"  \n",
       " [7] \"end_station_name\"   \"end_station_id\"     \"start_lat\"         \n",
       "[10] \"start_lng\"          \"end_lat\"            \"end_lng\"           \n",
       "[13] \"member_casual\"     "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'ride_id'</li><li>'rideable_type'</li><li>'started_at'</li><li>'ended_at'</li><li>'start_station_name'</li><li>'start_station_id'</li><li>'end_station_name'</li><li>'end_station_id'</li><li>'start_lat'</li><li>'start_lng'</li><li>'end_lat'</li><li>'end_lng'</li><li>'member_casual'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'ride\\_id'\n",
       "\\item 'rideable\\_type'\n",
       "\\item 'started\\_at'\n",
       "\\item 'ended\\_at'\n",
       "\\item 'start\\_station\\_name'\n",
       "\\item 'start\\_station\\_id'\n",
       "\\item 'end\\_station\\_name'\n",
       "\\item 'end\\_station\\_id'\n",
       "\\item 'start\\_lat'\n",
       "\\item 'start\\_lng'\n",
       "\\item 'end\\_lat'\n",
       "\\item 'end\\_lng'\n",
       "\\item 'member\\_casual'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'ride_id'\n",
       "2. 'rideable_type'\n",
       "3. 'started_at'\n",
       "4. 'ended_at'\n",
       "5. 'start_station_name'\n",
       "6. 'start_station_id'\n",
       "7. 'end_station_name'\n",
       "8. 'end_station_id'\n",
       "9. 'start_lat'\n",
       "10. 'start_lng'\n",
       "11. 'end_lat'\n",
       "12. 'end_lng'\n",
       "13. 'member_casual'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       " [1] \"ride_id\"            \"rideable_type\"      \"started_at\"        \n",
       " [4] \"ended_at\"           \"start_station_name\" \"start_station_id\"  \n",
       " [7] \"end_station_name\"   \"end_station_id\"     \"start_lat\"         \n",
       "[10] \"start_lng\"          \"end_lat\"            \"end_lng\"           \n",
       "[13] \"member_casual\"     "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'ride_id'</li><li>'rideable_type'</li><li>'started_at'</li><li>'ended_at'</li><li>'start_station_name'</li><li>'start_station_id'</li><li>'end_station_name'</li><li>'end_station_id'</li><li>'start_lat'</li><li>'start_lng'</li><li>'end_lat'</li><li>'end_lng'</li><li>'member_casual'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'ride\\_id'\n",
       "\\item 'rideable\\_type'\n",
       "\\item 'started\\_at'\n",
       "\\item 'ended\\_at'\n",
       "\\item 'start\\_station\\_name'\n",
       "\\item 'start\\_station\\_id'\n",
       "\\item 'end\\_station\\_name'\n",
       "\\item 'end\\_station\\_id'\n",
       "\\item 'start\\_lat'\n",
       "\\item 'start\\_lng'\n",
       "\\item 'end\\_lat'\n",
       "\\item 'end\\_lng'\n",
       "\\item 'member\\_casual'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'ride_id'\n",
       "2. 'rideable_type'\n",
       "3. 'started_at'\n",
       "4. 'ended_at'\n",
       "5. 'start_station_name'\n",
       "6. 'start_station_id'\n",
       "7. 'end_station_name'\n",
       "8. 'end_station_id'\n",
       "9. 'start_lat'\n",
       "10. 'start_lng'\n",
       "11. 'end_lat'\n",
       "12. 'end_lng'\n",
       "13. 'member_casual'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       " [1] \"ride_id\"            \"rideable_type\"      \"started_at\"        \n",
       " [4] \"ended_at\"           \"start_station_name\" \"start_station_id\"  \n",
       " [7] \"end_station_name\"   \"end_station_id\"     \"start_lat\"         \n",
       "[10] \"start_lng\"          \"end_lat\"            \"end_lng\"           \n",
       "[13] \"member_casual\"     "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'ride_id'</li><li>'rideable_type'</li><li>'started_at'</li><li>'ended_at'</li><li>'start_station_name'</li><li>'start_station_id'</li><li>'end_station_name'</li><li>'end_station_id'</li><li>'start_lat'</li><li>'start_lng'</li><li>'end_lat'</li><li>'end_lng'</li><li>'member_casual'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'ride\\_id'\n",
       "\\item 'rideable\\_type'\n",
       "\\item 'started\\_at'\n",
       "\\item 'ended\\_at'\n",
       "\\item 'start\\_station\\_name'\n",
       "\\item 'start\\_station\\_id'\n",
       "\\item 'end\\_station\\_name'\n",
       "\\item 'end\\_station\\_id'\n",
       "\\item 'start\\_lat'\n",
       "\\item 'start\\_lng'\n",
       "\\item 'end\\_lat'\n",
       "\\item 'end\\_lng'\n",
       "\\item 'member\\_casual'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'ride_id'\n",
       "2. 'rideable_type'\n",
       "3. 'started_at'\n",
       "4. 'ended_at'\n",
       "5. 'start_station_name'\n",
       "6. 'start_station_id'\n",
       "7. 'end_station_name'\n",
       "8. 'end_station_id'\n",
       "9. 'start_lat'\n",
       "10. 'start_lng'\n",
       "11. 'end_lat'\n",
       "12. 'end_lng'\n",
       "13. 'member_casual'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       " [1] \"ride_id\"            \"rideable_type\"      \"started_at\"        \n",
       " [4] \"ended_at\"           \"start_station_name\" \"start_station_id\"  \n",
       " [7] \"end_station_name\"   \"end_station_id\"     \"start_lat\"         \n",
       "[10] \"start_lng\"          \"end_lat\"            \"end_lng\"           \n",
       "[13] \"member_casual\"     "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'ride_id'</li><li>'rideable_type'</li><li>'started_at'</li><li>'ended_at'</li><li>'start_station_name'</li><li>'start_station_id'</li><li>'end_station_name'</li><li>'end_station_id'</li><li>'start_lat'</li><li>'start_lng'</li><li>'end_lat'</li><li>'end_lng'</li><li>'member_casual'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'ride\\_id'\n",
       "\\item 'rideable\\_type'\n",
       "\\item 'started\\_at'\n",
       "\\item 'ended\\_at'\n",
       "\\item 'start\\_station\\_name'\n",
       "\\item 'start\\_station\\_id'\n",
       "\\item 'end\\_station\\_name'\n",
       "\\item 'end\\_station\\_id'\n",
       "\\item 'start\\_lat'\n",
       "\\item 'start\\_lng'\n",
       "\\item 'end\\_lat'\n",
       "\\item 'end\\_lng'\n",
       "\\item 'member\\_casual'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'ride_id'\n",
       "2. 'rideable_type'\n",
       "3. 'started_at'\n",
       "4. 'ended_at'\n",
       "5. 'start_station_name'\n",
       "6. 'start_station_id'\n",
       "7. 'end_station_name'\n",
       "8. 'end_station_id'\n",
       "9. 'start_lat'\n",
       "10. 'start_lng'\n",
       "11. 'end_lat'\n",
       "12. 'end_lng'\n",
       "13. 'member_casual'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       " [1] \"ride_id\"            \"rideable_type\"      \"started_at\"        \n",
       " [4] \"ended_at\"           \"start_station_name\" \"start_station_id\"  \n",
       " [7] \"end_station_name\"   \"end_station_id\"     \"start_lat\"         \n",
       "[10] \"start_lng\"          \"end_lat\"            \"end_lng\"           \n",
       "[13] \"member_casual\"     "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "#DATA CHECK\n",
    "colnames(tripdata_2022_01)\n",
    "colnames(tripdata_2022_02)\n",
    "colnames(tripdata_2022_03)\n",
    "colnames(tripdata_2022_04)\n",
    "colnames(tripdata_2022_05)\n",
    "colnames(tripdata_2022_06)\n",
    "colnames(tripdata_2022_07)\n",
    "colnames(tripdata_2022_08)\n",
    "colnames(tripdata_2022_09)\n",
    "colnames(tripdata_2022_10)\n",
    "colnames(tripdata_2022_11)\n",
    "colnames(tripdata_2022_12)\n",
    "#Confirmed"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 4,
   "id": "b27f091a",
   "metadata": {
    "_cell_guid": "ed87a3e9-cb19-4d48-a108-cebf4ea9f182",
    "_uuid": "35e31021-18bd-4002-ac00-8b0771f4ebcc",
    "collapsed": false,
    "execution": {
     "iopub.execute_input": "2023-05-16T12:59:29.281058Z",
     "iopub.status.busy": "2023-05-16T12:59:29.279198Z",
     "iopub.status.idle": "2023-05-16T12:59:29.611016Z",
     "shell.execute_reply": "2023-05-16T12:59:29.608536Z"
    },
    "jupyter": {
     "outputs_hidden": false
    },
    "papermill": {
     "duration": 0.363146,
     "end_time": "2023-05-16T12:59:29.614169",
     "exception": false,
     "start_time": "2023-05-16T12:59:29.251023",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "'data.frame':\t103770 obs. of  13 variables:\n",
      " $ ride_id           : chr  \"C2F7DD78E82EC875\" \"A6CF8980A652D272\" \"BD0F91DFF741C66D\" \"CBB80ED419105406\" ...\n",
      " $ rideable_type     : chr  \"electric_bike\" \"electric_bike\" \"classic_bike\" \"classic_bike\" ...\n",
      " $ started_at        : chr  \"2022-01-13 11:59:47\" \"2022-01-10 08:41:56\" \"2022-01-25 04:53:40\" \"2022-01-04 00:18:04\" ...\n",
      " $ ended_at          : chr  \"2022-01-13 12:02:44\" \"2022-01-10 08:46:17\" \"2022-01-25 04:58:01\" \"2022-01-04 00:33:00\" ...\n",
      " $ start_station_name: chr  \"Glenwood Ave & Touhy Ave\" \"Glenwood Ave & Touhy Ave\" \"Sheffield Ave & Fullerton Ave\" \"Clark St & Bryn Mawr Ave\" ...\n",
      " $ start_station_id  : chr  \"525\" \"525\" \"TA1306000016\" \"KA1504000151\" ...\n",
      " $ end_station_name  : chr  \"Clark St & Touhy Ave\" \"Clark St & Touhy Ave\" \"Greenview Ave & Fullerton Ave\" \"Paulina St & Montrose Ave\" ...\n",
      " $ end_station_id    : chr  \"RP-007\" \"RP-007\" \"TA1307000001\" \"TA1309000021\" ...\n",
      " $ start_lat         : num  42 42 41.9 42 41.9 ...\n",
      " $ start_lng         : num  -87.7 -87.7 -87.7 -87.7 -87.6 ...\n",
      " $ end_lat           : num  42 42 41.9 42 41.9 ...\n",
      " $ end_lng           : num  -87.7 -87.7 -87.7 -87.7 -87.6 ...\n",
      " $ member_casual     : chr  \"casual\" \"casual\" \"member\" \"casual\" ...\n",
      "'data.frame':\t115609 obs. of  13 variables:\n",
      " $ ride_id           : chr  \"E1E065E7ED285C02\" \"1602DCDC5B30FFE3\" \"BE7DD2AF4B55C4AF\" \"A1789BDF844412BE\" ...\n",
      " $ rideable_type     : chr  \"classic_bike\" \"classic_bike\" \"classic_bike\" \"classic_bike\" ...\n",
      " $ started_at        : chr  \"2022-02-19 18:08:41\" \"2022-02-20 17:41:30\" \"2022-02-25 18:55:56\" \"2022-02-14 11:57:03\" ...\n",
      " $ ended_at          : chr  \"2022-02-19 18:23:56\" \"2022-02-20 17:45:56\" \"2022-02-25 19:09:34\" \"2022-02-14 12:04:00\" ...\n",
      " $ start_station_name: chr  \"State St & Randolph St\" \"Halsted St & Wrightwood Ave\" \"State St & Randolph St\" \"Southport Ave & Waveland Ave\" ...\n",
      " $ start_station_id  : chr  \"TA1305000029\" \"TA1309000061\" \"TA1305000029\" \"13235\" ...\n",
      " $ end_station_name  : chr  \"Clark St & Lincoln Ave\" \"Southport Ave & Wrightwood Ave\" \"Canal St & Adams St\" \"Broadway & Sheridan Rd\" ...\n",
      " $ end_station_id    : chr  \"13179\" \"TA1307000113\" \"13011\" \"13323\" ...\n",
      " $ start_lat         : num  41.9 41.9 41.9 41.9 41.9 ...\n",
      " $ start_lng         : num  -87.6 -87.6 -87.6 -87.7 -87.6 ...\n",
      " $ end_lat           : num  41.9 41.9 41.9 42 41.9 ...\n",
      " $ end_lng           : num  -87.6 -87.7 -87.6 -87.6 -87.6 ...\n",
      " $ member_casual     : chr  \"member\" \"member\" \"member\" \"member\" ...\n",
      "'data.frame':\t284042 obs. of  13 variables:\n",
      " $ ride_id           : chr  \"47EC0A7F82E65D52\" \"8494861979B0F477\" \"EFE527AF80B66109\" \"9F446FD9DEE3F389\" ...\n",
      " $ rideable_type     : chr  \"classic_bike\" \"electric_bike\" \"classic_bike\" \"classic_bike\" ...\n",
      " $ started_at        : chr  \"2022-03-21 13:45:01\" \"2022-03-16 09:37:16\" \"2022-03-23 19:52:02\" \"2022-03-01 19:12:26\" ...\n",
      " $ ended_at          : chr  \"2022-03-21 13:51:18\" \"2022-03-16 09:43:34\" \"2022-03-23 19:54:48\" \"2022-03-01 19:22:14\" ...\n",
      " $ start_station_name: chr  \"Wabash Ave & Wacker Pl\" \"Michigan Ave & Oak St\" \"Broadway & Berwyn Ave\" \"Wabash Ave & Wacker Pl\" ...\n",
      " $ start_station_id  : chr  \"TA1307000131\" \"13042\" \"13109\" \"TA1307000131\" ...\n",
      " $ end_station_name  : chr  \"Kingsbury St & Kinzie St\" \"Orleans St & Chestnut St (NEXT Apts)\" \"Broadway & Ridge Ave\" \"Franklin St & Jackson Blvd\" ...\n",
      " $ end_station_id    : chr  \"KA1503000043\" \"620\" \"15578\" \"TA1305000025\" ...\n",
      " $ start_lat         : num  41.9 41.9 42 41.9 41.9 ...\n",
      " $ start_lng         : num  -87.6 -87.6 -87.7 -87.6 -87.6 ...\n",
      " $ end_lat           : num  41.9 41.9 42 41.9 41.9 ...\n",
      " $ end_lng           : num  -87.6 -87.6 -87.7 -87.6 -87.7 ...\n",
      " $ member_casual     : chr  \"member\" \"member\" \"member\" \"member\" ...\n",
      "'data.frame':\t371249 obs. of  13 variables:\n",
      " $ ride_id           : chr  \"3564070EEFD12711\" \"0B820C7FCF22F489\" \"89EEEE32293F07FF\" \"84D4751AEB31888D\" ...\n",
      " $ rideable_type     : chr  \"electric_bike\" \"classic_bike\" \"classic_bike\" \"classic_bike\" ...\n",
      " $ started_at        : chr  \"2022-04-06 17:42:48\" \"2022-04-24 19:23:07\" \"2022-04-20 19:29:08\" \"2022-04-22 21:14:06\" ...\n",
      " $ ended_at          : chr  \"2022-04-06 17:54:36\" \"2022-04-24 19:43:17\" \"2022-04-20 19:35:16\" \"2022-04-22 21:23:29\" ...\n",
      " $ start_station_name: chr  \"Paulina St & Howard St\" \"Wentworth Ave & Cermak Rd\" \"Halsted St & Polk St\" \"Wentworth Ave & Cermak Rd\" ...\n",
      " $ start_station_id  : chr  \"515\" \"13075\" \"TA1307000121\" \"13075\" ...\n",
      " $ end_station_name  : chr  \"University Library (NU)\" \"Green St & Madison St\" \"Green St & Madison St\" \"Delano Ct & Roosevelt Rd\" ...\n",
      " $ end_station_id    : chr  \"605\" \"TA1307000120\" \"TA1307000120\" \"KA1706005007\" ...\n",
      " $ start_lat         : num  42 41.9 41.9 41.9 41.9 ...\n",
      " $ start_lng         : num  -87.7 -87.6 -87.6 -87.6 -87.6 ...\n",
      " $ end_lat           : num  42.1 41.9 41.9 41.9 41.9 ...\n",
      " $ end_lng           : num  -87.7 -87.6 -87.6 -87.6 -87.6 ...\n",
      " $ member_casual     : chr  \"member\" \"member\" \"member\" \"casual\" ...\n",
      "'data.frame':\t634858 obs. of  13 variables:\n",
      " $ ride_id           : chr  \"EC2DE40644C6B0F4\" \"1C31AD03897EE385\" \"1542FBEC830415CF\" \"6FF59852924528F8\" ...\n",
      " $ rideable_type     : chr  \"classic_bike\" \"classic_bike\" \"classic_bike\" \"classic_bike\" ...\n",
      " $ started_at        : chr  \"2022-05-23 23:06:58\" \"2022-05-11 08:53:28\" \"2022-05-26 18:36:28\" \"2022-05-10 07:30:07\" ...\n",
      " $ ended_at          : chr  \"2022-05-23 23:40:19\" \"2022-05-11 09:31:22\" \"2022-05-26 18:58:18\" \"2022-05-10 07:38:49\" ...\n",
      " $ start_station_name: chr  \"Wabash Ave & Grand Ave\" \"DuSable Lake Shore Dr & Monroe St\" \"Clinton St & Madison St\" \"Clinton St & Madison St\" ...\n",
      " $ start_station_id  : chr  \"TA1307000117\" \"13300\" \"TA1305000032\" \"TA1305000032\" ...\n",
      " $ end_station_name  : chr  \"Halsted St & Roscoe St\" \"Field Blvd & South Water St\" \"Wood St & Milwaukee Ave\" \"Clark St & Randolph St\" ...\n",
      " $ end_station_id    : chr  \"TA1309000025\" \"15534\" \"13221\" \"TA1305000030\" ...\n",
      " $ start_lat         : num  41.9 41.9 41.9 41.9 41.9 ...\n",
      " $ start_lng         : num  -87.6 -87.6 -87.6 -87.6 -87.6 ...\n",
      " $ end_lat           : num  41.9 41.9 41.9 41.9 41.9 ...\n",
      " $ end_lng           : num  -87.6 -87.6 -87.7 -87.6 -87.7 ...\n",
      " $ member_casual     : chr  \"member\" \"member\" \"member\" \"member\" ...\n",
      "'data.frame':\t769204 obs. of  13 variables:\n",
      " $ ride_id           : chr  \"600CFD130D0FD2A4\" \"F5E6B5C1682C6464\" \"B6EB6D27BAD771D2\" \"C9C320375DE1D5C6\" ...\n",
      " $ rideable_type     : chr  \"electric_bike\" \"electric_bike\" \"electric_bike\" \"electric_bike\" ...\n",
      " $ started_at        : chr  \"2022-06-30 17:27:53\" \"2022-06-30 18:39:52\" \"2022-06-30 11:49:25\" \"2022-06-30 11:15:25\" ...\n",
      " $ ended_at          : chr  \"2022-06-30 17:35:15\" \"2022-06-30 18:47:28\" \"2022-06-30 12:02:54\" \"2022-06-30 11:19:43\" ...\n",
      " $ start_station_name: chr  \"\" \"\" \"\" \"\" ...\n",
      " $ start_station_id  : chr  \"\" \"\" \"\" \"\" ...\n",
      " $ end_station_name  : chr  \"\" \"\" \"\" \"\" ...\n",
      " $ end_station_id    : chr  \"\" \"\" \"\" \"\" ...\n",
      " $ start_lat         : num  41.9 41.9 41.9 41.8 41.9 ...\n",
      " $ start_lng         : num  -87.6 -87.6 -87.7 -87.7 -87.6 ...\n",
      " $ end_lat           : num  41.9 41.9 41.9 41.8 41.9 ...\n",
      " $ end_lng           : num  -87.6 -87.6 -87.6 -87.7 -87.6 ...\n",
      " $ member_casual     : chr  \"casual\" \"casual\" \"casual\" \"casual\" ...\n",
      "'data.frame':\t823488 obs. of  13 variables:\n",
      " $ ride_id           : chr  \"954144C2F67B1932\" \"292E027607D218B6\" \"57765852588AD6E0\" \"B5B6BE44314590E6\" ...\n",
      " $ rideable_type     : chr  \"classic_bike\" \"classic_bike\" \"classic_bike\" \"classic_bike\" ...\n",
      " $ started_at        : chr  \"2022-07-05 08:12:47\" \"2022-07-26 12:53:38\" \"2022-07-03 13:58:49\" \"2022-07-31 17:44:21\" ...\n",
      " $ ended_at          : chr  \"2022-07-05 08:24:32\" \"2022-07-26 12:55:31\" \"2022-07-03 14:06:32\" \"2022-07-31 18:42:50\" ...\n",
      " $ start_station_name: chr  \"Ashland Ave & Blackhawk St\" \"Buckingham Fountain (Temp)\" \"Buckingham Fountain (Temp)\" \"Buckingham Fountain (Temp)\" ...\n",
      " $ start_station_id  : chr  \"13224\" \"15541\" \"15541\" \"15541\" ...\n",
      " $ end_station_name  : chr  \"Kingsbury St & Kinzie St\" \"Michigan Ave & 8th St\" \"Michigan Ave & 8th St\" \"Woodlawn Ave & 55th St\" ...\n",
      " $ end_station_id    : chr  \"KA1503000043\" \"623\" \"623\" \"TA1307000164\" ...\n",
      " $ start_lat         : num  41.9 41.9 41.9 41.9 41.9 ...\n",
      " $ start_lng         : num  -87.7 -87.6 -87.6 -87.6 -87.6 ...\n",
      " $ end_lat           : num  41.9 41.9 41.9 41.8 41.9 ...\n",
      " $ end_lng           : num  -87.6 -87.6 -87.6 -87.6 -87.7 ...\n",
      " $ member_casual     : chr  \"member\" \"casual\" \"casual\" \"casual\" ...\n",
      "'data.frame':\t785932 obs. of  13 variables:\n",
      " $ ride_id           : chr  \"550CF7EFEAE0C618\" \"DAD198F405F9C5F5\" \"E6F2BC47B65CB7FD\" \"F597830181C2E13C\" ...\n",
      " $ rideable_type     : chr  \"electric_bike\" \"electric_bike\" \"electric_bike\" \"electric_bike\" ...\n",
      " $ started_at        : chr  \"2022-08-07 21:34:15\" \"2022-08-08 14:39:21\" \"2022-08-08 15:29:50\" \"2022-08-08 02:43:50\" ...\n",
      " $ ended_at          : chr  \"2022-08-07 21:41:46\" \"2022-08-08 14:53:23\" \"2022-08-08 15:40:34\" \"2022-08-08 02:58:53\" ...\n",
      " $ start_station_name: chr  \"\" \"\" \"\" \"\" ...\n",
      " $ start_station_id  : chr  \"\" \"\" \"\" \"\" ...\n",
      " $ end_station_name  : chr  \"\" \"\" \"\" \"\" ...\n",
      " $ end_station_id    : chr  \"\" \"\" \"\" \"\" ...\n",
      " $ start_lat         : num  41.9 41.9 42 41.9 41.9 ...\n",
      " $ start_lng         : num  -87.7 -87.6 -87.7 -87.7 -87.7 ...\n",
      " $ end_lat           : num  41.9 41.9 42 42 41.8 ...\n",
      " $ end_lng           : num  -87.7 -87.6 -87.7 -87.7 -87.7 ...\n",
      " $ member_casual     : chr  \"casual\" \"casual\" \"casual\" \"casual\" ...\n",
      "'data.frame':\t701339 obs. of  13 variables:\n",
      " $ ride_id           : chr  \"5156990AC19CA285\" \"E12D4A16BF51C274\" \"A02B53CD7DB72DD7\" \"C82E05FEE872DF11\" ...\n",
      " $ rideable_type     : chr  \"electric_bike\" \"electric_bike\" \"electric_bike\" \"electric_bike\" ...\n",
      " $ started_at        : chr  \"2022-09-01 08:36:22\" \"2022-09-01 17:11:29\" \"2022-09-01 17:15:50\" \"2022-09-01 09:00:28\" ...\n",
      " $ ended_at          : chr  \"2022-09-01 08:39:05\" \"2022-09-01 17:14:45\" \"2022-09-01 17:16:12\" \"2022-09-01 09:10:32\" ...\n",
      " $ start_station_name: chr  \"\" \"\" \"\" \"\" ...\n",
      " $ start_station_id  : chr  \"\" \"\" \"\" \"\" ...\n",
      " $ end_station_name  : chr  \"California Ave & Milwaukee Ave\" \"\" \"\" \"\" ...\n",
      " $ end_station_id    : chr  \"13084\" \"\" \"\" \"\" ...\n",
      " $ start_lat         : num  41.9 41.9 41.9 41.9 41.9 ...\n",
      " $ start_lng         : num  -87.7 -87.6 -87.6 -87.7 -87.7 ...\n",
      " $ end_lat           : num  41.9 41.9 41.9 41.9 41.9 ...\n",
      " $ end_lng           : num  -87.7 -87.6 -87.6 -87.7 -87.7 ...\n",
      " $ member_casual     : chr  \"casual\" \"casual\" \"casual\" \"casual\" ...\n",
      "'data.frame':\t558685 obs. of  13 variables:\n",
      " $ ride_id           : chr  \"A50255C1E17942AB\" \"DB692A70BD2DD4E3\" \"3C02727AAF60F873\" \"47E653FDC2D99236\" ...\n",
      " $ rideable_type     : chr  \"classic_bike\" \"electric_bike\" \"electric_bike\" \"electric_bike\" ...\n",
      " $ started_at        : chr  \"2022-10-14 17:13:30\" \"2022-10-01 16:29:26\" \"2022-10-19 18:55:40\" \"2022-10-31 07:52:36\" ...\n",
      " $ ended_at          : chr  \"2022-10-14 17:19:39\" \"2022-10-01 16:49:06\" \"2022-10-19 19:03:30\" \"2022-10-31 07:58:49\" ...\n",
      " $ start_station_name: chr  \"Noble St & Milwaukee Ave\" \"Damen Ave & Charleston St\" \"Hoyne Ave & Balmoral Ave\" \"Rush St & Cedar St\" ...\n",
      " $ start_station_id  : chr  \"13290\" \"13288\" \"655\" \"KA1504000133\" ...\n",
      " $ end_station_name  : chr  \"Larrabee St & Division St\" \"Damen Ave & Cullerton St\" \"Western Ave & Leland Ave\" \"Orleans St & Chestnut St (NEXT Apts)\" ...\n",
      " $ end_station_id    : chr  \"KA1504000079\" \"13089\" \"TA1307000140\" \"620\" ...\n",
      " $ start_lat         : num  41.9 41.9 42 41.9 41.9 ...\n",
      " $ start_lng         : num  -87.7 -87.7 -87.7 -87.6 -87.6 ...\n",
      " $ end_lat           : num  41.9 41.9 42 41.9 41.9 ...\n",
      " $ end_lng           : num  -87.6 -87.7 -87.7 -87.6 -87.6 ...\n",
      " $ member_casual     : chr  \"member\" \"casual\" \"member\" \"member\" ...\n",
      "'data.frame':\t337735 obs. of  13 variables:\n",
      " $ ride_id           : chr  \"BCC66FC6FAB27CC7\" \"772AB67E902C180F\" \"585EAD07FDEC0152\" \"91C4E7ED3C262FF9\" ...\n",
      " $ rideable_type     : chr  \"electric_bike\" \"classic_bike\" \"classic_bike\" \"classic_bike\" ...\n",
      " $ started_at        : chr  \"2022-11-10 06:21:55\" \"2022-11-04 07:31:55\" \"2022-11-21 17:20:29\" \"2022-11-25 17:29:34\" ...\n",
      " $ ended_at          : chr  \"2022-11-10 06:31:27\" \"2022-11-04 07:46:25\" \"2022-11-21 17:34:36\" \"2022-11-25 17:45:15\" ...\n",
      " $ start_station_name: chr  \"Canal St & Adams St\" \"Canal St & Adams St\" \"Indiana Ave & Roosevelt Rd\" \"Indiana Ave & Roosevelt Rd\" ...\n",
      " $ start_station_id  : chr  \"13011\" \"13011\" \"SL-005\" \"SL-005\" ...\n",
      " $ end_station_name  : chr  \"St. Clair St & Erie St\" \"St. Clair St & Erie St\" \"St. Clair St & Erie St\" \"St. Clair St & Erie St\" ...\n",
      " $ end_station_id    : chr  \"13016\" \"13016\" \"13016\" \"13016\" ...\n",
      " $ start_lat         : num  41.9 41.9 41.9 41.9 41.9 ...\n",
      " $ start_lng         : num  -87.6 -87.6 -87.6 -87.6 -87.6 ...\n",
      " $ end_lat           : num  41.9 41.9 41.9 41.9 41.9 ...\n",
      " $ end_lng           : num  -87.6 -87.6 -87.6 -87.6 -87.6 ...\n",
      " $ member_casual     : chr  \"member\" \"member\" \"member\" \"member\" ...\n",
      "'data.frame':\t181806 obs. of  13 variables:\n",
      " $ ride_id           : chr  \"65DBD2F447EC51C2\" \"0C201AA7EA0EA1AD\" \"E0B148CCB358A49D\" \"54C5775D2B7C9188\" ...\n",
      " $ rideable_type     : chr  \"electric_bike\" \"classic_bike\" \"electric_bike\" \"classic_bike\" ...\n",
      " $ started_at        : chr  \"2022-12-05 10:47:18\" \"2022-12-18 06:42:33\" \"2022-12-13 08:47:45\" \"2022-12-13 18:50:47\" ...\n",
      " $ ended_at          : chr  \"2022-12-05 10:56:34\" \"2022-12-18 07:08:44\" \"2022-12-13 08:59:51\" \"2022-12-13 19:19:48\" ...\n",
      " $ start_station_name: chr  \"Clifton Ave & Armitage Ave\" \"Broadway & Belmont Ave\" \"Sangamon St & Lake St\" \"Shields Ave & 31st St\" ...\n",
      " $ start_station_id  : chr  \"TA1307000163\" \"13277\" \"TA1306000015\" \"KA1503000038\" ...\n",
      " $ end_station_name  : chr  \"Sedgwick St & Webster Ave\" \"Sedgwick St & Webster Ave\" \"St. Clair St & Erie St\" \"Damen Ave & Madison St\" ...\n",
      " $ end_station_id    : chr  \"13191\" \"13191\" \"13016\" \"13134\" ...\n",
      " $ start_lat         : num  41.9 41.9 41.9 41.8 41.9 ...\n",
      " $ start_lng         : num  -87.7 -87.6 -87.7 -87.6 -87.7 ...\n",
      " $ end_lat           : num  41.9 41.9 41.9 41.9 41.9 ...\n",
      " $ end_lng           : num  -87.6 -87.6 -87.6 -87.7 -87.7 ...\n",
      " $ member_casual     : chr  \"member\" \"casual\" \"member\" \"member\" ...\n"
     ]
    }
   ],
   "source": [
    "#DATA CHECK\n",
    "str(tripdata_2022_01)\n",
    "str(tripdata_2022_02)\n",
    "str(tripdata_2022_03)\n",
    "str(tripdata_2022_04)\n",
    "str(tripdata_2022_05)\n",
    "str(tripdata_2022_06)\n",
    "str(tripdata_2022_07)\n",
    "str(tripdata_2022_08)\n",
    "str(tripdata_2022_09)\n",
    "str(tripdata_2022_10)\n",
    "str(tripdata_2022_11)\n",
    "str(tripdata_2022_12)\n",
    "#Confirmed"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 5,
   "id": "999a4ce5",
   "metadata": {
    "_cell_guid": "ab4c11d6-63d0-4c99-8365-6abe4dd4fa58",
    "_uuid": "71e12db5-3480-4978-8f0e-2e4fbbc640ed",
    "collapsed": false,
    "execution": {
     "iopub.execute_input": "2023-05-16T12:59:29.673277Z",
     "iopub.status.busy": "2023-05-16T12:59:29.671136Z",
     "iopub.status.idle": "2023-05-16T12:59:42.109601Z",
     "shell.execute_reply": "2023-05-16T12:59:42.107066Z"
    },
    "jupyter": {
     "outputs_hidden": false
    },
    "papermill": {
     "duration": 12.47178,
     "end_time": "2023-05-16T12:59:42.113709",
     "exception": false,
     "start_time": "2023-05-16T12:59:29.641929",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "#Combine all the data sets\n",
    "all_trips <- dplyr::bind_rows(tripdata_2022_01, tripdata_2022_02, tripdata_2022_03, tripdata_2022_04, tripdata_2022_05, tripdata_2022_06, tripdata_2022_07, tripdata_2022_08, tripdata_2022_09, tripdata_2022_10, tripdata_2022_11, tripdata_2022_12)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "86ba4e52",
   "metadata": {
    "_cell_guid": "7e5548d0-57ab-498f-b52c-9327592daeb0",
    "_uuid": "13dce20b-a39b-44dc-89ef-89a8c78c40b5",
    "papermill": {
     "duration": 0.028567,
     "end_time": "2023-05-16T12:59:42.171730",
     "exception": false,
     "start_time": "2023-05-16T12:59:42.143163",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# **Process**\n",
    "Data Cleaning needs to be done before conducting analysis, due to the big nature of the data set, R is suitable to be used for both data cleaning and data analysis."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 6,
   "id": "a79ac9cf",
   "metadata": {
    "_cell_guid": "c27eb586-04d5-4deb-b600-a6bb191a581a",
    "_uuid": "32a10d0c-9545-477e-8909-320484f13d87",
    "collapsed": false,
    "execution": {
     "iopub.execute_input": "2023-05-16T12:59:42.236308Z",
     "iopub.status.busy": "2023-05-16T12:59:42.234046Z",
     "iopub.status.idle": "2023-05-16T12:59:42.257164Z",
     "shell.execute_reply": "2023-05-16T12:59:42.254680Z"
    },
    "jupyter": {
     "outputs_hidden": false
    },
    "papermill": {
     "duration": 0.059708,
     "end_time": "2023-05-16T12:59:42.260448",
     "exception": false,
     "start_time": "2023-05-16T12:59:42.200740",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'ride_id'</li><li>'rideable_type'</li><li>'started_at'</li><li>'ended_at'</li><li>'start_station_name'</li><li>'start_station_id'</li><li>'end_station_name'</li><li>'end_station_id'</li><li>'start_lat'</li><li>'start_lng'</li><li>'end_lat'</li><li>'end_lng'</li><li>'member_casual'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'ride\\_id'\n",
       "\\item 'rideable\\_type'\n",
       "\\item 'started\\_at'\n",
       "\\item 'ended\\_at'\n",
       "\\item 'start\\_station\\_name'\n",
       "\\item 'start\\_station\\_id'\n",
       "\\item 'end\\_station\\_name'\n",
       "\\item 'end\\_station\\_id'\n",
       "\\item 'start\\_lat'\n",
       "\\item 'start\\_lng'\n",
       "\\item 'end\\_lat'\n",
       "\\item 'end\\_lng'\n",
       "\\item 'member\\_casual'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'ride_id'\n",
       "2. 'rideable_type'\n",
       "3. 'started_at'\n",
       "4. 'ended_at'\n",
       "5. 'start_station_name'\n",
       "6. 'start_station_id'\n",
       "7. 'end_station_name'\n",
       "8. 'end_station_id'\n",
       "9. 'start_lat'\n",
       "10. 'start_lng'\n",
       "11. 'end_lat'\n",
       "12. 'end_lng'\n",
       "13. 'member_casual'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       " [1] \"ride_id\"            \"rideable_type\"      \"started_at\"        \n",
       " [4] \"ended_at\"           \"start_station_name\" \"start_station_id\"  \n",
       " [7] \"end_station_name\"   \"end_station_id\"     \"start_lat\"         \n",
       "[10] \"start_lng\"          \"end_lat\"            \"end_lng\"           \n",
       "[13] \"member_casual\"     "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "colnames(all_trips)  #List of column names"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 7,
   "id": "59596c73",
   "metadata": {
    "_cell_guid": "7a19e906-8fc4-42a0-b6cb-f9674cd9fafb",
    "_uuid": "60227e1b-842d-4815-8005-487640adbc5a",
    "collapsed": false,
    "execution": {
     "iopub.execute_input": "2023-05-16T12:59:42.324352Z",
     "iopub.status.busy": "2023-05-16T12:59:42.322594Z",
     "iopub.status.idle": "2023-05-16T12:59:42.343501Z",
     "shell.execute_reply": "2023-05-16T12:59:42.341196Z"
    },
    "jupyter": {
     "outputs_hidden": false
    },
    "papermill": {
     "duration": 0.05585,
     "end_time": "2023-05-16T12:59:42.347053",
     "exception": false,
     "start_time": "2023-05-16T12:59:42.291203",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "5667717"
      ],
      "text/latex": [
       "5667717"
      ],
      "text/markdown": [
       "5667717"
      ],
      "text/plain": [
       "[1] 5667717"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "nrow(all_trips)  #How many rows are in data frame?"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 8,
   "id": "bd1c29b5",
   "metadata": {
    "_cell_guid": "f8f5ec42-8474-4a6b-bfb6-df61e4cba537",
    "_uuid": "24370128-ff18-4f45-a058-658861f20db9",
    "collapsed": false,
    "execution": {
     "iopub.execute_input": "2023-05-16T12:59:42.410370Z",
     "iopub.status.busy": "2023-05-16T12:59:42.408668Z",
     "iopub.status.idle": "2023-05-16T12:59:42.428416Z",
     "shell.execute_reply": "2023-05-16T12:59:42.426059Z"
    },
    "jupyter": {
     "outputs_hidden": false
    },
    "papermill": {
     "duration": 0.055921,
     "end_time": "2023-05-16T12:59:42.431762",
     "exception": false,
     "start_time": "2023-05-16T12:59:42.375841",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>5667717</li><li>13</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 5667717\n",
       "\\item 13\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 5667717\n",
       "2. 13\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       "[1] 5667717      13"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "dim(all_trips)  #Dimensions of the data frame?"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 9,
   "id": "d4dc1663",
   "metadata": {
    "_cell_guid": "cf33ed27-3321-4ad7-84c2-04d785855b19",
    "_uuid": "43108a42-d14c-4207-a2ea-8060ccef2b20",
    "collapsed": false,
    "execution": {
     "iopub.execute_input": "2023-05-16T12:59:42.493863Z",
     "iopub.status.busy": "2023-05-16T12:59:42.492140Z",
     "iopub.status.idle": "2023-05-16T12:59:42.538514Z",
     "shell.execute_reply": "2023-05-16T12:59:42.536399Z"
    },
    "jupyter": {
     "outputs_hidden": false
    },
    "papermill": {
     "duration": 0.082045,
     "end_time": "2023-05-16T12:59:42.542090",
     "exception": false,
     "start_time": "2023-05-16T12:59:42.460045",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 6 × 13</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>ride_id</th><th scope=col>rideable_type</th><th scope=col>started_at</th><th scope=col>ended_at</th><th scope=col>start_station_name</th><th scope=col>start_station_id</th><th scope=col>end_station_name</th><th scope=col>end_station_id</th><th scope=col>start_lat</th><th scope=col>start_lng</th><th scope=col>end_lat</th><th scope=col>end_lng</th><th scope=col>member_casual</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>1</th><td>C2F7DD78E82EC875</td><td>electric_bike</td><td>2022-01-13 11:59:47</td><td>2022-01-13 12:02:44</td><td><span style=white-space:pre-wrap>Glenwood Ave &amp; Touhy Ave     </span></td><td><span style=white-space:pre-wrap>525         </span></td><td><span style=white-space:pre-wrap>Clark St &amp; Touhy Ave         </span></td><td><span style=white-space:pre-wrap>RP-007      </span></td><td>42.01280</td><td>-87.66591</td><td>42.01256</td><td>-87.67437</td><td>casual</td></tr>\n",
       "\t<tr><th scope=row>2</th><td>A6CF8980A652D272</td><td>electric_bike</td><td>2022-01-10 08:41:56</td><td>2022-01-10 08:46:17</td><td><span style=white-space:pre-wrap>Glenwood Ave &amp; Touhy Ave     </span></td><td><span style=white-space:pre-wrap>525         </span></td><td><span style=white-space:pre-wrap>Clark St &amp; Touhy Ave         </span></td><td><span style=white-space:pre-wrap>RP-007      </span></td><td>42.01276</td><td>-87.66597</td><td>42.01256</td><td>-87.67437</td><td>casual</td></tr>\n",
       "\t<tr><th scope=row>3</th><td>BD0F91DFF741C66D</td><td>classic_bike </td><td>2022-01-25 04:53:40</td><td>2022-01-25 04:58:01</td><td>Sheffield Ave &amp; Fullerton Ave</td><td>TA1306000016</td><td>Greenview Ave &amp; Fullerton Ave</td><td>TA1307000001</td><td>41.92560</td><td>-87.65371</td><td>41.92533</td><td>-87.66580</td><td>member</td></tr>\n",
       "\t<tr><th scope=row>4</th><td>CBB80ED419105406</td><td>classic_bike </td><td>2022-01-04 00:18:04</td><td>2022-01-04 00:33:00</td><td><span style=white-space:pre-wrap>Clark St &amp; Bryn Mawr Ave     </span></td><td>KA1504000151</td><td><span style=white-space:pre-wrap>Paulina St &amp; Montrose Ave    </span></td><td>TA1309000021</td><td>41.98359</td><td>-87.66915</td><td>41.96151</td><td>-87.67139</td><td>casual</td></tr>\n",
       "\t<tr><th scope=row>5</th><td>DDC963BFDDA51EEA</td><td>classic_bike </td><td>2022-01-20 01:31:10</td><td>2022-01-20 01:37:12</td><td><span style=white-space:pre-wrap>Michigan Ave &amp; Jackson Blvd  </span></td><td>TA1309000002</td><td><span style=white-space:pre-wrap>State St &amp; Randolph St       </span></td><td>TA1305000029</td><td>41.87785</td><td>-87.62408</td><td>41.88462</td><td>-87.62783</td><td>member</td></tr>\n",
       "\t<tr><th scope=row>6</th><td>A39C6F6CC0586C0B</td><td>classic_bike </td><td>2022-01-11 18:48:09</td><td>2022-01-11 18:51:31</td><td><span style=white-space:pre-wrap>Wood St &amp; Chicago Ave        </span></td><td><span style=white-space:pre-wrap>637         </span></td><td><span style=white-space:pre-wrap>Honore St &amp; Division St      </span></td><td>TA1305000034</td><td>41.89563</td><td>-87.67207</td><td>41.90312</td><td>-87.67394</td><td>member</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 6 × 13\n",
       "\\begin{tabular}{r|lllllllllllll}\n",
       "  & ride\\_id & rideable\\_type & started\\_at & ended\\_at & start\\_station\\_name & start\\_station\\_id & end\\_station\\_name & end\\_station\\_id & start\\_lat & start\\_lng & end\\_lat & end\\_lng & member\\_casual\\\\\n",
       "  & <chr> & <chr> & <chr> & <chr> & <chr> & <chr> & <chr> & <chr> & <dbl> & <dbl> & <dbl> & <dbl> & <chr>\\\\\n",
       "\\hline\n",
       "\t1 & C2F7DD78E82EC875 & electric\\_bike & 2022-01-13 11:59:47 & 2022-01-13 12:02:44 & Glenwood Ave \\& Touhy Ave      & 525          & Clark St \\& Touhy Ave          & RP-007       & 42.01280 & -87.66591 & 42.01256 & -87.67437 & casual\\\\\n",
       "\t2 & A6CF8980A652D272 & electric\\_bike & 2022-01-10 08:41:56 & 2022-01-10 08:46:17 & Glenwood Ave \\& Touhy Ave      & 525          & Clark St \\& Touhy Ave          & RP-007       & 42.01276 & -87.66597 & 42.01256 & -87.67437 & casual\\\\\n",
       "\t3 & BD0F91DFF741C66D & classic\\_bike  & 2022-01-25 04:53:40 & 2022-01-25 04:58:01 & Sheffield Ave \\& Fullerton Ave & TA1306000016 & Greenview Ave \\& Fullerton Ave & TA1307000001 & 41.92560 & -87.65371 & 41.92533 & -87.66580 & member\\\\\n",
       "\t4 & CBB80ED419105406 & classic\\_bike  & 2022-01-04 00:18:04 & 2022-01-04 00:33:00 & Clark St \\& Bryn Mawr Ave      & KA1504000151 & Paulina St \\& Montrose Ave     & TA1309000021 & 41.98359 & -87.66915 & 41.96151 & -87.67139 & casual\\\\\n",
       "\t5 & DDC963BFDDA51EEA & classic\\_bike  & 2022-01-20 01:31:10 & 2022-01-20 01:37:12 & Michigan Ave \\& Jackson Blvd   & TA1309000002 & State St \\& Randolph St        & TA1305000029 & 41.87785 & -87.62408 & 41.88462 & -87.62783 & member\\\\\n",
       "\t6 & A39C6F6CC0586C0B & classic\\_bike  & 2022-01-11 18:48:09 & 2022-01-11 18:51:31 & Wood St \\& Chicago Ave         & 637          & Honore St \\& Division St       & TA1305000034 & 41.89563 & -87.67207 & 41.90312 & -87.67394 & member\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 6 × 13\n",
       "\n",
       "| <!--/--> | ride_id &lt;chr&gt; | rideable_type &lt;chr&gt; | started_at &lt;chr&gt; | ended_at &lt;chr&gt; | start_station_name &lt;chr&gt; | start_station_id &lt;chr&gt; | end_station_name &lt;chr&gt; | end_station_id &lt;chr&gt; | start_lat &lt;dbl&gt; | start_lng &lt;dbl&gt; | end_lat &lt;dbl&gt; | end_lng &lt;dbl&gt; | member_casual &lt;chr&gt; |\n",
       "|---|---|---|---|---|---|---|---|---|---|---|---|---|---|\n",
       "| 1 | C2F7DD78E82EC875 | electric_bike | 2022-01-13 11:59:47 | 2022-01-13 12:02:44 | Glenwood Ave &amp; Touhy Ave      | 525          | Clark St &amp; Touhy Ave          | RP-007       | 42.01280 | -87.66591 | 42.01256 | -87.67437 | casual |\n",
       "| 2 | A6CF8980A652D272 | electric_bike | 2022-01-10 08:41:56 | 2022-01-10 08:46:17 | Glenwood Ave &amp; Touhy Ave      | 525          | Clark St &amp; Touhy Ave          | RP-007       | 42.01276 | -87.66597 | 42.01256 | -87.67437 | casual |\n",
       "| 3 | BD0F91DFF741C66D | classic_bike  | 2022-01-25 04:53:40 | 2022-01-25 04:58:01 | Sheffield Ave &amp; Fullerton Ave | TA1306000016 | Greenview Ave &amp; Fullerton Ave | TA1307000001 | 41.92560 | -87.65371 | 41.92533 | -87.66580 | member |\n",
       "| 4 | CBB80ED419105406 | classic_bike  | 2022-01-04 00:18:04 | 2022-01-04 00:33:00 | Clark St &amp; Bryn Mawr Ave      | KA1504000151 | Paulina St &amp; Montrose Ave     | TA1309000021 | 41.98359 | -87.66915 | 41.96151 | -87.67139 | casual |\n",
       "| 5 | DDC963BFDDA51EEA | classic_bike  | 2022-01-20 01:31:10 | 2022-01-20 01:37:12 | Michigan Ave &amp; Jackson Blvd   | TA1309000002 | State St &amp; Randolph St        | TA1305000029 | 41.87785 | -87.62408 | 41.88462 | -87.62783 | member |\n",
       "| 6 | A39C6F6CC0586C0B | classic_bike  | 2022-01-11 18:48:09 | 2022-01-11 18:51:31 | Wood St &amp; Chicago Ave         | 637          | Honore St &amp; Division St       | TA1305000034 | 41.89563 | -87.67207 | 41.90312 | -87.67394 | member |\n",
       "\n"
      ],
      "text/plain": [
       "  ride_id          rideable_type started_at          ended_at           \n",
       "1 C2F7DD78E82EC875 electric_bike 2022-01-13 11:59:47 2022-01-13 12:02:44\n",
       "2 A6CF8980A652D272 electric_bike 2022-01-10 08:41:56 2022-01-10 08:46:17\n",
       "3 BD0F91DFF741C66D classic_bike  2022-01-25 04:53:40 2022-01-25 04:58:01\n",
       "4 CBB80ED419105406 classic_bike  2022-01-04 00:18:04 2022-01-04 00:33:00\n",
       "5 DDC963BFDDA51EEA classic_bike  2022-01-20 01:31:10 2022-01-20 01:37:12\n",
       "6 A39C6F6CC0586C0B classic_bike  2022-01-11 18:48:09 2022-01-11 18:51:31\n",
       "  start_station_name            start_station_id end_station_name             \n",
       "1 Glenwood Ave & Touhy Ave      525              Clark St & Touhy Ave         \n",
       "2 Glenwood Ave & Touhy Ave      525              Clark St & Touhy Ave         \n",
       "3 Sheffield Ave & Fullerton Ave TA1306000016     Greenview Ave & Fullerton Ave\n",
       "4 Clark St & Bryn Mawr Ave      KA1504000151     Paulina St & Montrose Ave    \n",
       "5 Michigan Ave & Jackson Blvd   TA1309000002     State St & Randolph St       \n",
       "6 Wood St & Chicago Ave         637              Honore St & Division St      \n",
       "  end_station_id start_lat start_lng end_lat  end_lng   member_casual\n",
       "1 RP-007         42.01280  -87.66591 42.01256 -87.67437 casual       \n",
       "2 RP-007         42.01276  -87.66597 42.01256 -87.67437 casual       \n",
       "3 TA1307000001   41.92560  -87.65371 41.92533 -87.66580 member       \n",
       "4 TA1309000021   41.98359  -87.66915 41.96151 -87.67139 casual       \n",
       "5 TA1305000029   41.87785  -87.62408 41.88462 -87.62783 member       \n",
       "6 TA1305000034   41.89563  -87.67207 41.90312 -87.67394 member       "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "head(all_trips)  #See the first 6 rows of data frame."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 10,
   "id": "c48caae9",
   "metadata": {
    "_cell_guid": "2ae06791-1343-4666-bf72-4b382cb41183",
    "_uuid": "7ce7737c-a988-41d5-a8ec-b2a6e9a26ff1",
    "collapsed": false,
    "execution": {
     "iopub.execute_input": "2023-05-16T12:59:42.611355Z",
     "iopub.status.busy": "2023-05-16T12:59:42.608929Z",
     "iopub.status.idle": "2023-05-16T12:59:42.655605Z",
     "shell.execute_reply": "2023-05-16T12:59:42.652954Z"
    },
    "jupyter": {
     "outputs_hidden": false
    },
    "papermill": {
     "duration": 0.084608,
     "end_time": "2023-05-16T12:59:42.658982",
     "exception": false,
     "start_time": "2023-05-16T12:59:42.574374",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "'data.frame':\t5667717 obs. of  13 variables:\n",
      " $ ride_id           : chr  \"C2F7DD78E82EC875\" \"A6CF8980A652D272\" \"BD0F91DFF741C66D\" \"CBB80ED419105406\" ...\n",
      " $ rideable_type     : chr  \"electric_bike\" \"electric_bike\" \"classic_bike\" \"classic_bike\" ...\n",
      " $ started_at        : chr  \"2022-01-13 11:59:47\" \"2022-01-10 08:41:56\" \"2022-01-25 04:53:40\" \"2022-01-04 00:18:04\" ...\n",
      " $ ended_at          : chr  \"2022-01-13 12:02:44\" \"2022-01-10 08:46:17\" \"2022-01-25 04:58:01\" \"2022-01-04 00:33:00\" ...\n",
      " $ start_station_name: chr  \"Glenwood Ave & Touhy Ave\" \"Glenwood Ave & Touhy Ave\" \"Sheffield Ave & Fullerton Ave\" \"Clark St & Bryn Mawr Ave\" ...\n",
      " $ start_station_id  : chr  \"525\" \"525\" \"TA1306000016\" \"KA1504000151\" ...\n",
      " $ end_station_name  : chr  \"Clark St & Touhy Ave\" \"Clark St & Touhy Ave\" \"Greenview Ave & Fullerton Ave\" \"Paulina St & Montrose Ave\" ...\n",
      " $ end_station_id    : chr  \"RP-007\" \"RP-007\" \"TA1307000001\" \"TA1309000021\" ...\n",
      " $ start_lat         : num  42 42 41.9 42 41.9 ...\n",
      " $ start_lng         : num  -87.7 -87.7 -87.7 -87.7 -87.6 ...\n",
      " $ end_lat           : num  42 42 41.9 42 41.9 ...\n",
      " $ end_lng           : num  -87.7 -87.7 -87.7 -87.7 -87.6 ...\n",
      " $ member_casual     : chr  \"casual\" \"casual\" \"member\" \"casual\" ...\n"
     ]
    }
   ],
   "source": [
    "str(all_trips)  #See list of columns and data types (numeric, character, etc)\n",
    "# You can also confirm each columns' data type here"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 11,
   "id": "3dc43c26",
   "metadata": {
    "_cell_guid": "de6b4ac1-277e-44c7-988d-6f637c227870",
    "_uuid": "50d21952-8ef1-45f6-983c-34d9429e942e",
    "collapsed": false,
    "execution": {
     "iopub.execute_input": "2023-05-16T12:59:42.724456Z",
     "iopub.status.busy": "2023-05-16T12:59:42.722563Z",
     "iopub.status.idle": "2023-05-16T12:59:54.771276Z",
     "shell.execute_reply": "2023-05-16T12:59:54.769063Z"
    },
    "jupyter": {
     "outputs_hidden": false
    },
    "papermill": {
     "duration": 12.084345,
     "end_time": "2023-05-16T12:59:54.774457",
     "exception": false,
     "start_time": "2023-05-16T12:59:42.690112",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "   ride_id          rideable_type       started_at          ended_at        \n",
       " Length:5667717     Length:5667717     Length:5667717     Length:5667717    \n",
       " Class :character   Class :character   Class :character   Class :character  \n",
       " Mode  :character   Mode  :character   Mode  :character   Mode  :character  \n",
       "                                                                            \n",
       "                                                                            \n",
       "                                                                            \n",
       "                                                                            \n",
       " start_station_name start_station_id   end_station_name   end_station_id    \n",
       " Length:5667717     Length:5667717     Length:5667717     Length:5667717    \n",
       " Class :character   Class :character   Class :character   Class :character  \n",
       " Mode  :character   Mode  :character   Mode  :character   Mode  :character  \n",
       "                                                                            \n",
       "                                                                            \n",
       "                                                                            \n",
       "                                                                            \n",
       "   start_lat       start_lng         end_lat         end_lng      \n",
       " Min.   :41.64   Min.   :-87.84   Min.   : 0.00   Min.   :-88.14  \n",
       " 1st Qu.:41.88   1st Qu.:-87.66   1st Qu.:41.88   1st Qu.:-87.66  \n",
       " Median :41.90   Median :-87.64   Median :41.90   Median :-87.64  \n",
       " Mean   :41.90   Mean   :-87.65   Mean   :41.90   Mean   :-87.65  \n",
       " 3rd Qu.:41.93   3rd Qu.:-87.63   3rd Qu.:41.93   3rd Qu.:-87.63  \n",
       " Max.   :45.64   Max.   :-73.80   Max.   :42.37   Max.   :  0.00  \n",
       "                                  NA's   :5858    NA's   :5858    \n",
       " member_casual     \n",
       " Length:5667717    \n",
       " Class :character  \n",
       " Mode  :character  \n",
       "                   \n",
       "                   \n",
       "                   \n",
       "                   "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "summary(all_trips)  #Statistical summary of data. Mainly for numerics\n",
    "#Confirmed there are 5858 NA columns in end_lat and end_lat"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 12,
   "id": "522ab719",
   "metadata": {
    "_cell_guid": "78c6db5b-0b78-45a3-9bec-012827e74a29",
    "_uuid": "03f6f61a-4b6d-4b79-a40d-0e46decb7e98",
    "collapsed": false,
    "execution": {
     "iopub.execute_input": "2023-05-16T12:59:54.836594Z",
     "iopub.status.busy": "2023-05-16T12:59:54.834691Z",
     "iopub.status.idle": "2023-05-16T13:00:23.056954Z",
     "shell.execute_reply": "2023-05-16T13:00:23.054618Z"
    },
    "jupyter": {
     "outputs_hidden": false
    },
    "papermill": {
     "duration": 28.257971,
     "end_time": "2023-05-16T13:00:23.060869",
     "exception": false,
     "start_time": "2023-05-16T12:59:54.802898",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "# Add columns named date, month, day, and year per ride as we might need to analyse ride data for each month, day, or year.\n",
    "all_trips$date <- as.Date(all_trips$started_at) #The default format is yyyy-mm-dd\n",
    "all_trips$month <- format(as.Date(all_trips$date), \"%m\")\n",
    "all_trips$day <- format(as.Date(all_trips$date), \"%d\")\n",
    "all_trips$year <- format(as.Date(all_trips$date), \"%Y\")\n",
    "all_trips$day_of_week <- format(as.Date(all_trips$date), \"%A\")"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 13,
   "id": "0490564a",
   "metadata": {
    "_cell_guid": "a02ae29b-8fd0-45a1-be15-256354e674a0",
    "_uuid": "5cbe23b9-ccb3-4b8d-abd9-7a6654309f9f",
    "collapsed": false,
    "execution": {
     "iopub.execute_input": "2023-05-16T13:00:23.123325Z",
     "iopub.status.busy": "2023-05-16T13:00:23.121426Z",
     "iopub.status.idle": "2023-05-16T13:00:23.148540Z",
     "shell.execute_reply": "2023-05-16T13:00:23.145977Z"
    },
    "jupyter": {
     "outputs_hidden": false
    },
    "papermill": {
     "duration": 0.062026,
     "end_time": "2023-05-16T13:00:23.152178",
     "exception": false,
     "start_time": "2023-05-16T13:00:23.090152",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'ride_id'</li><li>'rideable_type'</li><li>'started_at'</li><li>'ended_at'</li><li>'start_station_name'</li><li>'start_station_id'</li><li>'end_station_name'</li><li>'end_station_id'</li><li>'start_lat'</li><li>'start_lng'</li><li>'end_lat'</li><li>'end_lng'</li><li>'member_casual'</li><li>'date'</li><li>'month'</li><li>'day'</li><li>'year'</li><li>'day_of_week'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'ride\\_id'\n",
       "\\item 'rideable\\_type'\n",
       "\\item 'started\\_at'\n",
       "\\item 'ended\\_at'\n",
       "\\item 'start\\_station\\_name'\n",
       "\\item 'start\\_station\\_id'\n",
       "\\item 'end\\_station\\_name'\n",
       "\\item 'end\\_station\\_id'\n",
       "\\item 'start\\_lat'\n",
       "\\item 'start\\_lng'\n",
       "\\item 'end\\_lat'\n",
       "\\item 'end\\_lng'\n",
       "\\item 'member\\_casual'\n",
       "\\item 'date'\n",
       "\\item 'month'\n",
       "\\item 'day'\n",
       "\\item 'year'\n",
       "\\item 'day\\_of\\_week'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'ride_id'\n",
       "2. 'rideable_type'\n",
       "3. 'started_at'\n",
       "4. 'ended_at'\n",
       "5. 'start_station_name'\n",
       "6. 'start_station_id'\n",
       "7. 'end_station_name'\n",
       "8. 'end_station_id'\n",
       "9. 'start_lat'\n",
       "10. 'start_lng'\n",
       "11. 'end_lat'\n",
       "12. 'end_lng'\n",
       "13. 'member_casual'\n",
       "14. 'date'\n",
       "15. 'month'\n",
       "16. 'day'\n",
       "17. 'year'\n",
       "18. 'day_of_week'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       " [1] \"ride_id\"            \"rideable_type\"      \"started_at\"        \n",
       " [4] \"ended_at\"           \"start_station_name\" \"start_station_id\"  \n",
       " [7] \"end_station_name\"   \"end_station_id\"     \"start_lat\"         \n",
       "[10] \"start_lng\"          \"end_lat\"            \"end_lng\"           \n",
       "[13] \"member_casual\"      \"date\"               \"month\"             \n",
       "[16] \"day\"                \"year\"               \"day_of_week\"       "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "colnames(all_trips)\n",
    "#Confirmed additional columns have been added"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 14,
   "id": "9ee5394a",
   "metadata": {
    "_cell_guid": "53e0764f-da2b-41be-bd1b-6ed8e7fbb0cf",
    "_uuid": "68f69443-8677-4372-868f-bf52858ba0fb",
    "collapsed": false,
    "execution": {
     "iopub.execute_input": "2023-05-16T13:00:23.216015Z",
     "iopub.status.busy": "2023-05-16T13:00:23.214195Z",
     "iopub.status.idle": "2023-05-16T13:00:31.690593Z",
     "shell.execute_reply": "2023-05-16T13:00:31.688372Z"
    },
    "jupyter": {
     "outputs_hidden": false
    },
    "papermill": {
     "duration": 8.513665,
     "end_time": "2023-05-16T13:00:31.695703",
     "exception": false,
     "start_time": "2023-05-16T13:00:23.182038",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "# Convert \"started_at\" and \"ended_at\" from character to Double so we can run calculations on the data\n",
    "all_trips <- mutate(all_trips, started_at = ymd_hms(started_at), ended_at = ymd_hms(ended_at))"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 15,
   "id": "c012f1df",
   "metadata": {
    "_cell_guid": "b03cf777-f1e6-4e90-9731-1d8906ef4156",
    "_uuid": "8d8f1e91-25b2-4ddf-a8a0-c30a4c3492d3",
    "collapsed": false,
    "execution": {
     "iopub.execute_input": "2023-05-16T13:00:31.761323Z",
     "iopub.status.busy": "2023-05-16T13:00:31.759296Z",
     "iopub.status.idle": "2023-05-16T13:00:37.758153Z",
     "shell.execute_reply": "2023-05-16T13:00:37.755725Z"
    },
    "jupyter": {
     "outputs_hidden": false
    },
    "papermill": {
     "duration": 6.034272,
     "end_time": "2023-05-16T13:00:37.761674",
     "exception": false,
     "start_time": "2023-05-16T13:00:31.727402",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "# Add a \"ride_duration\" calculation to all_trips (in seconds) so that I can compare ride duration for each ride\n",
    "all_trips$ride_duration <- difftime(all_trips$ended_at,all_trips$started_at)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 16,
   "id": "7489a4fc",
   "metadata": {
    "_cell_guid": "fc325758-af1d-48fd-a71d-015d484fd943",
    "_uuid": "767c8b73-54ad-4306-ae7f-53067b80c12c",
    "collapsed": false,
    "execution": {
     "iopub.execute_input": "2023-05-16T13:00:37.875130Z",
     "iopub.status.busy": "2023-05-16T13:00:37.873011Z",
     "iopub.status.idle": "2023-05-16T13:00:46.436938Z",
     "shell.execute_reply": "2023-05-16T13:00:46.434728Z"
    },
    "jupyter": {
     "outputs_hidden": false
    },
    "papermill": {
     "duration": 8.599425,
     "end_time": "2023-05-16T13:00:46.439857",
     "exception": false,
     "start_time": "2023-05-16T13:00:37.840432",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "TRUE"
      ],
      "text/latex": [
       "TRUE"
      ],
      "text/markdown": [
       "TRUE"
      ],
      "text/plain": [
       "[1] TRUE"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# Convert \"ride_duration\" from Double to numeric so we can run calculations on the data\n",
    "all_trips$ride_duration <- as.numeric(as.character(all_trips$ride_duration))\n",
    "is.numeric(all_trips$ride_duration)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "2b102fc7",
   "metadata": {
    "_cell_guid": "b46ec439-2f0e-4ec8-9d55-91f869eb9b5b",
    "_uuid": "0b54d6f1-a09b-4b08-83cc-391a86371a08",
    "papermill": {
     "duration": 0.030266,
     "end_time": "2023-05-16T13:00:46.499446",
     "exception": false,
     "start_time": "2023-05-16T13:00:46.469180",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**Remove bad data**\n",
    "\n",
    "1. Ride length less than or equal to 0 minute and more than 1440 minutes should be removed since they are negative or more than one day."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 17,
   "id": "0e3e16a6",
   "metadata": {
    "_cell_guid": "77a53744-5f42-423b-ab22-678f462c3373",
    "_uuid": "99d547c0-9850-46eb-9241-b130641f82c5",
    "collapsed": false,
    "execution": {
     "iopub.execute_input": "2023-05-16T13:00:46.562273Z",
     "iopub.status.busy": "2023-05-16T13:00:46.560136Z",
     "iopub.status.idle": "2023-05-16T13:00:50.468245Z",
     "shell.execute_reply": "2023-05-16T13:00:50.465545Z"
    },
    "jupyter": {
     "outputs_hidden": false
    },
    "papermill": {
     "duration": 3.94341,
     "end_time": "2023-05-16T13:00:50.471877",
     "exception": false,
     "start_time": "2023-05-16T13:00:46.528467",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "#Remove bad data\n",
    "#The data frame includes a few hundred entries when bikes were taken out of docks and checked for quality by Divvy or ride_duration was negative\n",
    "#Create a new data frame without records that have ride duration less than or equal to zero minute OR more than 1440 minutes\n",
    "all_trips_v2 <- all_trips[!(all_trips$ride_duration <= 0 | all_trips$ride_duration > 1440),]"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 18,
   "id": "3613db8d",
   "metadata": {
    "_cell_guid": "5dcf1071-e7d3-4ee6-bbc4-eac8c928de95",
    "_uuid": "2bb120aa-1510-4bcf-acf7-0989021cf302",
    "collapsed": false,
    "execution": {
     "iopub.execute_input": "2023-05-16T13:00:50.533434Z",
     "iopub.status.busy": "2023-05-16T13:00:50.531459Z",
     "iopub.status.idle": "2023-05-16T13:00:56.255703Z",
     "shell.execute_reply": "2023-05-16T13:00:56.253417Z"
    },
    "jupyter": {
     "outputs_hidden": false
    },
    "papermill": {
     "duration": 5.759112,
     "end_time": "2023-05-16T13:00:56.259194",
     "exception": false,
     "start_time": "2023-05-16T13:00:50.500082",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>4721562</li><li>19</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 4721562\n",
       "\\item 19\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 4721562\n",
       "2. 19\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       "[1] 4721562      19"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 4721562 × 19</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>ride_id</th><th scope=col>rideable_type</th><th scope=col>started_at</th><th scope=col>ended_at</th><th scope=col>start_station_name</th><th scope=col>start_station_id</th><th scope=col>end_station_name</th><th scope=col>end_station_id</th><th scope=col>start_lat</th><th scope=col>start_lng</th><th scope=col>end_lat</th><th scope=col>end_lng</th><th scope=col>member_casual</th><th scope=col>date</th><th scope=col>month</th><th scope=col>day</th><th scope=col>year</th><th scope=col>day_of_week</th><th scope=col>ride_duration</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dttm&gt;</th><th scope=col>&lt;dttm&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;date&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>1</th><td>C2F7DD78E82EC875</td><td>electric_bike</td><td>2022-01-13 11:59:47</td><td>2022-01-13 12:02:44</td><td><span style=white-space:pre-wrap>Glenwood Ave &amp; Touhy Ave     </span></td><td><span style=white-space:pre-wrap>525         </span></td><td><span style=white-space:pre-wrap>Clark St &amp; Touhy Ave         </span></td><td><span style=white-space:pre-wrap>RP-007      </span></td><td>42.01280</td><td>-87.66591</td><td>42.01256</td><td>-87.67437</td><td>casual</td><td>2022-01-13</td><td>01</td><td>13</td><td>2022</td><td>Thursday </td><td> 177</td></tr>\n",
       "\t<tr><th scope=row>2</th><td>A6CF8980A652D272</td><td>electric_bike</td><td>2022-01-10 08:41:56</td><td>2022-01-10 08:46:17</td><td><span style=white-space:pre-wrap>Glenwood Ave &amp; Touhy Ave     </span></td><td><span style=white-space:pre-wrap>525         </span></td><td><span style=white-space:pre-wrap>Clark St &amp; Touhy Ave         </span></td><td><span style=white-space:pre-wrap>RP-007      </span></td><td>42.01276</td><td>-87.66597</td><td>42.01256</td><td>-87.67437</td><td>casual</td><td>2022-01-10</td><td>01</td><td>10</td><td>2022</td><td><span style=white-space:pre-wrap>Monday   </span></td><td> 261</td></tr>\n",
       "\t<tr><th scope=row>3</th><td>BD0F91DFF741C66D</td><td>classic_bike </td><td>2022-01-25 04:53:40</td><td>2022-01-25 04:58:01</td><td>Sheffield Ave &amp; Fullerton Ave</td><td>TA1306000016</td><td>Greenview Ave &amp; Fullerton Ave</td><td>TA1307000001</td><td>41.92560</td><td>-87.65371</td><td>41.92533</td><td>-87.66580</td><td>member</td><td>2022-01-25</td><td>01</td><td>25</td><td>2022</td><td><span style=white-space:pre-wrap>Tuesday  </span></td><td> 261</td></tr>\n",
       "\t<tr><th scope=row>4</th><td>CBB80ED419105406</td><td>classic_bike </td><td>2022-01-04 00:18:04</td><td>2022-01-04 00:33:00</td><td><span style=white-space:pre-wrap>Clark St &amp; Bryn Mawr Ave     </span></td><td>KA1504000151</td><td><span style=white-space:pre-wrap>Paulina St &amp; Montrose Ave    </span></td><td>TA1309000021</td><td>41.98359</td><td>-87.66915</td><td>41.96151</td><td>-87.67139</td><td>casual</td><td>2022-01-04</td><td>01</td><td>04</td><td>2022</td><td><span style=white-space:pre-wrap>Tuesday  </span></td><td> 896</td></tr>\n",
       "\t<tr><th scope=row>5</th><td>DDC963BFDDA51EEA</td><td>classic_bike </td><td>2022-01-20 01:31:10</td><td>2022-01-20 01:37:12</td><td><span style=white-space:pre-wrap>Michigan Ave &amp; Jackson Blvd  </span></td><td>TA1309000002</td><td><span style=white-space:pre-wrap>State St &amp; Randolph St       </span></td><td>TA1305000029</td><td>41.87785</td><td>-87.62408</td><td>41.88462</td><td>-87.62783</td><td>member</td><td>2022-01-20</td><td>01</td><td>20</td><td>2022</td><td>Thursday </td><td> 362</td></tr>\n",
       "\t<tr><th scope=row>6</th><td>A39C6F6CC0586C0B</td><td>classic_bike </td><td>2022-01-11 18:48:09</td><td>2022-01-11 18:51:31</td><td><span style=white-space:pre-wrap>Wood St &amp; Chicago Ave        </span></td><td><span style=white-space:pre-wrap>637         </span></td><td><span style=white-space:pre-wrap>Honore St &amp; Division St      </span></td><td>TA1305000034</td><td>41.89563</td><td>-87.67207</td><td>41.90312</td><td>-87.67394</td><td>member</td><td>2022-01-11</td><td>01</td><td>11</td><td>2022</td><td><span style=white-space:pre-wrap>Tuesday  </span></td><td> 202</td></tr>\n",
       "\t<tr><th scope=row>7</th><td>BDC4AB637EDF981B</td><td>classic_bike </td><td>2022-01-30 18:32:52</td><td>2022-01-30 18:49:26</td><td><span style=white-space:pre-wrap>Oakley Ave &amp; Irving Park Rd  </span></td><td>KA1504000158</td><td><span style=white-space:pre-wrap>Broadway &amp; Sheridan Rd       </span></td><td><span style=white-space:pre-wrap>13323       </span></td><td>41.95434</td><td>-87.68608</td><td>41.95283</td><td>-87.64999</td><td>member</td><td>2022-01-30</td><td>01</td><td>30</td><td>2022</td><td><span style=white-space:pre-wrap>Sunday   </span></td><td> 994</td></tr>\n",
       "\t<tr><th scope=row>8</th><td>81751A3186E59A6B</td><td>classic_bike </td><td>2022-01-22 12:20:02</td><td>2022-01-22 12:32:06</td><td>Sheffield Ave &amp; Fullerton Ave</td><td>TA1306000016</td><td><span style=white-space:pre-wrap>Damen Ave &amp; Clybourn Ave     </span></td><td><span style=white-space:pre-wrap>13271       </span></td><td>41.92560</td><td>-87.65371</td><td>41.93193</td><td>-87.67786</td><td>member</td><td>2022-01-22</td><td>01</td><td>22</td><td>2022</td><td>Saturday </td><td> 724</td></tr>\n",
       "\t<tr><th scope=row>10</th><td>72DC25B2DD467EEF</td><td>classic_bike </td><td>2022-01-28 15:27:53</td><td>2022-01-28 15:35:16</td><td><span style=white-space:pre-wrap>LaSalle St &amp; Jackson Blvd    </span></td><td>TA1309000004</td><td>Clinton St &amp; Washington Blvd </td><td><span style=white-space:pre-wrap>WL-012      </span></td><td>41.87817</td><td>-87.63193</td><td>41.88338</td><td>-87.64117</td><td>member</td><td>2022-01-28</td><td>01</td><td>28</td><td>2022</td><td><span style=white-space:pre-wrap>Friday   </span></td><td> 443</td></tr>\n",
       "\t<tr><th scope=row>11</th><td>F20394FE09C63DB2</td><td>classic_bike </td><td>2022-01-11 18:27:59</td><td>2022-01-11 18:34:20</td><td><span style=white-space:pre-wrap>LaSalle St &amp; Jackson Blvd    </span></td><td>TA1309000004</td><td>Clinton St &amp; Washington Blvd </td><td><span style=white-space:pre-wrap>WL-012      </span></td><td>41.87817</td><td>-87.63193</td><td>41.88338</td><td>-87.64117</td><td>member</td><td>2022-01-11</td><td>01</td><td>11</td><td>2022</td><td><span style=white-space:pre-wrap>Tuesday  </span></td><td> 381</td></tr>\n",
       "\t<tr><th scope=row>12</th><td>006D3F363CF9600B</td><td>electric_bike</td><td>2022-01-29 12:30:43</td><td>2022-01-29 12:43:04</td><td><span style=white-space:pre-wrap>Clarendon Ave &amp; Leland Ave   </span></td><td>TA1307000119</td><td><span style=white-space:pre-wrap>Broadway &amp; Granville Ave     </span></td><td><span style=white-space:pre-wrap>15571       </span></td><td>41.96796</td><td>-87.65003</td><td>41.99478</td><td>-87.66028</td><td>member</td><td>2022-01-29</td><td>01</td><td>29</td><td>2022</td><td>Saturday </td><td> 741</td></tr>\n",
       "\t<tr><th scope=row>13</th><td>FB258EEBE89F4E17</td><td>classic_bike </td><td>2022-01-02 17:56:18</td><td>2022-01-02 18:05:38</td><td>Sheffield Ave &amp; Fullerton Ave</td><td>TA1306000016</td><td>Stockton Dr &amp; Wrightwood Ave </td><td><span style=white-space:pre-wrap>13276       </span></td><td>41.92560</td><td>-87.65371</td><td>41.93132</td><td>-87.63874</td><td>member</td><td>2022-01-02</td><td>01</td><td>02</td><td>2022</td><td><span style=white-space:pre-wrap>Sunday   </span></td><td> 560</td></tr>\n",
       "\t<tr><th scope=row>14</th><td>2EF51270B08DEE03</td><td>classic_bike </td><td>2022-01-20 22:03:06</td><td>2022-01-20 22:09:59</td><td><span style=white-space:pre-wrap>Rush St &amp; Superior St        </span></td><td><span style=white-space:pre-wrap>15530       </span></td><td><span style=white-space:pre-wrap>Larrabee St &amp; Kingsbury St   </span></td><td>TA1306000009</td><td>41.89576</td><td>-87.62591</td><td>41.89776</td><td>-87.64288</td><td>member</td><td>2022-01-20</td><td>01</td><td>20</td><td>2022</td><td>Thursday </td><td> 413</td></tr>\n",
       "\t<tr><th scope=row>15</th><td>E119D4E6BF686601</td><td>electric_bike</td><td>2022-01-08 05:36:40</td><td>2022-01-08 05:46:40</td><td><span style=white-space:pre-wrap>Michigan Ave &amp; Jackson Blvd  </span></td><td>TA1309000002</td><td><span style=white-space:pre-wrap>St. Clair St &amp; Erie St       </span></td><td><span style=white-space:pre-wrap>13016       </span></td><td>41.87785</td><td>-87.62406</td><td>41.89435</td><td>-87.62280</td><td>casual</td><td>2022-01-08</td><td>01</td><td>08</td><td>2022</td><td>Saturday </td><td> 600</td></tr>\n",
       "\t<tr><th scope=row>16</th><td>7DD70C4AA0F3EA7B</td><td>classic_bike </td><td>2022-01-14 05:47:07</td><td>2022-01-14 05:47:39</td><td>Lincoln Park Conservatory    </td><td>LP-         </td><td>Lincoln Park Conservatory    </td><td>LP-         </td><td>41.92393</td><td>-87.63582</td><td>41.92393</td><td>-87.63582</td><td>member</td><td>2022-01-14</td><td>01</td><td>14</td><td>2022</td><td>Friday   </td><td>  32</td></tr>\n",
       "\t<tr><th scope=row>17</th><td>0AA241497B970400</td><td>classic_bike </td><td>2022-01-12 14:09:13</td><td>2022-01-12 14:10:53</td><td><span style=white-space:pre-wrap>LaSalle St &amp; Jackson Blvd    </span></td><td>TA1309000004</td><td><span style=white-space:pre-wrap>Clark St &amp; Ida B Wells Dr    </span></td><td>TA1305000009</td><td>41.87817</td><td>-87.63193</td><td>41.87593</td><td>-87.63058</td><td>member</td><td>2022-01-12</td><td>01</td><td>12</td><td>2022</td><td>Wednesday</td><td> 100</td></tr>\n",
       "\t<tr><th scope=row>18</th><td>F5E6D97D85BE8039</td><td>classic_bike </td><td>2022-01-31 12:07:45</td><td>2022-01-31 12:12:48</td><td><span style=white-space:pre-wrap>Michigan Ave &amp; Jackson Blvd  </span></td><td>TA1309000002</td><td><span style=white-space:pre-wrap>Indiana Ave &amp; Roosevelt Rd   </span></td><td><span style=white-space:pre-wrap>SL-005      </span></td><td>41.87785</td><td>-87.62408</td><td>41.86789</td><td>-87.62304</td><td>member</td><td>2022-01-31</td><td>01</td><td>31</td><td>2022</td><td><span style=white-space:pre-wrap>Monday   </span></td><td> 303</td></tr>\n",
       "\t<tr><th scope=row>19</th><td>78168928DF06A497</td><td>classic_bike </td><td>2022-01-28 17:21:59</td><td>2022-01-28 17:26:54</td><td><span style=white-space:pre-wrap>Michigan Ave &amp; Jackson Blvd  </span></td><td>TA1309000002</td><td><span style=white-space:pre-wrap>Indiana Ave &amp; Roosevelt Rd   </span></td><td><span style=white-space:pre-wrap>SL-005      </span></td><td>41.87785</td><td>-87.62408</td><td>41.86789</td><td>-87.62304</td><td>member</td><td>2022-01-28</td><td>01</td><td>28</td><td>2022</td><td><span style=white-space:pre-wrap>Friday   </span></td><td> 295</td></tr>\n",
       "\t<tr><th scope=row>20</th><td>15C176B55C2BC059</td><td>classic_bike </td><td>2022-01-19 21:00:40</td><td>2022-01-19 21:09:56</td><td><span style=white-space:pre-wrap>Clark St &amp; Bryn Mawr Ave     </span></td><td>KA1504000151</td><td><span style=white-space:pre-wrap>Clark St &amp; Schreiber Ave     </span></td><td>KA1504000156</td><td>41.98359</td><td>-87.66915</td><td>41.99925</td><td>-87.67138</td><td>member</td><td>2022-01-19</td><td>01</td><td>19</td><td>2022</td><td>Wednesday</td><td> 556</td></tr>\n",
       "\t<tr><th scope=row>22</th><td>1A185AF405E7B2DB</td><td>classic_bike </td><td>2022-01-13 12:47:10</td><td>2022-01-13 13:10:20</td><td><span style=white-space:pre-wrap>Sedgwick St &amp; North Ave      </span></td><td>TA1307000038</td><td><span style=white-space:pre-wrap>Sedgwick St &amp; North Ave      </span></td><td>TA1307000038</td><td>41.91139</td><td>-87.63868</td><td>41.91139</td><td>-87.63868</td><td>member</td><td>2022-01-13</td><td>01</td><td>13</td><td>2022</td><td>Thursday </td><td>1390</td></tr>\n",
       "\t<tr><th scope=row>23</th><td>9D4AAF43A011FC59</td><td>electric_bike</td><td>2022-01-18 08:03:16</td><td>2022-01-18 08:08:00</td><td><span style=white-space:pre-wrap>California Ave &amp; Altgeld St  </span></td><td><span style=white-space:pre-wrap>15646       </span></td><td><span style=white-space:pre-wrap>Milwaukee Ave &amp; Rockwell St  </span></td><td><span style=white-space:pre-wrap>13242       </span></td><td>41.92665</td><td>-87.69766</td><td>41.92020</td><td>-87.69266</td><td>casual</td><td>2022-01-18</td><td>01</td><td>18</td><td>2022</td><td><span style=white-space:pre-wrap>Tuesday  </span></td><td> 284</td></tr>\n",
       "\t<tr><th scope=row>24</th><td>A209F8E0E84D49B4</td><td>classic_bike </td><td>2022-01-25 14:46:24</td><td>2022-01-25 15:00:27</td><td>Sheffield Ave &amp; Fullerton Ave</td><td>TA1306000016</td><td><span style=white-space:pre-wrap>Halsted St &amp; Roscoe St       </span></td><td>TA1309000025</td><td>41.92560</td><td>-87.65371</td><td>41.94367</td><td>-87.64895</td><td>member</td><td>2022-01-25</td><td>01</td><td>25</td><td>2022</td><td><span style=white-space:pre-wrap>Tuesday  </span></td><td> 843</td></tr>\n",
       "\t<tr><th scope=row>25</th><td>6D6B462903DCB23F</td><td>electric_bike</td><td>2022-01-10 06:44:21</td><td>2022-01-10 06:51:28</td><td><span style=white-space:pre-wrap>Racine Ave &amp; 15th St         </span></td><td><span style=white-space:pre-wrap>13304       </span></td><td><span style=white-space:pre-wrap>Wolcott Ave &amp; Polk St        </span></td><td>TA1309000064</td><td>41.86121</td><td>-87.65660</td><td>41.87126</td><td>-87.67369</td><td>member</td><td>2022-01-10</td><td>01</td><td>10</td><td>2022</td><td><span style=white-space:pre-wrap>Monday   </span></td><td> 427</td></tr>\n",
       "\t<tr><th scope=row>26</th><td>DC809CD3B3F3BFC9</td><td>classic_bike </td><td>2022-01-22 15:14:32</td><td>2022-01-22 15:25:21</td><td><span style=white-space:pre-wrap>Indiana Ave &amp; 31st St        </span></td><td>TA1308000036</td><td><span style=white-space:pre-wrap>Emerald Ave &amp; 31st St        </span></td><td>TA1309000055</td><td>41.83884</td><td>-87.62186</td><td>41.83820</td><td>-87.64514</td><td>member</td><td>2022-01-22</td><td>01</td><td>22</td><td>2022</td><td>Saturday </td><td> 649</td></tr>\n",
       "\t<tr><th scope=row>27</th><td>1C2362DAD4090D8A</td><td>electric_bike</td><td>2022-01-03 00:12:42</td><td>2022-01-03 00:17:50</td><td><span style=white-space:pre-wrap>Indiana Ave &amp; 31st St        </span></td><td>TA1308000036</td><td><span style=white-space:pre-wrap>Indiana Ave &amp; 40th St        </span></td><td><span style=white-space:pre-wrap>13083       </span></td><td>41.83882</td><td>-87.62183</td><td>41.82168</td><td>-87.62160</td><td>casual</td><td>2022-01-03</td><td>01</td><td>03</td><td>2022</td><td><span style=white-space:pre-wrap>Monday   </span></td><td> 308</td></tr>\n",
       "\t<tr><th scope=row>28</th><td>AB4032C2B151D137</td><td>classic_bike </td><td>2022-01-31 18:58:30</td><td>2022-01-31 19:05:17</td><td><span style=white-space:pre-wrap>Lake Park Ave &amp; 56th St      </span></td><td>TA1309000063</td><td><span style=white-space:pre-wrap>Shore Dr &amp; 55th St           </span></td><td>TA1308000009</td><td>41.79324</td><td>-87.58778</td><td>41.79521</td><td>-87.58071</td><td>member</td><td>2022-01-31</td><td>01</td><td>31</td><td>2022</td><td><span style=white-space:pre-wrap>Monday   </span></td><td> 407</td></tr>\n",
       "\t<tr><th scope=row>29</th><td>E6B6D4531ADC9F52</td><td>classic_bike </td><td>2022-01-15 17:41:15</td><td>2022-01-15 17:48:54</td><td>Sheffield Ave &amp; Fullerton Ave</td><td>TA1306000016</td><td>Ashland Ave &amp; Wrightwood Ave </td><td><span style=white-space:pre-wrap>13296       </span></td><td>41.92560</td><td>-87.65371</td><td>41.92883</td><td>-87.66851</td><td>member</td><td>2022-01-15</td><td>01</td><td>15</td><td>2022</td><td>Saturday </td><td> 459</td></tr>\n",
       "\t<tr><th scope=row>30</th><td>81B423963BA2C10C</td><td>classic_bike </td><td>2022-01-24 10:15:53</td><td>2022-01-24 10:39:53</td><td>Lincoln Park Conservatory    </td><td>LP-         </td><td>Daley Center Plaza           </td><td>TA1306000010</td><td>41.92393</td><td>-87.63582</td><td>41.88424</td><td>-87.62963</td><td>member</td><td>2022-01-24</td><td>01</td><td>24</td><td>2022</td><td>Monday   </td><td>1440</td></tr>\n",
       "\t<tr><th scope=row>31</th><td>EC80F318604595AE</td><td>electric_bike</td><td>2022-01-27 17:54:41</td><td>2022-01-27 18:05:24</td><td><span style=white-space:pre-wrap>Sheridan Rd &amp; Montrose Ave   </span></td><td>TA1307000107</td><td>Southport Ave &amp; Waveland Ave </td><td><span style=white-space:pre-wrap>13235       </span></td><td>41.96165</td><td>-87.65463</td><td>41.94815</td><td>-87.66394</td><td>casual</td><td>2022-01-27</td><td>01</td><td>27</td><td>2022</td><td>Thursday </td><td> 643</td></tr>\n",
       "\t<tr><th scope=row>33</th><td>59E50C91451F529C</td><td>classic_bike </td><td>2022-01-27 11:58:14</td><td>2022-01-27 12:07:43</td><td><span style=white-space:pre-wrap>State St &amp; Harrison St       </span></td><td><span style=white-space:pre-wrap>SL-007      </span></td><td><span style=white-space:pre-wrap>Clark St &amp; Lake St           </span></td><td>KA1503000012</td><td>41.87405</td><td>-87.62772</td><td>41.88602</td><td>-87.63088</td><td>member</td><td>2022-01-27</td><td>01</td><td>27</td><td>2022</td><td>Thursday </td><td> 569</td></tr>\n",
       "\t<tr><th scope=row>⋮</th><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td></tr>\n",
       "\t<tr><th scope=row>5667687</th><td>870BB957FF58A148</td><td>classic_bike </td><td>2022-12-01 16:10:23</td><td>2022-12-01 16:13:04</td><td><span style=white-space:pre-wrap>Larrabee St &amp; Armitage Ave   </span></td><td>TA1309000006</td><td>Larrabee St &amp; Menomonee St</td><td>TA1306000007</td><td>41.91808</td><td>-87.64375</td><td>41.91468</td><td>-87.64332</td><td>member</td><td>2022-12-01</td><td>12</td><td>01</td><td>2022</td><td>Thursday </td><td> 161</td></tr>\n",
       "\t<tr><th scope=row>5667688</th><td>D0EE0137BE1CFE2F</td><td>electric_bike</td><td>2022-12-31 11:51:58</td><td>2022-12-31 12:01:21</td><td><span style=white-space:pre-wrap>Dearborn St &amp; Monroe St      </span></td><td>TA1305000006</td><td><span style=white-space:pre-wrap>Green St &amp; Madison St     </span></td><td>TA1307000120</td><td>41.88055</td><td>-87.62944</td><td>41.88186</td><td>-87.64926</td><td>casual</td><td>2022-12-31</td><td>12</td><td>31</td><td>2022</td><td>Saturday </td><td> 563</td></tr>\n",
       "\t<tr><th scope=row>5667689</th><td>8D7BAB2233A72E76</td><td>electric_bike</td><td>2022-12-04 09:02:16</td><td>2022-12-04 09:14:19</td><td><span style=white-space:pre-wrap>Morgan St &amp; 18th St          </span></td><td><span style=white-space:pre-wrap>13163       </span></td><td><span style=white-space:pre-wrap>Green St &amp; Madison St     </span></td><td>TA1307000120</td><td>41.85806</td><td>-87.65108</td><td>41.88186</td><td>-87.64926</td><td>casual</td><td>2022-12-04</td><td>12</td><td>04</td><td>2022</td><td><span style=white-space:pre-wrap>Sunday   </span></td><td> 723</td></tr>\n",
       "\t<tr><th scope=row>5667691</th><td>157AACAF04B4AC1A</td><td>electric_bike</td><td>2022-12-05 17:51:38</td><td>2022-12-05 17:58:40</td><td><span style=white-space:pre-wrap>Dearborn St &amp; Monroe St      </span></td><td>TA1305000006</td><td><span style=white-space:pre-wrap>Green St &amp; Madison St     </span></td><td>TA1307000120</td><td>41.88073</td><td>-87.62964</td><td>41.88186</td><td>-87.64926</td><td>member</td><td>2022-12-05</td><td>12</td><td>05</td><td>2022</td><td><span style=white-space:pre-wrap>Monday   </span></td><td> 422</td></tr>\n",
       "\t<tr><th scope=row>5667692</th><td>13618E9C77157B38</td><td>classic_bike </td><td>2022-12-28 16:50:14</td><td>2022-12-28 16:56:51</td><td><span style=white-space:pre-wrap>Dearborn St &amp; Monroe St      </span></td><td>TA1305000006</td><td><span style=white-space:pre-wrap>Green St &amp; Madison St     </span></td><td>TA1307000120</td><td>41.88132</td><td>-87.62952</td><td>41.88186</td><td>-87.64926</td><td>member</td><td>2022-12-28</td><td>12</td><td>28</td><td>2022</td><td>Wednesday</td><td> 397</td></tr>\n",
       "\t<tr><th scope=row>5667693</th><td>740FE55B98D3D886</td><td>classic_bike </td><td>2022-12-24 00:10:03</td><td>2022-12-24 00:28:10</td><td><span style=white-space:pre-wrap>Wood St &amp; Milwaukee Ave      </span></td><td><span style=white-space:pre-wrap>13221       </span></td><td><span style=white-space:pre-wrap>Green St &amp; Madison St     </span></td><td>TA1307000120</td><td>41.90765</td><td>-87.67255</td><td>41.88186</td><td>-87.64926</td><td>member</td><td>2022-12-24</td><td>12</td><td>24</td><td>2022</td><td>Saturday </td><td>1087</td></tr>\n",
       "\t<tr><th scope=row>5667694</th><td>40711C802C946CC5</td><td>classic_bike </td><td>2022-12-15 12:57:49</td><td>2022-12-15 13:13:32</td><td>Michigan Ave &amp; Washington St </td><td><span style=white-space:pre-wrap>13001       </span></td><td><span style=white-space:pre-wrap>Peoria St &amp; Jackson Blvd  </span></td><td><span style=white-space:pre-wrap>13158       </span></td><td>41.88398</td><td>-87.62468</td><td>41.87764</td><td>-87.64962</td><td>member</td><td>2022-12-15</td><td>12</td><td>15</td><td>2022</td><td>Thursday </td><td> 943</td></tr>\n",
       "\t<tr><th scope=row>5667695</th><td>B621CD5AF243328B</td><td>classic_bike </td><td>2022-12-31 16:09:36</td><td>2022-12-31 16:15:31</td><td><span style=white-space:pre-wrap>Canal St &amp; Taylor St         </span></td><td><span style=white-space:pre-wrap>15550       </span></td><td><span style=white-space:pre-wrap>Peoria St &amp; Jackson Blvd  </span></td><td><span style=white-space:pre-wrap>13158       </span></td><td>41.87026</td><td>-87.63947</td><td>41.87764</td><td>-87.64962</td><td>member</td><td>2022-12-31</td><td>12</td><td>31</td><td>2022</td><td>Saturday </td><td> 355</td></tr>\n",
       "\t<tr><th scope=row>5667696</th><td>3B564ED03FE887DC</td><td>classic_bike </td><td>2022-12-30 22:06:29</td><td>2022-12-30 22:13:51</td><td><span style=white-space:pre-wrap>Canal St &amp; Taylor St         </span></td><td><span style=white-space:pre-wrap>15550       </span></td><td><span style=white-space:pre-wrap>Peoria St &amp; Jackson Blvd  </span></td><td><span style=white-space:pre-wrap>13158       </span></td><td>41.87026</td><td>-87.63947</td><td>41.87764</td><td>-87.64962</td><td>member</td><td>2022-12-30</td><td>12</td><td>30</td><td>2022</td><td><span style=white-space:pre-wrap>Friday   </span></td><td> 442</td></tr>\n",
       "\t<tr><th scope=row>5667697</th><td>69FBC651C6C9C54B</td><td>classic_bike </td><td>2022-12-11 18:25:13</td><td>2022-12-11 18:28:32</td><td><span style=white-space:pre-wrap>Canal St &amp; Taylor St         </span></td><td><span style=white-space:pre-wrap>15550       </span></td><td><span style=white-space:pre-wrap>Clinton St &amp; Tilden St    </span></td><td><span style=white-space:pre-wrap>13037       </span></td><td>41.87026</td><td>-87.63947</td><td>41.87588</td><td>-87.64079</td><td>member</td><td>2022-12-11</td><td>12</td><td>11</td><td>2022</td><td><span style=white-space:pre-wrap>Sunday   </span></td><td> 199</td></tr>\n",
       "\t<tr><th scope=row>5667698</th><td>10EC1B8665061739</td><td>classic_bike </td><td>2022-12-15 09:41:06</td><td>2022-12-15 09:44:57</td><td><span style=white-space:pre-wrap>Canal St &amp; Taylor St         </span></td><td><span style=white-space:pre-wrap>15550       </span></td><td><span style=white-space:pre-wrap>Clinton St &amp; Tilden St    </span></td><td><span style=white-space:pre-wrap>13037       </span></td><td>41.87026</td><td>-87.63947</td><td>41.87588</td><td>-87.64079</td><td>member</td><td>2022-12-15</td><td>12</td><td>15</td><td>2022</td><td>Thursday </td><td> 231</td></tr>\n",
       "\t<tr><th scope=row>5667699</th><td>4A6809171F7BBFF6</td><td>electric_bike</td><td>2022-12-19 20:30:11</td><td>2022-12-19 20:40:31</td><td><span style=white-space:pre-wrap>Wood St &amp; Milwaukee Ave      </span></td><td><span style=white-space:pre-wrap>13221       </span></td><td><span style=white-space:pre-wrap>Peoria St &amp; Jackson Blvd  </span></td><td><span style=white-space:pre-wrap>13158       </span></td><td>41.90764</td><td>-87.67252</td><td>41.87764</td><td>-87.64962</td><td>member</td><td>2022-12-19</td><td>12</td><td>19</td><td>2022</td><td><span style=white-space:pre-wrap>Monday   </span></td><td> 620</td></tr>\n",
       "\t<tr><th scope=row>5667700</th><td>CA31CD8A7A313F31</td><td>classic_bike </td><td>2022-12-28 14:51:01</td><td>2022-12-28 14:54:39</td><td><span style=white-space:pre-wrap>Canal St &amp; Taylor St         </span></td><td><span style=white-space:pre-wrap>15550       </span></td><td><span style=white-space:pre-wrap>Clinton St &amp; Tilden St    </span></td><td><span style=white-space:pre-wrap>13037       </span></td><td>41.87026</td><td>-87.63947</td><td>41.87588</td><td>-87.64079</td><td>member</td><td>2022-12-28</td><td>12</td><td>28</td><td>2022</td><td>Wednesday</td><td> 218</td></tr>\n",
       "\t<tr><th scope=row>5667701</th><td>97230033D8C1B22F</td><td>classic_bike </td><td>2022-12-15 16:44:58</td><td>2022-12-15 16:47:46</td><td><span style=white-space:pre-wrap>Larrabee St &amp; Armitage Ave   </span></td><td>TA1309000006</td><td>Larrabee St &amp; Menomonee St</td><td>TA1306000007</td><td>41.91808</td><td>-87.64375</td><td>41.91468</td><td>-87.64332</td><td>member</td><td>2022-12-15</td><td>12</td><td>15</td><td>2022</td><td>Thursday </td><td> 168</td></tr>\n",
       "\t<tr><th scope=row>5667702</th><td>269378CDD3A89538</td><td>electric_bike</td><td>2022-12-18 11:06:45</td><td>2022-12-18 11:14:45</td><td><span style=white-space:pre-wrap>Throop St &amp; Taylor St        </span></td><td><span style=white-space:pre-wrap>13139       </span></td><td><span style=white-space:pre-wrap>Peoria St &amp; Jackson Blvd  </span></td><td><span style=white-space:pre-wrap>13158       </span></td><td>41.86882</td><td>-87.65910</td><td>41.87764</td><td>-87.64962</td><td>casual</td><td>2022-12-18</td><td>12</td><td>18</td><td>2022</td><td><span style=white-space:pre-wrap>Sunday   </span></td><td> 480</td></tr>\n",
       "\t<tr><th scope=row>5667703</th><td>91D4BA5F337AFA87</td><td>classic_bike </td><td>2022-12-28 14:35:36</td><td>2022-12-28 14:43:16</td><td><span style=white-space:pre-wrap>Dearborn St &amp; Monroe St      </span></td><td>TA1305000006</td><td><span style=white-space:pre-wrap>Green St &amp; Madison St     </span></td><td>TA1307000120</td><td>41.88132</td><td>-87.62952</td><td>41.88186</td><td>-87.64926</td><td>member</td><td>2022-12-28</td><td>12</td><td>28</td><td>2022</td><td>Wednesday</td><td> 460</td></tr>\n",
       "\t<tr><th scope=row>5667704</th><td>283636179A819BD9</td><td>classic_bike </td><td>2022-12-01 16:19:11</td><td>2022-12-01 16:29:23</td><td>Michigan Ave &amp; Washington St </td><td><span style=white-space:pre-wrap>13001       </span></td><td><span style=white-space:pre-wrap>Green St &amp; Madison St     </span></td><td>TA1307000120</td><td>41.88398</td><td>-87.62468</td><td>41.88186</td><td>-87.64926</td><td>member</td><td>2022-12-01</td><td>12</td><td>01</td><td>2022</td><td>Thursday </td><td> 612</td></tr>\n",
       "\t<tr><th scope=row>5667705</th><td>397D3F6E37CC753E</td><td>classic_bike </td><td>2022-12-15 11:35:53</td><td>2022-12-15 11:39:22</td><td><span style=white-space:pre-wrap>Canal St &amp; Taylor St         </span></td><td><span style=white-space:pre-wrap>15550       </span></td><td><span style=white-space:pre-wrap>Clinton St &amp; Tilden St    </span></td><td><span style=white-space:pre-wrap>13037       </span></td><td>41.87026</td><td>-87.63947</td><td>41.87588</td><td>-87.64079</td><td>member</td><td>2022-12-15</td><td>12</td><td>15</td><td>2022</td><td>Thursday </td><td> 209</td></tr>\n",
       "\t<tr><th scope=row>5667706</th><td>856E6CB8A83DAE6A</td><td>electric_bike</td><td>2022-12-29 17:31:30</td><td>2022-12-29 17:52:58</td><td>California Ave &amp; Fletcher St </td><td><span style=white-space:pre-wrap>15642       </span></td><td><span style=white-space:pre-wrap>Green St &amp; Madison St     </span></td><td>TA1307000120</td><td>41.93852</td><td>-87.69817</td><td>41.88186</td><td>-87.64926</td><td>casual</td><td>2022-12-29</td><td>12</td><td>29</td><td>2022</td><td>Thursday </td><td>1288</td></tr>\n",
       "\t<tr><th scope=row>5667707</th><td>1CE1BE852794BD42</td><td>electric_bike</td><td>2022-12-21 12:46:36</td><td>2022-12-21 12:49:51</td><td><span style=white-space:pre-wrap>Canal St &amp; Taylor St         </span></td><td><span style=white-space:pre-wrap>15550       </span></td><td><span style=white-space:pre-wrap>Clinton St &amp; Tilden St    </span></td><td><span style=white-space:pre-wrap>13037       </span></td><td>41.87019</td><td>-87.63945</td><td>41.87588</td><td>-87.64079</td><td>member</td><td>2022-12-21</td><td>12</td><td>21</td><td>2022</td><td>Wednesday</td><td> 195</td></tr>\n",
       "\t<tr><th scope=row>5667708</th><td>EB7999FF9DBC0535</td><td>electric_bike</td><td>2022-12-21 19:08:04</td><td>2022-12-21 19:17:14</td><td>Michigan Ave &amp; Washington St </td><td><span style=white-space:pre-wrap>13001       </span></td><td><span style=white-space:pre-wrap>Peoria St &amp; Jackson Blvd  </span></td><td><span style=white-space:pre-wrap>13158       </span></td><td>41.88416</td><td>-87.62446</td><td>41.87764</td><td>-87.64962</td><td>member</td><td>2022-12-21</td><td>12</td><td>21</td><td>2022</td><td>Wednesday</td><td> 550</td></tr>\n",
       "\t<tr><th scope=row>5667709</th><td>08BE55EE693263E5</td><td>electric_bike</td><td>2022-12-06 09:02:21</td><td>2022-12-06 09:06:51</td><td><span style=white-space:pre-wrap>Morgan St &amp; Polk St          </span></td><td>TA1307000130</td><td><span style=white-space:pre-wrap>Green St &amp; Madison St     </span></td><td>TA1307000120</td><td>41.87209</td><td>-87.65089</td><td>41.88186</td><td>-87.64926</td><td>member</td><td>2022-12-06</td><td>12</td><td>06</td><td>2022</td><td><span style=white-space:pre-wrap>Tuesday  </span></td><td> 270</td></tr>\n",
       "\t<tr><th scope=row>5667710</th><td>05AD87788BCBF206</td><td>electric_bike</td><td>2022-12-06 17:08:45</td><td>2022-12-06 17:14:43</td><td><span style=white-space:pre-wrap>Wells St &amp; Hubbard St        </span></td><td>TA1307000151</td><td><span style=white-space:pre-wrap>Green St &amp; Madison St     </span></td><td>TA1307000120</td><td>41.89002</td><td>-87.63452</td><td>41.88186</td><td>-87.64926</td><td>member</td><td>2022-12-06</td><td>12</td><td>06</td><td>2022</td><td><span style=white-space:pre-wrap>Tuesday  </span></td><td> 358</td></tr>\n",
       "\t<tr><th scope=row>5667711</th><td>AFF5772FD4185626</td><td>classic_bike </td><td>2022-12-03 08:50:08</td><td>2022-12-03 08:54:17</td><td>Sangamon St &amp; Washington Blvd</td><td><span style=white-space:pre-wrap>13409       </span></td><td><span style=white-space:pre-wrap>Peoria St &amp; Jackson Blvd  </span></td><td><span style=white-space:pre-wrap>13158       </span></td><td>41.88316</td><td>-87.65110</td><td>41.87764</td><td>-87.64962</td><td>member</td><td>2022-12-03</td><td>12</td><td>03</td><td>2022</td><td>Saturday </td><td> 249</td></tr>\n",
       "\t<tr><th scope=row>5667712</th><td>7BDEDE9860418B53</td><td>classic_bike </td><td>2022-12-07 06:52:45</td><td>2022-12-07 06:56:36</td><td>Sangamon St &amp; Washington Blvd</td><td><span style=white-space:pre-wrap>13409       </span></td><td><span style=white-space:pre-wrap>Peoria St &amp; Jackson Blvd  </span></td><td><span style=white-space:pre-wrap>13158       </span></td><td>41.88316</td><td>-87.65110</td><td>41.87764</td><td>-87.64962</td><td>member</td><td>2022-12-07</td><td>12</td><td>07</td><td>2022</td><td>Wednesday</td><td> 231</td></tr>\n",
       "\t<tr><th scope=row>5667713</th><td>43ABEE85B6E15DCA</td><td>classic_bike </td><td>2022-12-05 06:51:04</td><td>2022-12-05 06:54:48</td><td>Sangamon St &amp; Washington Blvd</td><td><span style=white-space:pre-wrap>13409       </span></td><td><span style=white-space:pre-wrap>Peoria St &amp; Jackson Blvd  </span></td><td><span style=white-space:pre-wrap>13158       </span></td><td>41.88316</td><td>-87.65110</td><td>41.87764</td><td>-87.64962</td><td>member</td><td>2022-12-05</td><td>12</td><td>05</td><td>2022</td><td><span style=white-space:pre-wrap>Monday   </span></td><td> 224</td></tr>\n",
       "\t<tr><th scope=row>5667714</th><td>F041C89A3D1F0270</td><td>electric_bike</td><td>2022-12-14 17:06:28</td><td>2022-12-14 17:19:27</td><td><span style=white-space:pre-wrap>Bernard St &amp; Elston Ave      </span></td><td><span style=white-space:pre-wrap>18016       </span></td><td><span style=white-space:pre-wrap>Seeley Ave &amp; Roscoe St    </span></td><td><span style=white-space:pre-wrap>13144       </span></td><td>41.94998</td><td>-87.71402</td><td>41.94340</td><td>-87.67962</td><td>member</td><td>2022-12-14</td><td>12</td><td>14</td><td>2022</td><td>Wednesday</td><td> 779</td></tr>\n",
       "\t<tr><th scope=row>5667715</th><td>A2BECB88430BE156</td><td>classic_bike </td><td>2022-12-08 16:27:47</td><td>2022-12-08 16:32:20</td><td><span style=white-space:pre-wrap>Wacker Dr &amp; Washington St    </span></td><td>KA1503000072</td><td><span style=white-space:pre-wrap>Green St &amp; Madison St     </span></td><td>TA1307000120</td><td>41.88314</td><td>-87.63724</td><td>41.88186</td><td>-87.64926</td><td>member</td><td>2022-12-08</td><td>12</td><td>08</td><td>2022</td><td>Thursday </td><td> 273</td></tr>\n",
       "\t<tr><th scope=row>5667716</th><td>37B392960E566F58</td><td>classic_bike </td><td>2022-12-28 09:37:38</td><td>2022-12-28 09:41:34</td><td>Sangamon St &amp; Washington Blvd</td><td><span style=white-space:pre-wrap>13409       </span></td><td><span style=white-space:pre-wrap>Peoria St &amp; Jackson Blvd  </span></td><td><span style=white-space:pre-wrap>13158       </span></td><td>41.88316</td><td>-87.65110</td><td>41.87764</td><td>-87.64962</td><td>member</td><td>2022-12-28</td><td>12</td><td>28</td><td>2022</td><td>Wednesday</td><td> 236</td></tr>\n",
       "\t<tr><th scope=row>5667717</th><td>2DD1587210BA45AE</td><td>classic_bike </td><td>2022-12-09 00:27:25</td><td>2022-12-09 00:35:28</td><td>Southport Ave &amp; Waveland Ave </td><td><span style=white-space:pre-wrap>13235       </span></td><td><span style=white-space:pre-wrap>Seeley Ave &amp; Roscoe St    </span></td><td><span style=white-space:pre-wrap>13144       </span></td><td>41.94815</td><td>-87.66394</td><td>41.94340</td><td>-87.67962</td><td>casual</td><td>2022-12-09</td><td>12</td><td>09</td><td>2022</td><td><span style=white-space:pre-wrap>Friday   </span></td><td> 483</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 4721562 × 19\n",
       "\\begin{tabular}{r|lllllllllllllllllll}\n",
       "  & ride\\_id & rideable\\_type & started\\_at & ended\\_at & start\\_station\\_name & start\\_station\\_id & end\\_station\\_name & end\\_station\\_id & start\\_lat & start\\_lng & end\\_lat & end\\_lng & member\\_casual & date & month & day & year & day\\_of\\_week & ride\\_duration\\\\\n",
       "  & <chr> & <chr> & <dttm> & <dttm> & <chr> & <chr> & <chr> & <chr> & <dbl> & <dbl> & <dbl> & <dbl> & <chr> & <date> & <chr> & <chr> & <chr> & <chr> & <dbl>\\\\\n",
       "\\hline\n",
       "\t1 & C2F7DD78E82EC875 & electric\\_bike & 2022-01-13 11:59:47 & 2022-01-13 12:02:44 & Glenwood Ave \\& Touhy Ave      & 525          & Clark St \\& Touhy Ave          & RP-007       & 42.01280 & -87.66591 & 42.01256 & -87.67437 & casual & 2022-01-13 & 01 & 13 & 2022 & Thursday  &  177\\\\\n",
       "\t2 & A6CF8980A652D272 & electric\\_bike & 2022-01-10 08:41:56 & 2022-01-10 08:46:17 & Glenwood Ave \\& Touhy Ave      & 525          & Clark St \\& Touhy Ave          & RP-007       & 42.01276 & -87.66597 & 42.01256 & -87.67437 & casual & 2022-01-10 & 01 & 10 & 2022 & Monday    &  261\\\\\n",
       "\t3 & BD0F91DFF741C66D & classic\\_bike  & 2022-01-25 04:53:40 & 2022-01-25 04:58:01 & Sheffield Ave \\& Fullerton Ave & TA1306000016 & Greenview Ave \\& Fullerton Ave & TA1307000001 & 41.92560 & -87.65371 & 41.92533 & -87.66580 & member & 2022-01-25 & 01 & 25 & 2022 & Tuesday   &  261\\\\\n",
       "\t4 & CBB80ED419105406 & classic\\_bike  & 2022-01-04 00:18:04 & 2022-01-04 00:33:00 & Clark St \\& Bryn Mawr Ave      & KA1504000151 & Paulina St \\& Montrose Ave     & TA1309000021 & 41.98359 & -87.66915 & 41.96151 & -87.67139 & casual & 2022-01-04 & 01 & 04 & 2022 & Tuesday   &  896\\\\\n",
       "\t5 & DDC963BFDDA51EEA & classic\\_bike  & 2022-01-20 01:31:10 & 2022-01-20 01:37:12 & Michigan Ave \\& Jackson Blvd   & TA1309000002 & State St \\& Randolph St        & TA1305000029 & 41.87785 & -87.62408 & 41.88462 & -87.62783 & member & 2022-01-20 & 01 & 20 & 2022 & Thursday  &  362\\\\\n",
       "\t6 & A39C6F6CC0586C0B & classic\\_bike  & 2022-01-11 18:48:09 & 2022-01-11 18:51:31 & Wood St \\& Chicago Ave         & 637          & Honore St \\& Division St       & TA1305000034 & 41.89563 & -87.67207 & 41.90312 & -87.67394 & member & 2022-01-11 & 01 & 11 & 2022 & Tuesday   &  202\\\\\n",
       "\t7 & BDC4AB637EDF981B & classic\\_bike  & 2022-01-30 18:32:52 & 2022-01-30 18:49:26 & Oakley Ave \\& Irving Park Rd   & KA1504000158 & Broadway \\& Sheridan Rd        & 13323        & 41.95434 & -87.68608 & 41.95283 & -87.64999 & member & 2022-01-30 & 01 & 30 & 2022 & Sunday    &  994\\\\\n",
       "\t8 & 81751A3186E59A6B & classic\\_bike  & 2022-01-22 12:20:02 & 2022-01-22 12:32:06 & Sheffield Ave \\& Fullerton Ave & TA1306000016 & Damen Ave \\& Clybourn Ave      & 13271        & 41.92560 & -87.65371 & 41.93193 & -87.67786 & member & 2022-01-22 & 01 & 22 & 2022 & Saturday  &  724\\\\\n",
       "\t10 & 72DC25B2DD467EEF & classic\\_bike  & 2022-01-28 15:27:53 & 2022-01-28 15:35:16 & LaSalle St \\& Jackson Blvd     & TA1309000004 & Clinton St \\& Washington Blvd  & WL-012       & 41.87817 & -87.63193 & 41.88338 & -87.64117 & member & 2022-01-28 & 01 & 28 & 2022 & Friday    &  443\\\\\n",
       "\t11 & F20394FE09C63DB2 & classic\\_bike  & 2022-01-11 18:27:59 & 2022-01-11 18:34:20 & LaSalle St \\& Jackson Blvd     & TA1309000004 & Clinton St \\& Washington Blvd  & WL-012       & 41.87817 & -87.63193 & 41.88338 & -87.64117 & member & 2022-01-11 & 01 & 11 & 2022 & Tuesday   &  381\\\\\n",
       "\t12 & 006D3F363CF9600B & electric\\_bike & 2022-01-29 12:30:43 & 2022-01-29 12:43:04 & Clarendon Ave \\& Leland Ave    & TA1307000119 & Broadway \\& Granville Ave      & 15571        & 41.96796 & -87.65003 & 41.99478 & -87.66028 & member & 2022-01-29 & 01 & 29 & 2022 & Saturday  &  741\\\\\n",
       "\t13 & FB258EEBE89F4E17 & classic\\_bike  & 2022-01-02 17:56:18 & 2022-01-02 18:05:38 & Sheffield Ave \\& Fullerton Ave & TA1306000016 & Stockton Dr \\& Wrightwood Ave  & 13276        & 41.92560 & -87.65371 & 41.93132 & -87.63874 & member & 2022-01-02 & 01 & 02 & 2022 & Sunday    &  560\\\\\n",
       "\t14 & 2EF51270B08DEE03 & classic\\_bike  & 2022-01-20 22:03:06 & 2022-01-20 22:09:59 & Rush St \\& Superior St         & 15530        & Larrabee St \\& Kingsbury St    & TA1306000009 & 41.89576 & -87.62591 & 41.89776 & -87.64288 & member & 2022-01-20 & 01 & 20 & 2022 & Thursday  &  413\\\\\n",
       "\t15 & E119D4E6BF686601 & electric\\_bike & 2022-01-08 05:36:40 & 2022-01-08 05:46:40 & Michigan Ave \\& Jackson Blvd   & TA1309000002 & St. Clair St \\& Erie St        & 13016        & 41.87785 & -87.62406 & 41.89435 & -87.62280 & casual & 2022-01-08 & 01 & 08 & 2022 & Saturday  &  600\\\\\n",
       "\t16 & 7DD70C4AA0F3EA7B & classic\\_bike  & 2022-01-14 05:47:07 & 2022-01-14 05:47:39 & Lincoln Park Conservatory     & LP-          & Lincoln Park Conservatory     & LP-          & 41.92393 & -87.63582 & 41.92393 & -87.63582 & member & 2022-01-14 & 01 & 14 & 2022 & Friday    &   32\\\\\n",
       "\t17 & 0AA241497B970400 & classic\\_bike  & 2022-01-12 14:09:13 & 2022-01-12 14:10:53 & LaSalle St \\& Jackson Blvd     & TA1309000004 & Clark St \\& Ida B Wells Dr     & TA1305000009 & 41.87817 & -87.63193 & 41.87593 & -87.63058 & member & 2022-01-12 & 01 & 12 & 2022 & Wednesday &  100\\\\\n",
       "\t18 & F5E6D97D85BE8039 & classic\\_bike  & 2022-01-31 12:07:45 & 2022-01-31 12:12:48 & Michigan Ave \\& Jackson Blvd   & TA1309000002 & Indiana Ave \\& Roosevelt Rd    & SL-005       & 41.87785 & -87.62408 & 41.86789 & -87.62304 & member & 2022-01-31 & 01 & 31 & 2022 & Monday    &  303\\\\\n",
       "\t19 & 78168928DF06A497 & classic\\_bike  & 2022-01-28 17:21:59 & 2022-01-28 17:26:54 & Michigan Ave \\& Jackson Blvd   & TA1309000002 & Indiana Ave \\& Roosevelt Rd    & SL-005       & 41.87785 & -87.62408 & 41.86789 & -87.62304 & member & 2022-01-28 & 01 & 28 & 2022 & Friday    &  295\\\\\n",
       "\t20 & 15C176B55C2BC059 & classic\\_bike  & 2022-01-19 21:00:40 & 2022-01-19 21:09:56 & Clark St \\& Bryn Mawr Ave      & KA1504000151 & Clark St \\& Schreiber Ave      & KA1504000156 & 41.98359 & -87.66915 & 41.99925 & -87.67138 & member & 2022-01-19 & 01 & 19 & 2022 & Wednesday &  556\\\\\n",
       "\t22 & 1A185AF405E7B2DB & classic\\_bike  & 2022-01-13 12:47:10 & 2022-01-13 13:10:20 & Sedgwick St \\& North Ave       & TA1307000038 & Sedgwick St \\& North Ave       & TA1307000038 & 41.91139 & -87.63868 & 41.91139 & -87.63868 & member & 2022-01-13 & 01 & 13 & 2022 & Thursday  & 1390\\\\\n",
       "\t23 & 9D4AAF43A011FC59 & electric\\_bike & 2022-01-18 08:03:16 & 2022-01-18 08:08:00 & California Ave \\& Altgeld St   & 15646        & Milwaukee Ave \\& Rockwell St   & 13242        & 41.92665 & -87.69766 & 41.92020 & -87.69266 & casual & 2022-01-18 & 01 & 18 & 2022 & Tuesday   &  284\\\\\n",
       "\t24 & A209F8E0E84D49B4 & classic\\_bike  & 2022-01-25 14:46:24 & 2022-01-25 15:00:27 & Sheffield Ave \\& Fullerton Ave & TA1306000016 & Halsted St \\& Roscoe St        & TA1309000025 & 41.92560 & -87.65371 & 41.94367 & -87.64895 & member & 2022-01-25 & 01 & 25 & 2022 & Tuesday   &  843\\\\\n",
       "\t25 & 6D6B462903DCB23F & electric\\_bike & 2022-01-10 06:44:21 & 2022-01-10 06:51:28 & Racine Ave \\& 15th St          & 13304        & Wolcott Ave \\& Polk St         & TA1309000064 & 41.86121 & -87.65660 & 41.87126 & -87.67369 & member & 2022-01-10 & 01 & 10 & 2022 & Monday    &  427\\\\\n",
       "\t26 & DC809CD3B3F3BFC9 & classic\\_bike  & 2022-01-22 15:14:32 & 2022-01-22 15:25:21 & Indiana Ave \\& 31st St         & TA1308000036 & Emerald Ave \\& 31st St         & TA1309000055 & 41.83884 & -87.62186 & 41.83820 & -87.64514 & member & 2022-01-22 & 01 & 22 & 2022 & Saturday  &  649\\\\\n",
       "\t27 & 1C2362DAD4090D8A & electric\\_bike & 2022-01-03 00:12:42 & 2022-01-03 00:17:50 & Indiana Ave \\& 31st St         & TA1308000036 & Indiana Ave \\& 40th St         & 13083        & 41.83882 & -87.62183 & 41.82168 & -87.62160 & casual & 2022-01-03 & 01 & 03 & 2022 & Monday    &  308\\\\\n",
       "\t28 & AB4032C2B151D137 & classic\\_bike  & 2022-01-31 18:58:30 & 2022-01-31 19:05:17 & Lake Park Ave \\& 56th St       & TA1309000063 & Shore Dr \\& 55th St            & TA1308000009 & 41.79324 & -87.58778 & 41.79521 & -87.58071 & member & 2022-01-31 & 01 & 31 & 2022 & Monday    &  407\\\\\n",
       "\t29 & E6B6D4531ADC9F52 & classic\\_bike  & 2022-01-15 17:41:15 & 2022-01-15 17:48:54 & Sheffield Ave \\& Fullerton Ave & TA1306000016 & Ashland Ave \\& Wrightwood Ave  & 13296        & 41.92560 & -87.65371 & 41.92883 & -87.66851 & member & 2022-01-15 & 01 & 15 & 2022 & Saturday  &  459\\\\\n",
       "\t30 & 81B423963BA2C10C & classic\\_bike  & 2022-01-24 10:15:53 & 2022-01-24 10:39:53 & Lincoln Park Conservatory     & LP-          & Daley Center Plaza            & TA1306000010 & 41.92393 & -87.63582 & 41.88424 & -87.62963 & member & 2022-01-24 & 01 & 24 & 2022 & Monday    & 1440\\\\\n",
       "\t31 & EC80F318604595AE & electric\\_bike & 2022-01-27 17:54:41 & 2022-01-27 18:05:24 & Sheridan Rd \\& Montrose Ave    & TA1307000107 & Southport Ave \\& Waveland Ave  & 13235        & 41.96165 & -87.65463 & 41.94815 & -87.66394 & casual & 2022-01-27 & 01 & 27 & 2022 & Thursday  &  643\\\\\n",
       "\t33 & 59E50C91451F529C & classic\\_bike  & 2022-01-27 11:58:14 & 2022-01-27 12:07:43 & State St \\& Harrison St        & SL-007       & Clark St \\& Lake St            & KA1503000012 & 41.87405 & -87.62772 & 41.88602 & -87.63088 & member & 2022-01-27 & 01 & 27 & 2022 & Thursday  &  569\\\\\n",
       "\t⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮\\\\\n",
       "\t5667687 & 870BB957FF58A148 & classic\\_bike  & 2022-12-01 16:10:23 & 2022-12-01 16:13:04 & Larrabee St \\& Armitage Ave    & TA1309000006 & Larrabee St \\& Menomonee St & TA1306000007 & 41.91808 & -87.64375 & 41.91468 & -87.64332 & member & 2022-12-01 & 12 & 01 & 2022 & Thursday  &  161\\\\\n",
       "\t5667688 & D0EE0137BE1CFE2F & electric\\_bike & 2022-12-31 11:51:58 & 2022-12-31 12:01:21 & Dearborn St \\& Monroe St       & TA1305000006 & Green St \\& Madison St      & TA1307000120 & 41.88055 & -87.62944 & 41.88186 & -87.64926 & casual & 2022-12-31 & 12 & 31 & 2022 & Saturday  &  563\\\\\n",
       "\t5667689 & 8D7BAB2233A72E76 & electric\\_bike & 2022-12-04 09:02:16 & 2022-12-04 09:14:19 & Morgan St \\& 18th St           & 13163        & Green St \\& Madison St      & TA1307000120 & 41.85806 & -87.65108 & 41.88186 & -87.64926 & casual & 2022-12-04 & 12 & 04 & 2022 & Sunday    &  723\\\\\n",
       "\t5667691 & 157AACAF04B4AC1A & electric\\_bike & 2022-12-05 17:51:38 & 2022-12-05 17:58:40 & Dearborn St \\& Monroe St       & TA1305000006 & Green St \\& Madison St      & TA1307000120 & 41.88073 & -87.62964 & 41.88186 & -87.64926 & member & 2022-12-05 & 12 & 05 & 2022 & Monday    &  422\\\\\n",
       "\t5667692 & 13618E9C77157B38 & classic\\_bike  & 2022-12-28 16:50:14 & 2022-12-28 16:56:51 & Dearborn St \\& Monroe St       & TA1305000006 & Green St \\& Madison St      & TA1307000120 & 41.88132 & -87.62952 & 41.88186 & -87.64926 & member & 2022-12-28 & 12 & 28 & 2022 & Wednesday &  397\\\\\n",
       "\t5667693 & 740FE55B98D3D886 & classic\\_bike  & 2022-12-24 00:10:03 & 2022-12-24 00:28:10 & Wood St \\& Milwaukee Ave       & 13221        & Green St \\& Madison St      & TA1307000120 & 41.90765 & -87.67255 & 41.88186 & -87.64926 & member & 2022-12-24 & 12 & 24 & 2022 & Saturday  & 1087\\\\\n",
       "\t5667694 & 40711C802C946CC5 & classic\\_bike  & 2022-12-15 12:57:49 & 2022-12-15 13:13:32 & Michigan Ave \\& Washington St  & 13001        & Peoria St \\& Jackson Blvd   & 13158        & 41.88398 & -87.62468 & 41.87764 & -87.64962 & member & 2022-12-15 & 12 & 15 & 2022 & Thursday  &  943\\\\\n",
       "\t5667695 & B621CD5AF243328B & classic\\_bike  & 2022-12-31 16:09:36 & 2022-12-31 16:15:31 & Canal St \\& Taylor St          & 15550        & Peoria St \\& Jackson Blvd   & 13158        & 41.87026 & -87.63947 & 41.87764 & -87.64962 & member & 2022-12-31 & 12 & 31 & 2022 & Saturday  &  355\\\\\n",
       "\t5667696 & 3B564ED03FE887DC & classic\\_bike  & 2022-12-30 22:06:29 & 2022-12-30 22:13:51 & Canal St \\& Taylor St          & 15550        & Peoria St \\& Jackson Blvd   & 13158        & 41.87026 & -87.63947 & 41.87764 & -87.64962 & member & 2022-12-30 & 12 & 30 & 2022 & Friday    &  442\\\\\n",
       "\t5667697 & 69FBC651C6C9C54B & classic\\_bike  & 2022-12-11 18:25:13 & 2022-12-11 18:28:32 & Canal St \\& Taylor St          & 15550        & Clinton St \\& Tilden St     & 13037        & 41.87026 & -87.63947 & 41.87588 & -87.64079 & member & 2022-12-11 & 12 & 11 & 2022 & Sunday    &  199\\\\\n",
       "\t5667698 & 10EC1B8665061739 & classic\\_bike  & 2022-12-15 09:41:06 & 2022-12-15 09:44:57 & Canal St \\& Taylor St          & 15550        & Clinton St \\& Tilden St     & 13037        & 41.87026 & -87.63947 & 41.87588 & -87.64079 & member & 2022-12-15 & 12 & 15 & 2022 & Thursday  &  231\\\\\n",
       "\t5667699 & 4A6809171F7BBFF6 & electric\\_bike & 2022-12-19 20:30:11 & 2022-12-19 20:40:31 & Wood St \\& Milwaukee Ave       & 13221        & Peoria St \\& Jackson Blvd   & 13158        & 41.90764 & -87.67252 & 41.87764 & -87.64962 & member & 2022-12-19 & 12 & 19 & 2022 & Monday    &  620\\\\\n",
       "\t5667700 & CA31CD8A7A313F31 & classic\\_bike  & 2022-12-28 14:51:01 & 2022-12-28 14:54:39 & Canal St \\& Taylor St          & 15550        & Clinton St \\& Tilden St     & 13037        & 41.87026 & -87.63947 & 41.87588 & -87.64079 & member & 2022-12-28 & 12 & 28 & 2022 & Wednesday &  218\\\\\n",
       "\t5667701 & 97230033D8C1B22F & classic\\_bike  & 2022-12-15 16:44:58 & 2022-12-15 16:47:46 & Larrabee St \\& Armitage Ave    & TA1309000006 & Larrabee St \\& Menomonee St & TA1306000007 & 41.91808 & -87.64375 & 41.91468 & -87.64332 & member & 2022-12-15 & 12 & 15 & 2022 & Thursday  &  168\\\\\n",
       "\t5667702 & 269378CDD3A89538 & electric\\_bike & 2022-12-18 11:06:45 & 2022-12-18 11:14:45 & Throop St \\& Taylor St         & 13139        & Peoria St \\& Jackson Blvd   & 13158        & 41.86882 & -87.65910 & 41.87764 & -87.64962 & casual & 2022-12-18 & 12 & 18 & 2022 & Sunday    &  480\\\\\n",
       "\t5667703 & 91D4BA5F337AFA87 & classic\\_bike  & 2022-12-28 14:35:36 & 2022-12-28 14:43:16 & Dearborn St \\& Monroe St       & TA1305000006 & Green St \\& Madison St      & TA1307000120 & 41.88132 & -87.62952 & 41.88186 & -87.64926 & member & 2022-12-28 & 12 & 28 & 2022 & Wednesday &  460\\\\\n",
       "\t5667704 & 283636179A819BD9 & classic\\_bike  & 2022-12-01 16:19:11 & 2022-12-01 16:29:23 & Michigan Ave \\& Washington St  & 13001        & Green St \\& Madison St      & TA1307000120 & 41.88398 & -87.62468 & 41.88186 & -87.64926 & member & 2022-12-01 & 12 & 01 & 2022 & Thursday  &  612\\\\\n",
       "\t5667705 & 397D3F6E37CC753E & classic\\_bike  & 2022-12-15 11:35:53 & 2022-12-15 11:39:22 & Canal St \\& Taylor St          & 15550        & Clinton St \\& Tilden St     & 13037        & 41.87026 & -87.63947 & 41.87588 & -87.64079 & member & 2022-12-15 & 12 & 15 & 2022 & Thursday  &  209\\\\\n",
       "\t5667706 & 856E6CB8A83DAE6A & electric\\_bike & 2022-12-29 17:31:30 & 2022-12-29 17:52:58 & California Ave \\& Fletcher St  & 15642        & Green St \\& Madison St      & TA1307000120 & 41.93852 & -87.69817 & 41.88186 & -87.64926 & casual & 2022-12-29 & 12 & 29 & 2022 & Thursday  & 1288\\\\\n",
       "\t5667707 & 1CE1BE852794BD42 & electric\\_bike & 2022-12-21 12:46:36 & 2022-12-21 12:49:51 & Canal St \\& Taylor St          & 15550        & Clinton St \\& Tilden St     & 13037        & 41.87019 & -87.63945 & 41.87588 & -87.64079 & member & 2022-12-21 & 12 & 21 & 2022 & Wednesday &  195\\\\\n",
       "\t5667708 & EB7999FF9DBC0535 & electric\\_bike & 2022-12-21 19:08:04 & 2022-12-21 19:17:14 & Michigan Ave \\& Washington St  & 13001        & Peoria St \\& Jackson Blvd   & 13158        & 41.88416 & -87.62446 & 41.87764 & -87.64962 & member & 2022-12-21 & 12 & 21 & 2022 & Wednesday &  550\\\\\n",
       "\t5667709 & 08BE55EE693263E5 & electric\\_bike & 2022-12-06 09:02:21 & 2022-12-06 09:06:51 & Morgan St \\& Polk St           & TA1307000130 & Green St \\& Madison St      & TA1307000120 & 41.87209 & -87.65089 & 41.88186 & -87.64926 & member & 2022-12-06 & 12 & 06 & 2022 & Tuesday   &  270\\\\\n",
       "\t5667710 & 05AD87788BCBF206 & electric\\_bike & 2022-12-06 17:08:45 & 2022-12-06 17:14:43 & Wells St \\& Hubbard St         & TA1307000151 & Green St \\& Madison St      & TA1307000120 & 41.89002 & -87.63452 & 41.88186 & -87.64926 & member & 2022-12-06 & 12 & 06 & 2022 & Tuesday   &  358\\\\\n",
       "\t5667711 & AFF5772FD4185626 & classic\\_bike  & 2022-12-03 08:50:08 & 2022-12-03 08:54:17 & Sangamon St \\& Washington Blvd & 13409        & Peoria St \\& Jackson Blvd   & 13158        & 41.88316 & -87.65110 & 41.87764 & -87.64962 & member & 2022-12-03 & 12 & 03 & 2022 & Saturday  &  249\\\\\n",
       "\t5667712 & 7BDEDE9860418B53 & classic\\_bike  & 2022-12-07 06:52:45 & 2022-12-07 06:56:36 & Sangamon St \\& Washington Blvd & 13409        & Peoria St \\& Jackson Blvd   & 13158        & 41.88316 & -87.65110 & 41.87764 & -87.64962 & member & 2022-12-07 & 12 & 07 & 2022 & Wednesday &  231\\\\\n",
       "\t5667713 & 43ABEE85B6E15DCA & classic\\_bike  & 2022-12-05 06:51:04 & 2022-12-05 06:54:48 & Sangamon St \\& Washington Blvd & 13409        & Peoria St \\& Jackson Blvd   & 13158        & 41.88316 & -87.65110 & 41.87764 & -87.64962 & member & 2022-12-05 & 12 & 05 & 2022 & Monday    &  224\\\\\n",
       "\t5667714 & F041C89A3D1F0270 & electric\\_bike & 2022-12-14 17:06:28 & 2022-12-14 17:19:27 & Bernard St \\& Elston Ave       & 18016        & Seeley Ave \\& Roscoe St     & 13144        & 41.94998 & -87.71402 & 41.94340 & -87.67962 & member & 2022-12-14 & 12 & 14 & 2022 & Wednesday &  779\\\\\n",
       "\t5667715 & A2BECB88430BE156 & classic\\_bike  & 2022-12-08 16:27:47 & 2022-12-08 16:32:20 & Wacker Dr \\& Washington St     & KA1503000072 & Green St \\& Madison St      & TA1307000120 & 41.88314 & -87.63724 & 41.88186 & -87.64926 & member & 2022-12-08 & 12 & 08 & 2022 & Thursday  &  273\\\\\n",
       "\t5667716 & 37B392960E566F58 & classic\\_bike  & 2022-12-28 09:37:38 & 2022-12-28 09:41:34 & Sangamon St \\& Washington Blvd & 13409        & Peoria St \\& Jackson Blvd   & 13158        & 41.88316 & -87.65110 & 41.87764 & -87.64962 & member & 2022-12-28 & 12 & 28 & 2022 & Wednesday &  236\\\\\n",
       "\t5667717 & 2DD1587210BA45AE & classic\\_bike  & 2022-12-09 00:27:25 & 2022-12-09 00:35:28 & Southport Ave \\& Waveland Ave  & 13235        & Seeley Ave \\& Roscoe St     & 13144        & 41.94815 & -87.66394 & 41.94340 & -87.67962 & casual & 2022-12-09 & 12 & 09 & 2022 & Friday    &  483\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 4721562 × 19\n",
       "\n",
       "| <!--/--> | ride_id &lt;chr&gt; | rideable_type &lt;chr&gt; | started_at &lt;dttm&gt; | ended_at &lt;dttm&gt; | start_station_name &lt;chr&gt; | start_station_id &lt;chr&gt; | end_station_name &lt;chr&gt; | end_station_id &lt;chr&gt; | start_lat &lt;dbl&gt; | start_lng &lt;dbl&gt; | end_lat &lt;dbl&gt; | end_lng &lt;dbl&gt; | member_casual &lt;chr&gt; | date &lt;date&gt; | month &lt;chr&gt; | day &lt;chr&gt; | year &lt;chr&gt; | day_of_week &lt;chr&gt; | ride_duration &lt;dbl&gt; |\n",
       "|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|\n",
       "| 1 | C2F7DD78E82EC875 | electric_bike | 2022-01-13 11:59:47 | 2022-01-13 12:02:44 | Glenwood Ave &amp; Touhy Ave      | 525          | Clark St &amp; Touhy Ave          | RP-007       | 42.01280 | -87.66591 | 42.01256 | -87.67437 | casual | 2022-01-13 | 01 | 13 | 2022 | Thursday  |  177 |\n",
       "| 2 | A6CF8980A652D272 | electric_bike | 2022-01-10 08:41:56 | 2022-01-10 08:46:17 | Glenwood Ave &amp; Touhy Ave      | 525          | Clark St &amp; Touhy Ave          | RP-007       | 42.01276 | -87.66597 | 42.01256 | -87.67437 | casual | 2022-01-10 | 01 | 10 | 2022 | Monday    |  261 |\n",
       "| 3 | BD0F91DFF741C66D | classic_bike  | 2022-01-25 04:53:40 | 2022-01-25 04:58:01 | Sheffield Ave &amp; Fullerton Ave | TA1306000016 | Greenview Ave &amp; Fullerton Ave | TA1307000001 | 41.92560 | -87.65371 | 41.92533 | -87.66580 | member | 2022-01-25 | 01 | 25 | 2022 | Tuesday   |  261 |\n",
       "| 4 | CBB80ED419105406 | classic_bike  | 2022-01-04 00:18:04 | 2022-01-04 00:33:00 | Clark St &amp; Bryn Mawr Ave      | KA1504000151 | Paulina St &amp; Montrose Ave     | TA1309000021 | 41.98359 | -87.66915 | 41.96151 | -87.67139 | casual | 2022-01-04 | 01 | 04 | 2022 | Tuesday   |  896 |\n",
       "| 5 | DDC963BFDDA51EEA | classic_bike  | 2022-01-20 01:31:10 | 2022-01-20 01:37:12 | Michigan Ave &amp; Jackson Blvd   | TA1309000002 | State St &amp; Randolph St        | TA1305000029 | 41.87785 | -87.62408 | 41.88462 | -87.62783 | member | 2022-01-20 | 01 | 20 | 2022 | Thursday  |  362 |\n",
       "| 6 | A39C6F6CC0586C0B | classic_bike  | 2022-01-11 18:48:09 | 2022-01-11 18:51:31 | Wood St &amp; Chicago Ave         | 637          | Honore St &amp; Division St       | TA1305000034 | 41.89563 | -87.67207 | 41.90312 | -87.67394 | member | 2022-01-11 | 01 | 11 | 2022 | Tuesday   |  202 |\n",
       "| 7 | BDC4AB637EDF981B | classic_bike  | 2022-01-30 18:32:52 | 2022-01-30 18:49:26 | Oakley Ave &amp; Irving Park Rd   | KA1504000158 | Broadway &amp; Sheridan Rd        | 13323        | 41.95434 | -87.68608 | 41.95283 | -87.64999 | member | 2022-01-30 | 01 | 30 | 2022 | Sunday    |  994 |\n",
       "| 8 | 81751A3186E59A6B | classic_bike  | 2022-01-22 12:20:02 | 2022-01-22 12:32:06 | Sheffield Ave &amp; Fullerton Ave | TA1306000016 | Damen Ave &amp; Clybourn Ave      | 13271        | 41.92560 | -87.65371 | 41.93193 | -87.67786 | member | 2022-01-22 | 01 | 22 | 2022 | Saturday  |  724 |\n",
       "| 10 | 72DC25B2DD467EEF | classic_bike  | 2022-01-28 15:27:53 | 2022-01-28 15:35:16 | LaSalle St &amp; Jackson Blvd     | TA1309000004 | Clinton St &amp; Washington Blvd  | WL-012       | 41.87817 | -87.63193 | 41.88338 | -87.64117 | member | 2022-01-28 | 01 | 28 | 2022 | Friday    |  443 |\n",
       "| 11 | F20394FE09C63DB2 | classic_bike  | 2022-01-11 18:27:59 | 2022-01-11 18:34:20 | LaSalle St &amp; Jackson Blvd     | TA1309000004 | Clinton St &amp; Washington Blvd  | WL-012       | 41.87817 | -87.63193 | 41.88338 | -87.64117 | member | 2022-01-11 | 01 | 11 | 2022 | Tuesday   |  381 |\n",
       "| 12 | 006D3F363CF9600B | electric_bike | 2022-01-29 12:30:43 | 2022-01-29 12:43:04 | Clarendon Ave &amp; Leland Ave    | TA1307000119 | Broadway &amp; Granville Ave      | 15571        | 41.96796 | -87.65003 | 41.99478 | -87.66028 | member | 2022-01-29 | 01 | 29 | 2022 | Saturday  |  741 |\n",
       "| 13 | FB258EEBE89F4E17 | classic_bike  | 2022-01-02 17:56:18 | 2022-01-02 18:05:38 | Sheffield Ave &amp; Fullerton Ave | TA1306000016 | Stockton Dr &amp; Wrightwood Ave  | 13276        | 41.92560 | -87.65371 | 41.93132 | -87.63874 | member | 2022-01-02 | 01 | 02 | 2022 | Sunday    |  560 |\n",
       "| 14 | 2EF51270B08DEE03 | classic_bike  | 2022-01-20 22:03:06 | 2022-01-20 22:09:59 | Rush St &amp; Superior St         | 15530        | Larrabee St &amp; Kingsbury St    | TA1306000009 | 41.89576 | -87.62591 | 41.89776 | -87.64288 | member | 2022-01-20 | 01 | 20 | 2022 | Thursday  |  413 |\n",
       "| 15 | E119D4E6BF686601 | electric_bike | 2022-01-08 05:36:40 | 2022-01-08 05:46:40 | Michigan Ave &amp; Jackson Blvd   | TA1309000002 | St. Clair St &amp; Erie St        | 13016        | 41.87785 | -87.62406 | 41.89435 | -87.62280 | casual | 2022-01-08 | 01 | 08 | 2022 | Saturday  |  600 |\n",
       "| 16 | 7DD70C4AA0F3EA7B | classic_bike  | 2022-01-14 05:47:07 | 2022-01-14 05:47:39 | Lincoln Park Conservatory     | LP-          | Lincoln Park Conservatory     | LP-          | 41.92393 | -87.63582 | 41.92393 | -87.63582 | member | 2022-01-14 | 01 | 14 | 2022 | Friday    |   32 |\n",
       "| 17 | 0AA241497B970400 | classic_bike  | 2022-01-12 14:09:13 | 2022-01-12 14:10:53 | LaSalle St &amp; Jackson Blvd     | TA1309000004 | Clark St &amp; Ida B Wells Dr     | TA1305000009 | 41.87817 | -87.63193 | 41.87593 | -87.63058 | member | 2022-01-12 | 01 | 12 | 2022 | Wednesday |  100 |\n",
       "| 18 | F5E6D97D85BE8039 | classic_bike  | 2022-01-31 12:07:45 | 2022-01-31 12:12:48 | Michigan Ave &amp; Jackson Blvd   | TA1309000002 | Indiana Ave &amp; Roosevelt Rd    | SL-005       | 41.87785 | -87.62408 | 41.86789 | -87.62304 | member | 2022-01-31 | 01 | 31 | 2022 | Monday    |  303 |\n",
       "| 19 | 78168928DF06A497 | classic_bike  | 2022-01-28 17:21:59 | 2022-01-28 17:26:54 | Michigan Ave &amp; Jackson Blvd   | TA1309000002 | Indiana Ave &amp; Roosevelt Rd    | SL-005       | 41.87785 | -87.62408 | 41.86789 | -87.62304 | member | 2022-01-28 | 01 | 28 | 2022 | Friday    |  295 |\n",
       "| 20 | 15C176B55C2BC059 | classic_bike  | 2022-01-19 21:00:40 | 2022-01-19 21:09:56 | Clark St &amp; Bryn Mawr Ave      | KA1504000151 | Clark St &amp; Schreiber Ave      | KA1504000156 | 41.98359 | -87.66915 | 41.99925 | -87.67138 | member | 2022-01-19 | 01 | 19 | 2022 | Wednesday |  556 |\n",
       "| 22 | 1A185AF405E7B2DB | classic_bike  | 2022-01-13 12:47:10 | 2022-01-13 13:10:20 | Sedgwick St &amp; North Ave       | TA1307000038 | Sedgwick St &amp; North Ave       | TA1307000038 | 41.91139 | -87.63868 | 41.91139 | -87.63868 | member | 2022-01-13 | 01 | 13 | 2022 | Thursday  | 1390 |\n",
       "| 23 | 9D4AAF43A011FC59 | electric_bike | 2022-01-18 08:03:16 | 2022-01-18 08:08:00 | California Ave &amp; Altgeld St   | 15646        | Milwaukee Ave &amp; Rockwell St   | 13242        | 41.92665 | -87.69766 | 41.92020 | -87.69266 | casual | 2022-01-18 | 01 | 18 | 2022 | Tuesday   |  284 |\n",
       "| 24 | A209F8E0E84D49B4 | classic_bike  | 2022-01-25 14:46:24 | 2022-01-25 15:00:27 | Sheffield Ave &amp; Fullerton Ave | TA1306000016 | Halsted St &amp; Roscoe St        | TA1309000025 | 41.92560 | -87.65371 | 41.94367 | -87.64895 | member | 2022-01-25 | 01 | 25 | 2022 | Tuesday   |  843 |\n",
       "| 25 | 6D6B462903DCB23F | electric_bike | 2022-01-10 06:44:21 | 2022-01-10 06:51:28 | Racine Ave &amp; 15th St          | 13304        | Wolcott Ave &amp; Polk St         | TA1309000064 | 41.86121 | -87.65660 | 41.87126 | -87.67369 | member | 2022-01-10 | 01 | 10 | 2022 | Monday    |  427 |\n",
       "| 26 | DC809CD3B3F3BFC9 | classic_bike  | 2022-01-22 15:14:32 | 2022-01-22 15:25:21 | Indiana Ave &amp; 31st St         | TA1308000036 | Emerald Ave &amp; 31st St         | TA1309000055 | 41.83884 | -87.62186 | 41.83820 | -87.64514 | member | 2022-01-22 | 01 | 22 | 2022 | Saturday  |  649 |\n",
       "| 27 | 1C2362DAD4090D8A | electric_bike | 2022-01-03 00:12:42 | 2022-01-03 00:17:50 | Indiana Ave &amp; 31st St         | TA1308000036 | Indiana Ave &amp; 40th St         | 13083        | 41.83882 | -87.62183 | 41.82168 | -87.62160 | casual | 2022-01-03 | 01 | 03 | 2022 | Monday    |  308 |\n",
       "| 28 | AB4032C2B151D137 | classic_bike  | 2022-01-31 18:58:30 | 2022-01-31 19:05:17 | Lake Park Ave &amp; 56th St       | TA1309000063 | Shore Dr &amp; 55th St            | TA1308000009 | 41.79324 | -87.58778 | 41.79521 | -87.58071 | member | 2022-01-31 | 01 | 31 | 2022 | Monday    |  407 |\n",
       "| 29 | E6B6D4531ADC9F52 | classic_bike  | 2022-01-15 17:41:15 | 2022-01-15 17:48:54 | Sheffield Ave &amp; Fullerton Ave | TA1306000016 | Ashland Ave &amp; Wrightwood Ave  | 13296        | 41.92560 | -87.65371 | 41.92883 | -87.66851 | member | 2022-01-15 | 01 | 15 | 2022 | Saturday  |  459 |\n",
       "| 30 | 81B423963BA2C10C | classic_bike  | 2022-01-24 10:15:53 | 2022-01-24 10:39:53 | Lincoln Park Conservatory     | LP-          | Daley Center Plaza            | TA1306000010 | 41.92393 | -87.63582 | 41.88424 | -87.62963 | member | 2022-01-24 | 01 | 24 | 2022 | Monday    | 1440 |\n",
       "| 31 | EC80F318604595AE | electric_bike | 2022-01-27 17:54:41 | 2022-01-27 18:05:24 | Sheridan Rd &amp; Montrose Ave    | TA1307000107 | Southport Ave &amp; Waveland Ave  | 13235        | 41.96165 | -87.65463 | 41.94815 | -87.66394 | casual | 2022-01-27 | 01 | 27 | 2022 | Thursday  |  643 |\n",
       "| 33 | 59E50C91451F529C | classic_bike  | 2022-01-27 11:58:14 | 2022-01-27 12:07:43 | State St &amp; Harrison St        | SL-007       | Clark St &amp; Lake St            | KA1503000012 | 41.87405 | -87.62772 | 41.88602 | -87.63088 | member | 2022-01-27 | 01 | 27 | 2022 | Thursday  |  569 |\n",
       "| ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ |\n",
       "| 5667687 | 870BB957FF58A148 | classic_bike  | 2022-12-01 16:10:23 | 2022-12-01 16:13:04 | Larrabee St &amp; Armitage Ave    | TA1309000006 | Larrabee St &amp; Menomonee St | TA1306000007 | 41.91808 | -87.64375 | 41.91468 | -87.64332 | member | 2022-12-01 | 12 | 01 | 2022 | Thursday  |  161 |\n",
       "| 5667688 | D0EE0137BE1CFE2F | electric_bike | 2022-12-31 11:51:58 | 2022-12-31 12:01:21 | Dearborn St &amp; Monroe St       | TA1305000006 | Green St &amp; Madison St      | TA1307000120 | 41.88055 | -87.62944 | 41.88186 | -87.64926 | casual | 2022-12-31 | 12 | 31 | 2022 | Saturday  |  563 |\n",
       "| 5667689 | 8D7BAB2233A72E76 | electric_bike | 2022-12-04 09:02:16 | 2022-12-04 09:14:19 | Morgan St &amp; 18th St           | 13163        | Green St &amp; Madison St      | TA1307000120 | 41.85806 | -87.65108 | 41.88186 | -87.64926 | casual | 2022-12-04 | 12 | 04 | 2022 | Sunday    |  723 |\n",
       "| 5667691 | 157AACAF04B4AC1A | electric_bike | 2022-12-05 17:51:38 | 2022-12-05 17:58:40 | Dearborn St &amp; Monroe St       | TA1305000006 | Green St &amp; Madison St      | TA1307000120 | 41.88073 | -87.62964 | 41.88186 | -87.64926 | member | 2022-12-05 | 12 | 05 | 2022 | Monday    |  422 |\n",
       "| 5667692 | 13618E9C77157B38 | classic_bike  | 2022-12-28 16:50:14 | 2022-12-28 16:56:51 | Dearborn St &amp; Monroe St       | TA1305000006 | Green St &amp; Madison St      | TA1307000120 | 41.88132 | -87.62952 | 41.88186 | -87.64926 | member | 2022-12-28 | 12 | 28 | 2022 | Wednesday |  397 |\n",
       "| 5667693 | 740FE55B98D3D886 | classic_bike  | 2022-12-24 00:10:03 | 2022-12-24 00:28:10 | Wood St &amp; Milwaukee Ave       | 13221        | Green St &amp; Madison St      | TA1307000120 | 41.90765 | -87.67255 | 41.88186 | -87.64926 | member | 2022-12-24 | 12 | 24 | 2022 | Saturday  | 1087 |\n",
       "| 5667694 | 40711C802C946CC5 | classic_bike  | 2022-12-15 12:57:49 | 2022-12-15 13:13:32 | Michigan Ave &amp; Washington St  | 13001        | Peoria St &amp; Jackson Blvd   | 13158        | 41.88398 | -87.62468 | 41.87764 | -87.64962 | member | 2022-12-15 | 12 | 15 | 2022 | Thursday  |  943 |\n",
       "| 5667695 | B621CD5AF243328B | classic_bike  | 2022-12-31 16:09:36 | 2022-12-31 16:15:31 | Canal St &amp; Taylor St          | 15550        | Peoria St &amp; Jackson Blvd   | 13158        | 41.87026 | -87.63947 | 41.87764 | -87.64962 | member | 2022-12-31 | 12 | 31 | 2022 | Saturday  |  355 |\n",
       "| 5667696 | 3B564ED03FE887DC | classic_bike  | 2022-12-30 22:06:29 | 2022-12-30 22:13:51 | Canal St &amp; Taylor St          | 15550        | Peoria St &amp; Jackson Blvd   | 13158        | 41.87026 | -87.63947 | 41.87764 | -87.64962 | member | 2022-12-30 | 12 | 30 | 2022 | Friday    |  442 |\n",
       "| 5667697 | 69FBC651C6C9C54B | classic_bike  | 2022-12-11 18:25:13 | 2022-12-11 18:28:32 | Canal St &amp; Taylor St          | 15550        | Clinton St &amp; Tilden St     | 13037        | 41.87026 | -87.63947 | 41.87588 | -87.64079 | member | 2022-12-11 | 12 | 11 | 2022 | Sunday    |  199 |\n",
       "| 5667698 | 10EC1B8665061739 | classic_bike  | 2022-12-15 09:41:06 | 2022-12-15 09:44:57 | Canal St &amp; Taylor St          | 15550        | Clinton St &amp; Tilden St     | 13037        | 41.87026 | -87.63947 | 41.87588 | -87.64079 | member | 2022-12-15 | 12 | 15 | 2022 | Thursday  |  231 |\n",
       "| 5667699 | 4A6809171F7BBFF6 | electric_bike | 2022-12-19 20:30:11 | 2022-12-19 20:40:31 | Wood St &amp; Milwaukee Ave       | 13221        | Peoria St &amp; Jackson Blvd   | 13158        | 41.90764 | -87.67252 | 41.87764 | -87.64962 | member | 2022-12-19 | 12 | 19 | 2022 | Monday    |  620 |\n",
       "| 5667700 | CA31CD8A7A313F31 | classic_bike  | 2022-12-28 14:51:01 | 2022-12-28 14:54:39 | Canal St &amp; Taylor St          | 15550        | Clinton St &amp; Tilden St     | 13037        | 41.87026 | -87.63947 | 41.87588 | -87.64079 | member | 2022-12-28 | 12 | 28 | 2022 | Wednesday |  218 |\n",
       "| 5667701 | 97230033D8C1B22F | classic_bike  | 2022-12-15 16:44:58 | 2022-12-15 16:47:46 | Larrabee St &amp; Armitage Ave    | TA1309000006 | Larrabee St &amp; Menomonee St | TA1306000007 | 41.91808 | -87.64375 | 41.91468 | -87.64332 | member | 2022-12-15 | 12 | 15 | 2022 | Thursday  |  168 |\n",
       "| 5667702 | 269378CDD3A89538 | electric_bike | 2022-12-18 11:06:45 | 2022-12-18 11:14:45 | Throop St &amp; Taylor St         | 13139        | Peoria St &amp; Jackson Blvd   | 13158        | 41.86882 | -87.65910 | 41.87764 | -87.64962 | casual | 2022-12-18 | 12 | 18 | 2022 | Sunday    |  480 |\n",
       "| 5667703 | 91D4BA5F337AFA87 | classic_bike  | 2022-12-28 14:35:36 | 2022-12-28 14:43:16 | Dearborn St &amp; Monroe St       | TA1305000006 | Green St &amp; Madison St      | TA1307000120 | 41.88132 | -87.62952 | 41.88186 | -87.64926 | member | 2022-12-28 | 12 | 28 | 2022 | Wednesday |  460 |\n",
       "| 5667704 | 283636179A819BD9 | classic_bike  | 2022-12-01 16:19:11 | 2022-12-01 16:29:23 | Michigan Ave &amp; Washington St  | 13001        | Green St &amp; Madison St      | TA1307000120 | 41.88398 | -87.62468 | 41.88186 | -87.64926 | member | 2022-12-01 | 12 | 01 | 2022 | Thursday  |  612 |\n",
       "| 5667705 | 397D3F6E37CC753E | classic_bike  | 2022-12-15 11:35:53 | 2022-12-15 11:39:22 | Canal St &amp; Taylor St          | 15550        | Clinton St &amp; Tilden St     | 13037        | 41.87026 | -87.63947 | 41.87588 | -87.64079 | member | 2022-12-15 | 12 | 15 | 2022 | Thursday  |  209 |\n",
       "| 5667706 | 856E6CB8A83DAE6A | electric_bike | 2022-12-29 17:31:30 | 2022-12-29 17:52:58 | California Ave &amp; Fletcher St  | 15642        | Green St &amp; Madison St      | TA1307000120 | 41.93852 | -87.69817 | 41.88186 | -87.64926 | casual | 2022-12-29 | 12 | 29 | 2022 | Thursday  | 1288 |\n",
       "| 5667707 | 1CE1BE852794BD42 | electric_bike | 2022-12-21 12:46:36 | 2022-12-21 12:49:51 | Canal St &amp; Taylor St          | 15550        | Clinton St &amp; Tilden St     | 13037        | 41.87019 | -87.63945 | 41.87588 | -87.64079 | member | 2022-12-21 | 12 | 21 | 2022 | Wednesday |  195 |\n",
       "| 5667708 | EB7999FF9DBC0535 | electric_bike | 2022-12-21 19:08:04 | 2022-12-21 19:17:14 | Michigan Ave &amp; Washington St  | 13001        | Peoria St &amp; Jackson Blvd   | 13158        | 41.88416 | -87.62446 | 41.87764 | -87.64962 | member | 2022-12-21 | 12 | 21 | 2022 | Wednesday |  550 |\n",
       "| 5667709 | 08BE55EE693263E5 | electric_bike | 2022-12-06 09:02:21 | 2022-12-06 09:06:51 | Morgan St &amp; Polk St           | TA1307000130 | Green St &amp; Madison St      | TA1307000120 | 41.87209 | -87.65089 | 41.88186 | -87.64926 | member | 2022-12-06 | 12 | 06 | 2022 | Tuesday   |  270 |\n",
       "| 5667710 | 05AD87788BCBF206 | electric_bike | 2022-12-06 17:08:45 | 2022-12-06 17:14:43 | Wells St &amp; Hubbard St         | TA1307000151 | Green St &amp; Madison St      | TA1307000120 | 41.89002 | -87.63452 | 41.88186 | -87.64926 | member | 2022-12-06 | 12 | 06 | 2022 | Tuesday   |  358 |\n",
       "| 5667711 | AFF5772FD4185626 | classic_bike  | 2022-12-03 08:50:08 | 2022-12-03 08:54:17 | Sangamon St &amp; Washington Blvd | 13409        | Peoria St &amp; Jackson Blvd   | 13158        | 41.88316 | -87.65110 | 41.87764 | -87.64962 | member | 2022-12-03 | 12 | 03 | 2022 | Saturday  |  249 |\n",
       "| 5667712 | 7BDEDE9860418B53 | classic_bike  | 2022-12-07 06:52:45 | 2022-12-07 06:56:36 | Sangamon St &amp; Washington Blvd | 13409        | Peoria St &amp; Jackson Blvd   | 13158        | 41.88316 | -87.65110 | 41.87764 | -87.64962 | member | 2022-12-07 | 12 | 07 | 2022 | Wednesday |  231 |\n",
       "| 5667713 | 43ABEE85B6E15DCA | classic_bike  | 2022-12-05 06:51:04 | 2022-12-05 06:54:48 | Sangamon St &amp; Washington Blvd | 13409        | Peoria St &amp; Jackson Blvd   | 13158        | 41.88316 | -87.65110 | 41.87764 | -87.64962 | member | 2022-12-05 | 12 | 05 | 2022 | Monday    |  224 |\n",
       "| 5667714 | F041C89A3D1F0270 | electric_bike | 2022-12-14 17:06:28 | 2022-12-14 17:19:27 | Bernard St &amp; Elston Ave       | 18016        | Seeley Ave &amp; Roscoe St     | 13144        | 41.94998 | -87.71402 | 41.94340 | -87.67962 | member | 2022-12-14 | 12 | 14 | 2022 | Wednesday |  779 |\n",
       "| 5667715 | A2BECB88430BE156 | classic_bike  | 2022-12-08 16:27:47 | 2022-12-08 16:32:20 | Wacker Dr &amp; Washington St     | KA1503000072 | Green St &amp; Madison St      | TA1307000120 | 41.88314 | -87.63724 | 41.88186 | -87.64926 | member | 2022-12-08 | 12 | 08 | 2022 | Thursday  |  273 |\n",
       "| 5667716 | 37B392960E566F58 | classic_bike  | 2022-12-28 09:37:38 | 2022-12-28 09:41:34 | Sangamon St &amp; Washington Blvd | 13409        | Peoria St &amp; Jackson Blvd   | 13158        | 41.88316 | -87.65110 | 41.87764 | -87.64962 | member | 2022-12-28 | 12 | 28 | 2022 | Wednesday |  236 |\n",
       "| 5667717 | 2DD1587210BA45AE | classic_bike  | 2022-12-09 00:27:25 | 2022-12-09 00:35:28 | Southport Ave &amp; Waveland Ave  | 13235        | Seeley Ave &amp; Roscoe St     | 13144        | 41.94815 | -87.66394 | 41.94340 | -87.67962 | casual | 2022-12-09 | 12 | 09 | 2022 | Friday    |  483 |\n",
       "\n"
      ],
      "text/plain": [
       "        ride_id          rideable_type started_at          ended_at           \n",
       "1       C2F7DD78E82EC875 electric_bike 2022-01-13 11:59:47 2022-01-13 12:02:44\n",
       "2       A6CF8980A652D272 electric_bike 2022-01-10 08:41:56 2022-01-10 08:46:17\n",
       "3       BD0F91DFF741C66D classic_bike  2022-01-25 04:53:40 2022-01-25 04:58:01\n",
       "4       CBB80ED419105406 classic_bike  2022-01-04 00:18:04 2022-01-04 00:33:00\n",
       "5       DDC963BFDDA51EEA classic_bike  2022-01-20 01:31:10 2022-01-20 01:37:12\n",
       "6       A39C6F6CC0586C0B classic_bike  2022-01-11 18:48:09 2022-01-11 18:51:31\n",
       "7       BDC4AB637EDF981B classic_bike  2022-01-30 18:32:52 2022-01-30 18:49:26\n",
       "8       81751A3186E59A6B classic_bike  2022-01-22 12:20:02 2022-01-22 12:32:06\n",
       "10      72DC25B2DD467EEF classic_bike  2022-01-28 15:27:53 2022-01-28 15:35:16\n",
       "11      F20394FE09C63DB2 classic_bike  2022-01-11 18:27:59 2022-01-11 18:34:20\n",
       "12      006D3F363CF9600B electric_bike 2022-01-29 12:30:43 2022-01-29 12:43:04\n",
       "13      FB258EEBE89F4E17 classic_bike  2022-01-02 17:56:18 2022-01-02 18:05:38\n",
       "14      2EF51270B08DEE03 classic_bike  2022-01-20 22:03:06 2022-01-20 22:09:59\n",
       "15      E119D4E6BF686601 electric_bike 2022-01-08 05:36:40 2022-01-08 05:46:40\n",
       "16      7DD70C4AA0F3EA7B classic_bike  2022-01-14 05:47:07 2022-01-14 05:47:39\n",
       "17      0AA241497B970400 classic_bike  2022-01-12 14:09:13 2022-01-12 14:10:53\n",
       "18      F5E6D97D85BE8039 classic_bike  2022-01-31 12:07:45 2022-01-31 12:12:48\n",
       "19      78168928DF06A497 classic_bike  2022-01-28 17:21:59 2022-01-28 17:26:54\n",
       "20      15C176B55C2BC059 classic_bike  2022-01-19 21:00:40 2022-01-19 21:09:56\n",
       "22      1A185AF405E7B2DB classic_bike  2022-01-13 12:47:10 2022-01-13 13:10:20\n",
       "23      9D4AAF43A011FC59 electric_bike 2022-01-18 08:03:16 2022-01-18 08:08:00\n",
       "24      A209F8E0E84D49B4 classic_bike  2022-01-25 14:46:24 2022-01-25 15:00:27\n",
       "25      6D6B462903DCB23F electric_bike 2022-01-10 06:44:21 2022-01-10 06:51:28\n",
       "26      DC809CD3B3F3BFC9 classic_bike  2022-01-22 15:14:32 2022-01-22 15:25:21\n",
       "27      1C2362DAD4090D8A electric_bike 2022-01-03 00:12:42 2022-01-03 00:17:50\n",
       "28      AB4032C2B151D137 classic_bike  2022-01-31 18:58:30 2022-01-31 19:05:17\n",
       "29      E6B6D4531ADC9F52 classic_bike  2022-01-15 17:41:15 2022-01-15 17:48:54\n",
       "30      81B423963BA2C10C classic_bike  2022-01-24 10:15:53 2022-01-24 10:39:53\n",
       "31      EC80F318604595AE electric_bike 2022-01-27 17:54:41 2022-01-27 18:05:24\n",
       "33      59E50C91451F529C classic_bike  2022-01-27 11:58:14 2022-01-27 12:07:43\n",
       "⋮       ⋮                ⋮             ⋮                   ⋮                  \n",
       "5667687 870BB957FF58A148 classic_bike  2022-12-01 16:10:23 2022-12-01 16:13:04\n",
       "5667688 D0EE0137BE1CFE2F electric_bike 2022-12-31 11:51:58 2022-12-31 12:01:21\n",
       "5667689 8D7BAB2233A72E76 electric_bike 2022-12-04 09:02:16 2022-12-04 09:14:19\n",
       "5667691 157AACAF04B4AC1A electric_bike 2022-12-05 17:51:38 2022-12-05 17:58:40\n",
       "5667692 13618E9C77157B38 classic_bike  2022-12-28 16:50:14 2022-12-28 16:56:51\n",
       "5667693 740FE55B98D3D886 classic_bike  2022-12-24 00:10:03 2022-12-24 00:28:10\n",
       "5667694 40711C802C946CC5 classic_bike  2022-12-15 12:57:49 2022-12-15 13:13:32\n",
       "5667695 B621CD5AF243328B classic_bike  2022-12-31 16:09:36 2022-12-31 16:15:31\n",
       "5667696 3B564ED03FE887DC classic_bike  2022-12-30 22:06:29 2022-12-30 22:13:51\n",
       "5667697 69FBC651C6C9C54B classic_bike  2022-12-11 18:25:13 2022-12-11 18:28:32\n",
       "5667698 10EC1B8665061739 classic_bike  2022-12-15 09:41:06 2022-12-15 09:44:57\n",
       "5667699 4A6809171F7BBFF6 electric_bike 2022-12-19 20:30:11 2022-12-19 20:40:31\n",
       "5667700 CA31CD8A7A313F31 classic_bike  2022-12-28 14:51:01 2022-12-28 14:54:39\n",
       "5667701 97230033D8C1B22F classic_bike  2022-12-15 16:44:58 2022-12-15 16:47:46\n",
       "5667702 269378CDD3A89538 electric_bike 2022-12-18 11:06:45 2022-12-18 11:14:45\n",
       "5667703 91D4BA5F337AFA87 classic_bike  2022-12-28 14:35:36 2022-12-28 14:43:16\n",
       "5667704 283636179A819BD9 classic_bike  2022-12-01 16:19:11 2022-12-01 16:29:23\n",
       "5667705 397D3F6E37CC753E classic_bike  2022-12-15 11:35:53 2022-12-15 11:39:22\n",
       "5667706 856E6CB8A83DAE6A electric_bike 2022-12-29 17:31:30 2022-12-29 17:52:58\n",
       "5667707 1CE1BE852794BD42 electric_bike 2022-12-21 12:46:36 2022-12-21 12:49:51\n",
       "5667708 EB7999FF9DBC0535 electric_bike 2022-12-21 19:08:04 2022-12-21 19:17:14\n",
       "5667709 08BE55EE693263E5 electric_bike 2022-12-06 09:02:21 2022-12-06 09:06:51\n",
       "5667710 05AD87788BCBF206 electric_bike 2022-12-06 17:08:45 2022-12-06 17:14:43\n",
       "5667711 AFF5772FD4185626 classic_bike  2022-12-03 08:50:08 2022-12-03 08:54:17\n",
       "5667712 7BDEDE9860418B53 classic_bike  2022-12-07 06:52:45 2022-12-07 06:56:36\n",
       "5667713 43ABEE85B6E15DCA classic_bike  2022-12-05 06:51:04 2022-12-05 06:54:48\n",
       "5667714 F041C89A3D1F0270 electric_bike 2022-12-14 17:06:28 2022-12-14 17:19:27\n",
       "5667715 A2BECB88430BE156 classic_bike  2022-12-08 16:27:47 2022-12-08 16:32:20\n",
       "5667716 37B392960E566F58 classic_bike  2022-12-28 09:37:38 2022-12-28 09:41:34\n",
       "5667717 2DD1587210BA45AE classic_bike  2022-12-09 00:27:25 2022-12-09 00:35:28\n",
       "        start_station_name            start_station_id\n",
       "1       Glenwood Ave & Touhy Ave      525             \n",
       "2       Glenwood Ave & Touhy Ave      525             \n",
       "3       Sheffield Ave & Fullerton Ave TA1306000016    \n",
       "4       Clark St & Bryn Mawr Ave      KA1504000151    \n",
       "5       Michigan Ave & Jackson Blvd   TA1309000002    \n",
       "6       Wood St & Chicago Ave         637             \n",
       "7       Oakley Ave & Irving Park Rd   KA1504000158    \n",
       "8       Sheffield Ave & Fullerton Ave TA1306000016    \n",
       "10      LaSalle St & Jackson Blvd     TA1309000004    \n",
       "11      LaSalle St & Jackson Blvd     TA1309000004    \n",
       "12      Clarendon Ave & Leland Ave    TA1307000119    \n",
       "13      Sheffield Ave & Fullerton Ave TA1306000016    \n",
       "14      Rush St & Superior St         15530           \n",
       "15      Michigan Ave & Jackson Blvd   TA1309000002    \n",
       "16      Lincoln Park Conservatory     LP-             \n",
       "17      LaSalle St & Jackson Blvd     TA1309000004    \n",
       "18      Michigan Ave & Jackson Blvd   TA1309000002    \n",
       "19      Michigan Ave & Jackson Blvd   TA1309000002    \n",
       "20      Clark St & Bryn Mawr Ave      KA1504000151    \n",
       "22      Sedgwick St & North Ave       TA1307000038    \n",
       "23      California Ave & Altgeld St   15646           \n",
       "24      Sheffield Ave & Fullerton Ave TA1306000016    \n",
       "25      Racine Ave & 15th St          13304           \n",
       "26      Indiana Ave & 31st St         TA1308000036    \n",
       "27      Indiana Ave & 31st St         TA1308000036    \n",
       "28      Lake Park Ave & 56th St       TA1309000063    \n",
       "29      Sheffield Ave & Fullerton Ave TA1306000016    \n",
       "30      Lincoln Park Conservatory     LP-             \n",
       "31      Sheridan Rd & Montrose Ave    TA1307000107    \n",
       "33      State St & Harrison St        SL-007          \n",
       "⋮       ⋮                             ⋮               \n",
       "5667687 Larrabee St & Armitage Ave    TA1309000006    \n",
       "5667688 Dearborn St & Monroe St       TA1305000006    \n",
       "5667689 Morgan St & 18th St           13163           \n",
       "5667691 Dearborn St & Monroe St       TA1305000006    \n",
       "5667692 Dearborn St & Monroe St       TA1305000006    \n",
       "5667693 Wood St & Milwaukee Ave       13221           \n",
       "5667694 Michigan Ave & Washington St  13001           \n",
       "5667695 Canal St & Taylor St          15550           \n",
       "5667696 Canal St & Taylor St          15550           \n",
       "5667697 Canal St & Taylor St          15550           \n",
       "5667698 Canal St & Taylor St          15550           \n",
       "5667699 Wood St & Milwaukee Ave       13221           \n",
       "5667700 Canal St & Taylor St          15550           \n",
       "5667701 Larrabee St & Armitage Ave    TA1309000006    \n",
       "5667702 Throop St & Taylor St         13139           \n",
       "5667703 Dearborn St & Monroe St       TA1305000006    \n",
       "5667704 Michigan Ave & Washington St  13001           \n",
       "5667705 Canal St & Taylor St          15550           \n",
       "5667706 California Ave & Fletcher St  15642           \n",
       "5667707 Canal St & Taylor St          15550           \n",
       "5667708 Michigan Ave & Washington St  13001           \n",
       "5667709 Morgan St & Polk St           TA1307000130    \n",
       "5667710 Wells St & Hubbard St         TA1307000151    \n",
       "5667711 Sangamon St & Washington Blvd 13409           \n",
       "5667712 Sangamon St & Washington Blvd 13409           \n",
       "5667713 Sangamon St & Washington Blvd 13409           \n",
       "5667714 Bernard St & Elston Ave       18016           \n",
       "5667715 Wacker Dr & Washington St     KA1503000072    \n",
       "5667716 Sangamon St & Washington Blvd 13409           \n",
       "5667717 Southport Ave & Waveland Ave  13235           \n",
       "        end_station_name              end_station_id start_lat start_lng\n",
       "1       Clark St & Touhy Ave          RP-007         42.01280  -87.66591\n",
       "2       Clark St & Touhy Ave          RP-007         42.01276  -87.66597\n",
       "3       Greenview Ave & Fullerton Ave TA1307000001   41.92560  -87.65371\n",
       "4       Paulina St & Montrose Ave     TA1309000021   41.98359  -87.66915\n",
       "5       State St & Randolph St        TA1305000029   41.87785  -87.62408\n",
       "6       Honore St & Division St       TA1305000034   41.89563  -87.67207\n",
       "7       Broadway & Sheridan Rd        13323          41.95434  -87.68608\n",
       "8       Damen Ave & Clybourn Ave      13271          41.92560  -87.65371\n",
       "10      Clinton St & Washington Blvd  WL-012         41.87817  -87.63193\n",
       "11      Clinton St & Washington Blvd  WL-012         41.87817  -87.63193\n",
       "12      Broadway & Granville Ave      15571          41.96796  -87.65003\n",
       "13      Stockton Dr & Wrightwood Ave  13276          41.92560  -87.65371\n",
       "14      Larrabee St & Kingsbury St    TA1306000009   41.89576  -87.62591\n",
       "15      St. Clair St & Erie St        13016          41.87785  -87.62406\n",
       "16      Lincoln Park Conservatory     LP-            41.92393  -87.63582\n",
       "17      Clark St & Ida B Wells Dr     TA1305000009   41.87817  -87.63193\n",
       "18      Indiana Ave & Roosevelt Rd    SL-005         41.87785  -87.62408\n",
       "19      Indiana Ave & Roosevelt Rd    SL-005         41.87785  -87.62408\n",
       "20      Clark St & Schreiber Ave      KA1504000156   41.98359  -87.66915\n",
       "22      Sedgwick St & North Ave       TA1307000038   41.91139  -87.63868\n",
       "23      Milwaukee Ave & Rockwell St   13242          41.92665  -87.69766\n",
       "24      Halsted St & Roscoe St        TA1309000025   41.92560  -87.65371\n",
       "25      Wolcott Ave & Polk St         TA1309000064   41.86121  -87.65660\n",
       "26      Emerald Ave & 31st St         TA1309000055   41.83884  -87.62186\n",
       "27      Indiana Ave & 40th St         13083          41.83882  -87.62183\n",
       "28      Shore Dr & 55th St            TA1308000009   41.79324  -87.58778\n",
       "29      Ashland Ave & Wrightwood Ave  13296          41.92560  -87.65371\n",
       "30      Daley Center Plaza            TA1306000010   41.92393  -87.63582\n",
       "31      Southport Ave & Waveland Ave  13235          41.96165  -87.65463\n",
       "33      Clark St & Lake St            KA1503000012   41.87405  -87.62772\n",
       "⋮       ⋮                             ⋮              ⋮         ⋮        \n",
       "5667687 Larrabee St & Menomonee St    TA1306000007   41.91808  -87.64375\n",
       "5667688 Green St & Madison St         TA1307000120   41.88055  -87.62944\n",
       "5667689 Green St & Madison St         TA1307000120   41.85806  -87.65108\n",
       "5667691 Green St & Madison St         TA1307000120   41.88073  -87.62964\n",
       "5667692 Green St & Madison St         TA1307000120   41.88132  -87.62952\n",
       "5667693 Green St & Madison St         TA1307000120   41.90765  -87.67255\n",
       "5667694 Peoria St & Jackson Blvd      13158          41.88398  -87.62468\n",
       "5667695 Peoria St & Jackson Blvd      13158          41.87026  -87.63947\n",
       "5667696 Peoria St & Jackson Blvd      13158          41.87026  -87.63947\n",
       "5667697 Clinton St & Tilden St        13037          41.87026  -87.63947\n",
       "5667698 Clinton St & Tilden St        13037          41.87026  -87.63947\n",
       "5667699 Peoria St & Jackson Blvd      13158          41.90764  -87.67252\n",
       "5667700 Clinton St & Tilden St        13037          41.87026  -87.63947\n",
       "5667701 Larrabee St & Menomonee St    TA1306000007   41.91808  -87.64375\n",
       "5667702 Peoria St & Jackson Blvd      13158          41.86882  -87.65910\n",
       "5667703 Green St & Madison St         TA1307000120   41.88132  -87.62952\n",
       "5667704 Green St & Madison St         TA1307000120   41.88398  -87.62468\n",
       "5667705 Clinton St & Tilden St        13037          41.87026  -87.63947\n",
       "5667706 Green St & Madison St         TA1307000120   41.93852  -87.69817\n",
       "5667707 Clinton St & Tilden St        13037          41.87019  -87.63945\n",
       "5667708 Peoria St & Jackson Blvd      13158          41.88416  -87.62446\n",
       "5667709 Green St & Madison St         TA1307000120   41.87209  -87.65089\n",
       "5667710 Green St & Madison St         TA1307000120   41.89002  -87.63452\n",
       "5667711 Peoria St & Jackson Blvd      13158          41.88316  -87.65110\n",
       "5667712 Peoria St & Jackson Blvd      13158          41.88316  -87.65110\n",
       "5667713 Peoria St & Jackson Blvd      13158          41.88316  -87.65110\n",
       "5667714 Seeley Ave & Roscoe St        13144          41.94998  -87.71402\n",
       "5667715 Green St & Madison St         TA1307000120   41.88314  -87.63724\n",
       "5667716 Peoria St & Jackson Blvd      13158          41.88316  -87.65110\n",
       "5667717 Seeley Ave & Roscoe St        13144          41.94815  -87.66394\n",
       "        end_lat  end_lng   member_casual date       month day year day_of_week\n",
       "1       42.01256 -87.67437 casual        2022-01-13 01    13  2022 Thursday   \n",
       "2       42.01256 -87.67437 casual        2022-01-10 01    10  2022 Monday     \n",
       "3       41.92533 -87.66580 member        2022-01-25 01    25  2022 Tuesday    \n",
       "4       41.96151 -87.67139 casual        2022-01-04 01    04  2022 Tuesday    \n",
       "5       41.88462 -87.62783 member        2022-01-20 01    20  2022 Thursday   \n",
       "6       41.90312 -87.67394 member        2022-01-11 01    11  2022 Tuesday    \n",
       "7       41.95283 -87.64999 member        2022-01-30 01    30  2022 Sunday     \n",
       "8       41.93193 -87.67786 member        2022-01-22 01    22  2022 Saturday   \n",
       "10      41.88338 -87.64117 member        2022-01-28 01    28  2022 Friday     \n",
       "11      41.88338 -87.64117 member        2022-01-11 01    11  2022 Tuesday    \n",
       "12      41.99478 -87.66028 member        2022-01-29 01    29  2022 Saturday   \n",
       "13      41.93132 -87.63874 member        2022-01-02 01    02  2022 Sunday     \n",
       "14      41.89776 -87.64288 member        2022-01-20 01    20  2022 Thursday   \n",
       "15      41.89435 -87.62280 casual        2022-01-08 01    08  2022 Saturday   \n",
       "16      41.92393 -87.63582 member        2022-01-14 01    14  2022 Friday     \n",
       "17      41.87593 -87.63058 member        2022-01-12 01    12  2022 Wednesday  \n",
       "18      41.86789 -87.62304 member        2022-01-31 01    31  2022 Monday     \n",
       "19      41.86789 -87.62304 member        2022-01-28 01    28  2022 Friday     \n",
       "20      41.99925 -87.67138 member        2022-01-19 01    19  2022 Wednesday  \n",
       "22      41.91139 -87.63868 member        2022-01-13 01    13  2022 Thursday   \n",
       "23      41.92020 -87.69266 casual        2022-01-18 01    18  2022 Tuesday    \n",
       "24      41.94367 -87.64895 member        2022-01-25 01    25  2022 Tuesday    \n",
       "25      41.87126 -87.67369 member        2022-01-10 01    10  2022 Monday     \n",
       "26      41.83820 -87.64514 member        2022-01-22 01    22  2022 Saturday   \n",
       "27      41.82168 -87.62160 casual        2022-01-03 01    03  2022 Monday     \n",
       "28      41.79521 -87.58071 member        2022-01-31 01    31  2022 Monday     \n",
       "29      41.92883 -87.66851 member        2022-01-15 01    15  2022 Saturday   \n",
       "30      41.88424 -87.62963 member        2022-01-24 01    24  2022 Monday     \n",
       "31      41.94815 -87.66394 casual        2022-01-27 01    27  2022 Thursday   \n",
       "33      41.88602 -87.63088 member        2022-01-27 01    27  2022 Thursday   \n",
       "⋮       ⋮        ⋮         ⋮             ⋮          ⋮     ⋮   ⋮    ⋮          \n",
       "5667687 41.91468 -87.64332 member        2022-12-01 12    01  2022 Thursday   \n",
       "5667688 41.88186 -87.64926 casual        2022-12-31 12    31  2022 Saturday   \n",
       "5667689 41.88186 -87.64926 casual        2022-12-04 12    04  2022 Sunday     \n",
       "5667691 41.88186 -87.64926 member        2022-12-05 12    05  2022 Monday     \n",
       "5667692 41.88186 -87.64926 member        2022-12-28 12    28  2022 Wednesday  \n",
       "5667693 41.88186 -87.64926 member        2022-12-24 12    24  2022 Saturday   \n",
       "5667694 41.87764 -87.64962 member        2022-12-15 12    15  2022 Thursday   \n",
       "5667695 41.87764 -87.64962 member        2022-12-31 12    31  2022 Saturday   \n",
       "5667696 41.87764 -87.64962 member        2022-12-30 12    30  2022 Friday     \n",
       "5667697 41.87588 -87.64079 member        2022-12-11 12    11  2022 Sunday     \n",
       "5667698 41.87588 -87.64079 member        2022-12-15 12    15  2022 Thursday   \n",
       "5667699 41.87764 -87.64962 member        2022-12-19 12    19  2022 Monday     \n",
       "5667700 41.87588 -87.64079 member        2022-12-28 12    28  2022 Wednesday  \n",
       "5667701 41.91468 -87.64332 member        2022-12-15 12    15  2022 Thursday   \n",
       "5667702 41.87764 -87.64962 casual        2022-12-18 12    18  2022 Sunday     \n",
       "5667703 41.88186 -87.64926 member        2022-12-28 12    28  2022 Wednesday  \n",
       "5667704 41.88186 -87.64926 member        2022-12-01 12    01  2022 Thursday   \n",
       "5667705 41.87588 -87.64079 member        2022-12-15 12    15  2022 Thursday   \n",
       "5667706 41.88186 -87.64926 casual        2022-12-29 12    29  2022 Thursday   \n",
       "5667707 41.87588 -87.64079 member        2022-12-21 12    21  2022 Wednesday  \n",
       "5667708 41.87764 -87.64962 member        2022-12-21 12    21  2022 Wednesday  \n",
       "5667709 41.88186 -87.64926 member        2022-12-06 12    06  2022 Tuesday    \n",
       "5667710 41.88186 -87.64926 member        2022-12-06 12    06  2022 Tuesday    \n",
       "5667711 41.87764 -87.64962 member        2022-12-03 12    03  2022 Saturday   \n",
       "5667712 41.87764 -87.64962 member        2022-12-07 12    07  2022 Wednesday  \n",
       "5667713 41.87764 -87.64962 member        2022-12-05 12    05  2022 Monday     \n",
       "5667714 41.94340 -87.67962 member        2022-12-14 12    14  2022 Wednesday  \n",
       "5667715 41.88186 -87.64926 member        2022-12-08 12    08  2022 Thursday   \n",
       "5667716 41.87764 -87.64962 member        2022-12-28 12    28  2022 Wednesday  \n",
       "5667717 41.94340 -87.67962 casual        2022-12-09 12    09  2022 Friday     \n",
       "        ride_duration\n",
       "1        177         \n",
       "2        261         \n",
       "3        261         \n",
       "4        896         \n",
       "5        362         \n",
       "6        202         \n",
       "7        994         \n",
       "8        724         \n",
       "10       443         \n",
       "11       381         \n",
       "12       741         \n",
       "13       560         \n",
       "14       413         \n",
       "15       600         \n",
       "16        32         \n",
       "17       100         \n",
       "18       303         \n",
       "19       295         \n",
       "20       556         \n",
       "22      1390         \n",
       "23       284         \n",
       "24       843         \n",
       "25       427         \n",
       "26       649         \n",
       "27       308         \n",
       "28       407         \n",
       "29       459         \n",
       "30      1440         \n",
       "31       643         \n",
       "33       569         \n",
       "⋮       ⋮            \n",
       "5667687  161         \n",
       "5667688  563         \n",
       "5667689  723         \n",
       "5667691  422         \n",
       "5667692  397         \n",
       "5667693 1087         \n",
       "5667694  943         \n",
       "5667695  355         \n",
       "5667696  442         \n",
       "5667697  199         \n",
       "5667698  231         \n",
       "5667699  620         \n",
       "5667700  218         \n",
       "5667701  168         \n",
       "5667702  480         \n",
       "5667703  460         \n",
       "5667704  612         \n",
       "5667705  209         \n",
       "5667706 1288         \n",
       "5667707  195         \n",
       "5667708  550         \n",
       "5667709  270         \n",
       "5667710  358         \n",
       "5667711  249         \n",
       "5667712  231         \n",
       "5667713  224         \n",
       "5667714  779         \n",
       "5667715  273         \n",
       "5667716  236         \n",
       "5667717  483         "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/plain": [
       "   ride_id          rideable_type        started_at                 \n",
       " Length:4721562     Length:4721562     Min.   :2022-01-01 00:00:05  \n",
       " Class :character   Class :character   1st Qu.:2022-05-28 16:20:02  \n",
       " Mode  :character   Mode  :character   Median :2022-07-24 18:45:15  \n",
       "                                       Mean   :2022-07-21 18:25:52  \n",
       "                                       3rd Qu.:2022-09-19 10:06:15  \n",
       "                                       Max.   :2022-12-31 23:59:26  \n",
       "                                                                    \n",
       "    ended_at                   start_station_name start_station_id  \n",
       " Min.   :2022-01-01 00:01:48   Length:4721562     Length:4721562    \n",
       " 1st Qu.:2022-05-28 16:32:02   Class :character   Class :character  \n",
       " Median :2022-07-24 18:55:25   Mode  :character   Mode  :character  \n",
       " Mean   :2022-07-21 18:35:34                                        \n",
       " 3rd Qu.:2022-09-19 10:15:14                                        \n",
       " Max.   :2023-01-01 00:16:53                                        \n",
       "                                                                    \n",
       " end_station_name   end_station_id       start_lat       start_lng     \n",
       " Length:4721562     Length:4721562     Min.   :41.64   Min.   :-87.84  \n",
       " Class :character   Class :character   1st Qu.:41.88   1st Qu.:-87.66  \n",
       " Mode  :character   Mode  :character   Median :41.90   Median :-87.65  \n",
       "                                       Mean   :41.90   Mean   :-87.65  \n",
       "                                       3rd Qu.:41.93   3rd Qu.:-87.63  \n",
       "                                       Max.   :45.64   Max.   :-73.80  \n",
       "                                                                       \n",
       "    end_lat         end_lng       member_casual           date           \n",
       " Min.   : 0.00   Min.   :-87.87   Length:4721562     Min.   :2022-01-01  \n",
       " 1st Qu.:41.88   1st Qu.:-87.66   Class :character   1st Qu.:2022-05-28  \n",
       " Median :41.90   Median :-87.65   Mode  :character   Median :2022-07-24  \n",
       " Mean   :41.90   Mean   :-87.65                      Mean   :2022-07-21  \n",
       " 3rd Qu.:41.93   3rd Qu.:-87.63                      3rd Qu.:2022-09-19  \n",
       " Max.   :42.12   Max.   :  0.00                      Max.   :2022-12-31  \n",
       " NA's   :144     NA's   :144                                             \n",
       "    month               day                year           day_of_week       \n",
       " Length:4721562     Length:4721562     Length:4721562     Length:4721562    \n",
       " Class :character   Class :character   Class :character   Class :character  \n",
       " Mode  :character   Mode  :character   Mode  :character   Mode  :character  \n",
       "                                                                            \n",
       "                                                                            \n",
       "                                                                            \n",
       "                                                                            \n",
       " ride_duration   \n",
       " Min.   :   1.0  \n",
       " 1st Qu.: 311.0  \n",
       " Median : 517.0  \n",
       " Mean   : 581.8  \n",
       " 3rd Qu.: 810.0  \n",
       " Max.   :1440.0  \n",
       "                 "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "#Checking the new data frame\n",
    "dim(all_trips_v2) \n",
    "View(all_trips_v2)\n",
    "summary(all_trips_v2)\n",
    "#Confirmed the total number of rows is 4,721,562 (down from 5,667,717 - decreased by 17% - significant removals.\n",
    "#144 NAs Remains in end_lat and end_long"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "47a2d923",
   "metadata": {
    "_cell_guid": "460f292d-82ee-4e6a-98e6-0cfb93513cde",
    "_uuid": "4b1fb219-3673-425a-bff4-3fde80bdf839",
    "papermill": {
     "duration": 0.03319,
     "end_time": "2023-05-16T13:00:56.326059",
     "exception": false,
     "start_time": "2023-05-16T13:00:56.292869",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "2. Remove NA data from the all_trips_v2 to get accurate data."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 19,
   "id": "6830c950",
   "metadata": {
    "_cell_guid": "175d9022-5746-4024-b6af-c56e58a9665e",
    "_uuid": "90010da6-2d63-470a-bbf8-8515b63b590e",
    "collapsed": false,
    "execution": {
     "iopub.execute_input": "2023-05-16T13:00:56.398046Z",
     "iopub.status.busy": "2023-05-16T13:00:56.395919Z",
     "iopub.status.idle": "2023-05-16T13:01:17.543371Z",
     "shell.execute_reply": "2023-05-16T13:01:17.541008Z"
    },
    "jupyter": {
     "outputs_hidden": false
    },
    "papermill": {
     "duration": 21.18646,
     "end_time": "2023-05-16T13:01:17.547166",
     "exception": false,
     "start_time": "2023-05-16T13:00:56.360706",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>4721418</li><li>19</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 4721418\n",
       "\\item 19\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 4721418\n",
       "2. 19\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       "[1] 4721418      19"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/plain": [
       "   ride_id          rideable_type        started_at                 \n",
       " Length:4721418     Length:4721418     Min.   :2022-01-01 00:00:05  \n",
       " Class :character   Class :character   1st Qu.:2022-05-28 16:19:46  \n",
       " Mode  :character   Mode  :character   Median :2022-07-24 18:45:31  \n",
       "                                       Mean   :2022-07-21 18:26:13  \n",
       "                                       3rd Qu.:2022-09-19 10:06:50  \n",
       "                                       Max.   :2022-12-31 23:59:26  \n",
       "    ended_at                   start_station_name start_station_id  \n",
       " Min.   :2022-01-01 00:01:48   Length:4721418     Length:4721418    \n",
       " 1st Qu.:2022-05-28 16:31:49   Class :character   Class :character  \n",
       " Median :2022-07-24 18:55:38   Mode  :character   Mode  :character  \n",
       " Mean   :2022-07-21 18:35:55                                        \n",
       " 3rd Qu.:2022-09-19 10:16:27                                        \n",
       " Max.   :2023-01-01 00:16:53                                        \n",
       " end_station_name   end_station_id       start_lat       start_lng     \n",
       " Length:4721418     Length:4721418     Min.   :41.64   Min.   :-87.84  \n",
       " Class :character   Class :character   1st Qu.:41.88   1st Qu.:-87.66  \n",
       " Mode  :character   Mode  :character   Median :41.90   Median :-87.65  \n",
       "                                       Mean   :41.90   Mean   :-87.65  \n",
       "                                       3rd Qu.:41.93   3rd Qu.:-87.63  \n",
       "                                       Max.   :45.64   Max.   :-73.80  \n",
       "    end_lat         end_lng       member_casual           date           \n",
       " Min.   : 0.00   Min.   :-87.87   Length:4721418     Min.   :2022-01-01  \n",
       " 1st Qu.:41.88   1st Qu.:-87.66   Class :character   1st Qu.:2022-05-28  \n",
       " Median :41.90   Median :-87.65   Mode  :character   Median :2022-07-24  \n",
       " Mean   :41.90   Mean   :-87.65                      Mean   :2022-07-21  \n",
       " 3rd Qu.:41.93   3rd Qu.:-87.63                      3rd Qu.:2022-09-19  \n",
       " Max.   :42.12   Max.   :  0.00                      Max.   :2022-12-31  \n",
       "    month               day                year           day_of_week       \n",
       " Length:4721418     Length:4721418     Length:4721418     Length:4721418    \n",
       " Class :character   Class :character   Class :character   Class :character  \n",
       " Mode  :character   Mode  :character   Mode  :character   Mode  :character  \n",
       "                                                                            \n",
       "                                                                            \n",
       "                                                                            \n",
       " ride_duration   \n",
       " Min.   :   1.0  \n",
       " 1st Qu.: 311.0  \n",
       " Median : 517.0  \n",
       " Mean   : 581.8  \n",
       " 3rd Qu.: 810.0  \n",
       " Max.   :1440.0  "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "#Drop all NAs\n",
    "all_trips_v2 <- drop_na(all_trips_v2)\n",
    "dim(all_trips_v2) \n",
    "summary(all_trips_v2)\n",
    "#Confirmed all NAs are gone and 4,721,418 rows remained."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "269ed166",
   "metadata": {
    "_cell_guid": "eee238da-ffec-4210-9c12-df79cc83d49e",
    "_uuid": "4d2b7cdf-be04-4be9-b1f3-9dc27ecb497a",
    "papermill": {
     "duration": 0.034717,
     "end_time": "2023-05-16T13:01:17.615776",
     "exception": false,
     "start_time": "2023-05-16T13:01:17.581059",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "3. Remove duplicated ID since it ride_id acts as a unique id per ride, not riders."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 20,
   "id": "a744d4ec",
   "metadata": {
    "_cell_guid": "91a3e88e-0826-46b1-90bc-76bd489c1464",
    "_uuid": "26994da5-96dd-46ce-b4dc-434a4179b63f",
    "collapsed": false,
    "execution": {
     "iopub.execute_input": "2023-05-16T13:01:17.687856Z",
     "iopub.status.busy": "2023-05-16T13:01:17.685976Z",
     "iopub.status.idle": "2023-05-16T13:01:21.492572Z",
     "shell.execute_reply": "2023-05-16T13:01:21.490167Z"
    },
    "jupyter": {
     "outputs_hidden": false
    },
    "papermill": {
     "duration": 3.847086,
     "end_time": "2023-05-16T13:01:21.496190",
     "exception": false,
     "start_time": "2023-05-16T13:01:17.649104",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>4721418</li><li>19</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 4721418\n",
       "\\item 19\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 4721418\n",
       "2. 19\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       "[1] 4721418      19"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "#Remove duplicated ID (confirmed that unique ride_id is assigned for every rides even if same rider uses this service):\n",
    "all_trips_v3 <- all_trips_v2[!duplicated(all_trips_v2$ride_id),]\n",
    "dim(all_trips_v3) \n",
    "#Confirmed 4,721,418 rows remained (No duplication)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "5a364339",
   "metadata": {
    "_cell_guid": "9b769bd7-9fed-4b0c-99c3-5cd6354dea96",
    "_uuid": "dcf7c064-c7aa-4d9d-9c6d-7b3d55c32d81",
    "papermill": {
     "duration": 0.034335,
     "end_time": "2023-05-16T13:01:21.566627",
     "exception": false,
     "start_time": "2023-05-16T13:01:21.532292",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Data Cleaning/Validation process has been completed. Additional columns are created for further analysis."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 21,
   "id": "ae39b43d",
   "metadata": {
    "_cell_guid": "162a931b-61b6-4fae-ab7d-0404899d4895",
    "_uuid": "d66eb493-1794-46fb-b9b5-778779b501d8",
    "collapsed": false,
    "execution": {
     "iopub.execute_input": "2023-05-16T13:01:21.638181Z",
     "iopub.status.busy": "2023-05-16T13:01:21.636266Z",
     "iopub.status.idle": "2023-05-16T13:01:44.913034Z",
     "shell.execute_reply": "2023-05-16T13:01:44.910946Z"
    },
    "jupyter": {
     "outputs_hidden": false
    },
    "papermill": {
     "duration": 23.315541,
     "end_time": "2023-05-16T13:01:44.915721",
     "exception": false,
     "start_time": "2023-05-16T13:01:21.600180",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "   ride_id          rideable_type        started_at                 \n",
       " Length:4721418     Length:4721418     Min.   :2022-01-01 00:00:05  \n",
       " Class :character   Class :character   1st Qu.:2022-05-28 16:19:46  \n",
       " Mode  :character   Mode  :character   Median :2022-07-24 18:45:31  \n",
       "                                       Mean   :2022-07-21 18:26:13  \n",
       "                                       3rd Qu.:2022-09-19 10:06:50  \n",
       "                                       Max.   :2022-12-31 23:59:26  \n",
       "    ended_at                   start_station_name start_station_id  \n",
       " Min.   :2022-01-01 00:01:48   Length:4721418     Length:4721418    \n",
       " 1st Qu.:2022-05-28 16:31:49   Class :character   Class :character  \n",
       " Median :2022-07-24 18:55:38   Mode  :character   Mode  :character  \n",
       " Mean   :2022-07-21 18:35:55                                        \n",
       " 3rd Qu.:2022-09-19 10:16:27                                        \n",
       " Max.   :2023-01-01 00:16:53                                        \n",
       " end_station_name   end_station_id       start_lat       start_lng     \n",
       " Length:4721418     Length:4721418     Min.   :41.64   Min.   :-87.84  \n",
       " Class :character   Class :character   1st Qu.:41.88   1st Qu.:-87.66  \n",
       " Mode  :character   Mode  :character   Median :41.90   Median :-87.65  \n",
       "                                       Mean   :41.90   Mean   :-87.65  \n",
       "                                       3rd Qu.:41.93   3rd Qu.:-87.63  \n",
       "                                       Max.   :45.64   Max.   :-73.80  \n",
       "    end_lat         end_lng       member_casual           date           \n",
       " Min.   : 0.00   Min.   :-87.87   Length:4721418     Min.   :2022-01-01  \n",
       " 1st Qu.:41.88   1st Qu.:-87.66   Class :character   1st Qu.:2022-05-28  \n",
       " Median :41.90   Median :-87.65   Mode  :character   Median :2022-07-24  \n",
       " Mean   :41.90   Mean   :-87.65                      Mean   :2022-07-21  \n",
       " 3rd Qu.:41.93   3rd Qu.:-87.63                      3rd Qu.:2022-09-19  \n",
       " Max.   :42.12   Max.   :  0.00                      Max.   :2022-12-31  \n",
       "    month               day                year           day_of_week       \n",
       " Length:4721418     Length:4721418     Length:4721418     Length:4721418    \n",
       " Class :character   Class :character   Class :character   Class :character  \n",
       " Mode  :character   Mode  :character   Mode  :character   Mode  :character  \n",
       "                                                                            \n",
       "                                                                            \n",
       "                                                                            \n",
       " ride_duration    ride_distance    \n",
       " Min.   :   1.0   Min.   :      0  \n",
       " 1st Qu.: 311.0   1st Qu.:    860  \n",
       " Median : 517.0   Median :   1454  \n",
       " Mean   : 581.8   Mean   :   1793  \n",
       " 3rd Qu.: 810.0   3rd Qu.:   2406  \n",
       " Max.   :1440.0   Max.   :9817319  "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "#Find out the distance for each ride:\n",
    "all_trips_v3$ride_distance <- distGeo(matrix(c(all_trips_v3$start_lng, all_trips_v3$start_lat), ncol = 2), matrix(c(all_trips_v3$end_lng, all_trips_v3$end_lat), ncol = 2))\n",
    "summary(all_trips_v3)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 22,
   "id": "bb7675b8",
   "metadata": {
    "_cell_guid": "87d8662b-8c91-4992-8524-0c21854cc26f",
    "_uuid": "1d35054c-22b7-4a94-9261-32bf8153711a",
    "collapsed": false,
    "execution": {
     "iopub.execute_input": "2023-05-16T13:01:44.989901Z",
     "iopub.status.busy": "2023-05-16T13:01:44.988018Z",
     "iopub.status.idle": "2023-05-16T13:02:01.827060Z",
     "shell.execute_reply": "2023-05-16T13:02:01.824773Z"
    },
    "jupyter": {
     "outputs_hidden": false
    },
    "papermill": {
     "duration": 16.882381,
     "end_time": "2023-05-16T13:02:01.834259",
     "exception": false,
     "start_time": "2023-05-16T13:01:44.951878",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "   ride_id          rideable_type        started_at                 \n",
       " Length:4500832     Length:4500832     Min.   :2022-01-01 00:01:00  \n",
       " Class :character   Class :character   1st Qu.:2022-05-28 23:40:15  \n",
       " Mode  :character   Mode  :character   Median :2022-07-25 11:18:01  \n",
       "                                       Mean   :2022-07-22 03:17:01  \n",
       "                                       3rd Qu.:2022-09-19 17:22:02  \n",
       "                                       Max.   :2022-12-31 23:59:26  \n",
       "    ended_at                   start_station_name start_station_id  \n",
       " Min.   :2022-01-01 00:04:02   Length:4500832     Length:4500832    \n",
       " 1st Qu.:2022-05-28 23:52:14   Class :character   Class :character  \n",
       " Median :2022-07-25 11:28:05   Mode  :character   Mode  :character  \n",
       " Mean   :2022-07-22 03:26:56                                        \n",
       " 3rd Qu.:2022-09-19 17:31:59                                        \n",
       " Max.   :2023-01-01 00:16:50                                        \n",
       " end_station_name   end_station_id       start_lat       start_lng     \n",
       " Length:4500832     Length:4500832     Min.   :41.64   Min.   :-87.84  \n",
       " Class :character   Class :character   1st Qu.:41.88   1st Qu.:-87.66  \n",
       " Mode  :character   Mode  :character   Median :41.90   Median :-87.65  \n",
       "                                       Mean   :41.90   Mean   :-87.65  \n",
       "                                       3rd Qu.:41.93   3rd Qu.:-87.63  \n",
       "                                       Max.   :45.64   Max.   :-73.80  \n",
       "    end_lat         end_lng       member_casual           date           \n",
       " Min.   : 0.00   Min.   :-87.87   Length:4500832     Min.   :2022-01-01  \n",
       " 1st Qu.:41.88   1st Qu.:-87.66   Class :character   1st Qu.:2022-05-28  \n",
       " Median :41.90   Median :-87.65   Mode  :character   Median :2022-07-25  \n",
       " Mean   :41.90   Mean   :-87.65                      Mean   :2022-07-21  \n",
       " 3rd Qu.:41.93   3rd Qu.:-87.63                      3rd Qu.:2022-09-19  \n",
       " Max.   :42.12   Max.   :  0.00                      Max.   :2022-12-31  \n",
       "    month               day                year           day_of_week       \n",
       " Length:4500832     Length:4500832     Length:4500832     Length:4500832    \n",
       " Class :character   Class :character   Class :character   Class :character  \n",
       " Mode  :character   Mode  :character   Mode  :character   Mode  :character  \n",
       "                                                                            \n",
       "                                                                            \n",
       "                                                                            \n",
       " ride_duration    ride_distance    \n",
       " Min.   :   1.0   Min.   :      0  \n",
       " 1st Qu.: 327.0   1st Qu.:    952  \n",
       " Median : 529.0   Median :   1524  \n",
       " Mean   : 594.9   Mean   :   1880  \n",
       " 3rd Qu.: 818.0   3rd Qu.:   2471  \n",
       " Max.   :1440.0   Max.   :9817319  "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 4500832 × 20</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>ride_id</th><th scope=col>rideable_type</th><th scope=col>started_at</th><th scope=col>ended_at</th><th scope=col>start_station_name</th><th scope=col>start_station_id</th><th scope=col>end_station_name</th><th scope=col>end_station_id</th><th scope=col>start_lat</th><th scope=col>start_lng</th><th scope=col>end_lat</th><th scope=col>end_lng</th><th scope=col>member_casual</th><th scope=col>date</th><th scope=col>month</th><th scope=col>day</th><th scope=col>year</th><th scope=col>day_of_week</th><th scope=col>ride_duration</th><th scope=col>ride_distance</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dttm&gt;</th><th scope=col>&lt;dttm&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;date&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>1</th><td>C2F7DD78E82EC875</td><td>electric_bike</td><td>2022-01-13 11:59:47</td><td>2022-01-13 12:02:44</td><td><span style=white-space:pre-wrap>Glenwood Ave &amp; Touhy Ave     </span></td><td><span style=white-space:pre-wrap>525         </span></td><td><span style=white-space:pre-wrap>Clark St &amp; Touhy Ave               </span></td><td><span style=white-space:pre-wrap>RP-007      </span></td><td>42.01280</td><td>-87.66591</td><td>42.01256</td><td>-87.67437</td><td>casual</td><td>2022-01-13</td><td>01</td><td>13</td><td>2022</td><td>Thursday </td><td> 177</td><td> 701.3791</td></tr>\n",
       "\t<tr><th scope=row>2</th><td>A6CF8980A652D272</td><td>electric_bike</td><td>2022-01-10 08:41:56</td><td>2022-01-10 08:46:17</td><td><span style=white-space:pre-wrap>Glenwood Ave &amp; Touhy Ave     </span></td><td><span style=white-space:pre-wrap>525         </span></td><td><span style=white-space:pre-wrap>Clark St &amp; Touhy Ave               </span></td><td><span style=white-space:pre-wrap>RP-007      </span></td><td>42.01276</td><td>-87.66597</td><td>42.01256</td><td>-87.67437</td><td>casual</td><td>2022-01-10</td><td>01</td><td>10</td><td>2022</td><td><span style=white-space:pre-wrap>Monday   </span></td><td> 261</td><td> 696.1414</td></tr>\n",
       "\t<tr><th scope=row>3</th><td>BD0F91DFF741C66D</td><td>classic_bike </td><td>2022-01-25 04:53:40</td><td>2022-01-25 04:58:01</td><td>Sheffield Ave &amp; Fullerton Ave</td><td>TA1306000016</td><td><span style=white-space:pre-wrap>Greenview Ave &amp; Fullerton Ave      </span></td><td>TA1307000001</td><td>41.92560</td><td>-87.65371</td><td>41.92533</td><td>-87.66580</td><td>member</td><td>2022-01-25</td><td>01</td><td>25</td><td>2022</td><td><span style=white-space:pre-wrap>Tuesday  </span></td><td> 261</td><td>1003.4507</td></tr>\n",
       "\t<tr><th scope=row>4</th><td>CBB80ED419105406</td><td>classic_bike </td><td>2022-01-04 00:18:04</td><td>2022-01-04 00:33:00</td><td><span style=white-space:pre-wrap>Clark St &amp; Bryn Mawr Ave     </span></td><td>KA1504000151</td><td><span style=white-space:pre-wrap>Paulina St &amp; Montrose Ave          </span></td><td>TA1309000021</td><td>41.98359</td><td>-87.66915</td><td>41.96151</td><td>-87.67139</td><td>casual</td><td>2022-01-04</td><td>01</td><td>04</td><td>2022</td><td><span style=white-space:pre-wrap>Tuesday  </span></td><td> 896</td><td>2460.1250</td></tr>\n",
       "\t<tr><th scope=row>5</th><td>DDC963BFDDA51EEA</td><td>classic_bike </td><td>2022-01-20 01:31:10</td><td>2022-01-20 01:37:12</td><td><span style=white-space:pre-wrap>Michigan Ave &amp; Jackson Blvd  </span></td><td>TA1309000002</td><td><span style=white-space:pre-wrap>State St &amp; Randolph St             </span></td><td>TA1305000029</td><td>41.87785</td><td>-87.62408</td><td>41.88462</td><td>-87.62783</td><td>member</td><td>2022-01-20</td><td>01</td><td>20</td><td>2022</td><td>Thursday </td><td> 362</td><td> 814.0730</td></tr>\n",
       "\t<tr><th scope=row>6</th><td>A39C6F6CC0586C0B</td><td>classic_bike </td><td>2022-01-11 18:48:09</td><td>2022-01-11 18:51:31</td><td><span style=white-space:pre-wrap>Wood St &amp; Chicago Ave        </span></td><td><span style=white-space:pre-wrap>637         </span></td><td><span style=white-space:pre-wrap>Honore St &amp; Division St            </span></td><td>TA1305000034</td><td>41.89563</td><td>-87.67207</td><td>41.90312</td><td>-87.67394</td><td>member</td><td>2022-01-11</td><td>01</td><td>11</td><td>2022</td><td><span style=white-space:pre-wrap>Tuesday  </span></td><td> 202</td><td> 845.6658</td></tr>\n",
       "\t<tr><th scope=row>7</th><td>BDC4AB637EDF981B</td><td>classic_bike </td><td>2022-01-30 18:32:52</td><td>2022-01-30 18:49:26</td><td><span style=white-space:pre-wrap>Oakley Ave &amp; Irving Park Rd  </span></td><td>KA1504000158</td><td><span style=white-space:pre-wrap>Broadway &amp; Sheridan Rd             </span></td><td><span style=white-space:pre-wrap>13323       </span></td><td>41.95434</td><td>-87.68608</td><td>41.95283</td><td>-87.64999</td><td>member</td><td>2022-01-30</td><td>01</td><td>30</td><td>2022</td><td><span style=white-space:pre-wrap>Sunday   </span></td><td> 994</td><td>2996.6598</td></tr>\n",
       "\t<tr><th scope=row>8</th><td>81751A3186E59A6B</td><td>classic_bike </td><td>2022-01-22 12:20:02</td><td>2022-01-22 12:32:06</td><td>Sheffield Ave &amp; Fullerton Ave</td><td>TA1306000016</td><td><span style=white-space:pre-wrap>Damen Ave &amp; Clybourn Ave           </span></td><td><span style=white-space:pre-wrap>13271       </span></td><td>41.92560</td><td>-87.65371</td><td>41.93193</td><td>-87.67786</td><td>member</td><td>2022-01-22</td><td>01</td><td>22</td><td>2022</td><td>Saturday </td><td> 724</td><td>2122.6929</td></tr>\n",
       "\t<tr><th scope=row>9</th><td>72DC25B2DD467EEF</td><td>classic_bike </td><td>2022-01-28 15:27:53</td><td>2022-01-28 15:35:16</td><td><span style=white-space:pre-wrap>LaSalle St &amp; Jackson Blvd    </span></td><td>TA1309000004</td><td><span style=white-space:pre-wrap>Clinton St &amp; Washington Blvd       </span></td><td><span style=white-space:pre-wrap>WL-012      </span></td><td>41.87817</td><td>-87.63193</td><td>41.88338</td><td>-87.64117</td><td>member</td><td>2022-01-28</td><td>01</td><td>28</td><td>2022</td><td><span style=white-space:pre-wrap>Friday   </span></td><td> 443</td><td> 961.1204</td></tr>\n",
       "\t<tr><th scope=row>10</th><td>F20394FE09C63DB2</td><td>classic_bike </td><td>2022-01-11 18:27:59</td><td>2022-01-11 18:34:20</td><td><span style=white-space:pre-wrap>LaSalle St &amp; Jackson Blvd    </span></td><td>TA1309000004</td><td><span style=white-space:pre-wrap>Clinton St &amp; Washington Blvd       </span></td><td><span style=white-space:pre-wrap>WL-012      </span></td><td>41.87817</td><td>-87.63193</td><td>41.88338</td><td>-87.64117</td><td>member</td><td>2022-01-11</td><td>01</td><td>11</td><td>2022</td><td><span style=white-space:pre-wrap>Tuesday  </span></td><td> 381</td><td> 961.1204</td></tr>\n",
       "\t<tr><th scope=row>11</th><td>006D3F363CF9600B</td><td>electric_bike</td><td>2022-01-29 12:30:43</td><td>2022-01-29 12:43:04</td><td><span style=white-space:pre-wrap>Clarendon Ave &amp; Leland Ave   </span></td><td>TA1307000119</td><td><span style=white-space:pre-wrap>Broadway &amp; Granville Ave           </span></td><td><span style=white-space:pre-wrap>15571       </span></td><td>41.96796</td><td>-87.65003</td><td>41.99478</td><td>-87.66028</td><td>member</td><td>2022-01-29</td><td>01</td><td>29</td><td>2022</td><td>Saturday </td><td> 741</td><td>3097.6140</td></tr>\n",
       "\t<tr><th scope=row>12</th><td>FB258EEBE89F4E17</td><td>classic_bike </td><td>2022-01-02 17:56:18</td><td>2022-01-02 18:05:38</td><td>Sheffield Ave &amp; Fullerton Ave</td><td>TA1306000016</td><td><span style=white-space:pre-wrap>Stockton Dr &amp; Wrightwood Ave       </span></td><td><span style=white-space:pre-wrap>13276       </span></td><td>41.92560</td><td>-87.65371</td><td>41.93132</td><td>-87.63874</td><td>member</td><td>2022-01-02</td><td>01</td><td>02</td><td>2022</td><td><span style=white-space:pre-wrap>Sunday   </span></td><td> 560</td><td>1394.3798</td></tr>\n",
       "\t<tr><th scope=row>13</th><td>2EF51270B08DEE03</td><td>classic_bike </td><td>2022-01-20 22:03:06</td><td>2022-01-20 22:09:59</td><td><span style=white-space:pre-wrap>Rush St &amp; Superior St        </span></td><td><span style=white-space:pre-wrap>15530       </span></td><td><span style=white-space:pre-wrap>Larrabee St &amp; Kingsbury St         </span></td><td>TA1306000009</td><td>41.89576</td><td>-87.62591</td><td>41.89776</td><td>-87.64288</td><td>member</td><td>2022-01-20</td><td>01</td><td>20</td><td>2022</td><td>Thursday </td><td> 413</td><td>1426.1371</td></tr>\n",
       "\t<tr><th scope=row>14</th><td>E119D4E6BF686601</td><td>electric_bike</td><td>2022-01-08 05:36:40</td><td>2022-01-08 05:46:40</td><td><span style=white-space:pre-wrap>Michigan Ave &amp; Jackson Blvd  </span></td><td>TA1309000002</td><td><span style=white-space:pre-wrap>St. Clair St &amp; Erie St             </span></td><td><span style=white-space:pre-wrap>13016       </span></td><td>41.87785</td><td>-87.62406</td><td>41.89435</td><td>-87.62280</td><td>casual</td><td>2022-01-08</td><td>01</td><td>08</td><td>2022</td><td>Saturday </td><td> 600</td><td>1835.1775</td></tr>\n",
       "\t<tr><th scope=row>16</th><td>0AA241497B970400</td><td>classic_bike </td><td>2022-01-12 14:09:13</td><td>2022-01-12 14:10:53</td><td><span style=white-space:pre-wrap>LaSalle St &amp; Jackson Blvd    </span></td><td>TA1309000004</td><td><span style=white-space:pre-wrap>Clark St &amp; Ida B Wells Dr          </span></td><td>TA1305000009</td><td>41.87817</td><td>-87.63193</td><td>41.87593</td><td>-87.63058</td><td>member</td><td>2022-01-12</td><td>01</td><td>12</td><td>2022</td><td>Wednesday</td><td> 100</td><td> 272.0082</td></tr>\n",
       "\t<tr><th scope=row>17</th><td>F5E6D97D85BE8039</td><td>classic_bike </td><td>2022-01-31 12:07:45</td><td>2022-01-31 12:12:48</td><td><span style=white-space:pre-wrap>Michigan Ave &amp; Jackson Blvd  </span></td><td>TA1309000002</td><td><span style=white-space:pre-wrap>Indiana Ave &amp; Roosevelt Rd         </span></td><td><span style=white-space:pre-wrap>SL-005      </span></td><td>41.87785</td><td>-87.62408</td><td>41.86789</td><td>-87.62304</td><td>member</td><td>2022-01-31</td><td>01</td><td>31</td><td>2022</td><td><span style=white-space:pre-wrap>Monday   </span></td><td> 303</td><td>1109.8442</td></tr>\n",
       "\t<tr><th scope=row>18</th><td>78168928DF06A497</td><td>classic_bike </td><td>2022-01-28 17:21:59</td><td>2022-01-28 17:26:54</td><td><span style=white-space:pre-wrap>Michigan Ave &amp; Jackson Blvd  </span></td><td>TA1309000002</td><td><span style=white-space:pre-wrap>Indiana Ave &amp; Roosevelt Rd         </span></td><td><span style=white-space:pre-wrap>SL-005      </span></td><td>41.87785</td><td>-87.62408</td><td>41.86789</td><td>-87.62304</td><td>member</td><td>2022-01-28</td><td>01</td><td>28</td><td>2022</td><td><span style=white-space:pre-wrap>Friday   </span></td><td> 295</td><td>1109.8442</td></tr>\n",
       "\t<tr><th scope=row>19</th><td>15C176B55C2BC059</td><td>classic_bike </td><td>2022-01-19 21:00:40</td><td>2022-01-19 21:09:56</td><td><span style=white-space:pre-wrap>Clark St &amp; Bryn Mawr Ave     </span></td><td>KA1504000151</td><td><span style=white-space:pre-wrap>Clark St &amp; Schreiber Ave           </span></td><td>KA1504000156</td><td>41.98359</td><td>-87.66915</td><td>41.99925</td><td>-87.67138</td><td>member</td><td>2022-01-19</td><td>01</td><td>19</td><td>2022</td><td>Wednesday</td><td> 556</td><td>1749.0041</td></tr>\n",
       "\t<tr><th scope=row>21</th><td>9D4AAF43A011FC59</td><td>electric_bike</td><td>2022-01-18 08:03:16</td><td>2022-01-18 08:08:00</td><td><span style=white-space:pre-wrap>California Ave &amp; Altgeld St  </span></td><td><span style=white-space:pre-wrap>15646       </span></td><td><span style=white-space:pre-wrap>Milwaukee Ave &amp; Rockwell St        </span></td><td><span style=white-space:pre-wrap>13242       </span></td><td>41.92665</td><td>-87.69766</td><td>41.92020</td><td>-87.69266</td><td>casual</td><td>2022-01-18</td><td>01</td><td>18</td><td>2022</td><td><span style=white-space:pre-wrap>Tuesday  </span></td><td> 284</td><td> 828.0618</td></tr>\n",
       "\t<tr><th scope=row>22</th><td>A209F8E0E84D49B4</td><td>classic_bike </td><td>2022-01-25 14:46:24</td><td>2022-01-25 15:00:27</td><td>Sheffield Ave &amp; Fullerton Ave</td><td>TA1306000016</td><td><span style=white-space:pre-wrap>Halsted St &amp; Roscoe St             </span></td><td>TA1309000025</td><td>41.92560</td><td>-87.65371</td><td>41.94367</td><td>-87.64895</td><td>member</td><td>2022-01-25</td><td>01</td><td>25</td><td>2022</td><td><span style=white-space:pre-wrap>Tuesday  </span></td><td> 843</td><td>2045.2906</td></tr>\n",
       "\t<tr><th scope=row>23</th><td>6D6B462903DCB23F</td><td>electric_bike</td><td>2022-01-10 06:44:21</td><td>2022-01-10 06:51:28</td><td><span style=white-space:pre-wrap>Racine Ave &amp; 15th St         </span></td><td><span style=white-space:pre-wrap>13304       </span></td><td><span style=white-space:pre-wrap>Wolcott Ave &amp; Polk St              </span></td><td>TA1309000064</td><td>41.86121</td><td>-87.65660</td><td>41.87126</td><td>-87.67369</td><td>member</td><td>2022-01-10</td><td>01</td><td>10</td><td>2022</td><td><span style=white-space:pre-wrap>Monday   </span></td><td> 427</td><td>1805.5399</td></tr>\n",
       "\t<tr><th scope=row>24</th><td>DC809CD3B3F3BFC9</td><td>classic_bike </td><td>2022-01-22 15:14:32</td><td>2022-01-22 15:25:21</td><td><span style=white-space:pre-wrap>Indiana Ave &amp; 31st St        </span></td><td>TA1308000036</td><td><span style=white-space:pre-wrap>Emerald Ave &amp; 31st St              </span></td><td>TA1309000055</td><td>41.83884</td><td>-87.62186</td><td>41.83820</td><td>-87.64514</td><td>member</td><td>2022-01-22</td><td>01</td><td>22</td><td>2022</td><td>Saturday </td><td> 649</td><td>1935.4550</td></tr>\n",
       "\t<tr><th scope=row>25</th><td>1C2362DAD4090D8A</td><td>electric_bike</td><td>2022-01-03 00:12:42</td><td>2022-01-03 00:17:50</td><td><span style=white-space:pre-wrap>Indiana Ave &amp; 31st St        </span></td><td>TA1308000036</td><td><span style=white-space:pre-wrap>Indiana Ave &amp; 40th St              </span></td><td><span style=white-space:pre-wrap>13083       </span></td><td>41.83882</td><td>-87.62183</td><td>41.82168</td><td>-87.62160</td><td>casual</td><td>2022-01-03</td><td>01</td><td>03</td><td>2022</td><td><span style=white-space:pre-wrap>Monday   </span></td><td> 308</td><td>1903.5592</td></tr>\n",
       "\t<tr><th scope=row>26</th><td>AB4032C2B151D137</td><td>classic_bike </td><td>2022-01-31 18:58:30</td><td>2022-01-31 19:05:17</td><td><span style=white-space:pre-wrap>Lake Park Ave &amp; 56th St      </span></td><td>TA1309000063</td><td><span style=white-space:pre-wrap>Shore Dr &amp; 55th St                 </span></td><td>TA1308000009</td><td>41.79324</td><td>-87.58778</td><td>41.79521</td><td>-87.58071</td><td>member</td><td>2022-01-31</td><td>01</td><td>31</td><td>2022</td><td><span style=white-space:pre-wrap>Monday   </span></td><td> 407</td><td> 626.8189</td></tr>\n",
       "\t<tr><th scope=row>27</th><td>E6B6D4531ADC9F52</td><td>classic_bike </td><td>2022-01-15 17:41:15</td><td>2022-01-15 17:48:54</td><td>Sheffield Ave &amp; Fullerton Ave</td><td>TA1306000016</td><td><span style=white-space:pre-wrap>Ashland Ave &amp; Wrightwood Ave       </span></td><td><span style=white-space:pre-wrap>13296       </span></td><td>41.92560</td><td>-87.65371</td><td>41.92883</td><td>-87.66851</td><td>member</td><td>2022-01-15</td><td>01</td><td>15</td><td>2022</td><td>Saturday </td><td> 459</td><td>1278.7961</td></tr>\n",
       "\t<tr><th scope=row>28</th><td>81B423963BA2C10C</td><td>classic_bike </td><td>2022-01-24 10:15:53</td><td>2022-01-24 10:39:53</td><td>Lincoln Park Conservatory    </td><td>LP-         </td><td>Daley Center Plaza                 </td><td>TA1306000010</td><td>41.92393</td><td>-87.63582</td><td>41.88424</td><td>-87.62963</td><td>member</td><td>2022-01-24</td><td>01</td><td>24</td><td>2022</td><td>Monday   </td><td>1440</td><td>4438.2834</td></tr>\n",
       "\t<tr><th scope=row>29</th><td>EC80F318604595AE</td><td>electric_bike</td><td>2022-01-27 17:54:41</td><td>2022-01-27 18:05:24</td><td><span style=white-space:pre-wrap>Sheridan Rd &amp; Montrose Ave   </span></td><td>TA1307000107</td><td><span style=white-space:pre-wrap>Southport Ave &amp; Waveland Ave       </span></td><td><span style=white-space:pre-wrap>13235       </span></td><td>41.96165</td><td>-87.65463</td><td>41.94815</td><td>-87.66394</td><td>casual</td><td>2022-01-27</td><td>01</td><td>27</td><td>2022</td><td>Thursday </td><td> 643</td><td>1686.1050</td></tr>\n",
       "\t<tr><th scope=row>30</th><td>59E50C91451F529C</td><td>classic_bike </td><td>2022-01-27 11:58:14</td><td>2022-01-27 12:07:43</td><td><span style=white-space:pre-wrap>State St &amp; Harrison St       </span></td><td><span style=white-space:pre-wrap>SL-007      </span></td><td><span style=white-space:pre-wrap>Clark St &amp; Lake St                 </span></td><td>KA1503000012</td><td>41.87405</td><td>-87.62772</td><td>41.88602</td><td>-87.63088</td><td>member</td><td>2022-01-27</td><td>01</td><td>27</td><td>2022</td><td>Thursday </td><td> 569</td><td>1354.9110</td></tr>\n",
       "\t<tr><th scope=row>31</th><td>2A23ED3FECB72E5B</td><td>electric_bike</td><td>2022-01-15 12:52:14</td><td>2022-01-15 12:59:42</td><td>Halsted St &amp; North Branch St </td><td>KA1504000117</td><td><span style=white-space:pre-wrap>Clark St &amp; Chicago Ave             </span></td><td><span style=white-space:pre-wrap>13303       </span></td><td>41.89933</td><td>-87.64857</td><td>41.89675</td><td>-87.63089</td><td>member</td><td>2022-01-15</td><td>01</td><td>15</td><td>2022</td><td>Saturday </td><td> 448</td><td>1494.6050</td></tr>\n",
       "\t<tr><th scope=row>32</th><td>88543D9BC6760955</td><td>classic_bike </td><td>2022-01-14 10:14:38</td><td>2022-01-14 10:27:07</td><td><span style=white-space:pre-wrap>Michigan Ave &amp; Jackson Blvd  </span></td><td>TA1309000002</td><td>Orleans St &amp; Merchandise Mart Plaza</td><td>TA1305000022</td><td>41.87785</td><td>-87.62408</td><td>41.88824</td><td>-87.63639</td><td>casual</td><td>2022-01-14</td><td>01</td><td>14</td><td>2022</td><td><span style=white-space:pre-wrap>Friday   </span></td><td> 749</td><td>1541.6029</td></tr>\n",
       "\t<tr><th scope=row>⋮</th><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td></tr>\n",
       "\t<tr><th scope=row>4721389</th><td>870BB957FF58A148</td><td>classic_bike </td><td>2022-12-01 16:10:23</td><td>2022-12-01 16:13:04</td><td><span style=white-space:pre-wrap>Larrabee St &amp; Armitage Ave   </span></td><td>TA1309000006</td><td>Larrabee St &amp; Menomonee St</td><td>TA1306000007</td><td>41.91808</td><td>-87.64375</td><td>41.91468</td><td>-87.64332</td><td>member</td><td>2022-12-01</td><td>12</td><td>01</td><td>2022</td><td>Thursday </td><td> 161</td><td> 379.7593</td></tr>\n",
       "\t<tr><th scope=row>4721390</th><td>D0EE0137BE1CFE2F</td><td>electric_bike</td><td>2022-12-31 11:51:58</td><td>2022-12-31 12:01:21</td><td><span style=white-space:pre-wrap>Dearborn St &amp; Monroe St      </span></td><td>TA1305000006</td><td><span style=white-space:pre-wrap>Green St &amp; Madison St     </span></td><td>TA1307000120</td><td>41.88055</td><td>-87.62944</td><td>41.88186</td><td>-87.64926</td><td>casual</td><td>2022-12-31</td><td>12</td><td>31</td><td>2022</td><td>Saturday </td><td> 563</td><td>1651.5036</td></tr>\n",
       "\t<tr><th scope=row>4721391</th><td>8D7BAB2233A72E76</td><td>electric_bike</td><td>2022-12-04 09:02:16</td><td>2022-12-04 09:14:19</td><td><span style=white-space:pre-wrap>Morgan St &amp; 18th St          </span></td><td><span style=white-space:pre-wrap>13163       </span></td><td><span style=white-space:pre-wrap>Green St &amp; Madison St     </span></td><td>TA1307000120</td><td>41.85806</td><td>-87.65108</td><td>41.88186</td><td>-87.64926</td><td>casual</td><td>2022-12-04</td><td>12</td><td>04</td><td>2022</td><td><span style=white-space:pre-wrap>Sunday   </span></td><td> 723</td><td>2648.2055</td></tr>\n",
       "\t<tr><th scope=row>4721392</th><td>157AACAF04B4AC1A</td><td>electric_bike</td><td>2022-12-05 17:51:38</td><td>2022-12-05 17:58:40</td><td><span style=white-space:pre-wrap>Dearborn St &amp; Monroe St      </span></td><td>TA1305000006</td><td><span style=white-space:pre-wrap>Green St &amp; Madison St     </span></td><td>TA1307000120</td><td>41.88073</td><td>-87.62964</td><td>41.88186</td><td>-87.64926</td><td>member</td><td>2022-12-05</td><td>12</td><td>05</td><td>2022</td><td><span style=white-space:pre-wrap>Monday   </span></td><td> 422</td><td>1633.2725</td></tr>\n",
       "\t<tr><th scope=row>4721393</th><td>13618E9C77157B38</td><td>classic_bike </td><td>2022-12-28 16:50:14</td><td>2022-12-28 16:56:51</td><td><span style=white-space:pre-wrap>Dearborn St &amp; Monroe St      </span></td><td>TA1305000006</td><td><span style=white-space:pre-wrap>Green St &amp; Madison St     </span></td><td>TA1307000120</td><td>41.88132</td><td>-87.62952</td><td>41.88186</td><td>-87.64926</td><td>member</td><td>2022-12-28</td><td>12</td><td>28</td><td>2022</td><td>Wednesday</td><td> 397</td><td>1639.8319</td></tr>\n",
       "\t<tr><th scope=row>4721394</th><td>740FE55B98D3D886</td><td>classic_bike </td><td>2022-12-24 00:10:03</td><td>2022-12-24 00:28:10</td><td><span style=white-space:pre-wrap>Wood St &amp; Milwaukee Ave      </span></td><td><span style=white-space:pre-wrap>13221       </span></td><td><span style=white-space:pre-wrap>Green St &amp; Madison St     </span></td><td>TA1307000120</td><td>41.90765</td><td>-87.67255</td><td>41.88186</td><td>-87.64926</td><td>member</td><td>2022-12-24</td><td>12</td><td>24</td><td>2022</td><td>Saturday </td><td>1087</td><td>3456.0338</td></tr>\n",
       "\t<tr><th scope=row>4721395</th><td>40711C802C946CC5</td><td>classic_bike </td><td>2022-12-15 12:57:49</td><td>2022-12-15 13:13:32</td><td>Michigan Ave &amp; Washington St </td><td><span style=white-space:pre-wrap>13001       </span></td><td><span style=white-space:pre-wrap>Peoria St &amp; Jackson Blvd  </span></td><td><span style=white-space:pre-wrap>13158       </span></td><td>41.88398</td><td>-87.62468</td><td>41.87764</td><td>-87.64962</td><td>member</td><td>2022-12-15</td><td>12</td><td>15</td><td>2022</td><td>Thursday </td><td> 943</td><td>2186.2440</td></tr>\n",
       "\t<tr><th scope=row>4721396</th><td>B621CD5AF243328B</td><td>classic_bike </td><td>2022-12-31 16:09:36</td><td>2022-12-31 16:15:31</td><td><span style=white-space:pre-wrap>Canal St &amp; Taylor St         </span></td><td><span style=white-space:pre-wrap>15550       </span></td><td><span style=white-space:pre-wrap>Peoria St &amp; Jackson Blvd  </span></td><td><span style=white-space:pre-wrap>13158       </span></td><td>41.87026</td><td>-87.63947</td><td>41.87764</td><td>-87.64962</td><td>member</td><td>2022-12-31</td><td>12</td><td>31</td><td>2022</td><td>Saturday </td><td> 355</td><td>1175.5187</td></tr>\n",
       "\t<tr><th scope=row>4721397</th><td>3B564ED03FE887DC</td><td>classic_bike </td><td>2022-12-30 22:06:29</td><td>2022-12-30 22:13:51</td><td><span style=white-space:pre-wrap>Canal St &amp; Taylor St         </span></td><td><span style=white-space:pre-wrap>15550       </span></td><td><span style=white-space:pre-wrap>Peoria St &amp; Jackson Blvd  </span></td><td><span style=white-space:pre-wrap>13158       </span></td><td>41.87026</td><td>-87.63947</td><td>41.87764</td><td>-87.64962</td><td>member</td><td>2022-12-30</td><td>12</td><td>30</td><td>2022</td><td><span style=white-space:pre-wrap>Friday   </span></td><td> 442</td><td>1175.5187</td></tr>\n",
       "\t<tr><th scope=row>4721398</th><td>69FBC651C6C9C54B</td><td>classic_bike </td><td>2022-12-11 18:25:13</td><td>2022-12-11 18:28:32</td><td><span style=white-space:pre-wrap>Canal St &amp; Taylor St         </span></td><td><span style=white-space:pre-wrap>15550       </span></td><td><span style=white-space:pre-wrap>Clinton St &amp; Tilden St    </span></td><td><span style=white-space:pre-wrap>13037       </span></td><td>41.87026</td><td>-87.63947</td><td>41.87588</td><td>-87.64079</td><td>member</td><td>2022-12-11</td><td>12</td><td>11</td><td>2022</td><td><span style=white-space:pre-wrap>Sunday   </span></td><td> 199</td><td> 634.6528</td></tr>\n",
       "\t<tr><th scope=row>4721399</th><td>10EC1B8665061739</td><td>classic_bike </td><td>2022-12-15 09:41:06</td><td>2022-12-15 09:44:57</td><td><span style=white-space:pre-wrap>Canal St &amp; Taylor St         </span></td><td><span style=white-space:pre-wrap>15550       </span></td><td><span style=white-space:pre-wrap>Clinton St &amp; Tilden St    </span></td><td><span style=white-space:pre-wrap>13037       </span></td><td>41.87026</td><td>-87.63947</td><td>41.87588</td><td>-87.64079</td><td>member</td><td>2022-12-15</td><td>12</td><td>15</td><td>2022</td><td>Thursday </td><td> 231</td><td> 634.6528</td></tr>\n",
       "\t<tr><th scope=row>4721400</th><td>4A6809171F7BBFF6</td><td>electric_bike</td><td>2022-12-19 20:30:11</td><td>2022-12-19 20:40:31</td><td><span style=white-space:pre-wrap>Wood St &amp; Milwaukee Ave      </span></td><td><span style=white-space:pre-wrap>13221       </span></td><td><span style=white-space:pre-wrap>Peoria St &amp; Jackson Blvd  </span></td><td><span style=white-space:pre-wrap>13158       </span></td><td>41.90764</td><td>-87.67252</td><td>41.87764</td><td>-87.64962</td><td>member</td><td>2022-12-19</td><td>12</td><td>19</td><td>2022</td><td><span style=white-space:pre-wrap>Monday   </span></td><td> 620</td><td>3836.0260</td></tr>\n",
       "\t<tr><th scope=row>4721401</th><td>CA31CD8A7A313F31</td><td>classic_bike </td><td>2022-12-28 14:51:01</td><td>2022-12-28 14:54:39</td><td><span style=white-space:pre-wrap>Canal St &amp; Taylor St         </span></td><td><span style=white-space:pre-wrap>15550       </span></td><td><span style=white-space:pre-wrap>Clinton St &amp; Tilden St    </span></td><td><span style=white-space:pre-wrap>13037       </span></td><td>41.87026</td><td>-87.63947</td><td>41.87588</td><td>-87.64079</td><td>member</td><td>2022-12-28</td><td>12</td><td>28</td><td>2022</td><td>Wednesday</td><td> 218</td><td> 634.6528</td></tr>\n",
       "\t<tr><th scope=row>4721402</th><td>97230033D8C1B22F</td><td>classic_bike </td><td>2022-12-15 16:44:58</td><td>2022-12-15 16:47:46</td><td><span style=white-space:pre-wrap>Larrabee St &amp; Armitage Ave   </span></td><td>TA1309000006</td><td>Larrabee St &amp; Menomonee St</td><td>TA1306000007</td><td>41.91808</td><td>-87.64375</td><td>41.91468</td><td>-87.64332</td><td>member</td><td>2022-12-15</td><td>12</td><td>15</td><td>2022</td><td>Thursday </td><td> 168</td><td> 379.7593</td></tr>\n",
       "\t<tr><th scope=row>4721403</th><td>269378CDD3A89538</td><td>electric_bike</td><td>2022-12-18 11:06:45</td><td>2022-12-18 11:14:45</td><td><span style=white-space:pre-wrap>Throop St &amp; Taylor St        </span></td><td><span style=white-space:pre-wrap>13139       </span></td><td><span style=white-space:pre-wrap>Peoria St &amp; Jackson Blvd  </span></td><td><span style=white-space:pre-wrap>13158       </span></td><td>41.86882</td><td>-87.65910</td><td>41.87764</td><td>-87.64962</td><td>casual</td><td>2022-12-18</td><td>12</td><td>18</td><td>2022</td><td><span style=white-space:pre-wrap>Sunday   </span></td><td> 480</td><td>1256.6584</td></tr>\n",
       "\t<tr><th scope=row>4721404</th><td>91D4BA5F337AFA87</td><td>classic_bike </td><td>2022-12-28 14:35:36</td><td>2022-12-28 14:43:16</td><td><span style=white-space:pre-wrap>Dearborn St &amp; Monroe St      </span></td><td>TA1305000006</td><td><span style=white-space:pre-wrap>Green St &amp; Madison St     </span></td><td>TA1307000120</td><td>41.88132</td><td>-87.62952</td><td>41.88186</td><td>-87.64926</td><td>member</td><td>2022-12-28</td><td>12</td><td>28</td><td>2022</td><td>Wednesday</td><td> 460</td><td>1639.8319</td></tr>\n",
       "\t<tr><th scope=row>4721405</th><td>283636179A819BD9</td><td>classic_bike </td><td>2022-12-01 16:19:11</td><td>2022-12-01 16:29:23</td><td>Michigan Ave &amp; Washington St </td><td><span style=white-space:pre-wrap>13001       </span></td><td><span style=white-space:pre-wrap>Green St &amp; Madison St     </span></td><td>TA1307000120</td><td>41.88398</td><td>-87.62468</td><td>41.88186</td><td>-87.64926</td><td>member</td><td>2022-12-01</td><td>12</td><td>01</td><td>2022</td><td>Thursday </td><td> 612</td><td>2053.7848</td></tr>\n",
       "\t<tr><th scope=row>4721406</th><td>397D3F6E37CC753E</td><td>classic_bike </td><td>2022-12-15 11:35:53</td><td>2022-12-15 11:39:22</td><td><span style=white-space:pre-wrap>Canal St &amp; Taylor St         </span></td><td><span style=white-space:pre-wrap>15550       </span></td><td><span style=white-space:pre-wrap>Clinton St &amp; Tilden St    </span></td><td><span style=white-space:pre-wrap>13037       </span></td><td>41.87026</td><td>-87.63947</td><td>41.87588</td><td>-87.64079</td><td>member</td><td>2022-12-15</td><td>12</td><td>15</td><td>2022</td><td>Thursday </td><td> 209</td><td> 634.6528</td></tr>\n",
       "\t<tr><th scope=row>4721407</th><td>856E6CB8A83DAE6A</td><td>electric_bike</td><td>2022-12-29 17:31:30</td><td>2022-12-29 17:52:58</td><td>California Ave &amp; Fletcher St </td><td><span style=white-space:pre-wrap>15642       </span></td><td><span style=white-space:pre-wrap>Green St &amp; Madison St     </span></td><td>TA1307000120</td><td>41.93852</td><td>-87.69817</td><td>41.88186</td><td>-87.64926</td><td>casual</td><td>2022-12-29</td><td>12</td><td>29</td><td>2022</td><td>Thursday </td><td>1288</td><td>7487.7781</td></tr>\n",
       "\t<tr><th scope=row>4721408</th><td>1CE1BE852794BD42</td><td>electric_bike</td><td>2022-12-21 12:46:36</td><td>2022-12-21 12:49:51</td><td><span style=white-space:pre-wrap>Canal St &amp; Taylor St         </span></td><td><span style=white-space:pre-wrap>15550       </span></td><td><span style=white-space:pre-wrap>Clinton St &amp; Tilden St    </span></td><td><span style=white-space:pre-wrap>13037       </span></td><td>41.87019</td><td>-87.63945</td><td>41.87588</td><td>-87.64079</td><td>member</td><td>2022-12-21</td><td>12</td><td>21</td><td>2022</td><td>Wednesday</td><td> 195</td><td> 642.2576</td></tr>\n",
       "\t<tr><th scope=row>4721409</th><td>EB7999FF9DBC0535</td><td>electric_bike</td><td>2022-12-21 19:08:04</td><td>2022-12-21 19:17:14</td><td>Michigan Ave &amp; Washington St </td><td><span style=white-space:pre-wrap>13001       </span></td><td><span style=white-space:pre-wrap>Peoria St &amp; Jackson Blvd  </span></td><td><span style=white-space:pre-wrap>13158       </span></td><td>41.88416</td><td>-87.62446</td><td>41.87764</td><td>-87.64962</td><td>member</td><td>2022-12-21</td><td>12</td><td>21</td><td>2022</td><td>Wednesday</td><td> 550</td><td>2210.3027</td></tr>\n",
       "\t<tr><th scope=row>4721410</th><td>08BE55EE693263E5</td><td>electric_bike</td><td>2022-12-06 09:02:21</td><td>2022-12-06 09:06:51</td><td><span style=white-space:pre-wrap>Morgan St &amp; Polk St          </span></td><td>TA1307000130</td><td><span style=white-space:pre-wrap>Green St &amp; Madison St     </span></td><td>TA1307000120</td><td>41.87209</td><td>-87.65089</td><td>41.88186</td><td>-87.64926</td><td>member</td><td>2022-12-06</td><td>12</td><td>06</td><td>2022</td><td><span style=white-space:pre-wrap>Tuesday  </span></td><td> 270</td><td>1093.1672</td></tr>\n",
       "\t<tr><th scope=row>4721411</th><td>05AD87788BCBF206</td><td>electric_bike</td><td>2022-12-06 17:08:45</td><td>2022-12-06 17:14:43</td><td><span style=white-space:pre-wrap>Wells St &amp; Hubbard St        </span></td><td>TA1307000151</td><td><span style=white-space:pre-wrap>Green St &amp; Madison St     </span></td><td>TA1307000120</td><td>41.89002</td><td>-87.63452</td><td>41.88186</td><td>-87.64926</td><td>member</td><td>2022-12-06</td><td>12</td><td>06</td><td>2022</td><td><span style=white-space:pre-wrap>Tuesday  </span></td><td> 358</td><td>1522.7381</td></tr>\n",
       "\t<tr><th scope=row>4721412</th><td>AFF5772FD4185626</td><td>classic_bike </td><td>2022-12-03 08:50:08</td><td>2022-12-03 08:54:17</td><td>Sangamon St &amp; Washington Blvd</td><td><span style=white-space:pre-wrap>13409       </span></td><td><span style=white-space:pre-wrap>Peoria St &amp; Jackson Blvd  </span></td><td><span style=white-space:pre-wrap>13158       </span></td><td>41.88316</td><td>-87.65110</td><td>41.87764</td><td>-87.64962</td><td>member</td><td>2022-12-03</td><td>12</td><td>03</td><td>2022</td><td>Saturday </td><td> 249</td><td> 625.7048</td></tr>\n",
       "\t<tr><th scope=row>4721413</th><td>7BDEDE9860418B53</td><td>classic_bike </td><td>2022-12-07 06:52:45</td><td>2022-12-07 06:56:36</td><td>Sangamon St &amp; Washington Blvd</td><td><span style=white-space:pre-wrap>13409       </span></td><td><span style=white-space:pre-wrap>Peoria St &amp; Jackson Blvd  </span></td><td><span style=white-space:pre-wrap>13158       </span></td><td>41.88316</td><td>-87.65110</td><td>41.87764</td><td>-87.64962</td><td>member</td><td>2022-12-07</td><td>12</td><td>07</td><td>2022</td><td>Wednesday</td><td> 231</td><td> 625.7048</td></tr>\n",
       "\t<tr><th scope=row>4721414</th><td>43ABEE85B6E15DCA</td><td>classic_bike </td><td>2022-12-05 06:51:04</td><td>2022-12-05 06:54:48</td><td>Sangamon St &amp; Washington Blvd</td><td><span style=white-space:pre-wrap>13409       </span></td><td><span style=white-space:pre-wrap>Peoria St &amp; Jackson Blvd  </span></td><td><span style=white-space:pre-wrap>13158       </span></td><td>41.88316</td><td>-87.65110</td><td>41.87764</td><td>-87.64962</td><td>member</td><td>2022-12-05</td><td>12</td><td>05</td><td>2022</td><td><span style=white-space:pre-wrap>Monday   </span></td><td> 224</td><td> 625.7048</td></tr>\n",
       "\t<tr><th scope=row>4721415</th><td>F041C89A3D1F0270</td><td>electric_bike</td><td>2022-12-14 17:06:28</td><td>2022-12-14 17:19:27</td><td><span style=white-space:pre-wrap>Bernard St &amp; Elston Ave      </span></td><td><span style=white-space:pre-wrap>18016       </span></td><td><span style=white-space:pre-wrap>Seeley Ave &amp; Roscoe St    </span></td><td><span style=white-space:pre-wrap>13144       </span></td><td>41.94998</td><td>-87.71402</td><td>41.94340</td><td>-87.67962</td><td>member</td><td>2022-12-14</td><td>12</td><td>14</td><td>2022</td><td>Wednesday</td><td> 779</td><td>2944.5564</td></tr>\n",
       "\t<tr><th scope=row>4721416</th><td>A2BECB88430BE156</td><td>classic_bike </td><td>2022-12-08 16:27:47</td><td>2022-12-08 16:32:20</td><td><span style=white-space:pre-wrap>Wacker Dr &amp; Washington St    </span></td><td>KA1503000072</td><td><span style=white-space:pre-wrap>Green St &amp; Madison St     </span></td><td>TA1307000120</td><td>41.88314</td><td>-87.63724</td><td>41.88186</td><td>-87.64926</td><td>member</td><td>2022-12-08</td><td>12</td><td>08</td><td>2022</td><td>Thursday </td><td> 273</td><td>1007.9746</td></tr>\n",
       "\t<tr><th scope=row>4721417</th><td>37B392960E566F58</td><td>classic_bike </td><td>2022-12-28 09:37:38</td><td>2022-12-28 09:41:34</td><td>Sangamon St &amp; Washington Blvd</td><td><span style=white-space:pre-wrap>13409       </span></td><td><span style=white-space:pre-wrap>Peoria St &amp; Jackson Blvd  </span></td><td><span style=white-space:pre-wrap>13158       </span></td><td>41.88316</td><td>-87.65110</td><td>41.87764</td><td>-87.64962</td><td>member</td><td>2022-12-28</td><td>12</td><td>28</td><td>2022</td><td>Wednesday</td><td> 236</td><td> 625.7048</td></tr>\n",
       "\t<tr><th scope=row>4721418</th><td>2DD1587210BA45AE</td><td>classic_bike </td><td>2022-12-09 00:27:25</td><td>2022-12-09 00:35:28</td><td>Southport Ave &amp; Waveland Ave </td><td><span style=white-space:pre-wrap>13235       </span></td><td><span style=white-space:pre-wrap>Seeley Ave &amp; Roscoe St    </span></td><td><span style=white-space:pre-wrap>13144       </span></td><td>41.94815</td><td>-87.66394</td><td>41.94340</td><td>-87.67962</td><td>casual</td><td>2022-12-09</td><td>12</td><td>09</td><td>2022</td><td><span style=white-space:pre-wrap>Friday   </span></td><td> 483</td><td>1402.8890</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 4500832 × 20\n",
       "\\begin{tabular}{r|llllllllllllllllllll}\n",
       "  & ride\\_id & rideable\\_type & started\\_at & ended\\_at & start\\_station\\_name & start\\_station\\_id & end\\_station\\_name & end\\_station\\_id & start\\_lat & start\\_lng & end\\_lat & end\\_lng & member\\_casual & date & month & day & year & day\\_of\\_week & ride\\_duration & ride\\_distance\\\\\n",
       "  & <chr> & <chr> & <dttm> & <dttm> & <chr> & <chr> & <chr> & <chr> & <dbl> & <dbl> & <dbl> & <dbl> & <chr> & <date> & <chr> & <chr> & <chr> & <chr> & <dbl> & <dbl>\\\\\n",
       "\\hline\n",
       "\t1 & C2F7DD78E82EC875 & electric\\_bike & 2022-01-13 11:59:47 & 2022-01-13 12:02:44 & Glenwood Ave \\& Touhy Ave      & 525          & Clark St \\& Touhy Ave                & RP-007       & 42.01280 & -87.66591 & 42.01256 & -87.67437 & casual & 2022-01-13 & 01 & 13 & 2022 & Thursday  &  177 &  701.3791\\\\\n",
       "\t2 & A6CF8980A652D272 & electric\\_bike & 2022-01-10 08:41:56 & 2022-01-10 08:46:17 & Glenwood Ave \\& Touhy Ave      & 525          & Clark St \\& Touhy Ave                & RP-007       & 42.01276 & -87.66597 & 42.01256 & -87.67437 & casual & 2022-01-10 & 01 & 10 & 2022 & Monday    &  261 &  696.1414\\\\\n",
       "\t3 & BD0F91DFF741C66D & classic\\_bike  & 2022-01-25 04:53:40 & 2022-01-25 04:58:01 & Sheffield Ave \\& Fullerton Ave & TA1306000016 & Greenview Ave \\& Fullerton Ave       & TA1307000001 & 41.92560 & -87.65371 & 41.92533 & -87.66580 & member & 2022-01-25 & 01 & 25 & 2022 & Tuesday   &  261 & 1003.4507\\\\\n",
       "\t4 & CBB80ED419105406 & classic\\_bike  & 2022-01-04 00:18:04 & 2022-01-04 00:33:00 & Clark St \\& Bryn Mawr Ave      & KA1504000151 & Paulina St \\& Montrose Ave           & TA1309000021 & 41.98359 & -87.66915 & 41.96151 & -87.67139 & casual & 2022-01-04 & 01 & 04 & 2022 & Tuesday   &  896 & 2460.1250\\\\\n",
       "\t5 & DDC963BFDDA51EEA & classic\\_bike  & 2022-01-20 01:31:10 & 2022-01-20 01:37:12 & Michigan Ave \\& Jackson Blvd   & TA1309000002 & State St \\& Randolph St              & TA1305000029 & 41.87785 & -87.62408 & 41.88462 & -87.62783 & member & 2022-01-20 & 01 & 20 & 2022 & Thursday  &  362 &  814.0730\\\\\n",
       "\t6 & A39C6F6CC0586C0B & classic\\_bike  & 2022-01-11 18:48:09 & 2022-01-11 18:51:31 & Wood St \\& Chicago Ave         & 637          & Honore St \\& Division St             & TA1305000034 & 41.89563 & -87.67207 & 41.90312 & -87.67394 & member & 2022-01-11 & 01 & 11 & 2022 & Tuesday   &  202 &  845.6658\\\\\n",
       "\t7 & BDC4AB637EDF981B & classic\\_bike  & 2022-01-30 18:32:52 & 2022-01-30 18:49:26 & Oakley Ave \\& Irving Park Rd   & KA1504000158 & Broadway \\& Sheridan Rd              & 13323        & 41.95434 & -87.68608 & 41.95283 & -87.64999 & member & 2022-01-30 & 01 & 30 & 2022 & Sunday    &  994 & 2996.6598\\\\\n",
       "\t8 & 81751A3186E59A6B & classic\\_bike  & 2022-01-22 12:20:02 & 2022-01-22 12:32:06 & Sheffield Ave \\& Fullerton Ave & TA1306000016 & Damen Ave \\& Clybourn Ave            & 13271        & 41.92560 & -87.65371 & 41.93193 & -87.67786 & member & 2022-01-22 & 01 & 22 & 2022 & Saturday  &  724 & 2122.6929\\\\\n",
       "\t9 & 72DC25B2DD467EEF & classic\\_bike  & 2022-01-28 15:27:53 & 2022-01-28 15:35:16 & LaSalle St \\& Jackson Blvd     & TA1309000004 & Clinton St \\& Washington Blvd        & WL-012       & 41.87817 & -87.63193 & 41.88338 & -87.64117 & member & 2022-01-28 & 01 & 28 & 2022 & Friday    &  443 &  961.1204\\\\\n",
       "\t10 & F20394FE09C63DB2 & classic\\_bike  & 2022-01-11 18:27:59 & 2022-01-11 18:34:20 & LaSalle St \\& Jackson Blvd     & TA1309000004 & Clinton St \\& Washington Blvd        & WL-012       & 41.87817 & -87.63193 & 41.88338 & -87.64117 & member & 2022-01-11 & 01 & 11 & 2022 & Tuesday   &  381 &  961.1204\\\\\n",
       "\t11 & 006D3F363CF9600B & electric\\_bike & 2022-01-29 12:30:43 & 2022-01-29 12:43:04 & Clarendon Ave \\& Leland Ave    & TA1307000119 & Broadway \\& Granville Ave            & 15571        & 41.96796 & -87.65003 & 41.99478 & -87.66028 & member & 2022-01-29 & 01 & 29 & 2022 & Saturday  &  741 & 3097.6140\\\\\n",
       "\t12 & FB258EEBE89F4E17 & classic\\_bike  & 2022-01-02 17:56:18 & 2022-01-02 18:05:38 & Sheffield Ave \\& Fullerton Ave & TA1306000016 & Stockton Dr \\& Wrightwood Ave        & 13276        & 41.92560 & -87.65371 & 41.93132 & -87.63874 & member & 2022-01-02 & 01 & 02 & 2022 & Sunday    &  560 & 1394.3798\\\\\n",
       "\t13 & 2EF51270B08DEE03 & classic\\_bike  & 2022-01-20 22:03:06 & 2022-01-20 22:09:59 & Rush St \\& Superior St         & 15530        & Larrabee St \\& Kingsbury St          & TA1306000009 & 41.89576 & -87.62591 & 41.89776 & -87.64288 & member & 2022-01-20 & 01 & 20 & 2022 & Thursday  &  413 & 1426.1371\\\\\n",
       "\t14 & E119D4E6BF686601 & electric\\_bike & 2022-01-08 05:36:40 & 2022-01-08 05:46:40 & Michigan Ave \\& Jackson Blvd   & TA1309000002 & St. Clair St \\& Erie St              & 13016        & 41.87785 & -87.62406 & 41.89435 & -87.62280 & casual & 2022-01-08 & 01 & 08 & 2022 & Saturday  &  600 & 1835.1775\\\\\n",
       "\t16 & 0AA241497B970400 & classic\\_bike  & 2022-01-12 14:09:13 & 2022-01-12 14:10:53 & LaSalle St \\& Jackson Blvd     & TA1309000004 & Clark St \\& Ida B Wells Dr           & TA1305000009 & 41.87817 & -87.63193 & 41.87593 & -87.63058 & member & 2022-01-12 & 01 & 12 & 2022 & Wednesday &  100 &  272.0082\\\\\n",
       "\t17 & F5E6D97D85BE8039 & classic\\_bike  & 2022-01-31 12:07:45 & 2022-01-31 12:12:48 & Michigan Ave \\& Jackson Blvd   & TA1309000002 & Indiana Ave \\& Roosevelt Rd          & SL-005       & 41.87785 & -87.62408 & 41.86789 & -87.62304 & member & 2022-01-31 & 01 & 31 & 2022 & Monday    &  303 & 1109.8442\\\\\n",
       "\t18 & 78168928DF06A497 & classic\\_bike  & 2022-01-28 17:21:59 & 2022-01-28 17:26:54 & Michigan Ave \\& Jackson Blvd   & TA1309000002 & Indiana Ave \\& Roosevelt Rd          & SL-005       & 41.87785 & -87.62408 & 41.86789 & -87.62304 & member & 2022-01-28 & 01 & 28 & 2022 & Friday    &  295 & 1109.8442\\\\\n",
       "\t19 & 15C176B55C2BC059 & classic\\_bike  & 2022-01-19 21:00:40 & 2022-01-19 21:09:56 & Clark St \\& Bryn Mawr Ave      & KA1504000151 & Clark St \\& Schreiber Ave            & KA1504000156 & 41.98359 & -87.66915 & 41.99925 & -87.67138 & member & 2022-01-19 & 01 & 19 & 2022 & Wednesday &  556 & 1749.0041\\\\\n",
       "\t21 & 9D4AAF43A011FC59 & electric\\_bike & 2022-01-18 08:03:16 & 2022-01-18 08:08:00 & California Ave \\& Altgeld St   & 15646        & Milwaukee Ave \\& Rockwell St         & 13242        & 41.92665 & -87.69766 & 41.92020 & -87.69266 & casual & 2022-01-18 & 01 & 18 & 2022 & Tuesday   &  284 &  828.0618\\\\\n",
       "\t22 & A209F8E0E84D49B4 & classic\\_bike  & 2022-01-25 14:46:24 & 2022-01-25 15:00:27 & Sheffield Ave \\& Fullerton Ave & TA1306000016 & Halsted St \\& Roscoe St              & TA1309000025 & 41.92560 & -87.65371 & 41.94367 & -87.64895 & member & 2022-01-25 & 01 & 25 & 2022 & Tuesday   &  843 & 2045.2906\\\\\n",
       "\t23 & 6D6B462903DCB23F & electric\\_bike & 2022-01-10 06:44:21 & 2022-01-10 06:51:28 & Racine Ave \\& 15th St          & 13304        & Wolcott Ave \\& Polk St               & TA1309000064 & 41.86121 & -87.65660 & 41.87126 & -87.67369 & member & 2022-01-10 & 01 & 10 & 2022 & Monday    &  427 & 1805.5399\\\\\n",
       "\t24 & DC809CD3B3F3BFC9 & classic\\_bike  & 2022-01-22 15:14:32 & 2022-01-22 15:25:21 & Indiana Ave \\& 31st St         & TA1308000036 & Emerald Ave \\& 31st St               & TA1309000055 & 41.83884 & -87.62186 & 41.83820 & -87.64514 & member & 2022-01-22 & 01 & 22 & 2022 & Saturday  &  649 & 1935.4550\\\\\n",
       "\t25 & 1C2362DAD4090D8A & electric\\_bike & 2022-01-03 00:12:42 & 2022-01-03 00:17:50 & Indiana Ave \\& 31st St         & TA1308000036 & Indiana Ave \\& 40th St               & 13083        & 41.83882 & -87.62183 & 41.82168 & -87.62160 & casual & 2022-01-03 & 01 & 03 & 2022 & Monday    &  308 & 1903.5592\\\\\n",
       "\t26 & AB4032C2B151D137 & classic\\_bike  & 2022-01-31 18:58:30 & 2022-01-31 19:05:17 & Lake Park Ave \\& 56th St       & TA1309000063 & Shore Dr \\& 55th St                  & TA1308000009 & 41.79324 & -87.58778 & 41.79521 & -87.58071 & member & 2022-01-31 & 01 & 31 & 2022 & Monday    &  407 &  626.8189\\\\\n",
       "\t27 & E6B6D4531ADC9F52 & classic\\_bike  & 2022-01-15 17:41:15 & 2022-01-15 17:48:54 & Sheffield Ave \\& Fullerton Ave & TA1306000016 & Ashland Ave \\& Wrightwood Ave        & 13296        & 41.92560 & -87.65371 & 41.92883 & -87.66851 & member & 2022-01-15 & 01 & 15 & 2022 & Saturday  &  459 & 1278.7961\\\\\n",
       "\t28 & 81B423963BA2C10C & classic\\_bike  & 2022-01-24 10:15:53 & 2022-01-24 10:39:53 & Lincoln Park Conservatory     & LP-          & Daley Center Plaza                  & TA1306000010 & 41.92393 & -87.63582 & 41.88424 & -87.62963 & member & 2022-01-24 & 01 & 24 & 2022 & Monday    & 1440 & 4438.2834\\\\\n",
       "\t29 & EC80F318604595AE & electric\\_bike & 2022-01-27 17:54:41 & 2022-01-27 18:05:24 & Sheridan Rd \\& Montrose Ave    & TA1307000107 & Southport Ave \\& Waveland Ave        & 13235        & 41.96165 & -87.65463 & 41.94815 & -87.66394 & casual & 2022-01-27 & 01 & 27 & 2022 & Thursday  &  643 & 1686.1050\\\\\n",
       "\t30 & 59E50C91451F529C & classic\\_bike  & 2022-01-27 11:58:14 & 2022-01-27 12:07:43 & State St \\& Harrison St        & SL-007       & Clark St \\& Lake St                  & KA1503000012 & 41.87405 & -87.62772 & 41.88602 & -87.63088 & member & 2022-01-27 & 01 & 27 & 2022 & Thursday  &  569 & 1354.9110\\\\\n",
       "\t31 & 2A23ED3FECB72E5B & electric\\_bike & 2022-01-15 12:52:14 & 2022-01-15 12:59:42 & Halsted St \\& North Branch St  & KA1504000117 & Clark St \\& Chicago Ave              & 13303        & 41.89933 & -87.64857 & 41.89675 & -87.63089 & member & 2022-01-15 & 01 & 15 & 2022 & Saturday  &  448 & 1494.6050\\\\\n",
       "\t32 & 88543D9BC6760955 & classic\\_bike  & 2022-01-14 10:14:38 & 2022-01-14 10:27:07 & Michigan Ave \\& Jackson Blvd   & TA1309000002 & Orleans St \\& Merchandise Mart Plaza & TA1305000022 & 41.87785 & -87.62408 & 41.88824 & -87.63639 & casual & 2022-01-14 & 01 & 14 & 2022 & Friday    &  749 & 1541.6029\\\\\n",
       "\t⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮ & ⋮\\\\\n",
       "\t4721389 & 870BB957FF58A148 & classic\\_bike  & 2022-12-01 16:10:23 & 2022-12-01 16:13:04 & Larrabee St \\& Armitage Ave    & TA1309000006 & Larrabee St \\& Menomonee St & TA1306000007 & 41.91808 & -87.64375 & 41.91468 & -87.64332 & member & 2022-12-01 & 12 & 01 & 2022 & Thursday  &  161 &  379.7593\\\\\n",
       "\t4721390 & D0EE0137BE1CFE2F & electric\\_bike & 2022-12-31 11:51:58 & 2022-12-31 12:01:21 & Dearborn St \\& Monroe St       & TA1305000006 & Green St \\& Madison St      & TA1307000120 & 41.88055 & -87.62944 & 41.88186 & -87.64926 & casual & 2022-12-31 & 12 & 31 & 2022 & Saturday  &  563 & 1651.5036\\\\\n",
       "\t4721391 & 8D7BAB2233A72E76 & electric\\_bike & 2022-12-04 09:02:16 & 2022-12-04 09:14:19 & Morgan St \\& 18th St           & 13163        & Green St \\& Madison St      & TA1307000120 & 41.85806 & -87.65108 & 41.88186 & -87.64926 & casual & 2022-12-04 & 12 & 04 & 2022 & Sunday    &  723 & 2648.2055\\\\\n",
       "\t4721392 & 157AACAF04B4AC1A & electric\\_bike & 2022-12-05 17:51:38 & 2022-12-05 17:58:40 & Dearborn St \\& Monroe St       & TA1305000006 & Green St \\& Madison St      & TA1307000120 & 41.88073 & -87.62964 & 41.88186 & -87.64926 & member & 2022-12-05 & 12 & 05 & 2022 & Monday    &  422 & 1633.2725\\\\\n",
       "\t4721393 & 13618E9C77157B38 & classic\\_bike  & 2022-12-28 16:50:14 & 2022-12-28 16:56:51 & Dearborn St \\& Monroe St       & TA1305000006 & Green St \\& Madison St      & TA1307000120 & 41.88132 & -87.62952 & 41.88186 & -87.64926 & member & 2022-12-28 & 12 & 28 & 2022 & Wednesday &  397 & 1639.8319\\\\\n",
       "\t4721394 & 740FE55B98D3D886 & classic\\_bike  & 2022-12-24 00:10:03 & 2022-12-24 00:28:10 & Wood St \\& Milwaukee Ave       & 13221        & Green St \\& Madison St      & TA1307000120 & 41.90765 & -87.67255 & 41.88186 & -87.64926 & member & 2022-12-24 & 12 & 24 & 2022 & Saturday  & 1087 & 3456.0338\\\\\n",
       "\t4721395 & 40711C802C946CC5 & classic\\_bike  & 2022-12-15 12:57:49 & 2022-12-15 13:13:32 & Michigan Ave \\& Washington St  & 13001        & Peoria St \\& Jackson Blvd   & 13158        & 41.88398 & -87.62468 & 41.87764 & -87.64962 & member & 2022-12-15 & 12 & 15 & 2022 & Thursday  &  943 & 2186.2440\\\\\n",
       "\t4721396 & B621CD5AF243328B & classic\\_bike  & 2022-12-31 16:09:36 & 2022-12-31 16:15:31 & Canal St \\& Taylor St          & 15550        & Peoria St \\& Jackson Blvd   & 13158        & 41.87026 & -87.63947 & 41.87764 & -87.64962 & member & 2022-12-31 & 12 & 31 & 2022 & Saturday  &  355 & 1175.5187\\\\\n",
       "\t4721397 & 3B564ED03FE887DC & classic\\_bike  & 2022-12-30 22:06:29 & 2022-12-30 22:13:51 & Canal St \\& Taylor St          & 15550        & Peoria St \\& Jackson Blvd   & 13158        & 41.87026 & -87.63947 & 41.87764 & -87.64962 & member & 2022-12-30 & 12 & 30 & 2022 & Friday    &  442 & 1175.5187\\\\\n",
       "\t4721398 & 69FBC651C6C9C54B & classic\\_bike  & 2022-12-11 18:25:13 & 2022-12-11 18:28:32 & Canal St \\& Taylor St          & 15550        & Clinton St \\& Tilden St     & 13037        & 41.87026 & -87.63947 & 41.87588 & -87.64079 & member & 2022-12-11 & 12 & 11 & 2022 & Sunday    &  199 &  634.6528\\\\\n",
       "\t4721399 & 10EC1B8665061739 & classic\\_bike  & 2022-12-15 09:41:06 & 2022-12-15 09:44:57 & Canal St \\& Taylor St          & 15550        & Clinton St \\& Tilden St     & 13037        & 41.87026 & -87.63947 & 41.87588 & -87.64079 & member & 2022-12-15 & 12 & 15 & 2022 & Thursday  &  231 &  634.6528\\\\\n",
       "\t4721400 & 4A6809171F7BBFF6 & electric\\_bike & 2022-12-19 20:30:11 & 2022-12-19 20:40:31 & Wood St \\& Milwaukee Ave       & 13221        & Peoria St \\& Jackson Blvd   & 13158        & 41.90764 & -87.67252 & 41.87764 & -87.64962 & member & 2022-12-19 & 12 & 19 & 2022 & Monday    &  620 & 3836.0260\\\\\n",
       "\t4721401 & CA31CD8A7A313F31 & classic\\_bike  & 2022-12-28 14:51:01 & 2022-12-28 14:54:39 & Canal St \\& Taylor St          & 15550        & Clinton St \\& Tilden St     & 13037        & 41.87026 & -87.63947 & 41.87588 & -87.64079 & member & 2022-12-28 & 12 & 28 & 2022 & Wednesday &  218 &  634.6528\\\\\n",
       "\t4721402 & 97230033D8C1B22F & classic\\_bike  & 2022-12-15 16:44:58 & 2022-12-15 16:47:46 & Larrabee St \\& Armitage Ave    & TA1309000006 & Larrabee St \\& Menomonee St & TA1306000007 & 41.91808 & -87.64375 & 41.91468 & -87.64332 & member & 2022-12-15 & 12 & 15 & 2022 & Thursday  &  168 &  379.7593\\\\\n",
       "\t4721403 & 269378CDD3A89538 & electric\\_bike & 2022-12-18 11:06:45 & 2022-12-18 11:14:45 & Throop St \\& Taylor St         & 13139        & Peoria St \\& Jackson Blvd   & 13158        & 41.86882 & -87.65910 & 41.87764 & -87.64962 & casual & 2022-12-18 & 12 & 18 & 2022 & Sunday    &  480 & 1256.6584\\\\\n",
       "\t4721404 & 91D4BA5F337AFA87 & classic\\_bike  & 2022-12-28 14:35:36 & 2022-12-28 14:43:16 & Dearborn St \\& Monroe St       & TA1305000006 & Green St \\& Madison St      & TA1307000120 & 41.88132 & -87.62952 & 41.88186 & -87.64926 & member & 2022-12-28 & 12 & 28 & 2022 & Wednesday &  460 & 1639.8319\\\\\n",
       "\t4721405 & 283636179A819BD9 & classic\\_bike  & 2022-12-01 16:19:11 & 2022-12-01 16:29:23 & Michigan Ave \\& Washington St  & 13001        & Green St \\& Madison St      & TA1307000120 & 41.88398 & -87.62468 & 41.88186 & -87.64926 & member & 2022-12-01 & 12 & 01 & 2022 & Thursday  &  612 & 2053.7848\\\\\n",
       "\t4721406 & 397D3F6E37CC753E & classic\\_bike  & 2022-12-15 11:35:53 & 2022-12-15 11:39:22 & Canal St \\& Taylor St          & 15550        & Clinton St \\& Tilden St     & 13037        & 41.87026 & -87.63947 & 41.87588 & -87.64079 & member & 2022-12-15 & 12 & 15 & 2022 & Thursday  &  209 &  634.6528\\\\\n",
       "\t4721407 & 856E6CB8A83DAE6A & electric\\_bike & 2022-12-29 17:31:30 & 2022-12-29 17:52:58 & California Ave \\& Fletcher St  & 15642        & Green St \\& Madison St      & TA1307000120 & 41.93852 & -87.69817 & 41.88186 & -87.64926 & casual & 2022-12-29 & 12 & 29 & 2022 & Thursday  & 1288 & 7487.7781\\\\\n",
       "\t4721408 & 1CE1BE852794BD42 & electric\\_bike & 2022-12-21 12:46:36 & 2022-12-21 12:49:51 & Canal St \\& Taylor St          & 15550        & Clinton St \\& Tilden St     & 13037        & 41.87019 & -87.63945 & 41.87588 & -87.64079 & member & 2022-12-21 & 12 & 21 & 2022 & Wednesday &  195 &  642.2576\\\\\n",
       "\t4721409 & EB7999FF9DBC0535 & electric\\_bike & 2022-12-21 19:08:04 & 2022-12-21 19:17:14 & Michigan Ave \\& Washington St  & 13001        & Peoria St \\& Jackson Blvd   & 13158        & 41.88416 & -87.62446 & 41.87764 & -87.64962 & member & 2022-12-21 & 12 & 21 & 2022 & Wednesday &  550 & 2210.3027\\\\\n",
       "\t4721410 & 08BE55EE693263E5 & electric\\_bike & 2022-12-06 09:02:21 & 2022-12-06 09:06:51 & Morgan St \\& Polk St           & TA1307000130 & Green St \\& Madison St      & TA1307000120 & 41.87209 & -87.65089 & 41.88186 & -87.64926 & member & 2022-12-06 & 12 & 06 & 2022 & Tuesday   &  270 & 1093.1672\\\\\n",
       "\t4721411 & 05AD87788BCBF206 & electric\\_bike & 2022-12-06 17:08:45 & 2022-12-06 17:14:43 & Wells St \\& Hubbard St         & TA1307000151 & Green St \\& Madison St      & TA1307000120 & 41.89002 & -87.63452 & 41.88186 & -87.64926 & member & 2022-12-06 & 12 & 06 & 2022 & Tuesday   &  358 & 1522.7381\\\\\n",
       "\t4721412 & AFF5772FD4185626 & classic\\_bike  & 2022-12-03 08:50:08 & 2022-12-03 08:54:17 & Sangamon St \\& Washington Blvd & 13409        & Peoria St \\& Jackson Blvd   & 13158        & 41.88316 & -87.65110 & 41.87764 & -87.64962 & member & 2022-12-03 & 12 & 03 & 2022 & Saturday  &  249 &  625.7048\\\\\n",
       "\t4721413 & 7BDEDE9860418B53 & classic\\_bike  & 2022-12-07 06:52:45 & 2022-12-07 06:56:36 & Sangamon St \\& Washington Blvd & 13409        & Peoria St \\& Jackson Blvd   & 13158        & 41.88316 & -87.65110 & 41.87764 & -87.64962 & member & 2022-12-07 & 12 & 07 & 2022 & Wednesday &  231 &  625.7048\\\\\n",
       "\t4721414 & 43ABEE85B6E15DCA & classic\\_bike  & 2022-12-05 06:51:04 & 2022-12-05 06:54:48 & Sangamon St \\& Washington Blvd & 13409        & Peoria St \\& Jackson Blvd   & 13158        & 41.88316 & -87.65110 & 41.87764 & -87.64962 & member & 2022-12-05 & 12 & 05 & 2022 & Monday    &  224 &  625.7048\\\\\n",
       "\t4721415 & F041C89A3D1F0270 & electric\\_bike & 2022-12-14 17:06:28 & 2022-12-14 17:19:27 & Bernard St \\& Elston Ave       & 18016        & Seeley Ave \\& Roscoe St     & 13144        & 41.94998 & -87.71402 & 41.94340 & -87.67962 & member & 2022-12-14 & 12 & 14 & 2022 & Wednesday &  779 & 2944.5564\\\\\n",
       "\t4721416 & A2BECB88430BE156 & classic\\_bike  & 2022-12-08 16:27:47 & 2022-12-08 16:32:20 & Wacker Dr \\& Washington St     & KA1503000072 & Green St \\& Madison St      & TA1307000120 & 41.88314 & -87.63724 & 41.88186 & -87.64926 & member & 2022-12-08 & 12 & 08 & 2022 & Thursday  &  273 & 1007.9746\\\\\n",
       "\t4721417 & 37B392960E566F58 & classic\\_bike  & 2022-12-28 09:37:38 & 2022-12-28 09:41:34 & Sangamon St \\& Washington Blvd & 13409        & Peoria St \\& Jackson Blvd   & 13158        & 41.88316 & -87.65110 & 41.87764 & -87.64962 & member & 2022-12-28 & 12 & 28 & 2022 & Wednesday &  236 &  625.7048\\\\\n",
       "\t4721418 & 2DD1587210BA45AE & classic\\_bike  & 2022-12-09 00:27:25 & 2022-12-09 00:35:28 & Southport Ave \\& Waveland Ave  & 13235        & Seeley Ave \\& Roscoe St     & 13144        & 41.94815 & -87.66394 & 41.94340 & -87.67962 & casual & 2022-12-09 & 12 & 09 & 2022 & Friday    &  483 & 1402.8890\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 4500832 × 20\n",
       "\n",
       "| <!--/--> | ride_id &lt;chr&gt; | rideable_type &lt;chr&gt; | started_at &lt;dttm&gt; | ended_at &lt;dttm&gt; | start_station_name &lt;chr&gt; | start_station_id &lt;chr&gt; | end_station_name &lt;chr&gt; | end_station_id &lt;chr&gt; | start_lat &lt;dbl&gt; | start_lng &lt;dbl&gt; | end_lat &lt;dbl&gt; | end_lng &lt;dbl&gt; | member_casual &lt;chr&gt; | date &lt;date&gt; | month &lt;chr&gt; | day &lt;chr&gt; | year &lt;chr&gt; | day_of_week &lt;chr&gt; | ride_duration &lt;dbl&gt; | ride_distance &lt;dbl&gt; |\n",
       "|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|\n",
       "| 1 | C2F7DD78E82EC875 | electric_bike | 2022-01-13 11:59:47 | 2022-01-13 12:02:44 | Glenwood Ave &amp; Touhy Ave      | 525          | Clark St &amp; Touhy Ave                | RP-007       | 42.01280 | -87.66591 | 42.01256 | -87.67437 | casual | 2022-01-13 | 01 | 13 | 2022 | Thursday  |  177 |  701.3791 |\n",
       "| 2 | A6CF8980A652D272 | electric_bike | 2022-01-10 08:41:56 | 2022-01-10 08:46:17 | Glenwood Ave &amp; Touhy Ave      | 525          | Clark St &amp; Touhy Ave                | RP-007       | 42.01276 | -87.66597 | 42.01256 | -87.67437 | casual | 2022-01-10 | 01 | 10 | 2022 | Monday    |  261 |  696.1414 |\n",
       "| 3 | BD0F91DFF741C66D | classic_bike  | 2022-01-25 04:53:40 | 2022-01-25 04:58:01 | Sheffield Ave &amp; Fullerton Ave | TA1306000016 | Greenview Ave &amp; Fullerton Ave       | TA1307000001 | 41.92560 | -87.65371 | 41.92533 | -87.66580 | member | 2022-01-25 | 01 | 25 | 2022 | Tuesday   |  261 | 1003.4507 |\n",
       "| 4 | CBB80ED419105406 | classic_bike  | 2022-01-04 00:18:04 | 2022-01-04 00:33:00 | Clark St &amp; Bryn Mawr Ave      | KA1504000151 | Paulina St &amp; Montrose Ave           | TA1309000021 | 41.98359 | -87.66915 | 41.96151 | -87.67139 | casual | 2022-01-04 | 01 | 04 | 2022 | Tuesday   |  896 | 2460.1250 |\n",
       "| 5 | DDC963BFDDA51EEA | classic_bike  | 2022-01-20 01:31:10 | 2022-01-20 01:37:12 | Michigan Ave &amp; Jackson Blvd   | TA1309000002 | State St &amp; Randolph St              | TA1305000029 | 41.87785 | -87.62408 | 41.88462 | -87.62783 | member | 2022-01-20 | 01 | 20 | 2022 | Thursday  |  362 |  814.0730 |\n",
       "| 6 | A39C6F6CC0586C0B | classic_bike  | 2022-01-11 18:48:09 | 2022-01-11 18:51:31 | Wood St &amp; Chicago Ave         | 637          | Honore St &amp; Division St             | TA1305000034 | 41.89563 | -87.67207 | 41.90312 | -87.67394 | member | 2022-01-11 | 01 | 11 | 2022 | Tuesday   |  202 |  845.6658 |\n",
       "| 7 | BDC4AB637EDF981B | classic_bike  | 2022-01-30 18:32:52 | 2022-01-30 18:49:26 | Oakley Ave &amp; Irving Park Rd   | KA1504000158 | Broadway &amp; Sheridan Rd              | 13323        | 41.95434 | -87.68608 | 41.95283 | -87.64999 | member | 2022-01-30 | 01 | 30 | 2022 | Sunday    |  994 | 2996.6598 |\n",
       "| 8 | 81751A3186E59A6B | classic_bike  | 2022-01-22 12:20:02 | 2022-01-22 12:32:06 | Sheffield Ave &amp; Fullerton Ave | TA1306000016 | Damen Ave &amp; Clybourn Ave            | 13271        | 41.92560 | -87.65371 | 41.93193 | -87.67786 | member | 2022-01-22 | 01 | 22 | 2022 | Saturday  |  724 | 2122.6929 |\n",
       "| 9 | 72DC25B2DD467EEF | classic_bike  | 2022-01-28 15:27:53 | 2022-01-28 15:35:16 | LaSalle St &amp; Jackson Blvd     | TA1309000004 | Clinton St &amp; Washington Blvd        | WL-012       | 41.87817 | -87.63193 | 41.88338 | -87.64117 | member | 2022-01-28 | 01 | 28 | 2022 | Friday    |  443 |  961.1204 |\n",
       "| 10 | F20394FE09C63DB2 | classic_bike  | 2022-01-11 18:27:59 | 2022-01-11 18:34:20 | LaSalle St &amp; Jackson Blvd     | TA1309000004 | Clinton St &amp; Washington Blvd        | WL-012       | 41.87817 | -87.63193 | 41.88338 | -87.64117 | member | 2022-01-11 | 01 | 11 | 2022 | Tuesday   |  381 |  961.1204 |\n",
       "| 11 | 006D3F363CF9600B | electric_bike | 2022-01-29 12:30:43 | 2022-01-29 12:43:04 | Clarendon Ave &amp; Leland Ave    | TA1307000119 | Broadway &amp; Granville Ave            | 15571        | 41.96796 | -87.65003 | 41.99478 | -87.66028 | member | 2022-01-29 | 01 | 29 | 2022 | Saturday  |  741 | 3097.6140 |\n",
       "| 12 | FB258EEBE89F4E17 | classic_bike  | 2022-01-02 17:56:18 | 2022-01-02 18:05:38 | Sheffield Ave &amp; Fullerton Ave | TA1306000016 | Stockton Dr &amp; Wrightwood Ave        | 13276        | 41.92560 | -87.65371 | 41.93132 | -87.63874 | member | 2022-01-02 | 01 | 02 | 2022 | Sunday    |  560 | 1394.3798 |\n",
       "| 13 | 2EF51270B08DEE03 | classic_bike  | 2022-01-20 22:03:06 | 2022-01-20 22:09:59 | Rush St &amp; Superior St         | 15530        | Larrabee St &amp; Kingsbury St          | TA1306000009 | 41.89576 | -87.62591 | 41.89776 | -87.64288 | member | 2022-01-20 | 01 | 20 | 2022 | Thursday  |  413 | 1426.1371 |\n",
       "| 14 | E119D4E6BF686601 | electric_bike | 2022-01-08 05:36:40 | 2022-01-08 05:46:40 | Michigan Ave &amp; Jackson Blvd   | TA1309000002 | St. Clair St &amp; Erie St              | 13016        | 41.87785 | -87.62406 | 41.89435 | -87.62280 | casual | 2022-01-08 | 01 | 08 | 2022 | Saturday  |  600 | 1835.1775 |\n",
       "| 16 | 0AA241497B970400 | classic_bike  | 2022-01-12 14:09:13 | 2022-01-12 14:10:53 | LaSalle St &amp; Jackson Blvd     | TA1309000004 | Clark St &amp; Ida B Wells Dr           | TA1305000009 | 41.87817 | -87.63193 | 41.87593 | -87.63058 | member | 2022-01-12 | 01 | 12 | 2022 | Wednesday |  100 |  272.0082 |\n",
       "| 17 | F5E6D97D85BE8039 | classic_bike  | 2022-01-31 12:07:45 | 2022-01-31 12:12:48 | Michigan Ave &amp; Jackson Blvd   | TA1309000002 | Indiana Ave &amp; Roosevelt Rd          | SL-005       | 41.87785 | -87.62408 | 41.86789 | -87.62304 | member | 2022-01-31 | 01 | 31 | 2022 | Monday    |  303 | 1109.8442 |\n",
       "| 18 | 78168928DF06A497 | classic_bike  | 2022-01-28 17:21:59 | 2022-01-28 17:26:54 | Michigan Ave &amp; Jackson Blvd   | TA1309000002 | Indiana Ave &amp; Roosevelt Rd          | SL-005       | 41.87785 | -87.62408 | 41.86789 | -87.62304 | member | 2022-01-28 | 01 | 28 | 2022 | Friday    |  295 | 1109.8442 |\n",
       "| 19 | 15C176B55C2BC059 | classic_bike  | 2022-01-19 21:00:40 | 2022-01-19 21:09:56 | Clark St &amp; Bryn Mawr Ave      | KA1504000151 | Clark St &amp; Schreiber Ave            | KA1504000156 | 41.98359 | -87.66915 | 41.99925 | -87.67138 | member | 2022-01-19 | 01 | 19 | 2022 | Wednesday |  556 | 1749.0041 |\n",
       "| 21 | 9D4AAF43A011FC59 | electric_bike | 2022-01-18 08:03:16 | 2022-01-18 08:08:00 | California Ave &amp; Altgeld St   | 15646        | Milwaukee Ave &amp; Rockwell St         | 13242        | 41.92665 | -87.69766 | 41.92020 | -87.69266 | casual | 2022-01-18 | 01 | 18 | 2022 | Tuesday   |  284 |  828.0618 |\n",
       "| 22 | A209F8E0E84D49B4 | classic_bike  | 2022-01-25 14:46:24 | 2022-01-25 15:00:27 | Sheffield Ave &amp; Fullerton Ave | TA1306000016 | Halsted St &amp; Roscoe St              | TA1309000025 | 41.92560 | -87.65371 | 41.94367 | -87.64895 | member | 2022-01-25 | 01 | 25 | 2022 | Tuesday   |  843 | 2045.2906 |\n",
       "| 23 | 6D6B462903DCB23F | electric_bike | 2022-01-10 06:44:21 | 2022-01-10 06:51:28 | Racine Ave &amp; 15th St          | 13304        | Wolcott Ave &amp; Polk St               | TA1309000064 | 41.86121 | -87.65660 | 41.87126 | -87.67369 | member | 2022-01-10 | 01 | 10 | 2022 | Monday    |  427 | 1805.5399 |\n",
       "| 24 | DC809CD3B3F3BFC9 | classic_bike  | 2022-01-22 15:14:32 | 2022-01-22 15:25:21 | Indiana Ave &amp; 31st St         | TA1308000036 | Emerald Ave &amp; 31st St               | TA1309000055 | 41.83884 | -87.62186 | 41.83820 | -87.64514 | member | 2022-01-22 | 01 | 22 | 2022 | Saturday  |  649 | 1935.4550 |\n",
       "| 25 | 1C2362DAD4090D8A | electric_bike | 2022-01-03 00:12:42 | 2022-01-03 00:17:50 | Indiana Ave &amp; 31st St         | TA1308000036 | Indiana Ave &amp; 40th St               | 13083        | 41.83882 | -87.62183 | 41.82168 | -87.62160 | casual | 2022-01-03 | 01 | 03 | 2022 | Monday    |  308 | 1903.5592 |\n",
       "| 26 | AB4032C2B151D137 | classic_bike  | 2022-01-31 18:58:30 | 2022-01-31 19:05:17 | Lake Park Ave &amp; 56th St       | TA1309000063 | Shore Dr &amp; 55th St                  | TA1308000009 | 41.79324 | -87.58778 | 41.79521 | -87.58071 | member | 2022-01-31 | 01 | 31 | 2022 | Monday    |  407 |  626.8189 |\n",
       "| 27 | E6B6D4531ADC9F52 | classic_bike  | 2022-01-15 17:41:15 | 2022-01-15 17:48:54 | Sheffield Ave &amp; Fullerton Ave | TA1306000016 | Ashland Ave &amp; Wrightwood Ave        | 13296        | 41.92560 | -87.65371 | 41.92883 | -87.66851 | member | 2022-01-15 | 01 | 15 | 2022 | Saturday  |  459 | 1278.7961 |\n",
       "| 28 | 81B423963BA2C10C | classic_bike  | 2022-01-24 10:15:53 | 2022-01-24 10:39:53 | Lincoln Park Conservatory     | LP-          | Daley Center Plaza                  | TA1306000010 | 41.92393 | -87.63582 | 41.88424 | -87.62963 | member | 2022-01-24 | 01 | 24 | 2022 | Monday    | 1440 | 4438.2834 |\n",
       "| 29 | EC80F318604595AE | electric_bike | 2022-01-27 17:54:41 | 2022-01-27 18:05:24 | Sheridan Rd &amp; Montrose Ave    | TA1307000107 | Southport Ave &amp; Waveland Ave        | 13235        | 41.96165 | -87.65463 | 41.94815 | -87.66394 | casual | 2022-01-27 | 01 | 27 | 2022 | Thursday  |  643 | 1686.1050 |\n",
       "| 30 | 59E50C91451F529C | classic_bike  | 2022-01-27 11:58:14 | 2022-01-27 12:07:43 | State St &amp; Harrison St        | SL-007       | Clark St &amp; Lake St                  | KA1503000012 | 41.87405 | -87.62772 | 41.88602 | -87.63088 | member | 2022-01-27 | 01 | 27 | 2022 | Thursday  |  569 | 1354.9110 |\n",
       "| 31 | 2A23ED3FECB72E5B | electric_bike | 2022-01-15 12:52:14 | 2022-01-15 12:59:42 | Halsted St &amp; North Branch St  | KA1504000117 | Clark St &amp; Chicago Ave              | 13303        | 41.89933 | -87.64857 | 41.89675 | -87.63089 | member | 2022-01-15 | 01 | 15 | 2022 | Saturday  |  448 | 1494.6050 |\n",
       "| 32 | 88543D9BC6760955 | classic_bike  | 2022-01-14 10:14:38 | 2022-01-14 10:27:07 | Michigan Ave &amp; Jackson Blvd   | TA1309000002 | Orleans St &amp; Merchandise Mart Plaza | TA1305000022 | 41.87785 | -87.62408 | 41.88824 | -87.63639 | casual | 2022-01-14 | 01 | 14 | 2022 | Friday    |  749 | 1541.6029 |\n",
       "| ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ | ⋮ |\n",
       "| 4721389 | 870BB957FF58A148 | classic_bike  | 2022-12-01 16:10:23 | 2022-12-01 16:13:04 | Larrabee St &amp; Armitage Ave    | TA1309000006 | Larrabee St &amp; Menomonee St | TA1306000007 | 41.91808 | -87.64375 | 41.91468 | -87.64332 | member | 2022-12-01 | 12 | 01 | 2022 | Thursday  |  161 |  379.7593 |\n",
       "| 4721390 | D0EE0137BE1CFE2F | electric_bike | 2022-12-31 11:51:58 | 2022-12-31 12:01:21 | Dearborn St &amp; Monroe St       | TA1305000006 | Green St &amp; Madison St      | TA1307000120 | 41.88055 | -87.62944 | 41.88186 | -87.64926 | casual | 2022-12-31 | 12 | 31 | 2022 | Saturday  |  563 | 1651.5036 |\n",
       "| 4721391 | 8D7BAB2233A72E76 | electric_bike | 2022-12-04 09:02:16 | 2022-12-04 09:14:19 | Morgan St &amp; 18th St           | 13163        | Green St &amp; Madison St      | TA1307000120 | 41.85806 | -87.65108 | 41.88186 | -87.64926 | casual | 2022-12-04 | 12 | 04 | 2022 | Sunday    |  723 | 2648.2055 |\n",
       "| 4721392 | 157AACAF04B4AC1A | electric_bike | 2022-12-05 17:51:38 | 2022-12-05 17:58:40 | Dearborn St &amp; Monroe St       | TA1305000006 | Green St &amp; Madison St      | TA1307000120 | 41.88073 | -87.62964 | 41.88186 | -87.64926 | member | 2022-12-05 | 12 | 05 | 2022 | Monday    |  422 | 1633.2725 |\n",
       "| 4721393 | 13618E9C77157B38 | classic_bike  | 2022-12-28 16:50:14 | 2022-12-28 16:56:51 | Dearborn St &amp; Monroe St       | TA1305000006 | Green St &amp; Madison St      | TA1307000120 | 41.88132 | -87.62952 | 41.88186 | -87.64926 | member | 2022-12-28 | 12 | 28 | 2022 | Wednesday |  397 | 1639.8319 |\n",
       "| 4721394 | 740FE55B98D3D886 | classic_bike  | 2022-12-24 00:10:03 | 2022-12-24 00:28:10 | Wood St &amp; Milwaukee Ave       | 13221        | Green St &amp; Madison St      | TA1307000120 | 41.90765 | -87.67255 | 41.88186 | -87.64926 | member | 2022-12-24 | 12 | 24 | 2022 | Saturday  | 1087 | 3456.0338 |\n",
       "| 4721395 | 40711C802C946CC5 | classic_bike  | 2022-12-15 12:57:49 | 2022-12-15 13:13:32 | Michigan Ave &amp; Washington St  | 13001        | Peoria St &amp; Jackson Blvd   | 13158        | 41.88398 | -87.62468 | 41.87764 | -87.64962 | member | 2022-12-15 | 12 | 15 | 2022 | Thursday  |  943 | 2186.2440 |\n",
       "| 4721396 | B621CD5AF243328B | classic_bike  | 2022-12-31 16:09:36 | 2022-12-31 16:15:31 | Canal St &amp; Taylor St          | 15550        | Peoria St &amp; Jackson Blvd   | 13158        | 41.87026 | -87.63947 | 41.87764 | -87.64962 | member | 2022-12-31 | 12 | 31 | 2022 | Saturday  |  355 | 1175.5187 |\n",
       "| 4721397 | 3B564ED03FE887DC | classic_bike  | 2022-12-30 22:06:29 | 2022-12-30 22:13:51 | Canal St &amp; Taylor St          | 15550        | Peoria St &amp; Jackson Blvd   | 13158        | 41.87026 | -87.63947 | 41.87764 | -87.64962 | member | 2022-12-30 | 12 | 30 | 2022 | Friday    |  442 | 1175.5187 |\n",
       "| 4721398 | 69FBC651C6C9C54B | classic_bike  | 2022-12-11 18:25:13 | 2022-12-11 18:28:32 | Canal St &amp; Taylor St          | 15550        | Clinton St &amp; Tilden St     | 13037        | 41.87026 | -87.63947 | 41.87588 | -87.64079 | member | 2022-12-11 | 12 | 11 | 2022 | Sunday    |  199 |  634.6528 |\n",
       "| 4721399 | 10EC1B8665061739 | classic_bike  | 2022-12-15 09:41:06 | 2022-12-15 09:44:57 | Canal St &amp; Taylor St          | 15550        | Clinton St &amp; Tilden St     | 13037        | 41.87026 | -87.63947 | 41.87588 | -87.64079 | member | 2022-12-15 | 12 | 15 | 2022 | Thursday  |  231 |  634.6528 |\n",
       "| 4721400 | 4A6809171F7BBFF6 | electric_bike | 2022-12-19 20:30:11 | 2022-12-19 20:40:31 | Wood St &amp; Milwaukee Ave       | 13221        | Peoria St &amp; Jackson Blvd   | 13158        | 41.90764 | -87.67252 | 41.87764 | -87.64962 | member | 2022-12-19 | 12 | 19 | 2022 | Monday    |  620 | 3836.0260 |\n",
       "| 4721401 | CA31CD8A7A313F31 | classic_bike  | 2022-12-28 14:51:01 | 2022-12-28 14:54:39 | Canal St &amp; Taylor St          | 15550        | Clinton St &amp; Tilden St     | 13037        | 41.87026 | -87.63947 | 41.87588 | -87.64079 | member | 2022-12-28 | 12 | 28 | 2022 | Wednesday |  218 |  634.6528 |\n",
       "| 4721402 | 97230033D8C1B22F | classic_bike  | 2022-12-15 16:44:58 | 2022-12-15 16:47:46 | Larrabee St &amp; Armitage Ave    | TA1309000006 | Larrabee St &amp; Menomonee St | TA1306000007 | 41.91808 | -87.64375 | 41.91468 | -87.64332 | member | 2022-12-15 | 12 | 15 | 2022 | Thursday  |  168 |  379.7593 |\n",
       "| 4721403 | 269378CDD3A89538 | electric_bike | 2022-12-18 11:06:45 | 2022-12-18 11:14:45 | Throop St &amp; Taylor St         | 13139        | Peoria St &amp; Jackson Blvd   | 13158        | 41.86882 | -87.65910 | 41.87764 | -87.64962 | casual | 2022-12-18 | 12 | 18 | 2022 | Sunday    |  480 | 1256.6584 |\n",
       "| 4721404 | 91D4BA5F337AFA87 | classic_bike  | 2022-12-28 14:35:36 | 2022-12-28 14:43:16 | Dearborn St &amp; Monroe St       | TA1305000006 | Green St &amp; Madison St      | TA1307000120 | 41.88132 | -87.62952 | 41.88186 | -87.64926 | member | 2022-12-28 | 12 | 28 | 2022 | Wednesday |  460 | 1639.8319 |\n",
       "| 4721405 | 283636179A819BD9 | classic_bike  | 2022-12-01 16:19:11 | 2022-12-01 16:29:23 | Michigan Ave &amp; Washington St  | 13001        | Green St &amp; Madison St      | TA1307000120 | 41.88398 | -87.62468 | 41.88186 | -87.64926 | member | 2022-12-01 | 12 | 01 | 2022 | Thursday  |  612 | 2053.7848 |\n",
       "| 4721406 | 397D3F6E37CC753E | classic_bike  | 2022-12-15 11:35:53 | 2022-12-15 11:39:22 | Canal St &amp; Taylor St          | 15550        | Clinton St &amp; Tilden St     | 13037        | 41.87026 | -87.63947 | 41.87588 | -87.64079 | member | 2022-12-15 | 12 | 15 | 2022 | Thursday  |  209 |  634.6528 |\n",
       "| 4721407 | 856E6CB8A83DAE6A | electric_bike | 2022-12-29 17:31:30 | 2022-12-29 17:52:58 | California Ave &amp; Fletcher St  | 15642        | Green St &amp; Madison St      | TA1307000120 | 41.93852 | -87.69817 | 41.88186 | -87.64926 | casual | 2022-12-29 | 12 | 29 | 2022 | Thursday  | 1288 | 7487.7781 |\n",
       "| 4721408 | 1CE1BE852794BD42 | electric_bike | 2022-12-21 12:46:36 | 2022-12-21 12:49:51 | Canal St &amp; Taylor St          | 15550        | Clinton St &amp; Tilden St     | 13037        | 41.87019 | -87.63945 | 41.87588 | -87.64079 | member | 2022-12-21 | 12 | 21 | 2022 | Wednesday |  195 |  642.2576 |\n",
       "| 4721409 | EB7999FF9DBC0535 | electric_bike | 2022-12-21 19:08:04 | 2022-12-21 19:17:14 | Michigan Ave &amp; Washington St  | 13001        | Peoria St &amp; Jackson Blvd   | 13158        | 41.88416 | -87.62446 | 41.87764 | -87.64962 | member | 2022-12-21 | 12 | 21 | 2022 | Wednesday |  550 | 2210.3027 |\n",
       "| 4721410 | 08BE55EE693263E5 | electric_bike | 2022-12-06 09:02:21 | 2022-12-06 09:06:51 | Morgan St &amp; Polk St           | TA1307000130 | Green St &amp; Madison St      | TA1307000120 | 41.87209 | -87.65089 | 41.88186 | -87.64926 | member | 2022-12-06 | 12 | 06 | 2022 | Tuesday   |  270 | 1093.1672 |\n",
       "| 4721411 | 05AD87788BCBF206 | electric_bike | 2022-12-06 17:08:45 | 2022-12-06 17:14:43 | Wells St &amp; Hubbard St         | TA1307000151 | Green St &amp; Madison St      | TA1307000120 | 41.89002 | -87.63452 | 41.88186 | -87.64926 | member | 2022-12-06 | 12 | 06 | 2022 | Tuesday   |  358 | 1522.7381 |\n",
       "| 4721412 | AFF5772FD4185626 | classic_bike  | 2022-12-03 08:50:08 | 2022-12-03 08:54:17 | Sangamon St &amp; Washington Blvd | 13409        | Peoria St &amp; Jackson Blvd   | 13158        | 41.88316 | -87.65110 | 41.87764 | -87.64962 | member | 2022-12-03 | 12 | 03 | 2022 | Saturday  |  249 |  625.7048 |\n",
       "| 4721413 | 7BDEDE9860418B53 | classic_bike  | 2022-12-07 06:52:45 | 2022-12-07 06:56:36 | Sangamon St &amp; Washington Blvd | 13409        | Peoria St &amp; Jackson Blvd   | 13158        | 41.88316 | -87.65110 | 41.87764 | -87.64962 | member | 2022-12-07 | 12 | 07 | 2022 | Wednesday |  231 |  625.7048 |\n",
       "| 4721414 | 43ABEE85B6E15DCA | classic_bike  | 2022-12-05 06:51:04 | 2022-12-05 06:54:48 | Sangamon St &amp; Washington Blvd | 13409        | Peoria St &amp; Jackson Blvd   | 13158        | 41.88316 | -87.65110 | 41.87764 | -87.64962 | member | 2022-12-05 | 12 | 05 | 2022 | Monday    |  224 |  625.7048 |\n",
       "| 4721415 | F041C89A3D1F0270 | electric_bike | 2022-12-14 17:06:28 | 2022-12-14 17:19:27 | Bernard St &amp; Elston Ave       | 18016        | Seeley Ave &amp; Roscoe St     | 13144        | 41.94998 | -87.71402 | 41.94340 | -87.67962 | member | 2022-12-14 | 12 | 14 | 2022 | Wednesday |  779 | 2944.5564 |\n",
       "| 4721416 | A2BECB88430BE156 | classic_bike  | 2022-12-08 16:27:47 | 2022-12-08 16:32:20 | Wacker Dr &amp; Washington St     | KA1503000072 | Green St &amp; Madison St      | TA1307000120 | 41.88314 | -87.63724 | 41.88186 | -87.64926 | member | 2022-12-08 | 12 | 08 | 2022 | Thursday  |  273 | 1007.9746 |\n",
       "| 4721417 | 37B392960E566F58 | classic_bike  | 2022-12-28 09:37:38 | 2022-12-28 09:41:34 | Sangamon St &amp; Washington Blvd | 13409        | Peoria St &amp; Jackson Blvd   | 13158        | 41.88316 | -87.65110 | 41.87764 | -87.64962 | member | 2022-12-28 | 12 | 28 | 2022 | Wednesday |  236 |  625.7048 |\n",
       "| 4721418 | 2DD1587210BA45AE | classic_bike  | 2022-12-09 00:27:25 | 2022-12-09 00:35:28 | Southport Ave &amp; Waveland Ave  | 13235        | Seeley Ave &amp; Roscoe St     | 13144        | 41.94815 | -87.66394 | 41.94340 | -87.67962 | casual | 2022-12-09 | 12 | 09 | 2022 | Friday    |  483 | 1402.8890 |\n",
       "\n"
      ],
      "text/plain": [
       "        ride_id          rideable_type started_at          ended_at           \n",
       "1       C2F7DD78E82EC875 electric_bike 2022-01-13 11:59:47 2022-01-13 12:02:44\n",
       "2       A6CF8980A652D272 electric_bike 2022-01-10 08:41:56 2022-01-10 08:46:17\n",
       "3       BD0F91DFF741C66D classic_bike  2022-01-25 04:53:40 2022-01-25 04:58:01\n",
       "4       CBB80ED419105406 classic_bike  2022-01-04 00:18:04 2022-01-04 00:33:00\n",
       "5       DDC963BFDDA51EEA classic_bike  2022-01-20 01:31:10 2022-01-20 01:37:12\n",
       "6       A39C6F6CC0586C0B classic_bike  2022-01-11 18:48:09 2022-01-11 18:51:31\n",
       "7       BDC4AB637EDF981B classic_bike  2022-01-30 18:32:52 2022-01-30 18:49:26\n",
       "8       81751A3186E59A6B classic_bike  2022-01-22 12:20:02 2022-01-22 12:32:06\n",
       "9       72DC25B2DD467EEF classic_bike  2022-01-28 15:27:53 2022-01-28 15:35:16\n",
       "10      F20394FE09C63DB2 classic_bike  2022-01-11 18:27:59 2022-01-11 18:34:20\n",
       "11      006D3F363CF9600B electric_bike 2022-01-29 12:30:43 2022-01-29 12:43:04\n",
       "12      FB258EEBE89F4E17 classic_bike  2022-01-02 17:56:18 2022-01-02 18:05:38\n",
       "13      2EF51270B08DEE03 classic_bike  2022-01-20 22:03:06 2022-01-20 22:09:59\n",
       "14      E119D4E6BF686601 electric_bike 2022-01-08 05:36:40 2022-01-08 05:46:40\n",
       "16      0AA241497B970400 classic_bike  2022-01-12 14:09:13 2022-01-12 14:10:53\n",
       "17      F5E6D97D85BE8039 classic_bike  2022-01-31 12:07:45 2022-01-31 12:12:48\n",
       "18      78168928DF06A497 classic_bike  2022-01-28 17:21:59 2022-01-28 17:26:54\n",
       "19      15C176B55C2BC059 classic_bike  2022-01-19 21:00:40 2022-01-19 21:09:56\n",
       "21      9D4AAF43A011FC59 electric_bike 2022-01-18 08:03:16 2022-01-18 08:08:00\n",
       "22      A209F8E0E84D49B4 classic_bike  2022-01-25 14:46:24 2022-01-25 15:00:27\n",
       "23      6D6B462903DCB23F electric_bike 2022-01-10 06:44:21 2022-01-10 06:51:28\n",
       "24      DC809CD3B3F3BFC9 classic_bike  2022-01-22 15:14:32 2022-01-22 15:25:21\n",
       "25      1C2362DAD4090D8A electric_bike 2022-01-03 00:12:42 2022-01-03 00:17:50\n",
       "26      AB4032C2B151D137 classic_bike  2022-01-31 18:58:30 2022-01-31 19:05:17\n",
       "27      E6B6D4531ADC9F52 classic_bike  2022-01-15 17:41:15 2022-01-15 17:48:54\n",
       "28      81B423963BA2C10C classic_bike  2022-01-24 10:15:53 2022-01-24 10:39:53\n",
       "29      EC80F318604595AE electric_bike 2022-01-27 17:54:41 2022-01-27 18:05:24\n",
       "30      59E50C91451F529C classic_bike  2022-01-27 11:58:14 2022-01-27 12:07:43\n",
       "31      2A23ED3FECB72E5B electric_bike 2022-01-15 12:52:14 2022-01-15 12:59:42\n",
       "32      88543D9BC6760955 classic_bike  2022-01-14 10:14:38 2022-01-14 10:27:07\n",
       "⋮       ⋮                ⋮             ⋮                   ⋮                  \n",
       "4721389 870BB957FF58A148 classic_bike  2022-12-01 16:10:23 2022-12-01 16:13:04\n",
       "4721390 D0EE0137BE1CFE2F electric_bike 2022-12-31 11:51:58 2022-12-31 12:01:21\n",
       "4721391 8D7BAB2233A72E76 electric_bike 2022-12-04 09:02:16 2022-12-04 09:14:19\n",
       "4721392 157AACAF04B4AC1A electric_bike 2022-12-05 17:51:38 2022-12-05 17:58:40\n",
       "4721393 13618E9C77157B38 classic_bike  2022-12-28 16:50:14 2022-12-28 16:56:51\n",
       "4721394 740FE55B98D3D886 classic_bike  2022-12-24 00:10:03 2022-12-24 00:28:10\n",
       "4721395 40711C802C946CC5 classic_bike  2022-12-15 12:57:49 2022-12-15 13:13:32\n",
       "4721396 B621CD5AF243328B classic_bike  2022-12-31 16:09:36 2022-12-31 16:15:31\n",
       "4721397 3B564ED03FE887DC classic_bike  2022-12-30 22:06:29 2022-12-30 22:13:51\n",
       "4721398 69FBC651C6C9C54B classic_bike  2022-12-11 18:25:13 2022-12-11 18:28:32\n",
       "4721399 10EC1B8665061739 classic_bike  2022-12-15 09:41:06 2022-12-15 09:44:57\n",
       "4721400 4A6809171F7BBFF6 electric_bike 2022-12-19 20:30:11 2022-12-19 20:40:31\n",
       "4721401 CA31CD8A7A313F31 classic_bike  2022-12-28 14:51:01 2022-12-28 14:54:39\n",
       "4721402 97230033D8C1B22F classic_bike  2022-12-15 16:44:58 2022-12-15 16:47:46\n",
       "4721403 269378CDD3A89538 electric_bike 2022-12-18 11:06:45 2022-12-18 11:14:45\n",
       "4721404 91D4BA5F337AFA87 classic_bike  2022-12-28 14:35:36 2022-12-28 14:43:16\n",
       "4721405 283636179A819BD9 classic_bike  2022-12-01 16:19:11 2022-12-01 16:29:23\n",
       "4721406 397D3F6E37CC753E classic_bike  2022-12-15 11:35:53 2022-12-15 11:39:22\n",
       "4721407 856E6CB8A83DAE6A electric_bike 2022-12-29 17:31:30 2022-12-29 17:52:58\n",
       "4721408 1CE1BE852794BD42 electric_bike 2022-12-21 12:46:36 2022-12-21 12:49:51\n",
       "4721409 EB7999FF9DBC0535 electric_bike 2022-12-21 19:08:04 2022-12-21 19:17:14\n",
       "4721410 08BE55EE693263E5 electric_bike 2022-12-06 09:02:21 2022-12-06 09:06:51\n",
       "4721411 05AD87788BCBF206 electric_bike 2022-12-06 17:08:45 2022-12-06 17:14:43\n",
       "4721412 AFF5772FD4185626 classic_bike  2022-12-03 08:50:08 2022-12-03 08:54:17\n",
       "4721413 7BDEDE9860418B53 classic_bike  2022-12-07 06:52:45 2022-12-07 06:56:36\n",
       "4721414 43ABEE85B6E15DCA classic_bike  2022-12-05 06:51:04 2022-12-05 06:54:48\n",
       "4721415 F041C89A3D1F0270 electric_bike 2022-12-14 17:06:28 2022-12-14 17:19:27\n",
       "4721416 A2BECB88430BE156 classic_bike  2022-12-08 16:27:47 2022-12-08 16:32:20\n",
       "4721417 37B392960E566F58 classic_bike  2022-12-28 09:37:38 2022-12-28 09:41:34\n",
       "4721418 2DD1587210BA45AE classic_bike  2022-12-09 00:27:25 2022-12-09 00:35:28\n",
       "        start_station_name            start_station_id\n",
       "1       Glenwood Ave & Touhy Ave      525             \n",
       "2       Glenwood Ave & Touhy Ave      525             \n",
       "3       Sheffield Ave & Fullerton Ave TA1306000016    \n",
       "4       Clark St & Bryn Mawr Ave      KA1504000151    \n",
       "5       Michigan Ave & Jackson Blvd   TA1309000002    \n",
       "6       Wood St & Chicago Ave         637             \n",
       "7       Oakley Ave & Irving Park Rd   KA1504000158    \n",
       "8       Sheffield Ave & Fullerton Ave TA1306000016    \n",
       "9       LaSalle St & Jackson Blvd     TA1309000004    \n",
       "10      LaSalle St & Jackson Blvd     TA1309000004    \n",
       "11      Clarendon Ave & Leland Ave    TA1307000119    \n",
       "12      Sheffield Ave & Fullerton Ave TA1306000016    \n",
       "13      Rush St & Superior St         15530           \n",
       "14      Michigan Ave & Jackson Blvd   TA1309000002    \n",
       "16      LaSalle St & Jackson Blvd     TA1309000004    \n",
       "17      Michigan Ave & Jackson Blvd   TA1309000002    \n",
       "18      Michigan Ave & Jackson Blvd   TA1309000002    \n",
       "19      Clark St & Bryn Mawr Ave      KA1504000151    \n",
       "21      California Ave & Altgeld St   15646           \n",
       "22      Sheffield Ave & Fullerton Ave TA1306000016    \n",
       "23      Racine Ave & 15th St          13304           \n",
       "24      Indiana Ave & 31st St         TA1308000036    \n",
       "25      Indiana Ave & 31st St         TA1308000036    \n",
       "26      Lake Park Ave & 56th St       TA1309000063    \n",
       "27      Sheffield Ave & Fullerton Ave TA1306000016    \n",
       "28      Lincoln Park Conservatory     LP-             \n",
       "29      Sheridan Rd & Montrose Ave    TA1307000107    \n",
       "30      State St & Harrison St        SL-007          \n",
       "31      Halsted St & North Branch St  KA1504000117    \n",
       "32      Michigan Ave & Jackson Blvd   TA1309000002    \n",
       "⋮       ⋮                             ⋮               \n",
       "4721389 Larrabee St & Armitage Ave    TA1309000006    \n",
       "4721390 Dearborn St & Monroe St       TA1305000006    \n",
       "4721391 Morgan St & 18th St           13163           \n",
       "4721392 Dearborn St & Monroe St       TA1305000006    \n",
       "4721393 Dearborn St & Monroe St       TA1305000006    \n",
       "4721394 Wood St & Milwaukee Ave       13221           \n",
       "4721395 Michigan Ave & Washington St  13001           \n",
       "4721396 Canal St & Taylor St          15550           \n",
       "4721397 Canal St & Taylor St          15550           \n",
       "4721398 Canal St & Taylor St          15550           \n",
       "4721399 Canal St & Taylor St          15550           \n",
       "4721400 Wood St & Milwaukee Ave       13221           \n",
       "4721401 Canal St & Taylor St          15550           \n",
       "4721402 Larrabee St & Armitage Ave    TA1309000006    \n",
       "4721403 Throop St & Taylor St         13139           \n",
       "4721404 Dearborn St & Monroe St       TA1305000006    \n",
       "4721405 Michigan Ave & Washington St  13001           \n",
       "4721406 Canal St & Taylor St          15550           \n",
       "4721407 California Ave & Fletcher St  15642           \n",
       "4721408 Canal St & Taylor St          15550           \n",
       "4721409 Michigan Ave & Washington St  13001           \n",
       "4721410 Morgan St & Polk St           TA1307000130    \n",
       "4721411 Wells St & Hubbard St         TA1307000151    \n",
       "4721412 Sangamon St & Washington Blvd 13409           \n",
       "4721413 Sangamon St & Washington Blvd 13409           \n",
       "4721414 Sangamon St & Washington Blvd 13409           \n",
       "4721415 Bernard St & Elston Ave       18016           \n",
       "4721416 Wacker Dr & Washington St     KA1503000072    \n",
       "4721417 Sangamon St & Washington Blvd 13409           \n",
       "4721418 Southport Ave & Waveland Ave  13235           \n",
       "        end_station_name                    end_station_id start_lat start_lng\n",
       "1       Clark St & Touhy Ave                RP-007         42.01280  -87.66591\n",
       "2       Clark St & Touhy Ave                RP-007         42.01276  -87.66597\n",
       "3       Greenview Ave & Fullerton Ave       TA1307000001   41.92560  -87.65371\n",
       "4       Paulina St & Montrose Ave           TA1309000021   41.98359  -87.66915\n",
       "5       State St & Randolph St              TA1305000029   41.87785  -87.62408\n",
       "6       Honore St & Division St             TA1305000034   41.89563  -87.67207\n",
       "7       Broadway & Sheridan Rd              13323          41.95434  -87.68608\n",
       "8       Damen Ave & Clybourn Ave            13271          41.92560  -87.65371\n",
       "9       Clinton St & Washington Blvd        WL-012         41.87817  -87.63193\n",
       "10      Clinton St & Washington Blvd        WL-012         41.87817  -87.63193\n",
       "11      Broadway & Granville Ave            15571          41.96796  -87.65003\n",
       "12      Stockton Dr & Wrightwood Ave        13276          41.92560  -87.65371\n",
       "13      Larrabee St & Kingsbury St          TA1306000009   41.89576  -87.62591\n",
       "14      St. Clair St & Erie St              13016          41.87785  -87.62406\n",
       "16      Clark St & Ida B Wells Dr           TA1305000009   41.87817  -87.63193\n",
       "17      Indiana Ave & Roosevelt Rd          SL-005         41.87785  -87.62408\n",
       "18      Indiana Ave & Roosevelt Rd          SL-005         41.87785  -87.62408\n",
       "19      Clark St & Schreiber Ave            KA1504000156   41.98359  -87.66915\n",
       "21      Milwaukee Ave & Rockwell St         13242          41.92665  -87.69766\n",
       "22      Halsted St & Roscoe St              TA1309000025   41.92560  -87.65371\n",
       "23      Wolcott Ave & Polk St               TA1309000064   41.86121  -87.65660\n",
       "24      Emerald Ave & 31st St               TA1309000055   41.83884  -87.62186\n",
       "25      Indiana Ave & 40th St               13083          41.83882  -87.62183\n",
       "26      Shore Dr & 55th St                  TA1308000009   41.79324  -87.58778\n",
       "27      Ashland Ave & Wrightwood Ave        13296          41.92560  -87.65371\n",
       "28      Daley Center Plaza                  TA1306000010   41.92393  -87.63582\n",
       "29      Southport Ave & Waveland Ave        13235          41.96165  -87.65463\n",
       "30      Clark St & Lake St                  KA1503000012   41.87405  -87.62772\n",
       "31      Clark St & Chicago Ave              13303          41.89933  -87.64857\n",
       "32      Orleans St & Merchandise Mart Plaza TA1305000022   41.87785  -87.62408\n",
       "⋮       ⋮                                   ⋮              ⋮         ⋮        \n",
       "4721389 Larrabee St & Menomonee St          TA1306000007   41.91808  -87.64375\n",
       "4721390 Green St & Madison St               TA1307000120   41.88055  -87.62944\n",
       "4721391 Green St & Madison St               TA1307000120   41.85806  -87.65108\n",
       "4721392 Green St & Madison St               TA1307000120   41.88073  -87.62964\n",
       "4721393 Green St & Madison St               TA1307000120   41.88132  -87.62952\n",
       "4721394 Green St & Madison St               TA1307000120   41.90765  -87.67255\n",
       "4721395 Peoria St & Jackson Blvd            13158          41.88398  -87.62468\n",
       "4721396 Peoria St & Jackson Blvd            13158          41.87026  -87.63947\n",
       "4721397 Peoria St & Jackson Blvd            13158          41.87026  -87.63947\n",
       "4721398 Clinton St & Tilden St              13037          41.87026  -87.63947\n",
       "4721399 Clinton St & Tilden St              13037          41.87026  -87.63947\n",
       "4721400 Peoria St & Jackson Blvd            13158          41.90764  -87.67252\n",
       "4721401 Clinton St & Tilden St              13037          41.87026  -87.63947\n",
       "4721402 Larrabee St & Menomonee St          TA1306000007   41.91808  -87.64375\n",
       "4721403 Peoria St & Jackson Blvd            13158          41.86882  -87.65910\n",
       "4721404 Green St & Madison St               TA1307000120   41.88132  -87.62952\n",
       "4721405 Green St & Madison St               TA1307000120   41.88398  -87.62468\n",
       "4721406 Clinton St & Tilden St              13037          41.87026  -87.63947\n",
       "4721407 Green St & Madison St               TA1307000120   41.93852  -87.69817\n",
       "4721408 Clinton St & Tilden St              13037          41.87019  -87.63945\n",
       "4721409 Peoria St & Jackson Blvd            13158          41.88416  -87.62446\n",
       "4721410 Green St & Madison St               TA1307000120   41.87209  -87.65089\n",
       "4721411 Green St & Madison St               TA1307000120   41.89002  -87.63452\n",
       "4721412 Peoria St & Jackson Blvd            13158          41.88316  -87.65110\n",
       "4721413 Peoria St & Jackson Blvd            13158          41.88316  -87.65110\n",
       "4721414 Peoria St & Jackson Blvd            13158          41.88316  -87.65110\n",
       "4721415 Seeley Ave & Roscoe St              13144          41.94998  -87.71402\n",
       "4721416 Green St & Madison St               TA1307000120   41.88314  -87.63724\n",
       "4721417 Peoria St & Jackson Blvd            13158          41.88316  -87.65110\n",
       "4721418 Seeley Ave & Roscoe St              13144          41.94815  -87.66394\n",
       "        end_lat  end_lng   member_casual date       month day year day_of_week\n",
       "1       42.01256 -87.67437 casual        2022-01-13 01    13  2022 Thursday   \n",
       "2       42.01256 -87.67437 casual        2022-01-10 01    10  2022 Monday     \n",
       "3       41.92533 -87.66580 member        2022-01-25 01    25  2022 Tuesday    \n",
       "4       41.96151 -87.67139 casual        2022-01-04 01    04  2022 Tuesday    \n",
       "5       41.88462 -87.62783 member        2022-01-20 01    20  2022 Thursday   \n",
       "6       41.90312 -87.67394 member        2022-01-11 01    11  2022 Tuesday    \n",
       "7       41.95283 -87.64999 member        2022-01-30 01    30  2022 Sunday     \n",
       "8       41.93193 -87.67786 member        2022-01-22 01    22  2022 Saturday   \n",
       "9       41.88338 -87.64117 member        2022-01-28 01    28  2022 Friday     \n",
       "10      41.88338 -87.64117 member        2022-01-11 01    11  2022 Tuesday    \n",
       "11      41.99478 -87.66028 member        2022-01-29 01    29  2022 Saturday   \n",
       "12      41.93132 -87.63874 member        2022-01-02 01    02  2022 Sunday     \n",
       "13      41.89776 -87.64288 member        2022-01-20 01    20  2022 Thursday   \n",
       "14      41.89435 -87.62280 casual        2022-01-08 01    08  2022 Saturday   \n",
       "16      41.87593 -87.63058 member        2022-01-12 01    12  2022 Wednesday  \n",
       "17      41.86789 -87.62304 member        2022-01-31 01    31  2022 Monday     \n",
       "18      41.86789 -87.62304 member        2022-01-28 01    28  2022 Friday     \n",
       "19      41.99925 -87.67138 member        2022-01-19 01    19  2022 Wednesday  \n",
       "21      41.92020 -87.69266 casual        2022-01-18 01    18  2022 Tuesday    \n",
       "22      41.94367 -87.64895 member        2022-01-25 01    25  2022 Tuesday    \n",
       "23      41.87126 -87.67369 member        2022-01-10 01    10  2022 Monday     \n",
       "24      41.83820 -87.64514 member        2022-01-22 01    22  2022 Saturday   \n",
       "25      41.82168 -87.62160 casual        2022-01-03 01    03  2022 Monday     \n",
       "26      41.79521 -87.58071 member        2022-01-31 01    31  2022 Monday     \n",
       "27      41.92883 -87.66851 member        2022-01-15 01    15  2022 Saturday   \n",
       "28      41.88424 -87.62963 member        2022-01-24 01    24  2022 Monday     \n",
       "29      41.94815 -87.66394 casual        2022-01-27 01    27  2022 Thursday   \n",
       "30      41.88602 -87.63088 member        2022-01-27 01    27  2022 Thursday   \n",
       "31      41.89675 -87.63089 member        2022-01-15 01    15  2022 Saturday   \n",
       "32      41.88824 -87.63639 casual        2022-01-14 01    14  2022 Friday     \n",
       "⋮       ⋮        ⋮         ⋮             ⋮          ⋮     ⋮   ⋮    ⋮          \n",
       "4721389 41.91468 -87.64332 member        2022-12-01 12    01  2022 Thursday   \n",
       "4721390 41.88186 -87.64926 casual        2022-12-31 12    31  2022 Saturday   \n",
       "4721391 41.88186 -87.64926 casual        2022-12-04 12    04  2022 Sunday     \n",
       "4721392 41.88186 -87.64926 member        2022-12-05 12    05  2022 Monday     \n",
       "4721393 41.88186 -87.64926 member        2022-12-28 12    28  2022 Wednesday  \n",
       "4721394 41.88186 -87.64926 member        2022-12-24 12    24  2022 Saturday   \n",
       "4721395 41.87764 -87.64962 member        2022-12-15 12    15  2022 Thursday   \n",
       "4721396 41.87764 -87.64962 member        2022-12-31 12    31  2022 Saturday   \n",
       "4721397 41.87764 -87.64962 member        2022-12-30 12    30  2022 Friday     \n",
       "4721398 41.87588 -87.64079 member        2022-12-11 12    11  2022 Sunday     \n",
       "4721399 41.87588 -87.64079 member        2022-12-15 12    15  2022 Thursday   \n",
       "4721400 41.87764 -87.64962 member        2022-12-19 12    19  2022 Monday     \n",
       "4721401 41.87588 -87.64079 member        2022-12-28 12    28  2022 Wednesday  \n",
       "4721402 41.91468 -87.64332 member        2022-12-15 12    15  2022 Thursday   \n",
       "4721403 41.87764 -87.64962 casual        2022-12-18 12    18  2022 Sunday     \n",
       "4721404 41.88186 -87.64926 member        2022-12-28 12    28  2022 Wednesday  \n",
       "4721405 41.88186 -87.64926 member        2022-12-01 12    01  2022 Thursday   \n",
       "4721406 41.87588 -87.64079 member        2022-12-15 12    15  2022 Thursday   \n",
       "4721407 41.88186 -87.64926 casual        2022-12-29 12    29  2022 Thursday   \n",
       "4721408 41.87588 -87.64079 member        2022-12-21 12    21  2022 Wednesday  \n",
       "4721409 41.87764 -87.64962 member        2022-12-21 12    21  2022 Wednesday  \n",
       "4721410 41.88186 -87.64926 member        2022-12-06 12    06  2022 Tuesday    \n",
       "4721411 41.88186 -87.64926 member        2022-12-06 12    06  2022 Tuesday    \n",
       "4721412 41.87764 -87.64962 member        2022-12-03 12    03  2022 Saturday   \n",
       "4721413 41.87764 -87.64962 member        2022-12-07 12    07  2022 Wednesday  \n",
       "4721414 41.87764 -87.64962 member        2022-12-05 12    05  2022 Monday     \n",
       "4721415 41.94340 -87.67962 member        2022-12-14 12    14  2022 Wednesday  \n",
       "4721416 41.88186 -87.64926 member        2022-12-08 12    08  2022 Thursday   \n",
       "4721417 41.87764 -87.64962 member        2022-12-28 12    28  2022 Wednesday  \n",
       "4721418 41.94340 -87.67962 casual        2022-12-09 12    09  2022 Friday     \n",
       "        ride_duration ride_distance\n",
       "1        177           701.3791    \n",
       "2        261           696.1414    \n",
       "3        261          1003.4507    \n",
       "4        896          2460.1250    \n",
       "5        362           814.0730    \n",
       "6        202           845.6658    \n",
       "7        994          2996.6598    \n",
       "8        724          2122.6929    \n",
       "9        443           961.1204    \n",
       "10       381           961.1204    \n",
       "11       741          3097.6140    \n",
       "12       560          1394.3798    \n",
       "13       413          1426.1371    \n",
       "14       600          1835.1775    \n",
       "16       100           272.0082    \n",
       "17       303          1109.8442    \n",
       "18       295          1109.8442    \n",
       "19       556          1749.0041    \n",
       "21       284           828.0618    \n",
       "22       843          2045.2906    \n",
       "23       427          1805.5399    \n",
       "24       649          1935.4550    \n",
       "25       308          1903.5592    \n",
       "26       407           626.8189    \n",
       "27       459          1278.7961    \n",
       "28      1440          4438.2834    \n",
       "29       643          1686.1050    \n",
       "30       569          1354.9110    \n",
       "31       448          1494.6050    \n",
       "32       749          1541.6029    \n",
       "⋮       ⋮             ⋮            \n",
       "4721389  161           379.7593    \n",
       "4721390  563          1651.5036    \n",
       "4721391  723          2648.2055    \n",
       "4721392  422          1633.2725    \n",
       "4721393  397          1639.8319    \n",
       "4721394 1087          3456.0338    \n",
       "4721395  943          2186.2440    \n",
       "4721396  355          1175.5187    \n",
       "4721397  442          1175.5187    \n",
       "4721398  199           634.6528    \n",
       "4721399  231           634.6528    \n",
       "4721400  620          3836.0260    \n",
       "4721401  218           634.6528    \n",
       "4721402  168           379.7593    \n",
       "4721403  480          1256.6584    \n",
       "4721404  460          1639.8319    \n",
       "4721405  612          2053.7848    \n",
       "4721406  209           634.6528    \n",
       "4721407 1288          7487.7781    \n",
       "4721408  195           642.2576    \n",
       "4721409  550          2210.3027    \n",
       "4721410  270          1093.1672    \n",
       "4721411  358          1522.7381    \n",
       "4721412  249           625.7048    \n",
       "4721413  231           625.7048    \n",
       "4721414  224           625.7048    \n",
       "4721415  779          2944.5564    \n",
       "4721416  273          1007.9746    \n",
       "4721417  236           625.7048    \n",
       "4721418  483          1402.8890    "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "#Remove ride distance with 0\n",
    "all_trips_v3 <- all_trips_v3[!(all_trips_v3$ride_distance <= 0),]\n",
    "summary(all_trips_v3)\n",
    "View(all_trips_v3)\n",
    "#4,500,832 rows remained"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "d407d28b",
   "metadata": {
    "_cell_guid": "ea928da3-de70-4b91-a32d-3b277e635157",
    "_uuid": "601d75af-5b86-4753-8928-faba579b4314",
    "papermill": {
     "duration": 0.040153,
     "end_time": "2023-05-16T13:02:01.917203",
     "exception": false,
     "start_time": "2023-05-16T13:02:01.877050",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# **Analyze**"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "0726a604",
   "metadata": {
    "_cell_guid": "4614e6bf-73bb-4fc2-a88c-002446d4e606",
    "_uuid": "77efc6c4-c89b-4d74-89de-9c1bf16e8f48",
    "papermill": {
     "duration": 0.042189,
     "end_time": "2023-05-16T13:02:01.996740",
     "exception": false,
     "start_time": "2023-05-16T13:02:01.954551",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "First, we will find out the number of rides by types of rider."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 23,
   "id": "9e6b400a",
   "metadata": {
    "_cell_guid": "98844075-81fb-4a83-9fee-7b05d443f216",
    "_uuid": "5fcff854-d71d-4b93-9562-8e0ac9dcb83f",
    "collapsed": false,
    "execution": {
     "iopub.execute_input": "2023-05-16T13:02:02.094789Z",
     "iopub.status.busy": "2023-05-16T13:02:02.090036Z",
     "iopub.status.idle": "2023-05-16T13:02:02.172111Z",
     "shell.execute_reply": "2023-05-16T13:02:02.169788Z"
    },
    "jupyter": {
     "outputs_hidden": false
    },
    "papermill": {
     "duration": 0.134202,
     "end_time": "2023-05-16T13:02:02.176428",
     "exception": false,
     "start_time": "2023-05-16T13:02:02.042226",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "#Assign the correct order to each day of the week\n",
    "all_trips_v3$day_of_week <- \n",
    "    ordered(all_trips_v3$day_of_week, levels = c('Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'))"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 24,
   "id": "706feae8",
   "metadata": {
    "_cell_guid": "386511a6-a413-4d84-92ae-9ca1d1462f42",
    "_uuid": "96109d51-2ebe-443f-b49b-92b0ec66fadc",
    "collapsed": false,
    "execution": {
     "iopub.execute_input": "2023-05-16T13:02:02.260528Z",
     "iopub.status.busy": "2023-05-16T13:02:02.258163Z",
     "iopub.status.idle": "2023-05-16T13:02:02.490827Z",
     "shell.execute_reply": "2023-05-16T13:02:02.488573Z"
    },
    "jupyter": {
     "outputs_hidden": false
    },
    "papermill": {
     "duration": 0.276459,
     "end_time": "2023-05-16T13:02:02.494088",
     "exception": false,
     "start_time": "2023-05-16T13:02:02.217629",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A tibble: 14 × 3</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>member_casual</th><th scope=col>day_of_week</th><th scope=col>number_of_ride</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;ord&gt;</th><th scope=col>&lt;int&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>casual</td><td>Monday   </td><td>192466</td></tr>\n",
       "\t<tr><td>member</td><td>Monday   </td><td>409215</td></tr>\n",
       "\t<tr><td>casual</td><td>Tuesday  </td><td>196929</td></tr>\n",
       "\t<tr><td>member</td><td>Tuesday  </td><td>453412</td></tr>\n",
       "\t<tr><td>casual</td><td>Wednesday</td><td>207662</td></tr>\n",
       "\t<tr><td>member</td><td>Wednesday</td><td>457518</td></tr>\n",
       "\t<tr><td>casual</td><td>Thursday </td><td>231130</td></tr>\n",
       "\t<tr><td>member</td><td>Thursday </td><td>462986</td></tr>\n",
       "\t<tr><td>casual</td><td>Friday   </td><td>242074</td></tr>\n",
       "\t<tr><td>member</td><td>Friday   </td><td>402958</td></tr>\n",
       "\t<tr><td>casual</td><td>Saturday </td><td>309133</td></tr>\n",
       "\t<tr><td>member</td><td>Saturday </td><td>365826</td></tr>\n",
       "\t<tr><td>casual</td><td>Sunday   </td><td>251037</td></tr>\n",
       "\t<tr><td>member</td><td>Sunday   </td><td>318486</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A tibble: 14 × 3\n",
       "\\begin{tabular}{lll}\n",
       " member\\_casual & day\\_of\\_week & number\\_of\\_ride\\\\\n",
       " <chr> & <ord> & <int>\\\\\n",
       "\\hline\n",
       "\t casual & Monday    & 192466\\\\\n",
       "\t member & Monday    & 409215\\\\\n",
       "\t casual & Tuesday   & 196929\\\\\n",
       "\t member & Tuesday   & 453412\\\\\n",
       "\t casual & Wednesday & 207662\\\\\n",
       "\t member & Wednesday & 457518\\\\\n",
       "\t casual & Thursday  & 231130\\\\\n",
       "\t member & Thursday  & 462986\\\\\n",
       "\t casual & Friday    & 242074\\\\\n",
       "\t member & Friday    & 402958\\\\\n",
       "\t casual & Saturday  & 309133\\\\\n",
       "\t member & Saturday  & 365826\\\\\n",
       "\t casual & Sunday    & 251037\\\\\n",
       "\t member & Sunday    & 318486\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A tibble: 14 × 3\n",
       "\n",
       "| member_casual &lt;chr&gt; | day_of_week &lt;ord&gt; | number_of_ride &lt;int&gt; |\n",
       "|---|---|---|\n",
       "| casual | Monday    | 192466 |\n",
       "| member | Monday    | 409215 |\n",
       "| casual | Tuesday   | 196929 |\n",
       "| member | Tuesday   | 453412 |\n",
       "| casual | Wednesday | 207662 |\n",
       "| member | Wednesday | 457518 |\n",
       "| casual | Thursday  | 231130 |\n",
       "| member | Thursday  | 462986 |\n",
       "| casual | Friday    | 242074 |\n",
       "| member | Friday    | 402958 |\n",
       "| casual | Saturday  | 309133 |\n",
       "| member | Saturday  | 365826 |\n",
       "| casual | Sunday    | 251037 |\n",
       "| member | Sunday    | 318486 |\n",
       "\n"
      ],
      "text/plain": [
       "   member_casual day_of_week number_of_ride\n",
       "1  casual        Monday      192466        \n",
       "2  member        Monday      409215        \n",
       "3  casual        Tuesday     196929        \n",
       "4  member        Tuesday     453412        \n",
       "5  casual        Wednesday   207662        \n",
       "6  member        Wednesday   457518        \n",
       "7  casual        Thursday    231130        \n",
       "8  member        Thursday    462986        \n",
       "9  casual        Friday      242074        \n",
       "10 member        Friday      402958        \n",
       "11 casual        Saturday    309133        \n",
       "12 member        Saturday    365826        \n",
       "13 casual        Sunday      251037        \n",
       "14 member        Sunday      318486        "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "#Number of rides taken by both casual riders and members of Cyclistic on each day of the week\n",
    "all_trips_v3 %>%\n",
    "    group_by(member_casual, day_of_week) %>%\n",
    "    summarise(number_of_ride = n(), .groups = 'drop') %>%\n",
    "    arrange(day_of_week)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "35d304c5",
   "metadata": {
    "_cell_guid": "1df08eec-3656-439c-8d13-87b177d2a9eb",
    "_uuid": "34780f92-c5d1-4cd6-8962-db635d31ec11",
    "papermill": {
     "duration": 0.038456,
     "end_time": "2023-05-16T13:02:02.569242",
     "exception": false,
     "start_time": "2023-05-16T13:02:02.530786",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**Findings:** \n",
    "1. **Members ride more than casual riders every day:** Members have a higher number of rides than casual riders on all days of the week. This shows that members are more actively using Cyclistic's services across the week.\n",
    "\n",
    "2. **Weekday vs. Weekend usage:** For casual riders, the number of rides increases on the weekends, with the highest numbers on Saturday and Sunday. This suggests that casual riders may be using Cyclistic's services more for leisure or non-work related activities that are more common on weekends.\n",
    "\n",
    "3. **Consistent usage among members:** For members, the usage is more evenly distributed across all days of the week, although there is a slight decrease on the weekends. This could indicate that members are using the bikes for commuting to work or school during weekdays, in addition to leisure activities.\n",
    "\n",
    "4. **Peak usage:** The highest number of rides for casual riders occurs on Saturday, while for members it's on Thursday. This could reflect different usage patterns - casual riders may be more likely to go on leisure rides during the weekend, while members may be using the bikes more heavily for commuting during the week.\n",
    "\n",
    "5. **Conversion opportunities:** The high number of rides by casual users during the weekend shows potential for conversion to membership. Offering promotions or incentives for weekend riders to become members could be a strategy to increase the number of annual members.\n",
    "\n",
    "6. **Marketing strategies:** Given these usage patterns, marketing strategies could be tailored to the different user types. For example, marketing efforts for casual riders could highlight weekend leisure rides, while for potential members, the convenience of bike commuting could be emphasized."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 25,
   "id": "e7244030",
   "metadata": {
    "_cell_guid": "c1d1b6ce-8d1e-4bd0-8c0b-838729141719",
    "_uuid": "cd704696-5826-4dec-8611-01fe60642642",
    "collapsed": false,
    "execution": {
     "iopub.execute_input": "2023-05-16T13:02:02.649070Z",
     "iopub.status.busy": "2023-05-16T13:02:02.646852Z",
     "iopub.status.idle": "2023-05-16T13:02:02.729827Z",
     "shell.execute_reply": "2023-05-16T13:02:02.727254Z"
    },
    "jupyter": {
     "outputs_hidden": false
    },
    "papermill": {
     "duration": 0.126355,
     "end_time": "2023-05-16T13:02:02.733401",
     "exception": false,
     "start_time": "2023-05-16T13:02:02.607046",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "#Assign the correct order to each month of the year\n",
    "all_trips_v3$month <-\n",
    "  ordered(all_trips_v3$month, levels = c('01', '02', '03', '04', '05', '06', '07', '08', '09', '10', '11', '12'))"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 26,
   "id": "3ca23d69",
   "metadata": {
    "_cell_guid": "3475202f-a6a8-4d36-8cdd-667682835204",
    "_uuid": "f3615d71-f136-4a02-87d8-0809e1a33a7a",
    "collapsed": false,
    "execution": {
     "iopub.execute_input": "2023-05-16T13:02:02.814105Z",
     "iopub.status.busy": "2023-05-16T13:02:02.811927Z",
     "iopub.status.idle": "2023-05-16T13:02:02.990492Z",
     "shell.execute_reply": "2023-05-16T13:02:02.988054Z"
    },
    "jupyter": {
     "outputs_hidden": false
    },
    "papermill": {
     "duration": 0.223112,
     "end_time": "2023-05-16T13:02:02.993856",
     "exception": false,
     "start_time": "2023-05-16T13:02:02.770744",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A tibble: 24 × 3</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>member_casual</th><th scope=col>month</th><th scope=col>number_of_ride</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;ord&gt;</th><th scope=col>&lt;int&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>casual</td><td>01</td><td> 14618</td></tr>\n",
       "\t<tr><td>member</td><td>01</td><td> 75408</td></tr>\n",
       "\t<tr><td>casual</td><td>02</td><td> 16143</td></tr>\n",
       "\t<tr><td>member</td><td>02</td><td> 82213</td></tr>\n",
       "\t<tr><td>casual</td><td>03</td><td> 59272</td></tr>\n",
       "\t<tr><td>member</td><td>03</td><td>166906</td></tr>\n",
       "\t<tr><td>casual</td><td>04</td><td> 85031</td></tr>\n",
       "\t<tr><td>member</td><td>04</td><td>209207</td></tr>\n",
       "\t<tr><td>casual</td><td>05</td><td>180005</td></tr>\n",
       "\t<tr><td>member</td><td>05</td><td>295669</td></tr>\n",
       "\t<tr><td>casual</td><td>06</td><td>250348</td></tr>\n",
       "\t<tr><td>member</td><td>06</td><td>334859</td></tr>\n",
       "\t<tr><td>casual</td><td>07</td><td>275675</td></tr>\n",
       "\t<tr><td>member</td><td>07</td><td>350163</td></tr>\n",
       "\t<tr><td>casual</td><td>08</td><td>254294</td></tr>\n",
       "\t<tr><td>member</td><td>08</td><td>363126</td></tr>\n",
       "\t<tr><td>casual</td><td>09</td><td>217964</td></tr>\n",
       "\t<tr><td>member</td><td>09</td><td>348533</td></tr>\n",
       "\t<tr><td>casual</td><td>10</td><td>158216</td></tr>\n",
       "\t<tr><td>member</td><td>10</td><td>308296</td></tr>\n",
       "\t<tr><td>casual</td><td>11</td><td> 80798</td></tr>\n",
       "\t<tr><td>member</td><td>11</td><td>212193</td></tr>\n",
       "\t<tr><td>casual</td><td>12</td><td> 38067</td></tr>\n",
       "\t<tr><td>member</td><td>12</td><td>123828</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A tibble: 24 × 3\n",
       "\\begin{tabular}{lll}\n",
       " member\\_casual & month & number\\_of\\_ride\\\\\n",
       " <chr> & <ord> & <int>\\\\\n",
       "\\hline\n",
       "\t casual & 01 &  14618\\\\\n",
       "\t member & 01 &  75408\\\\\n",
       "\t casual & 02 &  16143\\\\\n",
       "\t member & 02 &  82213\\\\\n",
       "\t casual & 03 &  59272\\\\\n",
       "\t member & 03 & 166906\\\\\n",
       "\t casual & 04 &  85031\\\\\n",
       "\t member & 04 & 209207\\\\\n",
       "\t casual & 05 & 180005\\\\\n",
       "\t member & 05 & 295669\\\\\n",
       "\t casual & 06 & 250348\\\\\n",
       "\t member & 06 & 334859\\\\\n",
       "\t casual & 07 & 275675\\\\\n",
       "\t member & 07 & 350163\\\\\n",
       "\t casual & 08 & 254294\\\\\n",
       "\t member & 08 & 363126\\\\\n",
       "\t casual & 09 & 217964\\\\\n",
       "\t member & 09 & 348533\\\\\n",
       "\t casual & 10 & 158216\\\\\n",
       "\t member & 10 & 308296\\\\\n",
       "\t casual & 11 &  80798\\\\\n",
       "\t member & 11 & 212193\\\\\n",
       "\t casual & 12 &  38067\\\\\n",
       "\t member & 12 & 123828\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A tibble: 24 × 3\n",
       "\n",
       "| member_casual &lt;chr&gt; | month &lt;ord&gt; | number_of_ride &lt;int&gt; |\n",
       "|---|---|---|\n",
       "| casual | 01 |  14618 |\n",
       "| member | 01 |  75408 |\n",
       "| casual | 02 |  16143 |\n",
       "| member | 02 |  82213 |\n",
       "| casual | 03 |  59272 |\n",
       "| member | 03 | 166906 |\n",
       "| casual | 04 |  85031 |\n",
       "| member | 04 | 209207 |\n",
       "| casual | 05 | 180005 |\n",
       "| member | 05 | 295669 |\n",
       "| casual | 06 | 250348 |\n",
       "| member | 06 | 334859 |\n",
       "| casual | 07 | 275675 |\n",
       "| member | 07 | 350163 |\n",
       "| casual | 08 | 254294 |\n",
       "| member | 08 | 363126 |\n",
       "| casual | 09 | 217964 |\n",
       "| member | 09 | 348533 |\n",
       "| casual | 10 | 158216 |\n",
       "| member | 10 | 308296 |\n",
       "| casual | 11 |  80798 |\n",
       "| member | 11 | 212193 |\n",
       "| casual | 12 |  38067 |\n",
       "| member | 12 | 123828 |\n",
       "\n"
      ],
      "text/plain": [
       "   member_casual month number_of_ride\n",
       "1  casual        01     14618        \n",
       "2  member        01     75408        \n",
       "3  casual        02     16143        \n",
       "4  member        02     82213        \n",
       "5  casual        03     59272        \n",
       "6  member        03    166906        \n",
       "7  casual        04     85031        \n",
       "8  member        04    209207        \n",
       "9  casual        05    180005        \n",
       "10 member        05    295669        \n",
       "11 casual        06    250348        \n",
       "12 member        06    334859        \n",
       "13 casual        07    275675        \n",
       "14 member        07    350163        \n",
       "15 casual        08    254294        \n",
       "16 member        08    363126        \n",
       "17 casual        09    217964        \n",
       "18 member        09    348533        \n",
       "19 casual        10    158216        \n",
       "20 member        10    308296        \n",
       "21 casual        11     80798        \n",
       "22 member        11    212193        \n",
       "23 casual        12     38067        \n",
       "24 member        12    123828        "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "#Number of rides taken by both casual riders and members of Cyclistic for each month\n",
    "all_trips_v3 %>%\n",
    "    group_by(member_casual, month) %>%\n",
    "    summarise(number_of_ride = n(), .groups = 'drop') %>%\n",
    "    arrange(month)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "260e821f",
   "metadata": {
    "_cell_guid": "aab4ebf7-f986-460e-8418-ad6c45e8bbe2",
    "_uuid": "1c25cc7f-3d17-4770-9a9d-126b2ba67cb0",
    "papermill": {
     "duration": 0.036183,
     "end_time": "2023-05-16T13:02:03.068451",
     "exception": false,
     "start_time": "2023-05-16T13:02:03.032268",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**Findings:** \n",
    "1. **Members ride more than casual users every month:** In each month, the number of rides taken by members is consistently higher than the number of rides taken by casual users. This indicates that members are using Cyclistic's services more frequently.\n",
    "\n",
    "2. **Seasonality:** Both casual riders and members seem to ride more often in warmer months. For example, the number of rides for both groups is higher in May through September, and lower in colder months like January and February. This suggests that weather and temperature could be a significant factor affecting bike usage.\n",
    "\n",
    "3. **Growth during summer:** For casual users, there is a significant increase in the number of rides from May to July, peaking in July. After July, the usage decreases but remains relatively high until September. This could indicate that casual users are more likely to use the service for leisure activities during the summer months.\n",
    "\n",
    "4. **Steady usage among members:** For members, while there is also an increase in usage during the warmer months, the rise and fall are less dramatic than for casual users. This could indicate that members are using the service more consistently throughout the year, possibly for daily commuting in addition to leisure activities.\n",
    "\n",
    "5. **Possible conversion opportunities:** The large number of casual users during the summer months presents an opportunity to convert them to members. If these casual users can be persuaded to continue their usage into the colder months through the benefits of membership, there could be a significant increase in annual memberships.\n",
    "\n",
    "6. **Marketing opportunities:** The data shows that the usage of bikes increases from spring and peaks in the summer for both user types. This trend could be used to guide marketing initiatives. For instance, marketing campaigns could be ramped up in the spring to attract more casual users, with a focus on conversion to membership as the weather improves."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "0853a29b",
   "metadata": {
    "_cell_guid": "2f29b350-425e-42c9-81bd-3976a572c7fc",
    "_uuid": "811ed5a6-ff68-4dc2-8e70-d42fd2bf54d9",
    "papermill": {
     "duration": 0.037217,
     "end_time": "2023-05-16T13:02:03.142047",
     "exception": false,
     "start_time": "2023-05-16T13:02:03.104830",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Next, we will analyze whether or not ride_duration can be influenced by types of rider."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 27,
   "id": "3454fbce",
   "metadata": {
    "_cell_guid": "f9f71763-c6ce-4118-bd23-00f766196aca",
    "_uuid": "cb0b5751-88db-4482-90a0-b00d838db1d6",
    "collapsed": false,
    "execution": {
     "iopub.execute_input": "2023-05-16T13:02:03.220207Z",
     "iopub.status.busy": "2023-05-16T13:02:03.218154Z",
     "iopub.status.idle": "2023-05-16T13:02:09.050404Z",
     "shell.execute_reply": "2023-05-16T13:02:09.045686Z"
    },
    "jupyter": {
     "outputs_hidden": false
    },
    "papermill": {
     "duration": 5.876712,
     "end_time": "2023-05-16T13:02:09.055310",
     "exception": false,
     "start_time": "2023-05-16T13:02:03.178598",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 14 × 3</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>all_trips_v3$member_casual</th><th scope=col>all_trips_v3$day_of_week</th><th scope=col>all_trips_v3$ride_duration</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;ord&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>casual</td><td>Monday   </td><td>648.3301</td></tr>\n",
       "\t<tr><td>member</td><td>Monday   </td><td>541.4187</td></tr>\n",
       "\t<tr><td>casual</td><td>Tuesday  </td><td>629.4948</td></tr>\n",
       "\t<tr><td>member</td><td>Tuesday  </td><td>544.5985</td></tr>\n",
       "\t<tr><td>casual</td><td>Wednesday</td><td>631.8379</td></tr>\n",
       "\t<tr><td>member</td><td>Wednesday</td><td>549.5202</td></tr>\n",
       "\t<tr><td>casual</td><td>Thursday </td><td>639.5972</td></tr>\n",
       "\t<tr><td>member</td><td>Thursday </td><td>552.4900</td></tr>\n",
       "\t<tr><td>casual</td><td>Friday   </td><td>656.8659</td></tr>\n",
       "\t<tr><td>member</td><td>Friday   </td><td>553.2624</td></tr>\n",
       "\t<tr><td>casual</td><td>Saturday </td><td>704.3902</td></tr>\n",
       "\t<tr><td>member</td><td>Saturday </td><td>588.5973</td></tr>\n",
       "\t<tr><td>casual</td><td>Sunday   </td><td>698.6890</td></tr>\n",
       "\t<tr><td>member</td><td>Sunday   </td><td>577.1402</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 14 × 3\n",
       "\\begin{tabular}{lll}\n",
       " all\\_trips\\_v3\\$member\\_casual & all\\_trips\\_v3\\$day\\_of\\_week & all\\_trips\\_v3\\$ride\\_duration\\\\\n",
       " <chr> & <ord> & <dbl>\\\\\n",
       "\\hline\n",
       "\t casual & Monday    & 648.3301\\\\\n",
       "\t member & Monday    & 541.4187\\\\\n",
       "\t casual & Tuesday   & 629.4948\\\\\n",
       "\t member & Tuesday   & 544.5985\\\\\n",
       "\t casual & Wednesday & 631.8379\\\\\n",
       "\t member & Wednesday & 549.5202\\\\\n",
       "\t casual & Thursday  & 639.5972\\\\\n",
       "\t member & Thursday  & 552.4900\\\\\n",
       "\t casual & Friday    & 656.8659\\\\\n",
       "\t member & Friday    & 553.2624\\\\\n",
       "\t casual & Saturday  & 704.3902\\\\\n",
       "\t member & Saturday  & 588.5973\\\\\n",
       "\t casual & Sunday    & 698.6890\\\\\n",
       "\t member & Sunday    & 577.1402\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 14 × 3\n",
       "\n",
       "| all_trips_v3$member_casual &lt;chr&gt; | all_trips_v3$day_of_week &lt;ord&gt; | all_trips_v3$ride_duration &lt;dbl&gt; |\n",
       "|---|---|---|\n",
       "| casual | Monday    | 648.3301 |\n",
       "| member | Monday    | 541.4187 |\n",
       "| casual | Tuesday   | 629.4948 |\n",
       "| member | Tuesday   | 544.5985 |\n",
       "| casual | Wednesday | 631.8379 |\n",
       "| member | Wednesday | 549.5202 |\n",
       "| casual | Thursday  | 639.5972 |\n",
       "| member | Thursday  | 552.4900 |\n",
       "| casual | Friday    | 656.8659 |\n",
       "| member | Friday    | 553.2624 |\n",
       "| casual | Saturday  | 704.3902 |\n",
       "| member | Saturday  | 588.5973 |\n",
       "| casual | Sunday    | 698.6890 |\n",
       "| member | Sunday    | 577.1402 |\n",
       "\n"
      ],
      "text/plain": [
       "   all_trips_v3$member_casual all_trips_v3$day_of_week\n",
       "1  casual                     Monday                  \n",
       "2  member                     Monday                  \n",
       "3  casual                     Tuesday                 \n",
       "4  member                     Tuesday                 \n",
       "5  casual                     Wednesday               \n",
       "6  member                     Wednesday               \n",
       "7  casual                     Thursday                \n",
       "8  member                     Thursday                \n",
       "9  casual                     Friday                  \n",
       "10 member                     Friday                  \n",
       "11 casual                     Saturday                \n",
       "12 member                     Saturday                \n",
       "13 casual                     Sunday                  \n",
       "14 member                     Sunday                  \n",
       "   all_trips_v3$ride_duration\n",
       "1  648.3301                  \n",
       "2  541.4187                  \n",
       "3  629.4948                  \n",
       "4  544.5985                  \n",
       "5  631.8379                  \n",
       "6  549.5202                  \n",
       "7  639.5972                  \n",
       "8  552.4900                  \n",
       "9  656.8659                  \n",
       "10 553.2624                  \n",
       "11 704.3902                  \n",
       "12 588.5973                  \n",
       "13 698.6890                  \n",
       "14 577.1402                  "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "#Average duration of rides taken by both casual riders and members of Cyclistic on each day of the week\n",
    "aggregate(all_trips_v3$ride_duration ~ all_trips_v3$member_casual + all_trips_v3$day_of_week, FUN=mean)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "ed0a6c7f",
   "metadata": {
    "_cell_guid": "fc9f7f2e-b2ae-4ddf-8c07-ebebc81bc115",
    "_uuid": "dc8a626e-611a-4d13-8a03-4fb0add988d6",
    "papermill": {
     "duration": 0.043769,
     "end_time": "2023-05-16T13:02:09.145584",
     "exception": false,
     "start_time": "2023-05-16T13:02:09.101815",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**Findings:** \n",
    "1. **Casual riders tend to have longer ride durations:** On each day of the week, casual riders have a longer average ride duration than members. This suggests that casual riders may be using the bikes for leisure activities where they are not as time-constrained, while members might be using the bikes more for commuting, where the goal is to minimize travel time.\n",
    "\n",
    "2. **Longest rides on weekends for casual riders:** Casual riders have their longest rides on weekends, particularly on Saturdays. This further supports the idea that casual riders are likely using the bikes for leisure activities, which are more common on weekends.\n",
    "\n",
    "3. **Members have consistent ride durations:** The ride durations for members are more consistent across the week, with a slight increase over the weekend. This suggests that members are using the bikes regularly for similar types of trips, such as commuting, regardless of the day of the week.\n",
    "\n",
    "4. **Ride duration varies less for members:** The difference in ride duration from the shortest to longest day is smaller for members compared to casual riders. This could be because members, who are more likely to use the service for routine commutes, have a more predictable and consistent usage pattern.\n",
    "\n",
    "\n",
    "5. **Potential to increase ride duration for members:** Given that casual riders tend to have longer rides, there may be an opportunity to encourage members to use the bikes for longer rides, perhaps for leisure activities or exploring new areas of the city.\n",
    "\n",
    "\n",
    "6. **Promotional opportunities:** Cyclistic could offer promotions or events on weekends that encourage longer rides for both casual riders and members, thereby increasing usage and potentially attracting more casual riders to become members."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 28,
   "id": "bd6871de",
   "metadata": {
    "_cell_guid": "6c2b0f42-bfdf-42fb-b829-f7b41c07e33f",
    "_uuid": "08fc2f11-cb9b-4f19-872f-8b90067271d0",
    "collapsed": false,
    "execution": {
     "iopub.execute_input": "2023-05-16T13:02:09.261687Z",
     "iopub.status.busy": "2023-05-16T13:02:09.258696Z",
     "iopub.status.idle": "2023-05-16T13:02:09.518601Z",
     "shell.execute_reply": "2023-05-16T13:02:09.514306Z"
    },
    "jupyter": {
     "outputs_hidden": false
    },
    "papermill": {
     "duration": 0.325296,
     "end_time": "2023-05-16T13:02:09.523953",
     "exception": false,
     "start_time": "2023-05-16T13:02:09.198657",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A tibble: 24 × 3</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>member_casual</th><th scope=col>month</th><th scope=col>average_ride_duration</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;ord&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>casual</td><td>01</td><td>598.9226</td></tr>\n",
       "\t<tr><td>member</td><td>01</td><td>503.8734</td></tr>\n",
       "\t<tr><td>casual</td><td>02</td><td>617.1782</td></tr>\n",
       "\t<tr><td>member</td><td>02</td><td>507.4898</td></tr>\n",
       "\t<tr><td>casual</td><td>03</td><td>674.8349</td></tr>\n",
       "\t<tr><td>member</td><td>03</td><td>527.4681</td></tr>\n",
       "\t<tr><td>casual</td><td>04</td><td>674.0913</td></tr>\n",
       "\t<tr><td>member</td><td>04</td><td>524.6914</td></tr>\n",
       "\t<tr><td>casual</td><td>05</td><td>704.3550</td></tr>\n",
       "\t<tr><td>member</td><td>05</td><td>574.7952</td></tr>\n",
       "\t<tr><td>casual</td><td>06</td><td>700.7273</td></tr>\n",
       "\t<tr><td>member</td><td>06</td><td>598.8451</td></tr>\n",
       "\t<tr><td>casual</td><td>07</td><td>687.3422</td></tr>\n",
       "\t<tr><td>member</td><td>07</td><td>592.8775</td></tr>\n",
       "\t<tr><td>casual</td><td>08</td><td>666.9751</td></tr>\n",
       "\t<tr><td>member</td><td>08</td><td>585.2191</td></tr>\n",
       "\t<tr><td>casual</td><td>09</td><td>645.7067</td></tr>\n",
       "\t<tr><td>member</td><td>09</td><td>566.3565</td></tr>\n",
       "\t<tr><td>casual</td><td>10</td><td>608.1804</td></tr>\n",
       "\t<tr><td>member</td><td>10</td><td>529.2179</td></tr>\n",
       "\t<tr><td>casual</td><td>11</td><td>562.8606</td></tr>\n",
       "\t<tr><td>member</td><td>11</td><td>509.6842</td></tr>\n",
       "\t<tr><td>casual</td><td>12</td><td>529.6196</td></tr>\n",
       "\t<tr><td>member</td><td>12</td><td>492.2588</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A tibble: 24 × 3\n",
       "\\begin{tabular}{lll}\n",
       " member\\_casual & month & average\\_ride\\_duration\\\\\n",
       " <chr> & <ord> & <dbl>\\\\\n",
       "\\hline\n",
       "\t casual & 01 & 598.9226\\\\\n",
       "\t member & 01 & 503.8734\\\\\n",
       "\t casual & 02 & 617.1782\\\\\n",
       "\t member & 02 & 507.4898\\\\\n",
       "\t casual & 03 & 674.8349\\\\\n",
       "\t member & 03 & 527.4681\\\\\n",
       "\t casual & 04 & 674.0913\\\\\n",
       "\t member & 04 & 524.6914\\\\\n",
       "\t casual & 05 & 704.3550\\\\\n",
       "\t member & 05 & 574.7952\\\\\n",
       "\t casual & 06 & 700.7273\\\\\n",
       "\t member & 06 & 598.8451\\\\\n",
       "\t casual & 07 & 687.3422\\\\\n",
       "\t member & 07 & 592.8775\\\\\n",
       "\t casual & 08 & 666.9751\\\\\n",
       "\t member & 08 & 585.2191\\\\\n",
       "\t casual & 09 & 645.7067\\\\\n",
       "\t member & 09 & 566.3565\\\\\n",
       "\t casual & 10 & 608.1804\\\\\n",
       "\t member & 10 & 529.2179\\\\\n",
       "\t casual & 11 & 562.8606\\\\\n",
       "\t member & 11 & 509.6842\\\\\n",
       "\t casual & 12 & 529.6196\\\\\n",
       "\t member & 12 & 492.2588\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A tibble: 24 × 3\n",
       "\n",
       "| member_casual &lt;chr&gt; | month &lt;ord&gt; | average_ride_duration &lt;dbl&gt; |\n",
       "|---|---|---|\n",
       "| casual | 01 | 598.9226 |\n",
       "| member | 01 | 503.8734 |\n",
       "| casual | 02 | 617.1782 |\n",
       "| member | 02 | 507.4898 |\n",
       "| casual | 03 | 674.8349 |\n",
       "| member | 03 | 527.4681 |\n",
       "| casual | 04 | 674.0913 |\n",
       "| member | 04 | 524.6914 |\n",
       "| casual | 05 | 704.3550 |\n",
       "| member | 05 | 574.7952 |\n",
       "| casual | 06 | 700.7273 |\n",
       "| member | 06 | 598.8451 |\n",
       "| casual | 07 | 687.3422 |\n",
       "| member | 07 | 592.8775 |\n",
       "| casual | 08 | 666.9751 |\n",
       "| member | 08 | 585.2191 |\n",
       "| casual | 09 | 645.7067 |\n",
       "| member | 09 | 566.3565 |\n",
       "| casual | 10 | 608.1804 |\n",
       "| member | 10 | 529.2179 |\n",
       "| casual | 11 | 562.8606 |\n",
       "| member | 11 | 509.6842 |\n",
       "| casual | 12 | 529.6196 |\n",
       "| member | 12 | 492.2588 |\n",
       "\n"
      ],
      "text/plain": [
       "   member_casual month average_ride_duration\n",
       "1  casual        01    598.9226             \n",
       "2  member        01    503.8734             \n",
       "3  casual        02    617.1782             \n",
       "4  member        02    507.4898             \n",
       "5  casual        03    674.8349             \n",
       "6  member        03    527.4681             \n",
       "7  casual        04    674.0913             \n",
       "8  member        04    524.6914             \n",
       "9  casual        05    704.3550             \n",
       "10 member        05    574.7952             \n",
       "11 casual        06    700.7273             \n",
       "12 member        06    598.8451             \n",
       "13 casual        07    687.3422             \n",
       "14 member        07    592.8775             \n",
       "15 casual        08    666.9751             \n",
       "16 member        08    585.2191             \n",
       "17 casual        09    645.7067             \n",
       "18 member        09    566.3565             \n",
       "19 casual        10    608.1804             \n",
       "20 member        10    529.2179             \n",
       "21 casual        11    562.8606             \n",
       "22 member        11    509.6842             \n",
       "23 casual        12    529.6196             \n",
       "24 member        12    492.2588             "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "#Average duration of rides taken by both casual riders and members of Cyclistic on each month of the year\n",
    "all_trips_v3 %>%\n",
    "    group_by(member_casual, month) %>%\n",
    "    summarise(average_ride_duration = mean(ride_duration), .groups = 'drop') %>%\n",
    "    arrange(month)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "6f533b69",
   "metadata": {
    "_cell_guid": "f1568a14-a7ef-4af7-969e-c0a53f0acb6b",
    "_uuid": "241a4c79-938e-4614-b72a-3867ad576bab",
    "papermill": {
     "duration": 0.048946,
     "end_time": "2023-05-16T13:02:09.614608",
     "exception": false,
     "start_time": "2023-05-16T13:02:09.565662",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**Findings:**\n",
    "1. **Casual riders generally have longer ride durations:** Similar to the previous data, casual riders have a longer average ride duration than members in every month of the year. This once again indicates that casual riders might be using the bikes for leisure activities that are not as time-constrained, while members might be using the bikes more for routine commuting purposes.\n",
    "\n",
    "2. **Ride durations are longest in late spring and early summer:** For both casual riders and members, the longest average ride durations occur in the late spring and early summer months (May and June). This could be due to more favorable weather conditions during these months, as well as the possibility of more leisure activities taking place.\n",
    "\n",
    "3. **Ride durations are shortest in winter:** The shortest average ride durations for both types of users are in winter (December, January, and February). This is likely due to colder and potentially inclement weather conditions, which can make biking less appealing.\n",
    "\n",
    "4. **Ride durations fluctuate more for casual riders:** The average ride duration for casual riders fluctuates more over the course of the year compared to members. This might suggest that casual riders' use of the service is more influenced by factors like weather or seasonal events.\n",
    "\n",
    "5. **Potential for targeted marketing:** Knowing that casual riders' usage peaks in the warmer months, Cyclistic could target marketing efforts towards these riders during this time, with the goal of converting them to members. Conversely, efforts to increase members' usage in the winter months could also be beneficial."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "f1215595",
   "metadata": {
    "_cell_guid": "db0ab6eb-f6ac-4d85-84d8-63c268af1b1c",
    "_uuid": "e81ce553-b634-4137-9696-5887817a729c",
    "papermill": {
     "duration": 0.043937,
     "end_time": "2023-05-16T13:02:09.700503",
     "exception": false,
     "start_time": "2023-05-16T13:02:09.656566",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Next, we will analyze whether or not ride_distance can be influenced by types of rider."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 29,
   "id": "2ad7c95b",
   "metadata": {
    "_cell_guid": "a5e7caf0-3e1e-436f-97a6-6d66ea948375",
    "_uuid": "162d2e89-0bc1-4e45-b9cb-0c6ec3982fa9",
    "collapsed": false,
    "execution": {
     "iopub.execute_input": "2023-05-16T13:02:09.803300Z",
     "iopub.status.busy": "2023-05-16T13:02:09.801192Z",
     "iopub.status.idle": "2023-05-16T13:02:10.133861Z",
     "shell.execute_reply": "2023-05-16T13:02:10.130404Z"
    },
    "jupyter": {
     "outputs_hidden": false
    },
    "papermill": {
     "duration": 0.38624,
     "end_time": "2023-05-16T13:02:10.138203",
     "exception": false,
     "start_time": "2023-05-16T13:02:09.751963",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A tibble: 14 × 3</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>member_casual</th><th scope=col>day_of_week</th><th scope=col>distance_of_ride</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;ord&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>casual</td><td>Monday   </td><td>1871.286</td></tr>\n",
       "\t<tr><td>member</td><td>Monday   </td><td>1804.292</td></tr>\n",
       "\t<tr><td>casual</td><td>Tuesday  </td><td>1890.567</td></tr>\n",
       "\t<tr><td>member</td><td>Tuesday  </td><td>1823.815</td></tr>\n",
       "\t<tr><td>casual</td><td>Wednesday</td><td>2003.705</td></tr>\n",
       "\t<tr><td>member</td><td>Wednesday</td><td>1969.632</td></tr>\n",
       "\t<tr><td>casual</td><td>Thursday </td><td>1915.084</td></tr>\n",
       "\t<tr><td>member</td><td>Thursday </td><td>1847.010</td></tr>\n",
       "\t<tr><td>casual</td><td>Friday   </td><td>1893.599</td></tr>\n",
       "\t<tr><td>member</td><td>Friday   </td><td>1816.015</td></tr>\n",
       "\t<tr><td>casual</td><td>Saturday </td><td>1931.892</td></tr>\n",
       "\t<tr><td>member</td><td>Saturday </td><td>1879.914</td></tr>\n",
       "\t<tr><td>casual</td><td>Sunday   </td><td>1929.315</td></tr>\n",
       "\t<tr><td>member</td><td>Sunday   </td><td>1855.525</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A tibble: 14 × 3\n",
       "\\begin{tabular}{lll}\n",
       " member\\_casual & day\\_of\\_week & distance\\_of\\_ride\\\\\n",
       " <chr> & <ord> & <dbl>\\\\\n",
       "\\hline\n",
       "\t casual & Monday    & 1871.286\\\\\n",
       "\t member & Monday    & 1804.292\\\\\n",
       "\t casual & Tuesday   & 1890.567\\\\\n",
       "\t member & Tuesday   & 1823.815\\\\\n",
       "\t casual & Wednesday & 2003.705\\\\\n",
       "\t member & Wednesday & 1969.632\\\\\n",
       "\t casual & Thursday  & 1915.084\\\\\n",
       "\t member & Thursday  & 1847.010\\\\\n",
       "\t casual & Friday    & 1893.599\\\\\n",
       "\t member & Friday    & 1816.015\\\\\n",
       "\t casual & Saturday  & 1931.892\\\\\n",
       "\t member & Saturday  & 1879.914\\\\\n",
       "\t casual & Sunday    & 1929.315\\\\\n",
       "\t member & Sunday    & 1855.525\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A tibble: 14 × 3\n",
       "\n",
       "| member_casual &lt;chr&gt; | day_of_week &lt;ord&gt; | distance_of_ride &lt;dbl&gt; |\n",
       "|---|---|---|\n",
       "| casual | Monday    | 1871.286 |\n",
       "| member | Monday    | 1804.292 |\n",
       "| casual | Tuesday   | 1890.567 |\n",
       "| member | Tuesday   | 1823.815 |\n",
       "| casual | Wednesday | 2003.705 |\n",
       "| member | Wednesday | 1969.632 |\n",
       "| casual | Thursday  | 1915.084 |\n",
       "| member | Thursday  | 1847.010 |\n",
       "| casual | Friday    | 1893.599 |\n",
       "| member | Friday    | 1816.015 |\n",
       "| casual | Saturday  | 1931.892 |\n",
       "| member | Saturday  | 1879.914 |\n",
       "| casual | Sunday    | 1929.315 |\n",
       "| member | Sunday    | 1855.525 |\n",
       "\n"
      ],
      "text/plain": [
       "   member_casual day_of_week distance_of_ride\n",
       "1  casual        Monday      1871.286        \n",
       "2  member        Monday      1804.292        \n",
       "3  casual        Tuesday     1890.567        \n",
       "4  member        Tuesday     1823.815        \n",
       "5  casual        Wednesday   2003.705        \n",
       "6  member        Wednesday   1969.632        \n",
       "7  casual        Thursday    1915.084        \n",
       "8  member        Thursday    1847.010        \n",
       "9  casual        Friday      1893.599        \n",
       "10 member        Friday      1816.015        \n",
       "11 casual        Saturday    1931.892        \n",
       "12 member        Saturday    1879.914        \n",
       "13 casual        Sunday      1929.315        \n",
       "14 member        Sunday      1855.525        "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "#Average distance of rides taken by both casual riders and members of Cyclistic on each day of the week\n",
    "all_trips_v3 %>%\n",
    "    group_by(member_casual, day_of_week) %>%\n",
    "    summarise(distance_of_ride = mean(ride_distance), .groups = 'drop') %>%\n",
    "    arrange(day_of_week)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "e046cc84",
   "metadata": {
    "_cell_guid": "1e3381ca-994c-42ad-99ed-aa6419d46ea0",
    "_uuid": "060c36b9-a5b8-47ee-8819-7d274e44967a",
    "papermill": {
     "duration": 0.042978,
     "end_time": "2023-05-16T13:02:10.224771",
     "exception": false,
     "start_time": "2023-05-16T13:02:10.181793",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**Findings:**\n",
    "1. **Casual riders tend to travel longer distances:** Casual riders have a longer average distance of ride on all days of the week as compared to members. This could be because casual riders are more likely to use the bikes for leisurely rides or exploring, which might involve longer distances. On the other hand, members could be using the bikes for more routine, shorter-distance commutes.\n",
    "\n",
    "2. **Distance covered is more on Wednesdays for both types of riders:** Interestingly, both casual riders and members tend to cover the most distance on Wednesdays. The reason for this might need further exploration. It could be due to a variety of factors, such as specific events, promotions, or weather patterns associated with this day of the week.\n",
    "\n",
    "3. **Members have a more consistent riding distance:** The difference in riding distance between different days of the week is smaller for members than for casual riders. This could indicate that members use the service more consistently, possibly for daily commuting, whereas casual riders' usage may vary more depending on other factors like leisure time, weather, etc.\n",
    "\n",
    "4. **Weekend riding distances are comparable to weekdays:** Unlike some other usage patterns, the distance of rides does not significantly increase on weekends for either casual riders or members. This could suggest that the purpose of the rides (e.g., commuting, leisure) has a stronger influence on distance than the day of the week."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 30,
   "id": "2eaa5bcc",
   "metadata": {
    "_cell_guid": "232442e0-ffb3-40eb-a58c-3da7beb8495b",
    "_uuid": "caa36669-0666-479d-bf3f-04cad302a90b",
    "collapsed": false,
    "execution": {
     "iopub.execute_input": "2023-05-16T13:02:10.316619Z",
     "iopub.status.busy": "2023-05-16T13:02:10.314308Z",
     "iopub.status.idle": "2023-05-16T13:02:10.545486Z",
     "shell.execute_reply": "2023-05-16T13:02:10.542722Z"
    },
    "jupyter": {
     "outputs_hidden": false
    },
    "papermill": {
     "duration": 0.282069,
     "end_time": "2023-05-16T13:02:10.549373",
     "exception": false,
     "start_time": "2023-05-16T13:02:10.267304",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A tibble: 24 × 3</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>member_casual</th><th scope=col>month</th><th scope=col>distance_of_ride</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;ord&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>casual</td><td>01</td><td>1848.598</td></tr>\n",
       "\t<tr><td>member</td><td>01</td><td>1603.070</td></tr>\n",
       "\t<tr><td>casual</td><td>02</td><td>1838.618</td></tr>\n",
       "\t<tr><td>member</td><td>02</td><td>1630.762</td></tr>\n",
       "\t<tr><td>casual</td><td>03</td><td>1945.185</td></tr>\n",
       "\t<tr><td>member</td><td>03</td><td>1760.013</td></tr>\n",
       "\t<tr><td>casual</td><td>04</td><td>1957.228</td></tr>\n",
       "\t<tr><td>member</td><td>04</td><td>1758.297</td></tr>\n",
       "\t<tr><td>casual</td><td>05</td><td>1959.958</td></tr>\n",
       "\t<tr><td>member</td><td>05</td><td>1859.784</td></tr>\n",
       "\t<tr><td>casual</td><td>06</td><td>1955.434</td></tr>\n",
       "\t<tr><td>member</td><td>06</td><td>1924.295</td></tr>\n",
       "\t<tr><td>casual</td><td>07</td><td>1925.719</td></tr>\n",
       "\t<tr><td>member</td><td>07</td><td>1936.220</td></tr>\n",
       "\t<tr><td>casual</td><td>08</td><td>1936.777</td></tr>\n",
       "\t<tr><td>member</td><td>08</td><td>1932.904</td></tr>\n",
       "\t<tr><td>casual</td><td>09</td><td>1905.946</td></tr>\n",
       "\t<tr><td>member</td><td>09</td><td>1876.736</td></tr>\n",
       "\t<tr><td>casual</td><td>10</td><td>1821.182</td></tr>\n",
       "\t<tr><td>member</td><td>10</td><td>1786.141</td></tr>\n",
       "\t<tr><td>casual</td><td>11</td><td>1988.352</td></tr>\n",
       "\t<tr><td>member</td><td>11</td><td>2019.128</td></tr>\n",
       "\t<tr><td>casual</td><td>12</td><td>1648.524</td></tr>\n",
       "\t<tr><td>member</td><td>12</td><td>1680.772</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A tibble: 24 × 3\n",
       "\\begin{tabular}{lll}\n",
       " member\\_casual & month & distance\\_of\\_ride\\\\\n",
       " <chr> & <ord> & <dbl>\\\\\n",
       "\\hline\n",
       "\t casual & 01 & 1848.598\\\\\n",
       "\t member & 01 & 1603.070\\\\\n",
       "\t casual & 02 & 1838.618\\\\\n",
       "\t member & 02 & 1630.762\\\\\n",
       "\t casual & 03 & 1945.185\\\\\n",
       "\t member & 03 & 1760.013\\\\\n",
       "\t casual & 04 & 1957.228\\\\\n",
       "\t member & 04 & 1758.297\\\\\n",
       "\t casual & 05 & 1959.958\\\\\n",
       "\t member & 05 & 1859.784\\\\\n",
       "\t casual & 06 & 1955.434\\\\\n",
       "\t member & 06 & 1924.295\\\\\n",
       "\t casual & 07 & 1925.719\\\\\n",
       "\t member & 07 & 1936.220\\\\\n",
       "\t casual & 08 & 1936.777\\\\\n",
       "\t member & 08 & 1932.904\\\\\n",
       "\t casual & 09 & 1905.946\\\\\n",
       "\t member & 09 & 1876.736\\\\\n",
       "\t casual & 10 & 1821.182\\\\\n",
       "\t member & 10 & 1786.141\\\\\n",
       "\t casual & 11 & 1988.352\\\\\n",
       "\t member & 11 & 2019.128\\\\\n",
       "\t casual & 12 & 1648.524\\\\\n",
       "\t member & 12 & 1680.772\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A tibble: 24 × 3\n",
       "\n",
       "| member_casual &lt;chr&gt; | month &lt;ord&gt; | distance_of_ride &lt;dbl&gt; |\n",
       "|---|---|---|\n",
       "| casual | 01 | 1848.598 |\n",
       "| member | 01 | 1603.070 |\n",
       "| casual | 02 | 1838.618 |\n",
       "| member | 02 | 1630.762 |\n",
       "| casual | 03 | 1945.185 |\n",
       "| member | 03 | 1760.013 |\n",
       "| casual | 04 | 1957.228 |\n",
       "| member | 04 | 1758.297 |\n",
       "| casual | 05 | 1959.958 |\n",
       "| member | 05 | 1859.784 |\n",
       "| casual | 06 | 1955.434 |\n",
       "| member | 06 | 1924.295 |\n",
       "| casual | 07 | 1925.719 |\n",
       "| member | 07 | 1936.220 |\n",
       "| casual | 08 | 1936.777 |\n",
       "| member | 08 | 1932.904 |\n",
       "| casual | 09 | 1905.946 |\n",
       "| member | 09 | 1876.736 |\n",
       "| casual | 10 | 1821.182 |\n",
       "| member | 10 | 1786.141 |\n",
       "| casual | 11 | 1988.352 |\n",
       "| member | 11 | 2019.128 |\n",
       "| casual | 12 | 1648.524 |\n",
       "| member | 12 | 1680.772 |\n",
       "\n"
      ],
      "text/plain": [
       "   member_casual month distance_of_ride\n",
       "1  casual        01    1848.598        \n",
       "2  member        01    1603.070        \n",
       "3  casual        02    1838.618        \n",
       "4  member        02    1630.762        \n",
       "5  casual        03    1945.185        \n",
       "6  member        03    1760.013        \n",
       "7  casual        04    1957.228        \n",
       "8  member        04    1758.297        \n",
       "9  casual        05    1959.958        \n",
       "10 member        05    1859.784        \n",
       "11 casual        06    1955.434        \n",
       "12 member        06    1924.295        \n",
       "13 casual        07    1925.719        \n",
       "14 member        07    1936.220        \n",
       "15 casual        08    1936.777        \n",
       "16 member        08    1932.904        \n",
       "17 casual        09    1905.946        \n",
       "18 member        09    1876.736        \n",
       "19 casual        10    1821.182        \n",
       "20 member        10    1786.141        \n",
       "21 casual        11    1988.352        \n",
       "22 member        11    2019.128        \n",
       "23 casual        12    1648.524        \n",
       "24 member        12    1680.772        "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "#Average distance of rides taken by both casual riders and members of Cyclistic on each month of the year\n",
    "all_trips_v3 %>%\n",
    "    group_by(member_casual, month) %>%\n",
    "    summarise(distance_of_ride = mean(ride_distance), .groups = 'drop') %>%\n",
    "    arrange(month)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "dfddbb0d",
   "metadata": {
    "_cell_guid": "035ee4f0-a1a5-4479-8515-59c97bb92102",
    "_uuid": "c9e2fad2-8589-4d97-be99-a381868a1192",
    "papermill": {
     "duration": 0.041542,
     "end_time": "2023-05-16T13:02:10.633220",
     "exception": false,
     "start_time": "2023-05-16T13:02:10.591678",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**Findings:**\n",
    "1. **Member vs Casual:** Casual riders on average seem to cover slightly longer distances than members do across all months.\n",
    "\n",
    "2. **Riding Patterns Over the Year:**\n",
    "\n",
    "   - Members: There's a significant rise in the average ride distance from May to June, after which the distance remains relatively consistent up until November.\n",
    "\n",
    "   - Casual Riders: They show a consistent pattern from March to August, with the average distance ridden remaining fairly stable. The distance decreases slightly from September to October and then rises again in November. \n",
    "\n",
    "3. **Shortest Distances:** The shortest average distances ridden by both types of users are in January and February, likely due to the harsh winter weather conditions.\n",
    "\n",
    "4. **Longest Distances:** The longest average distances ridden by both types of users are in November. Members ride slightly longer distances on average than casual riders, suggesting that members might be more committed or accustomed to riding in less ideal weather conditions.\n",
    "\n",
    "5. **Closing Gap:** The gap between casual riders and members in terms of average distance ridden decreases as the year progresses. This could suggest that casual riders are becoming more comfortable and riding longer distances as they get more experience, or it could be a result of seasonal factors."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "71d68945",
   "metadata": {
    "_cell_guid": "65ecd8b5-dfed-40c3-bc33-8ef207cdaa02",
    "_uuid": "7c092f7b-5f0d-4a0e-a599-35d3f7e1a9fe",
    "papermill": {
     "duration": 0.046652,
     "end_time": "2023-05-16T13:02:10.722862",
     "exception": false,
     "start_time": "2023-05-16T13:02:10.676210",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "As a support to my finding, let's analyze which types of bikes are most popular with casual riders vs. annual members."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 31,
   "id": "b2e34501",
   "metadata": {
    "_cell_guid": "bd05c69b-9b60-4e79-a0e9-1c41912d1e42",
    "_uuid": "d44c03cd-ec8c-4a0d-a0eb-f50731cc5b8f",
    "collapsed": false,
    "execution": {
     "iopub.execute_input": "2023-05-16T13:02:10.811225Z",
     "iopub.status.busy": "2023-05-16T13:02:10.808822Z",
     "iopub.status.idle": "2023-05-16T13:02:10.958278Z",
     "shell.execute_reply": "2023-05-16T13:02:10.955370Z"
    },
    "jupyter": {
     "outputs_hidden": false
    },
    "papermill": {
     "duration": 0.197646,
     "end_time": "2023-05-16T13:02:10.962893",
     "exception": false,
     "start_time": "2023-05-16T13:02:10.765247",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A tibble: 2 × 2</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>member_casual</th><th scope=col>number_of_rides</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;int&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>casual</td><td>1630431</td></tr>\n",
       "\t<tr><td>member</td><td>2870401</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A tibble: 2 × 2\n",
       "\\begin{tabular}{ll}\n",
       " member\\_casual & number\\_of\\_rides\\\\\n",
       " <chr> & <int>\\\\\n",
       "\\hline\n",
       "\t casual & 1630431\\\\\n",
       "\t member & 2870401\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A tibble: 2 × 2\n",
       "\n",
       "| member_casual &lt;chr&gt; | number_of_rides &lt;int&gt; |\n",
       "|---|---|\n",
       "| casual | 1630431 |\n",
       "| member | 2870401 |\n",
       "\n"
      ],
      "text/plain": [
       "  member_casual number_of_rides\n",
       "1 casual        1630431        \n",
       "2 member        2870401        "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "#Total rides by membership status\n",
    "all_trips_v3 %>%\n",
    "  group_by(member_casual) %>%\n",
    "  summarise(number_of_rides = n() , .groups = 'drop')"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 32,
   "id": "22628489",
   "metadata": {
    "_cell_guid": "26ca11be-a847-4b4f-94bb-7b2c24fa70de",
    "_uuid": "6ef3ff23-e47c-4d90-ac4e-c811bbaa1a47",
    "collapsed": false,
    "execution": {
     "iopub.execute_input": "2023-05-16T13:02:11.058804Z",
     "iopub.status.busy": "2023-05-16T13:02:11.056812Z",
     "iopub.status.idle": "2023-05-16T13:02:11.404381Z",
     "shell.execute_reply": "2023-05-16T13:02:11.401533Z"
    },
    "jupyter": {
     "outputs_hidden": false
    },
    "papermill": {
     "duration": 0.403254,
     "end_time": "2023-05-16T13:02:11.411913",
     "exception": false,
     "start_time": "2023-05-16T13:02:11.008659",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A tibble: 5 × 3</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>member_casual</th><th scope=col>rideable_type</th><th scope=col>number_of_rides</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;int&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>casual</td><td>classic_bike </td><td> 589147</td></tr>\n",
       "\t<tr><td>casual</td><td>docked_bike  </td><td>  65174</td></tr>\n",
       "\t<tr><td>casual</td><td>electric_bike</td><td> 976110</td></tr>\n",
       "\t<tr><td>member</td><td>classic_bike </td><td>1434475</td></tr>\n",
       "\t<tr><td>member</td><td>electric_bike</td><td>1435926</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A tibble: 5 × 3\n",
       "\\begin{tabular}{lll}\n",
       " member\\_casual & rideable\\_type & number\\_of\\_rides\\\\\n",
       " <chr> & <chr> & <int>\\\\\n",
       "\\hline\n",
       "\t casual & classic\\_bike  &  589147\\\\\n",
       "\t casual & docked\\_bike   &   65174\\\\\n",
       "\t casual & electric\\_bike &  976110\\\\\n",
       "\t member & classic\\_bike  & 1434475\\\\\n",
       "\t member & electric\\_bike & 1435926\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A tibble: 5 × 3\n",
       "\n",
       "| member_casual &lt;chr&gt; | rideable_type &lt;chr&gt; | number_of_rides &lt;int&gt; |\n",
       "|---|---|---|\n",
       "| casual | classic_bike  |  589147 |\n",
       "| casual | docked_bike   |   65174 |\n",
       "| casual | electric_bike |  976110 |\n",
       "| member | classic_bike  | 1434475 |\n",
       "| member | electric_bike | 1435926 |\n",
       "\n"
      ],
      "text/plain": [
       "  member_casual rideable_type number_of_rides\n",
       "1 casual        classic_bike   589147        \n",
       "2 casual        docked_bike     65174        \n",
       "3 casual        electric_bike  976110        \n",
       "4 member        classic_bike  1434475        \n",
       "5 member        electric_bike 1435926        "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "#Rideable type preference by membership status\n",
    "all_trips_v3 %>%\n",
    "  group_by(member_casual, rideable_type) %>%\n",
    "  summarise(number_of_rides = n() , .groups = 'drop')"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "fdc61593",
   "metadata": {
    "_cell_guid": "31b86f1a-04ae-4050-a1dd-e29777fde7a0",
    "_uuid": "ce2c10a5-193c-4ac2-bbb5-0ac14fac3817",
    "papermill": {
     "duration": 0.053558,
     "end_time": "2023-05-16T13:02:11.526385",
     "exception": false,
     "start_time": "2023-05-16T13:02:11.472827",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**Finding:**\n",
    "\n",
    "1. **Ride Preference:** Both casual riders and annual members exhibit a strong inclination towards electric bikes, with classic bikes being the next favorite. Docked bikes have the least usage among casual riders.\n",
    "\n",
    "2. **Rider Habits and Bike Preference:** The preference for electric bikes aligns with our earlier observation that riders, both casual and annual members, favor longer duration and distance for their rides. Electric bikes, being easier to ride over extended distances, could be the preferred choice.\n",
    "\n",
    "3. **Casual Riders' Usage Pattern:** The relatively low usage of docked bikes by casual riders might be associated with their riding habits. As we found earlier, casual riders predominantly ride on weekends and for more extended periods, which suggests leisurely rides. They might prefer the comfort and convenience of electric or classic bikes for such rides.\n",
    "\n",
    "4. **Correlation with Previous Findings:** The data continues to corroborate the trend of higher usage by annual members, aligning with the previous findings of more frequent and regular usage patterns by this group."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "59dddeca",
   "metadata": {
    "_cell_guid": "ee763a2c-3375-41c6-93a0-7648b657593e",
    "_uuid": "99151f4d-1da9-40e8-a3c7-8f3022eb0dc8",
    "papermill": {
     "duration": 0.060345,
     "end_time": "2023-05-16T13:02:11.635921",
     "exception": false,
     "start_time": "2023-05-16T13:02:11.575576",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "I would like to perform an additional analysis on Start and End Stations. By analyzing the 'start_station_name', 'start_station_id', 'end_station_name', and 'end_station_id' fields, we could identify the most popular stations for both casual riders and annual members. We can study whether certain stations are more popular among casual riders or members. This could help with targeting marketing efforts in specific locations."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 33,
   "id": "5e1b7a00",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-16T13:02:11.756113Z",
     "iopub.status.busy": "2023-05-16T13:02:11.753730Z",
     "iopub.status.idle": "2023-05-16T13:02:12.406639Z",
     "shell.execute_reply": "2023-05-16T13:02:12.402597Z"
    },
    "papermill": {
     "duration": 0.718601,
     "end_time": "2023-05-16T13:02:12.411741",
     "exception": false,
     "start_time": "2023-05-16T13:02:11.693140",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A tibble: 3002 × 4</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>member_casual</th><th scope=col>start_station_name</th><th scope=col>start_station_id</th><th scope=col>number_of_rides</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;int&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>casual</td><td><span style=white-space:pre-wrap>Streeter Dr &amp; Grand Ave           </span></td><td><span style=white-space:pre-wrap>13022       </span></td><td>23761</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>Kingsbury St &amp; Kinzie St          </span></td><td>KA1503000043</td><td>23602</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>Clark St &amp; Elm St                 </span></td><td>TA1307000039</td><td>19794</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>Wells St &amp; Concord Ln             </span></td><td>TA1308000050</td><td>19631</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>University Ave &amp; 57th St          </span></td><td>KA1503000071</td><td>18499</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>Clinton St &amp; Washington Blvd      </span></td><td><span style=white-space:pre-wrap>WL-012      </span></td><td>18440</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>Ellis Ave &amp; 60th St               </span></td><td>KA1503000014</td><td>18320</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>Clinton St &amp; Madison St           </span></td><td>TA1305000032</td><td>17754</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>Wells St &amp; Elm St                 </span></td><td>KA1504000135</td><td>17549</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>Loomis St &amp; Lexington St          </span></td><td><span style=white-space:pre-wrap>13332       </span></td><td>17325</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>Broadway &amp; Barry Ave              </span></td><td><span style=white-space:pre-wrap>13137       </span></td><td>15407</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>Wells St &amp; Huron St               </span></td><td>TA1306000012</td><td>15049</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>Dearborn St &amp; Erie St             </span></td><td><span style=white-space:pre-wrap>13045       </span></td><td>14756</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>Wells St &amp; Hubbard St             </span></td><td>TA1307000151</td><td>14654</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>Ellis Ave &amp; 55th St               </span></td><td>KA1504000076</td><td>14339</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>Canal St &amp; Adams St               </span></td><td><span style=white-space:pre-wrap>13011       </span></td><td>14307</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>St. Clair St &amp; Erie St            </span></td><td><span style=white-space:pre-wrap>13016       </span></td><td>14307</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>Wilton Ave &amp; Belmont Ave          </span></td><td>TA1307000134</td><td>14158</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>Sheffield Ave &amp; Fullerton Ave     </span></td><td>TA1306000016</td><td>13983</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>Clark St &amp; Wrightwood Ave         </span></td><td>TA1305000014</td><td>13949</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>Wabash Ave &amp; Grand Ave            </span></td><td>TA1307000117</td><td>13816</td></tr>\n",
       "\t<tr><td>casual</td><td>DuSable Lake Shore Dr &amp; North Blvd</td><td><span style=white-space:pre-wrap>LF-005      </span></td><td>13598</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>Clark St &amp; Armitage Ave           </span></td><td><span style=white-space:pre-wrap>13146       </span></td><td>13505</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>Ashland Ave &amp; Division St         </span></td><td><span style=white-space:pre-wrap>13061       </span></td><td>13336</td></tr>\n",
       "\t<tr><td>casual</td><td><span style=white-space:pre-wrap>Wells St &amp; Concord Ln             </span></td><td>TA1308000050</td><td>13329</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>Desplaines St &amp; Kinzie St         </span></td><td>TA1306000003</td><td>13278</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>Green St &amp; Madison St             </span></td><td>TA1307000120</td><td>13212</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>Larrabee St &amp; Kingsbury St        </span></td><td>TA1306000009</td><td>13111</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>Clinton St &amp; Jackson Blvd         </span></td><td><span style=white-space:pre-wrap>638         </span></td><td>13028</td></tr>\n",
       "\t<tr><td>casual</td><td>DuSable Lake Shore Dr &amp; Monroe St </td><td><span style=white-space:pre-wrap>13300       </span></td><td>12957</td></tr>\n",
       "\t<tr><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td></tr>\n",
       "\t<tr><td>member</td><td>Public Rack - Whipple St &amp; 63rd St</td><td><span style=white-space:pre-wrap>1028                              </span></td><td>1</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>Public Rack - Wood St &amp; 103rd St  </span></td><td><span style=white-space:pre-wrap>694                               </span></td><td>1</td></tr>\n",
       "\t<tr><td>member</td><td>Public Rack - Yates Ave &amp; 100th St</td><td><span style=white-space:pre-wrap>631                               </span></td><td>1</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>Pulaski Rd &amp; 40th St              </span></td><td><span style=white-space:pre-wrap>834                               </span></td><td>1</td></tr>\n",
       "\t<tr><td>member</td><td>Pullman - Ross Dress for Less     </td><td>920                               </td><td>1</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>Rockwell &amp; 111th St               </span></td><td><span style=white-space:pre-wrap>677                               </span></td><td>1</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>Sacramento Ave &amp; Greenleaf Ave    </span></td><td><span style=white-space:pre-wrap>484                               </span></td><td>1</td></tr>\n",
       "\t<tr><td>member</td><td>Sacramento Blvd &amp; Washington Blvd </td><td><span style=white-space:pre-wrap>854                               </span></td><td>1</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>Sangamon St &amp; 79th St             </span></td><td><span style=white-space:pre-wrap>655                               </span></td><td>1</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>Sawyer Ave &amp; 111th St             </span></td><td><span style=white-space:pre-wrap>675                               </span></td><td>1</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>Sawyer Ave &amp; Bryn Mawr Ave - SE   </span></td><td><span style=white-space:pre-wrap>857                               </span></td><td>1</td></tr>\n",
       "\t<tr><td>member</td><td>Senka \"Edward Duke\" Park          </td><td>773                               </td><td>1</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>Spaulding Ave &amp; Foster Ave        </span></td><td><span style=white-space:pre-wrap>859                               </span></td><td>1</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>St Louis Ave &amp; Berteau Ave        </span></td><td><span style=white-space:pre-wrap>493                               </span></td><td>1</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>State St &amp; 123rd St               </span></td><td><span style=white-space:pre-wrap>20210                             </span></td><td>1</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>Stony Island Ave &amp; 86th St        </span></td><td><span style=white-space:pre-wrap>666                               </span></td><td>1</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>Torrence Ave  &amp; 106th St          </span></td><td><span style=white-space:pre-wrap>923                               </span></td><td>1</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>Troy &amp; 111th St                   </span></td><td><span style=white-space:pre-wrap>896                               </span></td><td>1</td></tr>\n",
       "\t<tr><td>member</td><td>Tuley (Murray) Park               </td><td>645                               </td><td>1</td></tr>\n",
       "\t<tr><td>member</td><td>WEST CHI-WATSON                   </td><td>DIVVY 001 - Warehouse test station</td><td>1</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>Wallace St &amp; 112 St               </span></td><td><span style=white-space:pre-wrap>593                               </span></td><td>1</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>Washtenaw Ave &amp; 63rd St           </span></td><td><span style=white-space:pre-wrap>758                               </span></td><td>1</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>Wentworth Ave &amp; 103rd St          </span></td><td><span style=white-space:pre-wrap>604                               </span></td><td>1</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>Wentworth Ave &amp; 79th St           </span></td><td><span style=white-space:pre-wrap>657                               </span></td><td>1</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>Western Ave &amp; 111th St - NW       </span></td><td><span style=white-space:pre-wrap>681                               </span></td><td>1</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>Western Ave &amp; 111th St - SW       </span></td><td><span style=white-space:pre-wrap>679                               </span></td><td>1</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>Whippie St &amp; 26th St              </span></td><td><span style=white-space:pre-wrap>540                               </span></td><td>1</td></tr>\n",
       "\t<tr><td>member</td><td>William Rainey Harper High School </td><td>740                               </td><td>1</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>Wolcott Ave &amp; 61st St             </span></td><td><span style=white-space:pre-wrap>909                               </span></td><td>1</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>Yates Blvd &amp; Exchange Ave         </span></td><td><span style=white-space:pre-wrap>905                               </span></td><td>1</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A tibble: 3002 × 4\n",
       "\\begin{tabular}{llll}\n",
       " member\\_casual & start\\_station\\_name & start\\_station\\_id & number\\_of\\_rides\\\\\n",
       " <chr> & <chr> & <chr> & <int>\\\\\n",
       "\\hline\n",
       "\t casual & Streeter Dr \\& Grand Ave            & 13022        & 23761\\\\\n",
       "\t member & Kingsbury St \\& Kinzie St           & KA1503000043 & 23602\\\\\n",
       "\t member & Clark St \\& Elm St                  & TA1307000039 & 19794\\\\\n",
       "\t member & Wells St \\& Concord Ln              & TA1308000050 & 19631\\\\\n",
       "\t member & University Ave \\& 57th St           & KA1503000071 & 18499\\\\\n",
       "\t member & Clinton St \\& Washington Blvd       & WL-012       & 18440\\\\\n",
       "\t member & Ellis Ave \\& 60th St                & KA1503000014 & 18320\\\\\n",
       "\t member & Clinton St \\& Madison St            & TA1305000032 & 17754\\\\\n",
       "\t member & Wells St \\& Elm St                  & KA1504000135 & 17549\\\\\n",
       "\t member & Loomis St \\& Lexington St           & 13332        & 17325\\\\\n",
       "\t member & Broadway \\& Barry Ave               & 13137        & 15407\\\\\n",
       "\t member & Wells St \\& Huron St                & TA1306000012 & 15049\\\\\n",
       "\t member & Dearborn St \\& Erie St              & 13045        & 14756\\\\\n",
       "\t member & Wells St \\& Hubbard St              & TA1307000151 & 14654\\\\\n",
       "\t member & Ellis Ave \\& 55th St                & KA1504000076 & 14339\\\\\n",
       "\t member & Canal St \\& Adams St                & 13011        & 14307\\\\\n",
       "\t member & St. Clair St \\& Erie St             & 13016        & 14307\\\\\n",
       "\t member & Wilton Ave \\& Belmont Ave           & TA1307000134 & 14158\\\\\n",
       "\t member & Sheffield Ave \\& Fullerton Ave      & TA1306000016 & 13983\\\\\n",
       "\t member & Clark St \\& Wrightwood Ave          & TA1305000014 & 13949\\\\\n",
       "\t member & Wabash Ave \\& Grand Ave             & TA1307000117 & 13816\\\\\n",
       "\t casual & DuSable Lake Shore Dr \\& North Blvd & LF-005       & 13598\\\\\n",
       "\t member & Clark St \\& Armitage Ave            & 13146        & 13505\\\\\n",
       "\t member & Ashland Ave \\& Division St          & 13061        & 13336\\\\\n",
       "\t casual & Wells St \\& Concord Ln              & TA1308000050 & 13329\\\\\n",
       "\t member & Desplaines St \\& Kinzie St          & TA1306000003 & 13278\\\\\n",
       "\t member & Green St \\& Madison St              & TA1307000120 & 13212\\\\\n",
       "\t member & Larrabee St \\& Kingsbury St         & TA1306000009 & 13111\\\\\n",
       "\t member & Clinton St \\& Jackson Blvd          & 638          & 13028\\\\\n",
       "\t casual & DuSable Lake Shore Dr \\& Monroe St  & 13300        & 12957\\\\\n",
       "\t ⋮ & ⋮ & ⋮ & ⋮\\\\\n",
       "\t member & Public Rack - Whipple St \\& 63rd St & 1028                               & 1\\\\\n",
       "\t member & Public Rack - Wood St \\& 103rd St   & 694                                & 1\\\\\n",
       "\t member & Public Rack - Yates Ave \\& 100th St & 631                                & 1\\\\\n",
       "\t member & Pulaski Rd \\& 40th St               & 834                                & 1\\\\\n",
       "\t member & Pullman - Ross Dress for Less      & 920                                & 1\\\\\n",
       "\t member & Rockwell \\& 111th St                & 677                                & 1\\\\\n",
       "\t member & Sacramento Ave \\& Greenleaf Ave     & 484                                & 1\\\\\n",
       "\t member & Sacramento Blvd \\& Washington Blvd  & 854                                & 1\\\\\n",
       "\t member & Sangamon St \\& 79th St              & 655                                & 1\\\\\n",
       "\t member & Sawyer Ave \\& 111th St              & 675                                & 1\\\\\n",
       "\t member & Sawyer Ave \\& Bryn Mawr Ave - SE    & 857                                & 1\\\\\n",
       "\t member & Senka \"Edward Duke\" Park           & 773                                & 1\\\\\n",
       "\t member & Spaulding Ave \\& Foster Ave         & 859                                & 1\\\\\n",
       "\t member & St Louis Ave \\& Berteau Ave         & 493                                & 1\\\\\n",
       "\t member & State St \\& 123rd St                & 20210                              & 1\\\\\n",
       "\t member & Stony Island Ave \\& 86th St         & 666                                & 1\\\\\n",
       "\t member & Torrence Ave  \\& 106th St           & 923                                & 1\\\\\n",
       "\t member & Troy \\& 111th St                    & 896                                & 1\\\\\n",
       "\t member & Tuley (Murray) Park                & 645                                & 1\\\\\n",
       "\t member & WEST CHI-WATSON                    & DIVVY 001 - Warehouse test station & 1\\\\\n",
       "\t member & Wallace St \\& 112 St                & 593                                & 1\\\\\n",
       "\t member & Washtenaw Ave \\& 63rd St            & 758                                & 1\\\\\n",
       "\t member & Wentworth Ave \\& 103rd St           & 604                                & 1\\\\\n",
       "\t member & Wentworth Ave \\& 79th St            & 657                                & 1\\\\\n",
       "\t member & Western Ave \\& 111th St - NW        & 681                                & 1\\\\\n",
       "\t member & Western Ave \\& 111th St - SW        & 679                                & 1\\\\\n",
       "\t member & Whippie St \\& 26th St               & 540                                & 1\\\\\n",
       "\t member & William Rainey Harper High School  & 740                                & 1\\\\\n",
       "\t member & Wolcott Ave \\& 61st St              & 909                                & 1\\\\\n",
       "\t member & Yates Blvd \\& Exchange Ave          & 905                                & 1\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A tibble: 3002 × 4\n",
       "\n",
       "| member_casual &lt;chr&gt; | start_station_name &lt;chr&gt; | start_station_id &lt;chr&gt; | number_of_rides &lt;int&gt; |\n",
       "|---|---|---|---|\n",
       "| casual | Streeter Dr &amp; Grand Ave            | 13022        | 23761 |\n",
       "| member | Kingsbury St &amp; Kinzie St           | KA1503000043 | 23602 |\n",
       "| member | Clark St &amp; Elm St                  | TA1307000039 | 19794 |\n",
       "| member | Wells St &amp; Concord Ln              | TA1308000050 | 19631 |\n",
       "| member | University Ave &amp; 57th St           | KA1503000071 | 18499 |\n",
       "| member | Clinton St &amp; Washington Blvd       | WL-012       | 18440 |\n",
       "| member | Ellis Ave &amp; 60th St                | KA1503000014 | 18320 |\n",
       "| member | Clinton St &amp; Madison St            | TA1305000032 | 17754 |\n",
       "| member | Wells St &amp; Elm St                  | KA1504000135 | 17549 |\n",
       "| member | Loomis St &amp; Lexington St           | 13332        | 17325 |\n",
       "| member | Broadway &amp; Barry Ave               | 13137        | 15407 |\n",
       "| member | Wells St &amp; Huron St                | TA1306000012 | 15049 |\n",
       "| member | Dearborn St &amp; Erie St              | 13045        | 14756 |\n",
       "| member | Wells St &amp; Hubbard St              | TA1307000151 | 14654 |\n",
       "| member | Ellis Ave &amp; 55th St                | KA1504000076 | 14339 |\n",
       "| member | Canal St &amp; Adams St                | 13011        | 14307 |\n",
       "| member | St. Clair St &amp; Erie St             | 13016        | 14307 |\n",
       "| member | Wilton Ave &amp; Belmont Ave           | TA1307000134 | 14158 |\n",
       "| member | Sheffield Ave &amp; Fullerton Ave      | TA1306000016 | 13983 |\n",
       "| member | Clark St &amp; Wrightwood Ave          | TA1305000014 | 13949 |\n",
       "| member | Wabash Ave &amp; Grand Ave             | TA1307000117 | 13816 |\n",
       "| casual | DuSable Lake Shore Dr &amp; North Blvd | LF-005       | 13598 |\n",
       "| member | Clark St &amp; Armitage Ave            | 13146        | 13505 |\n",
       "| member | Ashland Ave &amp; Division St          | 13061        | 13336 |\n",
       "| casual | Wells St &amp; Concord Ln              | TA1308000050 | 13329 |\n",
       "| member | Desplaines St &amp; Kinzie St          | TA1306000003 | 13278 |\n",
       "| member | Green St &amp; Madison St              | TA1307000120 | 13212 |\n",
       "| member | Larrabee St &amp; Kingsbury St         | TA1306000009 | 13111 |\n",
       "| member | Clinton St &amp; Jackson Blvd          | 638          | 13028 |\n",
       "| casual | DuSable Lake Shore Dr &amp; Monroe St  | 13300        | 12957 |\n",
       "| ⋮ | ⋮ | ⋮ | ⋮ |\n",
       "| member | Public Rack - Whipple St &amp; 63rd St | 1028                               | 1 |\n",
       "| member | Public Rack - Wood St &amp; 103rd St   | 694                                | 1 |\n",
       "| member | Public Rack - Yates Ave &amp; 100th St | 631                                | 1 |\n",
       "| member | Pulaski Rd &amp; 40th St               | 834                                | 1 |\n",
       "| member | Pullman - Ross Dress for Less      | 920                                | 1 |\n",
       "| member | Rockwell &amp; 111th St                | 677                                | 1 |\n",
       "| member | Sacramento Ave &amp; Greenleaf Ave     | 484                                | 1 |\n",
       "| member | Sacramento Blvd &amp; Washington Blvd  | 854                                | 1 |\n",
       "| member | Sangamon St &amp; 79th St              | 655                                | 1 |\n",
       "| member | Sawyer Ave &amp; 111th St              | 675                                | 1 |\n",
       "| member | Sawyer Ave &amp; Bryn Mawr Ave - SE    | 857                                | 1 |\n",
       "| member | Senka \"Edward Duke\" Park           | 773                                | 1 |\n",
       "| member | Spaulding Ave &amp; Foster Ave         | 859                                | 1 |\n",
       "| member | St Louis Ave &amp; Berteau Ave         | 493                                | 1 |\n",
       "| member | State St &amp; 123rd St                | 20210                              | 1 |\n",
       "| member | Stony Island Ave &amp; 86th St         | 666                                | 1 |\n",
       "| member | Torrence Ave  &amp; 106th St           | 923                                | 1 |\n",
       "| member | Troy &amp; 111th St                    | 896                                | 1 |\n",
       "| member | Tuley (Murray) Park                | 645                                | 1 |\n",
       "| member | WEST CHI-WATSON                    | DIVVY 001 - Warehouse test station | 1 |\n",
       "| member | Wallace St &amp; 112 St                | 593                                | 1 |\n",
       "| member | Washtenaw Ave &amp; 63rd St            | 758                                | 1 |\n",
       "| member | Wentworth Ave &amp; 103rd St           | 604                                | 1 |\n",
       "| member | Wentworth Ave &amp; 79th St            | 657                                | 1 |\n",
       "| member | Western Ave &amp; 111th St - NW        | 681                                | 1 |\n",
       "| member | Western Ave &amp; 111th St - SW        | 679                                | 1 |\n",
       "| member | Whippie St &amp; 26th St               | 540                                | 1 |\n",
       "| member | William Rainey Harper High School  | 740                                | 1 |\n",
       "| member | Wolcott Ave &amp; 61st St              | 909                                | 1 |\n",
       "| member | Yates Blvd &amp; Exchange Ave          | 905                                | 1 |\n",
       "\n"
      ],
      "text/plain": [
       "     member_casual start_station_name                \n",
       "1    casual        Streeter Dr & Grand Ave           \n",
       "2    member        Kingsbury St & Kinzie St          \n",
       "3    member        Clark St & Elm St                 \n",
       "4    member        Wells St & Concord Ln             \n",
       "5    member        University Ave & 57th St          \n",
       "6    member        Clinton St & Washington Blvd      \n",
       "7    member        Ellis Ave & 60th St               \n",
       "8    member        Clinton St & Madison St           \n",
       "9    member        Wells St & Elm St                 \n",
       "10   member        Loomis St & Lexington St          \n",
       "11   member        Broadway & Barry Ave              \n",
       "12   member        Wells St & Huron St               \n",
       "13   member        Dearborn St & Erie St             \n",
       "14   member        Wells St & Hubbard St             \n",
       "15   member        Ellis Ave & 55th St               \n",
       "16   member        Canal St & Adams St               \n",
       "17   member        St. Clair St & Erie St            \n",
       "18   member        Wilton Ave & Belmont Ave          \n",
       "19   member        Sheffield Ave & Fullerton Ave     \n",
       "20   member        Clark St & Wrightwood Ave         \n",
       "21   member        Wabash Ave & Grand Ave            \n",
       "22   casual        DuSable Lake Shore Dr & North Blvd\n",
       "23   member        Clark St & Armitage Ave           \n",
       "24   member        Ashland Ave & Division St         \n",
       "25   casual        Wells St & Concord Ln             \n",
       "26   member        Desplaines St & Kinzie St         \n",
       "27   member        Green St & Madison St             \n",
       "28   member        Larrabee St & Kingsbury St        \n",
       "29   member        Clinton St & Jackson Blvd         \n",
       "30   casual        DuSable Lake Shore Dr & Monroe St \n",
       "⋮    ⋮             ⋮                                 \n",
       "2973 member        Public Rack - Whipple St & 63rd St\n",
       "2974 member        Public Rack - Wood St & 103rd St  \n",
       "2975 member        Public Rack - Yates Ave & 100th St\n",
       "2976 member        Pulaski Rd & 40th St              \n",
       "2977 member        Pullman - Ross Dress for Less     \n",
       "2978 member        Rockwell & 111th St               \n",
       "2979 member        Sacramento Ave & Greenleaf Ave    \n",
       "2980 member        Sacramento Blvd & Washington Blvd \n",
       "2981 member        Sangamon St & 79th St             \n",
       "2982 member        Sawyer Ave & 111th St             \n",
       "2983 member        Sawyer Ave & Bryn Mawr Ave - SE   \n",
       "2984 member        Senka \"Edward Duke\" Park          \n",
       "2985 member        Spaulding Ave & Foster Ave        \n",
       "2986 member        St Louis Ave & Berteau Ave        \n",
       "2987 member        State St & 123rd St               \n",
       "2988 member        Stony Island Ave & 86th St        \n",
       "2989 member        Torrence Ave  & 106th St          \n",
       "2990 member        Troy & 111th St                   \n",
       "2991 member        Tuley (Murray) Park               \n",
       "2992 member        WEST CHI-WATSON                   \n",
       "2993 member        Wallace St & 112 St               \n",
       "2994 member        Washtenaw Ave & 63rd St           \n",
       "2995 member        Wentworth Ave & 103rd St          \n",
       "2996 member        Wentworth Ave & 79th St           \n",
       "2997 member        Western Ave & 111th St - NW       \n",
       "2998 member        Western Ave & 111th St - SW       \n",
       "2999 member        Whippie St & 26th St              \n",
       "3000 member        William Rainey Harper High School \n",
       "3001 member        Wolcott Ave & 61st St             \n",
       "3002 member        Yates Blvd & Exchange Ave         \n",
       "     start_station_id                   number_of_rides\n",
       "1    13022                              23761          \n",
       "2    KA1503000043                       23602          \n",
       "3    TA1307000039                       19794          \n",
       "4    TA1308000050                       19631          \n",
       "5    KA1503000071                       18499          \n",
       "6    WL-012                             18440          \n",
       "7    KA1503000014                       18320          \n",
       "8    TA1305000032                       17754          \n",
       "9    KA1504000135                       17549          \n",
       "10   13332                              17325          \n",
       "11   13137                              15407          \n",
       "12   TA1306000012                       15049          \n",
       "13   13045                              14756          \n",
       "14   TA1307000151                       14654          \n",
       "15   KA1504000076                       14339          \n",
       "16   13011                              14307          \n",
       "17   13016                              14307          \n",
       "18   TA1307000134                       14158          \n",
       "19   TA1306000016                       13983          \n",
       "20   TA1305000014                       13949          \n",
       "21   TA1307000117                       13816          \n",
       "22   LF-005                             13598          \n",
       "23   13146                              13505          \n",
       "24   13061                              13336          \n",
       "25   TA1308000050                       13329          \n",
       "26   TA1306000003                       13278          \n",
       "27   TA1307000120                       13212          \n",
       "28   TA1306000009                       13111          \n",
       "29   638                                13028          \n",
       "30   13300                              12957          \n",
       "⋮    ⋮                                  ⋮              \n",
       "2973 1028                               1              \n",
       "2974 694                                1              \n",
       "2975 631                                1              \n",
       "2976 834                                1              \n",
       "2977 920                                1              \n",
       "2978 677                                1              \n",
       "2979 484                                1              \n",
       "2980 854                                1              \n",
       "2981 655                                1              \n",
       "2982 675                                1              \n",
       "2983 857                                1              \n",
       "2984 773                                1              \n",
       "2985 859                                1              \n",
       "2986 493                                1              \n",
       "2987 20210                              1              \n",
       "2988 666                                1              \n",
       "2989 923                                1              \n",
       "2990 896                                1              \n",
       "2991 645                                1              \n",
       "2992 DIVVY 001 - Warehouse test station 1              \n",
       "2993 593                                1              \n",
       "2994 758                                1              \n",
       "2995 604                                1              \n",
       "2996 657                                1              \n",
       "2997 681                                1              \n",
       "2998 679                                1              \n",
       "2999 540                                1              \n",
       "3000 740                                1              \n",
       "3001 909                                1              \n",
       "3002 905                                1              "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "#Start station usage by user type\n",
    "all_trips_v3 %>%\n",
    "  group_by(member_casual, start_station_name, start_station_id) %>%\n",
    "  summarise(number_of_rides = n(), .groups = \"drop\") %>%\n",
    "  filter(!start_station_name == \"\") %>%\n",
    "  arrange(desc(number_of_rides))"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 34,
   "id": "d0142b6e",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-16T13:02:12.503298Z",
     "iopub.status.busy": "2023-05-16T13:02:12.500963Z",
     "iopub.status.idle": "2023-05-16T13:02:13.002971Z",
     "shell.execute_reply": "2023-05-16T13:02:12.999476Z"
    },
    "papermill": {
     "duration": 0.552841,
     "end_time": "2023-05-16T13:02:13.007923",
     "exception": false,
     "start_time": "2023-05-16T13:02:12.455082",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A tibble: 2970 × 4</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>member_casual</th><th scope=col>end_station_name</th><th scope=col>end_station_id</th><th scope=col>number_of_rides</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;int&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>Kingsbury St &amp; Kinzie St          </span></td><td>KA1503000043</td><td>23387</td></tr>\n",
       "\t<tr><td>casual</td><td><span style=white-space:pre-wrap>Streeter Dr &amp; Grand Ave           </span></td><td><span style=white-space:pre-wrap>13022       </span></td><td>23015</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>Wells St &amp; Concord Ln             </span></td><td>TA1308000050</td><td>20261</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>Clark St &amp; Elm St                 </span></td><td>TA1307000039</td><td>20233</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>Clinton St &amp; Washington Blvd      </span></td><td><span style=white-space:pre-wrap>WL-012      </span></td><td>19721</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>University Ave &amp; 57th St          </span></td><td>KA1503000071</td><td>19157</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>Clinton St &amp; Madison St           </span></td><td>TA1305000032</td><td>18601</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>Ellis Ave &amp; 60th St               </span></td><td>KA1503000014</td><td>17926</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>Wells St &amp; Elm St                 </span></td><td>KA1504000135</td><td>17526</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>Loomis St &amp; Lexington St          </span></td><td><span style=white-space:pre-wrap>13332       </span></td><td>17042</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>Broadway &amp; Barry Ave              </span></td><td><span style=white-space:pre-wrap>13137       </span></td><td>15712</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>Dearborn St &amp; Erie St             </span></td><td><span style=white-space:pre-wrap>13045       </span></td><td>15219</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>Canal St &amp; Adams St               </span></td><td><span style=white-space:pre-wrap>13011       </span></td><td>15036</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>St. Clair St &amp; Erie St            </span></td><td><span style=white-space:pre-wrap>13016       </span></td><td>14936</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>Ellis Ave &amp; 55th St               </span></td><td>KA1504000076</td><td>14857</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>Sheffield Ave &amp; Fullerton Ave     </span></td><td>TA1306000016</td><td>14668</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>Wells St &amp; Hubbard St             </span></td><td>TA1307000151</td><td>14637</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>Wells St &amp; Huron St               </span></td><td>TA1306000012</td><td>14637</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>Wilton Ave &amp; Belmont Ave          </span></td><td>TA1307000134</td><td>14417</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>Green St &amp; Madison St             </span></td><td>TA1307000120</td><td>14307</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>Larrabee St &amp; Kingsbury St        </span></td><td>TA1306000009</td><td>13857</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>Ashland Ave &amp; Division St         </span></td><td><span style=white-space:pre-wrap>13061       </span></td><td>13726</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>Clark St &amp; Wrightwood Ave         </span></td><td>TA1305000014</td><td>13720</td></tr>\n",
       "\t<tr><td>casual</td><td>DuSable Lake Shore Dr &amp; North Blvd</td><td><span style=white-space:pre-wrap>LF-005      </span></td><td>13716</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>Clark St &amp; Armitage Ave           </span></td><td><span style=white-space:pre-wrap>13146       </span></td><td>13379</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>Halsted St &amp; Clybourn Ave         </span></td><td><span style=white-space:pre-wrap>331         </span></td><td>13032</td></tr>\n",
       "\t<tr><td>casual</td><td><span style=white-space:pre-wrap>Wells St &amp; Concord Ln             </span></td><td>TA1308000050</td><td>12983</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>Wabash Ave &amp; Grand Ave            </span></td><td>TA1307000117</td><td>12963</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>Clark St &amp; Drummond Pl            </span></td><td>TA1307000142</td><td>12820</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>Desplaines St &amp; Kinzie St         </span></td><td>TA1306000003</td><td>12799</td></tr>\n",
       "\t<tr><td>⋮</td><td>⋮</td><td>⋮</td><td>⋮</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>Public Rack - Sawyer Ave &amp; Chicago Ave     </span></td><td>1056 </td><td>1</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>Public Rack - South Shore Dr &amp; 71st St     </span></td><td><span style=white-space:pre-wrap>948  </span></td><td>1</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>Public Rack - St Louis Ave &amp; Flournoy St   </span></td><td>1066 </td><td>1</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>Public Rack - Stony Island &amp; 95th St       </span></td><td><span style=white-space:pre-wrap>701  </span></td><td>1</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>Public Rack - Talman Ave &amp; Pershing Rd     </span></td><td>1040 </td><td>1</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>Public Rack - Union Ave &amp; 111th St         </span></td><td><span style=white-space:pre-wrap>974  </span></td><td>1</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>Public Rack - Walden Pkwy &amp; 99th St        </span></td><td><span style=white-space:pre-wrap>904  </span></td><td>1</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>Public Rack - Wentworth Ave &amp; 103rd St     </span></td><td><span style=white-space:pre-wrap>604  </span></td><td>1</td></tr>\n",
       "\t<tr><td>member</td><td>Public Rack - Western Ave &amp; 104th St - West</td><td><span style=white-space:pre-wrap>688  </span></td><td>1</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>Public Rack - Western Ave &amp; 105th St       </span></td><td><span style=white-space:pre-wrap>691  </span></td><td>1</td></tr>\n",
       "\t<tr><td>member</td><td>Public Rack - Western Ave &amp; 106th St - East</td><td><span style=white-space:pre-wrap>690  </span></td><td>1</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>Public Rack - Whipple St &amp; 26th St         </span></td><td><span style=white-space:pre-wrap>540  </span></td><td>1</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>Pulaski Rd &amp; 40th St                       </span></td><td><span style=white-space:pre-wrap>834  </span></td><td>1</td></tr>\n",
       "\t<tr><td>member</td><td>Pullman - Planet Fitness                   </td><td>921  </td><td>1</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>Rutherford Ave &amp; Belmont Ave               </span></td><td><span style=white-space:pre-wrap>808  </span></td><td>1</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>S Michigan Ave &amp; E 118th St                </span></td><td>20209</td><td>1</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>Sangamon St &amp; 79th St                      </span></td><td><span style=white-space:pre-wrap>655  </span></td><td>1</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>Springfield Ave &amp; 63rd St                  </span></td><td><span style=white-space:pre-wrap>759  </span></td><td>1</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>St Louis Ave &amp; Berteau Ave                 </span></td><td><span style=white-space:pre-wrap>493  </span></td><td>1</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>State St &amp; 47th st                         </span></td><td><span style=white-space:pre-wrap>816  </span></td><td>1</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>Stony Island Ave &amp; 86th St                 </span></td><td><span style=white-space:pre-wrap>666  </span></td><td>1</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>Throop St &amp; 109th Pl                       </span></td><td><span style=white-space:pre-wrap>876  </span></td><td>1</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>Torrence Ave  &amp; 106th St                   </span></td><td><span style=white-space:pre-wrap>923  </span></td><td>1</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>Washtenaw Ave &amp; 63rd St                    </span></td><td><span style=white-space:pre-wrap>758  </span></td><td>1</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>Wentworth Ave &amp; 103rd St                   </span></td><td><span style=white-space:pre-wrap>604  </span></td><td>1</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>Wentworth Ave &amp; 79th St                    </span></td><td><span style=white-space:pre-wrap>657  </span></td><td>1</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>Western Ave &amp; 111th St - NW                </span></td><td><span style=white-space:pre-wrap>681  </span></td><td>1</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>Western Ave &amp; 111th St - SW                </span></td><td><span style=white-space:pre-wrap>679  </span></td><td>1</td></tr>\n",
       "\t<tr><td>member</td><td><span style=white-space:pre-wrap>Whippie St &amp; 26th St                       </span></td><td><span style=white-space:pre-wrap>540  </span></td><td>1</td></tr>\n",
       "\t<tr><td>member</td><td>Zapata Academy                             </td><td>535  </td><td>1</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A tibble: 2970 × 4\n",
       "\\begin{tabular}{llll}\n",
       " member\\_casual & end\\_station\\_name & end\\_station\\_id & number\\_of\\_rides\\\\\n",
       " <chr> & <chr> & <chr> & <int>\\\\\n",
       "\\hline\n",
       "\t member & Kingsbury St \\& Kinzie St           & KA1503000043 & 23387\\\\\n",
       "\t casual & Streeter Dr \\& Grand Ave            & 13022        & 23015\\\\\n",
       "\t member & Wells St \\& Concord Ln              & TA1308000050 & 20261\\\\\n",
       "\t member & Clark St \\& Elm St                  & TA1307000039 & 20233\\\\\n",
       "\t member & Clinton St \\& Washington Blvd       & WL-012       & 19721\\\\\n",
       "\t member & University Ave \\& 57th St           & KA1503000071 & 19157\\\\\n",
       "\t member & Clinton St \\& Madison St            & TA1305000032 & 18601\\\\\n",
       "\t member & Ellis Ave \\& 60th St                & KA1503000014 & 17926\\\\\n",
       "\t member & Wells St \\& Elm St                  & KA1504000135 & 17526\\\\\n",
       "\t member & Loomis St \\& Lexington St           & 13332        & 17042\\\\\n",
       "\t member & Broadway \\& Barry Ave               & 13137        & 15712\\\\\n",
       "\t member & Dearborn St \\& Erie St              & 13045        & 15219\\\\\n",
       "\t member & Canal St \\& Adams St                & 13011        & 15036\\\\\n",
       "\t member & St. Clair St \\& Erie St             & 13016        & 14936\\\\\n",
       "\t member & Ellis Ave \\& 55th St                & KA1504000076 & 14857\\\\\n",
       "\t member & Sheffield Ave \\& Fullerton Ave      & TA1306000016 & 14668\\\\\n",
       "\t member & Wells St \\& Hubbard St              & TA1307000151 & 14637\\\\\n",
       "\t member & Wells St \\& Huron St                & TA1306000012 & 14637\\\\\n",
       "\t member & Wilton Ave \\& Belmont Ave           & TA1307000134 & 14417\\\\\n",
       "\t member & Green St \\& Madison St              & TA1307000120 & 14307\\\\\n",
       "\t member & Larrabee St \\& Kingsbury St         & TA1306000009 & 13857\\\\\n",
       "\t member & Ashland Ave \\& Division St          & 13061        & 13726\\\\\n",
       "\t member & Clark St \\& Wrightwood Ave          & TA1305000014 & 13720\\\\\n",
       "\t casual & DuSable Lake Shore Dr \\& North Blvd & LF-005       & 13716\\\\\n",
       "\t member & Clark St \\& Armitage Ave            & 13146        & 13379\\\\\n",
       "\t member & Halsted St \\& Clybourn Ave          & 331          & 13032\\\\\n",
       "\t casual & Wells St \\& Concord Ln              & TA1308000050 & 12983\\\\\n",
       "\t member & Wabash Ave \\& Grand Ave             & TA1307000117 & 12963\\\\\n",
       "\t member & Clark St \\& Drummond Pl             & TA1307000142 & 12820\\\\\n",
       "\t member & Desplaines St \\& Kinzie St          & TA1306000003 & 12799\\\\\n",
       "\t ⋮ & ⋮ & ⋮ & ⋮\\\\\n",
       "\t member & Public Rack - Sawyer Ave \\& Chicago Ave      & 1056  & 1\\\\\n",
       "\t member & Public Rack - South Shore Dr \\& 71st St      & 948   & 1\\\\\n",
       "\t member & Public Rack - St Louis Ave \\& Flournoy St    & 1066  & 1\\\\\n",
       "\t member & Public Rack - Stony Island \\& 95th St        & 701   & 1\\\\\n",
       "\t member & Public Rack - Talman Ave \\& Pershing Rd      & 1040  & 1\\\\\n",
       "\t member & Public Rack - Union Ave \\& 111th St          & 974   & 1\\\\\n",
       "\t member & Public Rack - Walden Pkwy \\& 99th St         & 904   & 1\\\\\n",
       "\t member & Public Rack - Wentworth Ave \\& 103rd St      & 604   & 1\\\\\n",
       "\t member & Public Rack - Western Ave \\& 104th St - West & 688   & 1\\\\\n",
       "\t member & Public Rack - Western Ave \\& 105th St        & 691   & 1\\\\\n",
       "\t member & Public Rack - Western Ave \\& 106th St - East & 690   & 1\\\\\n",
       "\t member & Public Rack - Whipple St \\& 26th St          & 540   & 1\\\\\n",
       "\t member & Pulaski Rd \\& 40th St                        & 834   & 1\\\\\n",
       "\t member & Pullman - Planet Fitness                    & 921   & 1\\\\\n",
       "\t member & Rutherford Ave \\& Belmont Ave                & 808   & 1\\\\\n",
       "\t member & S Michigan Ave \\& E 118th St                 & 20209 & 1\\\\\n",
       "\t member & Sangamon St \\& 79th St                       & 655   & 1\\\\\n",
       "\t member & Springfield Ave \\& 63rd St                   & 759   & 1\\\\\n",
       "\t member & St Louis Ave \\& Berteau Ave                  & 493   & 1\\\\\n",
       "\t member & State St \\& 47th st                          & 816   & 1\\\\\n",
       "\t member & Stony Island Ave \\& 86th St                  & 666   & 1\\\\\n",
       "\t member & Throop St \\& 109th Pl                        & 876   & 1\\\\\n",
       "\t member & Torrence Ave  \\& 106th St                    & 923   & 1\\\\\n",
       "\t member & Washtenaw Ave \\& 63rd St                     & 758   & 1\\\\\n",
       "\t member & Wentworth Ave \\& 103rd St                    & 604   & 1\\\\\n",
       "\t member & Wentworth Ave \\& 79th St                     & 657   & 1\\\\\n",
       "\t member & Western Ave \\& 111th St - NW                 & 681   & 1\\\\\n",
       "\t member & Western Ave \\& 111th St - SW                 & 679   & 1\\\\\n",
       "\t member & Whippie St \\& 26th St                        & 540   & 1\\\\\n",
       "\t member & Zapata Academy                              & 535   & 1\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A tibble: 2970 × 4\n",
       "\n",
       "| member_casual &lt;chr&gt; | end_station_name &lt;chr&gt; | end_station_id &lt;chr&gt; | number_of_rides &lt;int&gt; |\n",
       "|---|---|---|---|\n",
       "| member | Kingsbury St &amp; Kinzie St           | KA1503000043 | 23387 |\n",
       "| casual | Streeter Dr &amp; Grand Ave            | 13022        | 23015 |\n",
       "| member | Wells St &amp; Concord Ln              | TA1308000050 | 20261 |\n",
       "| member | Clark St &amp; Elm St                  | TA1307000039 | 20233 |\n",
       "| member | Clinton St &amp; Washington Blvd       | WL-012       | 19721 |\n",
       "| member | University Ave &amp; 57th St           | KA1503000071 | 19157 |\n",
       "| member | Clinton St &amp; Madison St            | TA1305000032 | 18601 |\n",
       "| member | Ellis Ave &amp; 60th St                | KA1503000014 | 17926 |\n",
       "| member | Wells St &amp; Elm St                  | KA1504000135 | 17526 |\n",
       "| member | Loomis St &amp; Lexington St           | 13332        | 17042 |\n",
       "| member | Broadway &amp; Barry Ave               | 13137        | 15712 |\n",
       "| member | Dearborn St &amp; Erie St              | 13045        | 15219 |\n",
       "| member | Canal St &amp; Adams St                | 13011        | 15036 |\n",
       "| member | St. Clair St &amp; Erie St             | 13016        | 14936 |\n",
       "| member | Ellis Ave &amp; 55th St                | KA1504000076 | 14857 |\n",
       "| member | Sheffield Ave &amp; Fullerton Ave      | TA1306000016 | 14668 |\n",
       "| member | Wells St &amp; Hubbard St              | TA1307000151 | 14637 |\n",
       "| member | Wells St &amp; Huron St                | TA1306000012 | 14637 |\n",
       "| member | Wilton Ave &amp; Belmont Ave           | TA1307000134 | 14417 |\n",
       "| member | Green St &amp; Madison St              | TA1307000120 | 14307 |\n",
       "| member | Larrabee St &amp; Kingsbury St         | TA1306000009 | 13857 |\n",
       "| member | Ashland Ave &amp; Division St          | 13061        | 13726 |\n",
       "| member | Clark St &amp; Wrightwood Ave          | TA1305000014 | 13720 |\n",
       "| casual | DuSable Lake Shore Dr &amp; North Blvd | LF-005       | 13716 |\n",
       "| member | Clark St &amp; Armitage Ave            | 13146        | 13379 |\n",
       "| member | Halsted St &amp; Clybourn Ave          | 331          | 13032 |\n",
       "| casual | Wells St &amp; Concord Ln              | TA1308000050 | 12983 |\n",
       "| member | Wabash Ave &amp; Grand Ave             | TA1307000117 | 12963 |\n",
       "| member | Clark St &amp; Drummond Pl             | TA1307000142 | 12820 |\n",
       "| member | Desplaines St &amp; Kinzie St          | TA1306000003 | 12799 |\n",
       "| ⋮ | ⋮ | ⋮ | ⋮ |\n",
       "| member | Public Rack - Sawyer Ave &amp; Chicago Ave      | 1056  | 1 |\n",
       "| member | Public Rack - South Shore Dr &amp; 71st St      | 948   | 1 |\n",
       "| member | Public Rack - St Louis Ave &amp; Flournoy St    | 1066  | 1 |\n",
       "| member | Public Rack - Stony Island &amp; 95th St        | 701   | 1 |\n",
       "| member | Public Rack - Talman Ave &amp; Pershing Rd      | 1040  | 1 |\n",
       "| member | Public Rack - Union Ave &amp; 111th St          | 974   | 1 |\n",
       "| member | Public Rack - Walden Pkwy &amp; 99th St         | 904   | 1 |\n",
       "| member | Public Rack - Wentworth Ave &amp; 103rd St      | 604   | 1 |\n",
       "| member | Public Rack - Western Ave &amp; 104th St - West | 688   | 1 |\n",
       "| member | Public Rack - Western Ave &amp; 105th St        | 691   | 1 |\n",
       "| member | Public Rack - Western Ave &amp; 106th St - East | 690   | 1 |\n",
       "| member | Public Rack - Whipple St &amp; 26th St          | 540   | 1 |\n",
       "| member | Pulaski Rd &amp; 40th St                        | 834   | 1 |\n",
       "| member | Pullman - Planet Fitness                    | 921   | 1 |\n",
       "| member | Rutherford Ave &amp; Belmont Ave                | 808   | 1 |\n",
       "| member | S Michigan Ave &amp; E 118th St                 | 20209 | 1 |\n",
       "| member | Sangamon St &amp; 79th St                       | 655   | 1 |\n",
       "| member | Springfield Ave &amp; 63rd St                   | 759   | 1 |\n",
       "| member | St Louis Ave &amp; Berteau Ave                  | 493   | 1 |\n",
       "| member | State St &amp; 47th st                          | 816   | 1 |\n",
       "| member | Stony Island Ave &amp; 86th St                  | 666   | 1 |\n",
       "| member | Throop St &amp; 109th Pl                        | 876   | 1 |\n",
       "| member | Torrence Ave  &amp; 106th St                    | 923   | 1 |\n",
       "| member | Washtenaw Ave &amp; 63rd St                     | 758   | 1 |\n",
       "| member | Wentworth Ave &amp; 103rd St                    | 604   | 1 |\n",
       "| member | Wentworth Ave &amp; 79th St                     | 657   | 1 |\n",
       "| member | Western Ave &amp; 111th St - NW                 | 681   | 1 |\n",
       "| member | Western Ave &amp; 111th St - SW                 | 679   | 1 |\n",
       "| member | Whippie St &amp; 26th St                        | 540   | 1 |\n",
       "| member | Zapata Academy                              | 535   | 1 |\n",
       "\n"
      ],
      "text/plain": [
       "     member_casual end_station_name                            end_station_id\n",
       "1    member        Kingsbury St & Kinzie St                    KA1503000043  \n",
       "2    casual        Streeter Dr & Grand Ave                     13022         \n",
       "3    member        Wells St & Concord Ln                       TA1308000050  \n",
       "4    member        Clark St & Elm St                           TA1307000039  \n",
       "5    member        Clinton St & Washington Blvd                WL-012        \n",
       "6    member        University Ave & 57th St                    KA1503000071  \n",
       "7    member        Clinton St & Madison St                     TA1305000032  \n",
       "8    member        Ellis Ave & 60th St                         KA1503000014  \n",
       "9    member        Wells St & Elm St                           KA1504000135  \n",
       "10   member        Loomis St & Lexington St                    13332         \n",
       "11   member        Broadway & Barry Ave                        13137         \n",
       "12   member        Dearborn St & Erie St                       13045         \n",
       "13   member        Canal St & Adams St                         13011         \n",
       "14   member        St. Clair St & Erie St                      13016         \n",
       "15   member        Ellis Ave & 55th St                         KA1504000076  \n",
       "16   member        Sheffield Ave & Fullerton Ave               TA1306000016  \n",
       "17   member        Wells St & Hubbard St                       TA1307000151  \n",
       "18   member        Wells St & Huron St                         TA1306000012  \n",
       "19   member        Wilton Ave & Belmont Ave                    TA1307000134  \n",
       "20   member        Green St & Madison St                       TA1307000120  \n",
       "21   member        Larrabee St & Kingsbury St                  TA1306000009  \n",
       "22   member        Ashland Ave & Division St                   13061         \n",
       "23   member        Clark St & Wrightwood Ave                   TA1305000014  \n",
       "24   casual        DuSable Lake Shore Dr & North Blvd          LF-005        \n",
       "25   member        Clark St & Armitage Ave                     13146         \n",
       "26   member        Halsted St & Clybourn Ave                   331           \n",
       "27   casual        Wells St & Concord Ln                       TA1308000050  \n",
       "28   member        Wabash Ave & Grand Ave                      TA1307000117  \n",
       "29   member        Clark St & Drummond Pl                      TA1307000142  \n",
       "30   member        Desplaines St & Kinzie St                   TA1306000003  \n",
       "⋮    ⋮             ⋮                                           ⋮             \n",
       "2941 member        Public Rack - Sawyer Ave & Chicago Ave      1056          \n",
       "2942 member        Public Rack - South Shore Dr & 71st St      948           \n",
       "2943 member        Public Rack - St Louis Ave & Flournoy St    1066          \n",
       "2944 member        Public Rack - Stony Island & 95th St        701           \n",
       "2945 member        Public Rack - Talman Ave & Pershing Rd      1040          \n",
       "2946 member        Public Rack - Union Ave & 111th St          974           \n",
       "2947 member        Public Rack - Walden Pkwy & 99th St         904           \n",
       "2948 member        Public Rack - Wentworth Ave & 103rd St      604           \n",
       "2949 member        Public Rack - Western Ave & 104th St - West 688           \n",
       "2950 member        Public Rack - Western Ave & 105th St        691           \n",
       "2951 member        Public Rack - Western Ave & 106th St - East 690           \n",
       "2952 member        Public Rack - Whipple St & 26th St          540           \n",
       "2953 member        Pulaski Rd & 40th St                        834           \n",
       "2954 member        Pullman - Planet Fitness                    921           \n",
       "2955 member        Rutherford Ave & Belmont Ave                808           \n",
       "2956 member        S Michigan Ave & E 118th St                 20209         \n",
       "2957 member        Sangamon St & 79th St                       655           \n",
       "2958 member        Springfield Ave & 63rd St                   759           \n",
       "2959 member        St Louis Ave & Berteau Ave                  493           \n",
       "2960 member        State St & 47th st                          816           \n",
       "2961 member        Stony Island Ave & 86th St                  666           \n",
       "2962 member        Throop St & 109th Pl                        876           \n",
       "2963 member        Torrence Ave  & 106th St                    923           \n",
       "2964 member        Washtenaw Ave & 63rd St                     758           \n",
       "2965 member        Wentworth Ave & 103rd St                    604           \n",
       "2966 member        Wentworth Ave & 79th St                     657           \n",
       "2967 member        Western Ave & 111th St - NW                 681           \n",
       "2968 member        Western Ave & 111th St - SW                 679           \n",
       "2969 member        Whippie St & 26th St                        540           \n",
       "2970 member        Zapata Academy                              535           \n",
       "     number_of_rides\n",
       "1    23387          \n",
       "2    23015          \n",
       "3    20261          \n",
       "4    20233          \n",
       "5    19721          \n",
       "6    19157          \n",
       "7    18601          \n",
       "8    17926          \n",
       "9    17526          \n",
       "10   17042          \n",
       "11   15712          \n",
       "12   15219          \n",
       "13   15036          \n",
       "14   14936          \n",
       "15   14857          \n",
       "16   14668          \n",
       "17   14637          \n",
       "18   14637          \n",
       "19   14417          \n",
       "20   14307          \n",
       "21   13857          \n",
       "22   13726          \n",
       "23   13720          \n",
       "24   13716          \n",
       "25   13379          \n",
       "26   13032          \n",
       "27   12983          \n",
       "28   12963          \n",
       "29   12820          \n",
       "30   12799          \n",
       "⋮    ⋮              \n",
       "2941 1              \n",
       "2942 1              \n",
       "2943 1              \n",
       "2944 1              \n",
       "2945 1              \n",
       "2946 1              \n",
       "2947 1              \n",
       "2948 1              \n",
       "2949 1              \n",
       "2950 1              \n",
       "2951 1              \n",
       "2952 1              \n",
       "2953 1              \n",
       "2954 1              \n",
       "2955 1              \n",
       "2956 1              \n",
       "2957 1              \n",
       "2958 1              \n",
       "2959 1              \n",
       "2960 1              \n",
       "2961 1              \n",
       "2962 1              \n",
       "2963 1              \n",
       "2964 1              \n",
       "2965 1              \n",
       "2966 1              \n",
       "2967 1              \n",
       "2968 1              \n",
       "2969 1              \n",
       "2970 1              "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "#End station usage by user type\n",
    "all_trips_v3 %>%\n",
    "  group_by(member_casual, end_station_name, end_station_id) %>%\n",
    "  summarise(number_of_rides = n(), .groups = \"drop\") %>%\n",
    "  filter(!end_station_name == \"\") %>%\n",
    "  arrange(desc(number_of_rides))"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "3376e9b3",
   "metadata": {
    "_cell_guid": "126c9f13-97b5-4e15-8a76-7893bf3d597d",
    "_uuid": "273ab3e7-5105-4260-bd48-8f500ac45500",
    "papermill": {
     "duration": 0.047483,
     "end_time": "2023-05-16T13:02:13.102896",
     "exception": false,
     "start_time": "2023-05-16T13:02:13.055413",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# Share\n",
    "\n",
    "Here, I would like to share the visualizations which would allow Cylicstic team to understand my conclusions easily."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 35,
   "id": "864598d0",
   "metadata": {
    "_cell_guid": "cfa685bc-da9c-46fb-aaba-29e0f065d184",
    "_uuid": "cfaa8d0a-8fe5-4823-9e99-9eb572a81291",
    "collapsed": false,
    "execution": {
     "iopub.execute_input": "2023-05-16T13:02:13.214264Z",
     "iopub.status.busy": "2023-05-16T13:02:13.211801Z",
     "iopub.status.idle": "2023-05-16T13:02:15.094041Z",
     "shell.execute_reply": "2023-05-16T13:02:15.090396Z"
    },
    "jupyter": {
     "outputs_hidden": false
    },
    "papermill": {
     "duration": 1.948785,
     "end_time": "2023-05-16T13:02:15.099010",
     "exception": false,
     "start_time": "2023-05-16T13:02:13.150225",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "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\nv5McACAawg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4A\nIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIO\nACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLC\nDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACAS\nwg4AIBLCDgAgEtmZXgAALEXi6ecyctyZ3TbMyHFhlXDGDgAgEsIOACASwg4AIBLCDgAgEsIO\nACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLC\nDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEtmZXkDGZGU1xqhNJBKZOnQymczU\noZeUwf8uJmACjWQCGWQCoZENIZFINKr11Kqqqsr0Eli61TfsiouLM1hRjVBJSUmml5BhJmAC\nJmACoZENIS8vLy8vL9OrWIpZs2Zlegks3eobdrNnz06lUplexU/l5+dn6tCN5P/SDP4V1kgm\nkJOTk6lDN5IJJJPJ4uLijBy6kUwghNCyZcuMHLfxTCCDddVIhlBUVJSdnV1aWrpw4cJMr2Up\nGuEvUGqsvmGXSqX8uVxSI5lGBpdhAibQSCaQQSYQGt8QGtt6aOQa4+vMAACoA2EHABAJYQcA\nEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEH\nABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlh\nBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJ\nYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEInsTC8A\nAFiKxNPPZeS4M7ttmJHjsko4YwcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlh\nBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEInsTC8AgMau2SXnN/ARK0IIvfo18EEhAs7Y\nAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAESigT6guHze9OvGXf/C2x8u\nrM5eZ4PN+w0+dpu1m9Z1Z9VP33XVQ8+89tn85Ebdthp44mHr5SdrbvjmheFHXvT2kncdfMvd\ne5c0Wbm1AwD8OjRM2KWuOvnsV5puddyII1plLfznxPEXnzLsujvGtcquy/nCD+8bcdnETwYc\nd/zhJZUPX3Pl8JMrb7/66EQIIYQ5b8zJb7nPkCO71t65Y2HuKvoRAAAau4YIu7K5/5wyY9HQ\nS4/dpigvhLDesFMf7j9s4oxFx7Vf8ZN2qfIxE9/vNGBMn93WCyF0Gh0OPPSSO78acNAahSGE\nGe/NK95422237fpLewEAiFBDvMYuK7vV4YcfvlXzH06eJbJDCAXJrBBCdeWse64eNWhA/wP6\nHnTCGaOfmjb7J49Npco+/viz2qtlc5/5tLSq1y7ta67mleywadPcl6d+U3P1zXllJT2KqxbP\n+3rGnFQ9/1AAAI1NQ5yxyyns/vvfdw8hzH7j369/M+OVf0xs3XWfAW0KQgi3DTvp8bJuRw4Z\nvlbzxLTnHx43bHDVVTfv0b6g9rFVpR+ddPJFD0y6peZq+cK3QggbF/y47K4F2Y+/M7fm8usL\nKqr/Na7v+GkVqVR2Yes9DxoyeJ/utfecMmXKiy++WHt1yJAhyWSyHn/sOsnObqBXPf5c06Z1\nftXjqpTB/yiNZAJZWRl7S1MjmUAikcjUoRvJBDLIBEKjGUIj/6tg4cKFDbAS6qBBM+KbZ554\n+IMvPv188fZ/6JgIoXTWA5M+mDfqzqFdC7JDCOtv0K3ypYPvuvq9PUZuuaw9VJctDCG0yvnx\nd3+rnGTFvIoQQlX5F3MTyXVbbDP6jpFFVfNe/Pv1l143Iq/zrQO7FNfc85133pk0aVLtA4cO\nHZqXl1dPP+mvUZMmq/u7TEzABExgWRMoa+B1ZJQ/BulMQNg1Wg0adl1OHDEmhAWfvXjMiX8Z\n2WHj41u8nkqlzuh/wJL3Kaz8PIQtQ6qqtKwihFBZWhZCKC0trbk1K68ghPBdRXW73O//KfNt\nRVV2SXYIIZnb4d577/1hN616/nHY9Mf7Tbn+nYF/3b5mU5s2bTbaaKPaA1VXV1dWVtbjT1sn\nGfwnWiOZRgbP1phA45lApk7cNpIJhMydvG88E8igRjKEDD590UgmQN00xN8d8/777LP/y9t7\nz9/WXG261ta9WzZ57Mmvsg/LTSQL77n71iV/jyUSyRDCopl39h90d+3Gvn371lwYc90xIUyd\ntriiXe73J9umL64s6lq01ONu0SZ/yuyZtVf79+/fv3//2quzZs1KpRrdK/EKCgp++U71Y86c\nOZk69JIyeBq1kUwgJycnU4duJBNIJpMlJSUZOXQjmUAIoVWrVhk57rIm0KyB15FRjeSPQXFx\ncaYO3UgmQN00xPmhisVTr51w2bcV1d9fT1W+u6iyYO3CgrZ7hupFj8ysyPle9m3njxj/9Nch\nhII2h0yePHny5MmTJl6clV0y+Qed2uzWITf5yPPf51rFgtdemV+++c7tQghzpl95xKDjvimv\nPUrV1K8WFW+8QQP8gAAAjUFDhF1Jl6PWyykbdtENr70z/b/vvXnXuNPeWpx/SP91c5ttOWiz\nln87feRjz7768Yf/eeCaYQ+9P2uXbVovb1+JnKF9unxww7lTXpv+5YdvX3/WmMIOuw9oXxhC\naN6xX8tF35x+3jWvvDP9g3ffuHPsac8sbHbUIGEHAKwuGuKp2KycNhdeOuzKa+/46/mPLU7l\nrNO5x0mjz6n5TLveZ19Wdu0V90wYPbsip8N63U++aPimhb/wPFSnfhccWzb2jjFnzSpNrL9p\nz5FDj6x5Jjcru9XIK8+7acLtl19wZml2846dup0+9vweTTP2rBYAQANroNfnFq7129NG/vbn\n2xPJoj7HDO9zzDIfmJ3fpfazTmofs/uhQ3c/dCl3zivpevQZo45eybUCAPw6Zew9mAAArFrC\nDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACAS\nwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAg\nEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBIrFHbVX334Qc2l0hkvn3PqcScO/8sTH86vj2UB\nALCistO8X/ncFw7aoffk/7UrX/huqnL2fhv3fHzW4hDC1WOuufk/bx+8dtP6XCQAAL8s3TN2\nd/3+wPvfKz/05BNCCDNePenxWYuPe2T67I+e3Tzny1P63V2fKwQAIC3pht2ol2ass+/E60Ye\nHUJ464Jn8op2uLxX5+J1t7/8kE6z3h5TnysEACAt6Ybdp2WVrbZZq+byLS/NbNn95GQIIYTC\n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\n2kG9NuhQXFDcdtf+p7y9oKJm++Jv/nXM/ju2K26anVewXrcd/nLf9JrtHz82Ye/fbNyiMK91\nh479h46dX5UKIYRUWSKRuPCz+bW7bZGTPOKD2cvZT73yVCoAsPpJlR/ZY7sb3y8ZfdPfn5o0\noc2bN+y01Rk1t5y6be/7vtz4hslPvfKvJ4bsVjW8/1afl1eVz3u2e+/jknud/MgzL0684pR/\nXXnKvtf9Z/lHWOp+6vvHWtGnYgEAfvW+e//UWz8sf/q7m3csyg0hdH/q294H3/FVefUauVkd\njz7zhoEn7N06P4TQZf0z/3z5Pm8trNh+7mPzq6qPPfagrdsWhC16PHnfGv9t9gtvfVjqftbM\nTdbrzyXsgF/Q7JLzG/iIZSGEXv0a+KDAauXzyc83KdmjpupCCIXtj/znP4+sufznkwdPefDe\ni9/9z8cff/T6sw/XbGza4c8HbXFD77XX69lrj+232273Xr/v3a3t8g+x1P3UN0/FAgCrneqy\n6kRWk59vryr7bO9Oa/UfedfcZKsdeh8y/t47arZn5bS6/ZUv33zqpn1/s+b7T92826Zr9hr2\nxFJ3XJ5a3n7qmzN2AMBqp0Pv7qUj73tlQcWWTXNCCIu+uW39zU676b2Pt/x06GOfln01/aG2\nOVkhhEUzbq+5/9dTLx39UOVlfz296/Z7DQnhncu33mLEaeEvr9fc+l1Fdc2FhV/dsbCqOoQw\ne9rS91PfnLEDAFY7rTYbv0/b6r13O+rhf7702nOPHrvHn0ub7vu7kry8lr9JVZdfOnHqJ59/\n9Pxjt/Tf5fQQwjv/+ya77dyxlw47/JK/vfj62y9NfXD0tdOLNuwbQgiJvK2b500c/JfXpn/y\n9guPHrbbiVmJRAhhWfup73dPOGMHAKx2EsmmE9+ecsqRZw45aPeZVUVb7Dbo6avPDyE0W/PU\nxy7++MQz+o6fl73pb3c7b9K7bQ7uNny7Tfae/d2jl84+/YqhO57xXVG7tbfY+ainJ5xSs6sH\n/zGu/6CLtt/44sVV1dsfcdV+M4Yufz9dC+qxvoQdALA6ymvx2/H3PTn+Z9v3PPXK/5x65Y9X\nX/7s+hBCCF1PHv+7k39+99Bm66OmvHNUqnrxN7NDu5b54fpjlr+fEMJ3FfV15i7Np2Kry8rK\nKlL1tAYAgF+3RFZ+u5b5mV5FemGXqppfXJC/+93/W/7dzh07blUsCQCAukgr7BLJoqEbtfjw\n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\ng22K4OTdwUW8448bSTU8N5GsRAuVgoha1faZfPg4dS2xN0ET0DfYSl5EodafyrefeitDZVul\nm3PtdKr4NX+dmmvezhkq9om/6QfHytSKbK+BNTEna4n3CZ8/parW61u1HhFlJMZcuXhu37Yt\nkwdHLtiwuKRcnFPYeWculAMVJ8eCWL0I+O1XA3KorMEe4KPYAsVJ+9XwPr/mOrHMNVcS6vd8\nfbUXY/RGtUUijhkN5kWp01v/tr71h9BNkjWCUfdi2hd952yJSBO5hXzYcNDY159l+Ldro0nY\neyNdd3LVjaJ1Bins5Qxcpn/1FScSZxkndt6+4x/Cl7ThxG6j5q1bOOPrWmW9Hl87OumrvlPW\nXSHKsQ42KwIndungrYzZd//ulttupbuabnvi3/5DTcK+v2N/S9YbW1ZWWcnLSgombz/1VobK\nvkr2OlWclLm+GfN6YpgoXbP+23SsTPPHnOw/8D3h31VmyumZM2c+z8z6hNmpiF+dZh2mLPjW\noI3Z8DDVSthW/WNivC6UIxTHekHe2v0fmWbzh4AcI2uwH3jHroAF92qQOHTls4e3n3GluhZ3\nNq/3qFDRoN12MklbXyUnImbM2BWT5t3az8pQPvX9NBGH72t6lFaIicig+ftsitb0tZHqJ6si\n43Xrlk3yEHNEpE0+bn6UQtW0psuytYfP3H+i7jOV5/sIqF+9YmmSTmiMWT8ri35KxvMH4nXt\niptu2cVWTxqb3ODrPr7nd5w3DOj3n5IVQ1sTPdwbNiJ8LfWen1MdbFmE0GbFNm3fs5VeBoZl\nnTSp9O3sLt71087fJE7BdVxlVvIa0aS4lacyW1aGSrqx6+0qDRntYFMl24nxBmFkmg/2MOHf\niVhW7MK5c9Jzcd/Uez2pDRlJROTrIlU/WZZT2G/LdWI4RHGsF8S0mJdfATOHyBrsB96xK2DO\nvl3LSJKn/XDYu2ZficX/SMqi3ZsUd14yZnbEpZv3oq6Efz/qtt7ji/alch6JvKoNDpanTxo/\n/+zlqOgrZxeMn+Iqz/pnTupaljH9rogbcS9ioyOPzZmwjogePX9p+g+xy6d+d9bMF7nWaf3q\nqisecNJySmnET9vvxsQ9jL60YOJy7tX9/GSuoQOqeW4YM/1gxKUH927vWjZ2b1RC4zreUo+0\nPbvWLdx5/Pa9h3/dOLfj4FPnEnUp5zrYsghFG36kS78Zna7rWDHr0lROpOzm53L34FO3Mv+x\n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"
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    },
    {
     "data": {
      "image/png": "iVBORw0KGgoAAAANSUhEUgAAA0gAAANICAIAAAByhViMAAAABmJLR0QA/wD/AP+gvaeTAAAg\nAElEQVR4nOzdd4DT5f3A8Sfj7rjBRhw4EUQFcbaOqtT9w1ktAtVaUXHPigPFjdWqFXGjuK0D\nt2jV1lHQom3dG6HuDSIbbuf3x+mJiJjjEi4+vF5/Jd8kTz45cpc336xEJpMJAAD8/CVbegAA\nAHJD2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARCLd0gO0mOnTp+dj2bKysqKi\nopqamnnz5uVj/SVWUVGRSqWqqqoqKytbepbvadu2bQhh3rx5NTU1LT3Ld1KpVEVFRQhhzpw5\ndXV1LT3Od4qKisrKykIIM2fObOlZvqdVq1YlJSV1dXVz5sxp6Vm+p7y8PJ1OV1dXz58/v6Vn\n+Z7WrVsnk8nKysqqqqqWnuU7iUSiTZs2IYS5c+fW1ta29DjfSafT5eXlIYTZs2fX19e39Djf\nKS4uLi0tzWQys2bNaulZvqe0tLS4uLi2tnbu3Ll5uor27dvnaWWaY9kNu/r6+jx960YymUwk\nEgVVAyGEZDKZTCZDCAU4WAghk8kU1GCJRKJhsPr6+oIaLJ1OF+a/YwghmUwW2o+rQSH/Shbs\nPb/QBlvwL1hBhV0IoQD/HRsU5j2ffPNULABAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSE\nHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAk\nhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBA\nJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCTSLT0AwDIqMW5CTtaZ2qtHTtYBImCPHQBAJIQd\nAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSE\nHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAk\nhB0AQCQSmUympWdoGTU1NflYNpVKJZPJTCZTW1ubj/WXWDqdTiQS9fX1dXV1LT3L9xQVFYUQ\n6urq6uvrW3qW7yQSiXQ6HUKora0tqN+RZDKZSqVC3u7AS6yQ7/nJ8c/mZKnqX/0yJ+s0KNjB\n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\nrq6lx/lOcXFxeXl5CGH69IVfkNqySktLc7VUbm9aRcUSf7LSwnI7WNu2i/7DtQRyOFgO9zzl\n9seVw+cTcztYSUlJWVlZJpOZMWNGDpdtvrKyspKSktra2tmzZ+dj/UzGS9kL1NIIu5r5468d\n9eam297WqSgZQgiZ2jfn1ZatWl62/E6h/r+PTK35zTcvqsvccPrQmX2O/eP2K5V1/v3Ysb8P\nIdTOn9hv3+9eYxcyNV2Kr33k2am/7rtyCKFmzksvzK7ut80KIYQZk64ccuFb5111+fINO/My\ndeM/n9duo7Uax2jTpk3DQ3WDadOm1dfX5/zGNtzXM5lMQdVAo4IdrL6+vqAGa3ylUaEN1nin\nLaipQk7/yuf2phXsYDmUw8Fy+Bq73P64cvhayTzdwQrt7lHgD0bkz9J4V2z7tQ9Zo6hq6PnX\nv/TGpP+99eqdl5302vzS3w9cvbj1JoM36PjXk4c/9syLH7z3zgPXDH3o7Wnbbr7c4tZKFA3p\nt/bk68966qVJn733+nWnjyjvssN+K5WHENp0HdBx3pcnn33NC29MmvzmK3eMPOnpua0PGbzW\n4lYDAIjI0thjlyzq/KeLh1557e1/Oeex+Zmi1bpveNwFZzZ8pt2uZ1xSde0Vd4+6YHpNUZc1\neh9//rD1y4sWv1q3AeceUTXy9hGnT6tMrLl+n+FDDm74D2Yy3Wn4lWffOOq2S889tTLdpmu3\nXiePPGfDip9YDQAgGkvpzRPlq/zypOG//OH2RKptv8OH9Tv8Ry+YLl37u+dhv73MDvsP2WH/\nRZy5pH3Pw04577BmzgoA8PO0NJ6KBQBgKRB2AACRKKxPygZ+UmLchJysM7VXj5ysA0DhsMcO\nACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLC\nDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACAS\nwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAg\nEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLplh4A4Ee1vuicZq6QCSH0HZCLWQB+BuyxAwCI\nhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMA\niISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLAD\nAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISw\nAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIRLqlBwD4+Wl90TnNXKEmhNB3QC5m\nAfiOPXYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJFYdj/HrqysLB/LptPpEEIq\nlSovL8/H+kssmUyGEIqKigptsAYlJSUNP7oC0fDjCiGUlpbW19e37DALSqVSuVpqwXtC8qyT\nc7Bijj6VrTDvomHZGCyRSORqqdz+uBp/JZsvt4M1/uEqtLtHvh+M5s2bl49lab4CeihdynL4\nZ2JBDX8WE4lEntZvJoNlqfHhrdAGy+EwBXW7FmSwpsrhYDkMu9z+uAr2nl+wf/Mb/ykLbTDy\nbdkNuzlz5mQymZwv27p165KSktra2tmzZ+d88eZo3759KpWqrq6eO3duS8/yPSUlJSGEysrK\nqqqqlp7lO+l0uri4OIQwb9682tralh7nOw0/rpxY8C7aOleL5oLBmiqHf20SiUTHjh1zslRu\n/wYWFRXlaqncDlZaWppOpzOZTKH9za+oqEilUnV1dYU2GPkm5AEAIiHsAAAiIewAACIh7AAA\nIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewA\nACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHs\nAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh\n7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAi\nIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAA\nIiHsAAAiIewAACKRbukBAMiZ1hed08wVqkIIfQfkYhagBTRpj1395+9NbjhUOeX5M0888phh\nf378vdn5GAsAgKbKdo9d9czn9tlq17HvrlA9981M7fQ91u3zj2nzQwhXj7jmpnde33fVinwO\n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\nIWde/NfWm+19/8uv/XbF8jwOCABAdprwAcVtuve9/am+1099/813P6tNla7cvefK7UryNxkA\nAE3StG+eCCGULrfGJsutkY9RAABiMu/L68tXGPx+Ze3qJamlc41NCbv6+Y/cfNkdDz058f0v\natPlq/VYf5f+BwzefVPfOgEAUAiyfY1dXfUnB262+i4HDr3twfGfzqiumf7xY3dce8gem62z\n67DZdZm8jggAkDd1NfUtePHFydTOaepFsg278UfveOPzU359zOXvz5jz2fsT3/jfJ3NmfXDF\nsb9+52/nbX/Wi029VgCAlrVSSfq0x2/YcIXWJemiFbpteu1/p75w84lrr9i+pKLTpnse99W3\nvVZX/el5R+y5Rud2JRUd1uuz903PftGki4cQpvz7xu03WL20uNVKPTY965YXF79sCKFDUery\njz46fu9tVuiyiO+GWLxsw27Yne+173HaPy89arXWRQ1b0uWrHjnyn2es0+G1K09t6rUCALS4\nEXtefNgNT0x6Y0K/1u8dsdV6e92ZufHv/x0/5qy3H7p84L3vN5xn2FYbXfxM+tyb7n/uyfsP\n3Sxz0Nbdrps8M/uLhxB23/W8PseOeOrJB4/ZuvicQb8Y9tyXi182hHDP4F3a7XzC+Oeubeot\nyvY1dm/Nq+m2z29/uP23+3c997T/NPVaYUGJcRNyss7UXj1ysg4Ay4iNRt536M49QginXfXL\nq3712N/u/fN6ZenQu/tJq5x2xzNTw8A153w64sLnvxo/47at2hSHEDbatE/N2I7nHDFh8OM7\nZ3PxhmvZdPTjpw9cM4Sw+VY7zXq24zWD7zzlH3WLWTaEMGWNS884YNsluEXZht0eHUvH/+fD\nEDZYaPvHz31V0marJbhiAICWtfyvOjUcKGrXKlWy6npl33RRx3QyU58JIcyY+PdMpn7rtt/7\nfLd21RND2Dmbizc46v9Wbjy87yHdR5xx14yJFYtZNoTQbdC6S3aLsg27c0cftOae+/754eeH\n7rpO48ZJj1408OGPep9+75JdNwBAwVjE69OK2pYm0+3mzvliwc8ASSQWmU8/+vK2BU8o7lCc\nSBb95LJtOhRnO/X3LS7sjj766AWP/nrl5Cm7rXvNRlv9Yp3ubRKzJ0988ekX3ksVL797+2dD\n2GjJrh4AoGC17Xpwpm7sVR9VHt+9bQghhMwJ2281Zd8bbzmge/aLXPnEZ9v1++YzgO+4+O22\n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\n6C9YYQ5WOFOFn8nf/EbTpk1b+pOQjWU37L7++ut87LFr3bp1rpb66quvcrVUCKF9+/a5WmrB\nwXJ2a3OhMAcrzKmCwZrOYE2y0F+wwhyscKYKuf6bX1FRkaulcjsY+eY1dgAAkRB2AACREHYA\nAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2\nAACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJFIt/QAAMD3tL7onBys0ndA\nDhbh58YeOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCA\nSAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsA\ngEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7\nAIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEik\nW3oAstL6onOauUJtCKHvgFzMAgAUKHvsAAAiIewAACLhqdjvaf4zniF4xhMAaBn22AEARELY\nAQBEQtgBAERC2PH/7d15QBNn3gfw3+SEEC4JXpQFBa1W1it21VZX67FtrbFeq1TrUcXbtiz2\nrVhQsV6vblddcb0rbW1Frb2sR71awVZqtdp6onjVC1DOEMid2T+C4VgSUGAmjN/PX8xk8sw3\nk5mHXybPTAAAAEAgUNgBAAAACAQKOwAAAACBQGEHAAAAIBAo7AAAAAAEAoUdAAAAgECgsAMA\nAAAQCBR2AAAAAAKBwg4AAABAIFDYAQAAAAgECjsAAAAAgUBhBwAAACAQKOwAAAAABAKFHQAA\nAIBAoLADAAAAEAgUdgAAAAACgcIOAAAAQCBQ2AEAAAAIBAo7AAAAAIGQcLUi29Hta79NPX27\nSNw2ouv4t95o4Smuh6bqcC0AAAAADQxHZ+yufxG/ckda96GT5kePVVw7HBezia2HpupwLQAA\nAAANDieFHWtaseNS+JhFw/t1b6fuGb1shu7uvuTM4jpuqg7XAgAAHkm4QwAAFUlJREFUANAA\ncVHYGQtTbxmsL/dpbp+U+/fsoJSdTMkmIpsl9/N1S6LGRA4dMerNOcuOpOdXei7LGm/evF2T\n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\nSUVORK5CYII="
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "all_trips_v3 %>%\n",
    "    group_by(member_casual, day_of_week) %>%\n",
    "    summarise(number_of_rides = n(), .groups = 'drop') %>%\n",
    "    ggplot(aes(x = day_of_week, y = number_of_rides, fill = member_casual)) + \n",
    "    geom_bar(position = \"dodge\", stat = \"identity\") +\n",
    "    labs (fill = \"User Type\")\n",
    "\n",
    "all_trips_v3 %>%\n",
    "    group_by(member_casual, month) %>%\n",
    "    summarise(number_of_rides = n(), .groups = 'drop') %>%\n",
    "    ggplot(aes(x = month, y = number_of_rides, fill = member_casual)) + \n",
    "    geom_bar(position = \"dodge\", stat = \"identity\") +\n",
    "    labs (fill = \"User Type\")"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 36,
   "id": "3644bdd0",
   "metadata": {
    "_cell_guid": "77f49778-40ea-46f0-b143-1b43baefbd1d",
    "_uuid": "09606d3f-61c7-4932-9a40-6601b95a83a7",
    "collapsed": false,
    "execution": {
     "iopub.execute_input": "2023-05-16T13:02:15.193723Z",
     "iopub.status.busy": "2023-05-16T13:02:15.191557Z",
     "iopub.status.idle": "2023-05-16T13:02:18.036730Z",
     "shell.execute_reply": "2023-05-16T13:02:18.033507Z"
    },
    "jupyter": {
     "outputs_hidden": false
    },
    "papermill": {
     "duration": 2.895849,
     "end_time": "2023-05-16T13:02:18.040595",
     "exception": false,
     "start_time": "2023-05-16T13:02:15.144746",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "iVBORw0KGgoAAAANSUhEUgAAA0gAAANICAIAAAByhViMAAAABmJLR0QA/wD/AP+gvaeTAAAg\nAElEQVR4nOzdd2CU9f3A8e9lE4KEKVsREARk1Fq1Dpy1KFVRFEdRUBAVB4qronXgHoi4cFs3\nKiraOuoCraPVyk8rFTei4mAoI5AQkvz+OIlUIV4wl8Qvr9dfl+e5e+7Dt4e8++Seu0RFRUUA\nAOCXL6OuBwAAoGYIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASGTV9QA1YOXK\nlUuWLKnrKdYsOzs7Pz8/hLB48eL1/LOgCwoKMjMzS0pKiouL63qWupSVldWwYcPgJRFCw4YN\ns7KyVqxYsXz58rqepS5VviSWLFlSXl5e1+PUJS+JpMzMzIKCglDvXxJNmjSp6xFYgxjCrqKi\noqysrK6nWLPMzMyMjIwQQllZ2Xr+r3gikahcirqepS5VviTKy8vr83+ya4GXRFJGRkblOnhJ\nZGRkJBKJ9fwlUflXo7y8fD1fCtaBX8UCAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgB\nAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELY\nAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC\n2AEARELYAQBEQtgBAERC2AEARELYAQBEIquuBwCg3ml02Xm1/6TlIZSEEM67rPafGqLhjB0A\nQCSEHQBAJIQdAEAkYniPXSKRKCwsrOsp1iyRSCRvNG7cuG4nqXOZmZkhhNzc3Ozs7LqepS5V\nviQ22GCDup2kziVfEjk5OfX272/tqJ8vibK6e2ovidVfEhUVFXU7zNosWrSorkdgzWIIu4qK\nipKSkrqeYs2ysrKS/3qVlJTU27+ftSM/Pz+RSJSVldXb/7FqR2ZmZoMGDYKXRAgNGjTIzMz0\nkqifL4k6/L9fZWVlxcXFdff8dW/1l0R5eXldj8MvTAxhF0Kot/8VyMnJycvLCyEUFxfXn/9k\n14m8vLyMjIyVK1fW2/+xakdOTo7/ZCfl5uYmw249f0lkZ2fXw5eEsKtUJxcIl4SQe8nEkpKS\nsrI6PHnKL5L32AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC\n2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBE\nQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEA\nRELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARCKrrgcAqEca\nXXZe7T9pSQi5l0ys/ecF4uOMHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQd\nAEAk1q8PKPbRowBAxJyxAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIjE\n+vUBxcAa1clnd5eHUBJCOPfS2n9qgFg5YwcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJ\nYQcAEAmfY8d6rU4+v60khNxLJtb+8wIQPWfsAAAi4Yzd+qhOTlOVhVAWQjjnktp/agBYTzhj\nBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJ\nYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQ\nCWEHABCJrFp7po9fevDux1/+77ufN2632X7DT9i1Z5MQQgjl0+677rEX3vh0SeZmPbcaevyw\njg0yVz2iil0AAPxQLZ2xm//vW0dfek+zLfc484I/777ZsmvOPum/y1aGED6acuaVk1/ZZt8R\nZ48+NP/DZ8aedFPFqodUsQsAgB+rpTN2141/vMMfxh29T48QQveuF8/+4uxXPlrSvUfD8ZPf\n6Txk/KBdO4YQOl8S9j/ssnu/GHJw64ahYsVadwEAsCa1ccZuxZJXXl+yYs/9OlU+6ehzxh3R\ns0nJohfmFJf137lNcmtuk+17F+S8Nv2rEEIVuwAAWKPaOGO3YvFrIYQNZ/7ttHv/+uGXyzfc\nqNOAQ4/r36fViqK3Qgjd87+foUd+1t/fXhRCqGJX0r/+9a/FixcnbxcUFPTo0aMW/iA/R25u\nbkWFXyaHzMzM3Nzcup6iXsjJyfGSCF4Sq8nNzS0vL6/rKepeRkaGl0RSTk5OvX1JlJSU1PUI\nrFlthF1ZyeIQwqXXvXjAkUcfvmHuO9Pvn3T20SXX3LlTaVEIoXn295dENM/OLF1cGkIoL1nr\nrqSJEyfOmjUrebtPnz4333xzKpPU4cuwoKCg7p78h+pwHXJycnJycuru+X/ISyKpDtchOzs7\nOzu77p7/h+pwKRo2rEdvNfGSqOQlsUYrVqyo6xFYs9oIu4yszBDCjn8+e2C3JiGErpv1nvvK\nAY9c9/Yux+aHEBaWlrfK+e43wvNLy7KaZIUQMnLXugsAgDWqjVTKyu8Swiu/7fD9+YmtW+e/\nOH9udv7mIUyftby0Vc53Z93fW76ycY/GIYQqdiXdcMMNZWVlydsVFRULFixIZZI6PEOycOHC\n+vN7tzpch+Li4qKiorp7/h+qw6X45ptv6s8vWbwkKnlJJNXhOpSUlCxdurTunv+H6nApvv32\n28p/6eqb+vMvGj9QG2GX12T3Jll3Pffe4s37NAshhIqyaZ8va9SjU15h97Y51z/+8rwd+7cL\nIZQufeP1JSsG7dQqhJBXuNPadiWtfoK6tLR00aJFoX6rqKjw1yBYh9VYikrWIclLopJ1SPKS\nYB3UxlWxicxGp+3TZdqFZz/y4usfvPvWAxNPe2Fp9tCjuoVE9phB3d6/5Zzn3nhv7kf/ufms\n8Q3b7jakTcMQQlW7AABYk1p611r3IRcdFSZOufHyO1fkbNRps+MvPuu3hbkhhM6Dzz+mZMI9\n489aUJzo1LvfuDEjEqseUsUuAAB+rLYuR0hk7X7oSbsf+uPtmbsdNma3w9b4kLXvAgDgR2rp\nK8UAAEg3YQcAEAlhBwAQCWEHABAJYQcAEAlf0gVAfZHXf3B45fU6eep5PbvWyfNCzXLGDgAg\nEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEr5SDADql7z+\ng8O0l+rkqX212i+dM3YAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2\nAACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQ\ndgAAkRB2AACREHYAAJEQdgAAkciq6wEA1nd5/QeHaS/VyVPP69m1Tp4XSBNhB9SZvP6Dw6v/\nrpOnFjRAlPwqFgAgEsIOACASfhULtc0bqgBIE2fsAAAiIewAACIh7AAAIiHsAAAi4eIJak9e\n/8Hhn2/UyVO7aACA9YEzdgAAkRB2AACR8KvYtPOhZQBA7XDGDgAgEsIOACASwg4AIBLCDgAg\nEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4A\nIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIO\nACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLC\nDgAgEsIOACASwg4AIBLCDgAgEll1PUANSCQSBQUFdT1FfWRZKlmKJOtQyVIkWYdKliIpxXUo\nKipK9ySsG2fsAAAiEcMZu4qKiqVLl6Zyz0bpHqWeWduyrG/rECzFKtahkqVIsg6VLEVSiv+e\nUm85YwcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlh\nBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJ\nYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQ\nCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcA\nEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQiaxq\n3XvhZx/NKyr98fauXbvW0DwAAKyjVMOueP4z+203+PF3F65xb0VFRc2NBADAukg17G7ce8gT\n7y8ZcPTpv++1cVYirSMBALAuUg2781+bt8nghx67bq+0TgMAwDpL6eKJirIl80rLNhrcK93T\nAACwzlIKu0RmwY6FeR/d/nq6pwEAYJ2l+HEnifv+Om7FE38cOu4vXxWtTO9EAACsk1TfYzfo\n9Kkbts7+y5+H3nH2EU1btWqQ+T8XUHz66adpmA0AgGpINeyaN2/evPmuG/VJ6zAAAKy7VMPu\n4YcfTuscAAD8TNX75olln//fg1Of/u9Hc5eVZbXepMfv9hm0RfuCNE0GAEC1VCPspvz5wEMu\nuL+k/PsvmRg7+qj9x949+bz90jAYAADVk+JVseHjBw4ZNG5yy36HT376n59/veCbeXNfe+7B\nI3bc8P5xg4Y8NDudEwIAkJJUz9hdPvrRgrZDZz1zU37Gd9fD/nqn/bbo1798o1b3H3dF2Pfq\n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\nCyEs+s+iyiPkFPRpua5frLDJQeMyEomrr5oVQpj/5qnvLCv93YTBlXsLux68+p2z8jrv2TRv\nySfPpz7bz5fqx518sHxl25w1rUJGKCv5rAYHAgDWQxnZGSGEipVreNd++YryEEJO4rv3w+1w\n6l++HvqnRx7567QX/vHS07ffc9OVJ5249SNvP79NRk4IYfNTb71s5zY/OEJu4+9P0SUyGq7z\nkLmNdxrdrmDSLReHix545sSpWbkdJm7f6vvdiR++Yy87ESrKS0IIIbXZfr5Uw+6AFvl/ueO0\n2Zc+u3FuZuXGspI5Z9zyfn7LYTU4EACwHmrUuVMIz3zxxBdhi5Y/2PXUe4syMhv2LcgOIZQu\nffeNmd82673FgUeefOCRJ4cQ3nliXPc9/nzCmTPeunKPzMTold923X3331Y+duXyWVMefbNV\n7/yamnPEmb3Hj3zwrs8/OOnlL9v1f7hZ1venvb59d3IIu1f+WFbyyWMLihv26hdCyGtaG7OF\n1H8VO3bSwSXfTu/ds/+EOx9+dcY77/zfP6fePXGPzXs9803xQdefXoMDAQDrocYdz+vRMPut\niwZP+b+vVt/+jxuHj/9sSet+45MJVfTV9VtvvfUBF3///v6Nf71lCGFl0cqsvM7ndG/6/p2H\nPfvlssq9947a+6CDDppTc5/bu8ngCzITidNH/mFeadmwK7ZffVfRl7edMvWDVT+V33fqPkvK\nync8v18IoXZmC6mfseuw1w3PTcg64NQbTjz06cqNmTktjpnw7LV7dajJiQCA9U9GdsunppzV\nc8A5+/+qbZ9dB2zZtVPDsOTNl554bsZnBR12nfrI0OTdGm987q4tbnx23A57fDRs6x6blH87\n+5Gbb83MbnbOhX1DCKMfv+6mTQ/p36nnwAP32qJL07efm3zn0+9tPvTOIS1r7KxYTuMdTmzf\n6PK/zcor3PnMzoWr72rYdour9uvxzkGH/6Zz4zen3f/QtI9b/uaEO/t/l0m1MFuo1nfF7nTC\ntXMPP+Wpvz799odzSzPy2nbefNc9fteh4Psj9OvWZfqs92twOABg/dF297M+mbn1BRdf97fn\nXrlz+l8rsgvab9r7uHF//tOpR7Re9Ub/RGbjR//zzGknnD31ibufvruoQZPWv9r+4AfPvmSf\ndgUhhIIOB7z1VuPTTrto6kO3PLIiZ5NNu5990xNnHvH7mp1z+Jm9Lj/yH12PvuQH59pabnnZ\n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\nOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBI\nCDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCA\nSAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsA\ngEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASGTVztNUrPzm4ZtueOLlNxcU\nZ7Ru32WvIUft3rdVCCGE8mn3XffYC298uiRzs55bDT1+WMcGmaseVMUuAAB+qJbO2P39wpPv\nmvblgKHHXzLutJ07lVx3zqipny4NIXw05cwrJ7+yzb4jzh59aP6Hz4w96aaKVQ+pYhcAAD9W\nG2fsyko+nfTv+f0uvHzvHk1CCF26bf7FvwZPnTRr7/N7jZ/8Tuch4wft2jGE0PmSsP9hl937\nxZCDWzcMFSvWugsAgDWpjTN2ZcWzN+rYcY9NGq3akOjbOHfFoqUli16YU1zWf+c2ya25Tbbv\nXZDz2vSvQghV7AIAYI1q44xdTuPtJ0zYvvLH0qWzbp27dOMRnVcU3R9C6J7//Qw98rP+/vai\nEMKKorfWtivppJNO+vDDD5O3u3fvfv7556cyycqf9ef45WnSpMkat69v6xAsxSrWoZKlSLIO\nlSxF0trW4Qe+/fbbdE/CuqmliycqzX7tb1dPvG3lJnucsVvb0tlFIYTm2d9fEtE8O7N0cWkI\nobxkrbuSvv76688//zx5u0WLFpmZKV1Xsb79/Vzbsqxv6xAsxSrWoZKlSLIOlSxFUor/nlJv\n1V7YlXwz69arrn7yzYX9Bh19wcE75yUSS3LzQwgLS8tb5Xz3G+H5pWVZTbJCCBlr35U0ePDg\nhQsXJm83a9asqKgolRlqO2Pr2tqWZX1bh2ApVrEOlSxFknWoZCmSUvz3lHqrll6xSz5+Zswp\n12b26n/pTYd2bZ6X3Jidv3kI02ctL22Vk5vc8t7ylY17NK56V9If/vCHytulpaWLFn3/W9oq\nNPrpu0Rl+fLla9y+vq1DsBSrWIdKliLJOlSyFElrWwd+KWrj4omK8mUX/On63F2Ou+7PR1ZW\nXQghr3CntjmZj788L/lj6dI3Xl+y4lc7tap6FwAAa1QbZ+yWfXnnf5eVHtGr4b9ff71yY3aD\nLr17NB4zqNspt5zz3IandissmXr1+IZtdxvSpmEIISSy17oLAIA1qY2wW/Tu7BDCLZdcsPrG\nxpucdeeELTsPPv+Ykgn3jD9rQXGiU+9+48aMSKy6QxW7AAD4sdoIuzY7XfToTmvZl8jc7bAx\nux1WzV0AAPxILX2lGAAA6SbsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewA\nACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHs\nAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh\n7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAi\nIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAA\nIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewA\nACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHs\nAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh\n7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAikVXXA9SMrKxI/iA1y7JU\nshRJ1qGSpUiyDpUsRVKK67By5cp0T8K6ieF1nEgkCgsLU7lnSbpHqWfWtizr2zoES7GKdahk\nKZKsQyVLkZTiv6cLFixI9ySsmxjCrqKiYv78+ancs1G6R6ln1rYs69s6BEuxinWoZCmSrEMl\nS5GU4r+n1FveYwcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJ\nYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQ\nCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcA\nEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEH\nABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlh\nBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJ\nYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQ\nCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcA\nEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABCJrLoeoArl0+677rEX\n3vh0SeZmPbcaevywjg0y63okAID6q/6esftoyplXTn5lm31HnD360PwPnxl70k0VdT0SAEB9\nVl/DrmLF+MnvdB5y/qBdt+mxxfajLxm19PPH7/2iqK7HAgCov+pp2JUsemFOcVn/ndskf8xt\nsn3vgpzXpn9Vt1MBANRn9fQ9diuK3gohdM//frwe+Vl/f3tR5Y8TJ06cO3du8vZGG210+OGH\n1/KEvwiNGjWq6xHqC0uRZB0qWYok61DJUiSluA5Lly5N9ySsm3oaduUlRSGE5tnfXy3RPDuz\ndHFp5Y//+te/Zs2albzdp0+fo48+OpXDltTokPVfbm7uGrevb+sQLMUq1qGSpUiyDpUsRdLa\n1uEHhF29VU/DLiM3P4SwsLS8Vc53vyyeX1qW1eT7aX/zm9+0a9cueXujjTYqKUntr955l9Xw\noD8lIyOjIjs7hJDqhDVqrU9a6+sQQsjJyalIJMrKylauXFn7z15/lqLyJbFixYqKitq+Iqj+\nrEMIITs7uyIjw0vCS6KSl0RSPX1J8AtRT8MuO3/zEKbPWl7aKue7/+vw3vKVjXs0rrzD8ccf\nX3m7tLR00aJFPzxE/ZCTk5OdnR1CWLp0ae3//axXCgsLs7KyVqxYUVS0Xl8Es/pLory8vK7H\nqUuNGzfOyMgoLS1dz/+vf3Z2duPGjYOXxKqXxMqVK5csWVLXs9SlrKyswsLCEEJRUVFZWVld\nj8MvTD29eCKvcKe2OZmPvzwv+WPp0jdeX7LiVzu1qtupAADqs3oadiGRPWZQt/dvOee5N96b\n+9F/bj5rfMO2uw1p07CuxwIAqL/q6a9iQwidB59/TMmEe8aftaA40al3v3FjRiTqeiQAgPqs\n/oZdSGTudtiY3Q6r6zEAAH4h6uuvYgEAqCZhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcA\nEAlhB//f3n0HNHG+cQB/LosQVpAtggqICg6o1LpX1VonUlQUC+KorasOqlWxzmr9Oepu3QOt\nOOuqddWFo6LiFqy1dYAKyJQ98v7+CEZUEqIWLgnfz1/Je5e753lylzxc7g4AAAADgcYOAAAA\nwECgsQMAAAAwEGjsAAAAAAwEGjsAAAAAA4HGDgAAAMBAoLEDAAAAMBBo7AAAAAAMBBo7AAAA\nAAOBxg4AAADAQKCxAwAAADAQaOwAAAAADAQaOwAAAAADgcYOAAAAwECgsQMAAAAwEGjsAAAA\nAAwEGjsAAAAAA4HGDgAAAMBAoLEDAAAAMBBo7AAAAAAMBBo7AAAAAAPBMcb4juF9FRQUpKen\n8x1F6bKysuLj44nIzc1NIKjUbfSjR49ycnIsLS1tbGz4joVP2dnZcXFxROTi4iISifgOh0/K\nTUIul9va2vIdC59ycnIePXpERK6urkKhkO9w+BQfH5+VlWVhYWFnZ8d3LHzKzc19+PAhEdWs\nWVMsFvMdjlrW1tZ8hwClMITGTpedPHkyNDSUiE6dOmViYsJ3OHwKCgq6fft2QECAsiCV1rlz\n50aNGkVER44cqVKlCt/h8Gnw4MFXr1718/ObNGkS37Hw6fLly0OHDiWiAwcO2Nvb8x0On4YN\nGxYVFdWlS5fp06fzHQufbty4ERISQkS7d+92dnbmOxzQM5X6GBIAAACAIUFjBwAAAGAg0NgB\nAAAAGAicY1e+EhMTr1+/TkRt2rSp5GfKR0VFZWRkODs7u7u78x0Ln5KTk69cuUJErVq1kkgk\nfIfDp0uXLqWlpTk6OtatW5fvWPiUmpp6+fJlImrRooVUKuU7HD5FR0enpKQ4ODh4enryHQuf\n0tPTL168SETNmjWTyWR8hwN6Bo0dAAAAgIHAT7EAAAAABgKNHQAAAICBqNRnfWkwpa//taz8\nvqsi+tq/cn5D9Jwh084n1PRfuDjI7f3XsmVQwKX2s3/s6/L+i/rPRQ4LnBf3/M1xjpPs3buz\nPNbISzXu/Dx8/KHETbu2Wwg55cjhUf1XPMhcsG2Xm7T4VrHR0wfNZ701vQAAFMlJREFUvCnZ\nteMnLf8MqoBEKrJWmreEYD/fBkvDxzmalXcYuryzqFz+Jnj6ndTXBmU2fSLWBr422L17d9/V\nEQPtXj99Si/SVLlxLGL7wVN/PXxaJJLZVqvVunNAn3Z1ynxV5pO4TKmtveW7n2Cq41V6t7Jo\nScdzB12Axk4tTsidCP+r7zdeL4dY/troZ0KO4y+oitNgzJTZeYVExIqeT54yp/ZXE4OdzIiI\n4wzqKG/VLg3Ywd/2PssJspMREWO5W+MzGVNExKSGeRffVP3o3xmmTl8ZVNpvo5JsCf8Vqbzd\nd+PblxwRSkr5vxqffvppHWP9/vh9sHdG2LprH/ce6D+olpEi8961M+FLJ9zNXhTWtabmF0ZO\nG3/ww2lLBxvmRVTvXBaA/4p+f7KUK7u2DZLOrM1nSyUvGrnM+F8ek30L82cPtV5IkYIJBXrZ\nCFrUqmNBRESsKJWIzFzr1nOX8xtSeTB16G0kOHg1MjHIvwYR5STuSi2SBNWQ7N8WQ94tiago\nP/58Rr7HoPe9bBNbwptYUS4nNLSLQAVim3r16mmYQZn1V199VWEhlZP1269XbffdqMCGyqd1\n6n9QR3I/dON86rr8P1yL3m0k718W/f2sAB2Bxk4t8+pBwtPjf4l7PsCp+GemO5vOWnkNNfrr\nf6p5ivLityxf9celmIwCQXV3715DhjWvYUZEwX6+XRfPipkz93J8hqmlXZNPQ0b2aUpEuc+u\nrVoRcTX2bo7IpkX34JJfj/lpt9euCD9//V5GvsK6qlunfiP9mzn+tXpk2BmP7RuLvwPS7/0U\nNO7kiu2/OEr4+4eSrKB7j8/6r9vW29pYOdCvZ48my7eMqmqqKEzetXrl4XPXU/IEjq4NfYO/\n+LiOpXKexOjff958IPbRE4GJVcNW3UYM6GYs4HShGpzIslsV48N/3CT/GkQUf/BPYxu/VoGx\nW+b/UsRaCjnKTtirYOwT7ypEpC5BDYmo2xL0sVbqKApSN8yeeejKXYHMukmngaP6NtWwkSgf\n91u1JmHdopM3jcPDw0rNV0NVec/33byWteqnWF1+ZzXLLmJ5qQklR2p0HzbZJU1D8ES0ckDv\n31JyaV9or5PNd4SPVbedvFYuPaqSprJo3C8M+VsDKhZ+TFFPYDTI2+rMxtjipyx/3ZVnLYJL\nnirBfh7zzW+3WcjosLnfhTaU/js/dHRsTqFy2oFJc6v7jly2csUI3zpHt8yJSMxmhclTR868\nkGwZMnbqpBEBKUcW7UvOUS1r/fgZ51KcRk2ZtXDuzO4NFeHzQp8VKpz9O+elHbqSWaCc58qa\nC3K3QTq7f4Z/O3rPbWH/ryfPmzWpU2225NuhRx5nE1Fh9q2RM34W+PSYOmf++KE9b/+2btbh\neN2pRrM2dtlJe4oYEdHxUwmOnZtWqd+rKC9+f0ouET09FiOS1mhlYaQuQc2JUGlbgv7WqlSX\nZ03hPvSfv3TZ8J51jm2ds+NZTpkvObt0hkmjnnPmDS81XyLSkDLv+WqmKEiKeZXijaxVM+v4\nO6vZoB71n0UvGzhu2qadv13761E+I6HUzcfHR0PwRDR4zS9D7E2du/ywdUMZ/zNaVS79qpLm\nsmhWCb81oDzgiJ0mdYJaJI9ZnavwkQq453FbHnOOgY6mK19MzU6MOByXOXr9pDZWUiKq5elx\nq9/nK/c9/LGPCxGZNAkN7tiQiJx8xzpuiYxNyk26v/xOrnTh3HEuUiER1a5r3Kf/96p12XXq\nPfLjrj4WEiKqZt9rzf6Z93MLfSw/bWS6duupp95dnBSFyWti05rO/aiiq6Cd3OQ9u+9mzN46\nzlMmIiJX93qFUYERP93uONMnPzM6R8E6d25dW25Ebi4zJ1o+MTZNil6iI9Wo2rFR0c6dJ9Lz\n2honHkrNG9TaTiSr3srC6OSRx759Xa6cSzKrPpxTn6BXt4MaEqHStoRc4RE9rVWpLBuODe7Q\nkIiq+Y6z3XwmJiWPrMr4YEm3GxLQvgERZSceeDNfIkqKVruz8J6vZrlpxydMOF5yJGLPXpmA\noxJZq2hIk3Q+09p9py31iDx+5sKVY9t3bloplMrrN27pH/x5AxupuuCtTSVCkUjEEScUiURC\nYgoNy1eVKzFqhh5VSXNZNKts3xpQTtDYaWJaLbCaYO+G+8+/dDG/s+msTaPh4hJnPqTfvi40\ncmxnVby7cgKZn4NsxZkn1MeFiOw7VFfNaS4UEKOk0/FSy44uL661lJg1bmQqTn4xTw/fTtcv\nnN39MD4hIeGf2xdVr+3b3iFs12HqMjjl+qosUdVBbublmvI7y4y7whibGOBXctCkMI7Ix9iq\nR2u3ozMGDq7XyNujbl2vRk0+rC6/NV9XqmFs42cq3HXiZmojq60kqfappZSIujaxnXr0JAVU\n25+cWyPEXUOCmt9WKm1L0N9alcqx08sEzbQ7N8jhYyflg1LzJdK0s/Cer2alXgOrpMpaRd8/\nE6o3bBnSsCUR5aTEX7104cCObVOHRS/evMzZSKgueO2pyqV3VVJblrKuA65s3xpQTvBTrEac\neGAjm6j1N4jlr7+a3Kr/K5dxMUavFVAg4JiiSPlYbPzGoe83vvPMRcUvVxQ8m/FFyLxtkVkC\nc88P2wz99uWPFE6+3XOT99/MLji99qZd06FSnTuplhUyIiKRiYQTmuzc9YrwFd2JiBOaj1u4\nccmsrz+qZf3o+h9TRoVM23hVd6rBCU39bGTxB/69t+2Oec0A5W1PnHp+mJt84O+E39MLFZ3r\nW2pKUH0iSm9uCfpbq1IZy8r8lad4I1GRmRX/SVl6vqR2Z9GFfN+ZKuuXdPud1SA/4+zs2bOf\n5hcfcjOu4ti0o9+0xd8V5cVvfvBcQ/AavbKdvCyX/lRJc1nemP31/aLSfGtA+cIRuzK4B7VO\nGbHmyYM7T7jqAVVNSk6S1/UoyttxOjWvlaURETFFzp74LJtujuoWZdvKMTfy6L+5gTWlQiIq\nyv37fEaePRERZcatjU4q2LhyilzIEVFe+knVq6SWHRqbrtxw9Ny/cZkDpuvKDQIyX3wg5aae\nylUwIpLZfUKKqINJBb5VlbfmYuumfJve+usx7aum3tyzK6po8MDPnD18uhE92B86JnzD8PE6\nVA2fjg5bd+7bTmmuocXnUMrse1sI9yzf/bvI2L2pmURDgv3Vv63q6HWttPfmRvKmUvOl4EXq\ndhZdzvcd6O9nglDicPHCBfGFxG9avtzYi3JSicjeVJwZt1Jd8G8qczvRoyppLovyqTb7hYoe\n5Q66A0fsymBiH+AiSp+x4KhN4xDRq3/2yOz6ta9qsmLC3MjLt/6JuRr+w7g7hfIvelZXsySy\n9hrmbpQ9ZdKi81diYq+eXzxpmplR8d9nYrNajBXuibyZ+CwhNvr4vMkbiejh0zTl3319PnG8\nu36RwKxptxfXUvGJE9eWiSOX77wXn/gg9vLisFUcxxGRxMxnsJfV5gkzD0Vevv/PnT0rv90f\nk9yuqQ0RieVZ+/ZsXLL75J1/Hvx188KuQ49NqrXQqWrYtWlWkH0rNrvA36P40lROIOvraHrv\n0GNzl8+UI+oS1JCIOnpdK62o2UjeVGq+pH5n0dF835X+vbMvCKUuE7vWPrNwzLIte6Oir9+8\nHh15dM/0MYvNXToHOZhoDl7AUc6T+NTUDC23Ez2qkuayaL9fqOhR7qA7cMSuLJww5CPbyScf\n951c681JwxfNNVu2evW8qc8LhU7uH4TOH+YhU1tSTmQ1Y+nkFUs2Lfp+EkmtW/We8OWFheFE\nRGRs7TdtQOLqTXMPZAtr1GrYb+JyiwUjwseP9Nn6i7OR0KlHD7ZzUXW/vuWY5tsIm/7F/5bu\nmDB8V76CeXT4qkn6WuV41+9+zFu1bMfPc1MLxI41G4ydM7mhiZiITKsFThuYueG3tSc2ZZpY\n2rjV/2T2sJ6cSKg71ZBadbMUbc42aVby7fP2r04LbtTwc1WNqElQ7duqgf7WSkvqNpLXlJov\nqd9ZdDbfd6PXnwmNh8ydWn3rr4cP/bg3MaeQs7St5tUuKLR/FxFHIo3Be/b4aNO6JV+FtopY\nO0ab7US/qqShLKT1fqGiX7mDrmCg87KT9nXv7nszq4DvQF6hUOSlZORV/Hp1sxq6ifdaVfBG\nwnu+FcbAMi2n7URnq1QB+4XO5g4VAEfsdBsrzC/MPbR4t6lTP0/1xwJ5wXESy3L/B6Gv0uFq\n6BzdqFXFbSS6kW9FMMRM//vtRLerVL77hW7nDhUA77pOy0s/0StoqdDI6stFnfmOhX+ohvYq\nW60qT76VJ9P3UZmrVJlzByWOsTKuygE+scL4fx7Ka9Q0EeJ6dVTjbVS2WlWefCtPpu+jMlep\nMucORITGDgAAAMBg4HYnAAAAAAYCjR0AAACAgUBjBwAAAGAg0NgBVC4ZD8I4jgu8k8JvGNvC\n+jrZmFq7DeQ3jJI8TSRVm/7OdxQAAO8FtzsBgIqW9XR1wPcRNXxD5/t34jsWAACDgsYOACpa\nTtJvRDRkyXcDnCr4JtcAAAYOP8UCQEVjCgURGQlwny0AgP8YGjsAA3cx4of2Pm5mUomVQ62A\nrxcl5itKTo3Zt9y3zQfWFiYiibGDa4Pg8UtSChkRxaxoznHc0vjMEvMqPrY0NnXQ9qy4hAvb\nAz9taiM3lZhYuH/YfsaGk8rxPZ42tl77iSi0mpmJTa8yl/O9m6XIqGq2oviOm48OdeY4ztxp\nvGqGU/1qcRy3ISGbiDIfnB4d8ImzjdzIpEod73bTVx5UvLq0MmcoxvIXBNQVCI3GbY3RMl8A\nAJ3A9z+rBYBydG1ZHyKSWnmHjPj2my/7u5uILRu6EVG/2GTG2MMDwwQcJ6/TJnTy9NnTp/Tv\n6ElEtQIPMMZyU/8QcJznqD9Vi0r/dzYRtfgpRpv1Jl6cZy4SiE3cg4eNnz5hZPs6ciJqH3aS\nMZZw5vi2FU2IaMjmX48ev1Lmom4tbUJE3z/IUD490MGJiARC2ZP8IuVIoK2JkXlzxlhm/K+u\nxmKxrMaA4aGzpk7o1dqFiLyC1qsWpXkGD5nYoclBxhhTFCwK9OQE4q/Db2qTLACA7kBjB2Cw\nCnPu2kqEMrtuNzPylSOZcX/UlolVjd1GT2uR1PlBbqHqJWMczYytuikfj65mZlyls2rS4T6u\nnMDo0vN8Ldas6G0rE8vqnn6SpXxeVJA0ztuaE0hPp+cxxhKvdiOi+XHPtckiK2ETETWafVX5\ntKOl1K5NEyIafSeFMVaQdUPIcTV9DzPGpnlaiWV1zz3LUb3217FeRDTrXpryqeYZihs7RcGy\n4PocJx658YY24QEA6BQ0dgAG68lZfyLyPfSw5GBUaH1VY5eVmpyckqmapCjKHFbVVCr/WPn0\n9k/NiWjNk0zlpLoysXWDhdqsNztpJxHV+/rPkoMpMaFE1Hb7PfaWjR1jrLmFkdxlFmMsL+M8\nEQVF3TITCuqPi2KMJUQFEtHg6MSCrJtCjlMOquSlnSKi+qFRjLEyZ/CQie2b7P9poBcR1eix\nR8vYAAB0Cs6xAzBYiZH3iSjgA+uSg64h3qrHMnmV7L8jf5w5afDnfTq0/sjJymrF45cn1bn0\nnSnguKWLY4no2bXxMdkFHRf10Wa9uamHiMglqGbJQVOnICJ6cuTpOyQypY1DxsP5KYWKlOsL\nOE44sZ77mGpmD7bvJqLbCy8IROYzPa1yU34vYuzGgsZcCUby1kSUfiOdiMqcgYiSovsP3/Rv\nY7nRo0PDzmXkv0OoAAD8wu1OAAyWQCQgoteuPRVILVWPd437uNePJxy923Vr26Rr807jZjSM\n/6LDiMTiqUYWbUdXM/157Q80Z8exMXtFRs5LWtprt2b25hDHiYiIFZYyqUzeU9oq9q6fez+j\n06JomU3fOsaiHp/XnDVnaWLB96uPP5a7zrCXCDIFEiKqP37dvHZVX3u5kYUXEVGZMxAxBTf7\n4I2B8nW2jaf28V/16MiId4gWAIBPfB8yBIDy8vRCHyLyO/qo5GDMqmZE1C82OS/jvJDjnLus\nLDl1nXsV1U+xjLGYlS2IKDzuro1YWKP7Pi3Xm520nYjqj71QcjD1zkQiahV+l739T7GFeY9M\nhYL6oVGBtiauvU8wxtL+mUxEI6+eFnBcy3V3GGMFOXeFHFf3i7MlX1iQHRMREXHySZY2M3jI\nxPYfHVCOr+rqTESTzj7VMkIAAB2Bxg7AYBXm/GMrEZpW9YvNLFCO5KVdbS2XKhu7rKfrichr\n8iXV/FmPz3qaiKXydqqRvLRTQo5z7FKHiKbfTdV6zUV+NjKxSb1zicWXKSgKksf72HACo2Op\nueztGzvG2CxXubF1TyHH9Tn/hDGmKEyrIhY4dKhNRHuTi9cy09NKZOx27MUVG4yxTSHuHMdt\nSsjSZoaXV8Uylv/8UnWpyNiqY3JBkfZBAgDwDo0dgCG7tqQXERnb+HwxJixszBAvS2nNTgOV\njR0rymlvZSyU2A+fNn/dmhVhY4LsjeXNa5oJRPLFm7dnFimUSwh1NiciqbzdWzU4CX/OMRUK\nJGYeQ0ZPnh029hMPSyJqN/kP5dR3aOxuLWui/JHh4ovLcue4yonI2Kqrap7nD7Y5G4nEspq9\nB349d870zzt4EFH9AeFazlCysWOMxazsRkQfTo58m7wBAHiGxg7AwP255fu23i6mRiIza6fP\nhi97nnmbXlwVm/nwWHCnjxytTMztXdp06b//VkrSpf/VsJRJTG3i8orvgRK7qgURNZx48W3X\n+/jMloAOja3MjUVSM9cP2k5ff0I16R0au6yEcCJS3YqFMXZtjg8RuQefLjlb2p1DQ31b28tN\nJbIqdbxaTF39e4GCaTnDa40dU+QPdrUQiMz3JmRrHycAAL84xt7lXGYAqCQuTfJq/MP1X5Oy\ne1hJ+Y4FAADKgMYOANRSFDxrauUYazki/cECvmMBAICy4XYnAFC6YSPHZd/dHfU8f9DusarB\n+7929R54VsOrjCxaP72/R/u1/OcLBACozHDEDgBK52lr9m+hhf+IRZtm+PMdCwAAaAWNHQAA\nAICBwL8UAwAAADAQaOwAAAAADAQaOwAAAAADgcYOAAAAwECgsQMAAAAwEGjsAAAAAAwEGjsA\nAAAAA4HGDgAAAMBAoLEDAAAAMBD/B1KH8s4ktnLsAAAAAElFTkSuQmCC"
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    },
    {
     "data": {
      "image/png": "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\n5DbtV5IfQqhY+O7rU79t3WfzA48+9cCjTw0hvPO3UZvu/seTzn7jrat3z00Mr/x24912+2Xt\nYyuXTJvw2Jvt+hSnK+dRZ/cZfcxD93z+wSlTvuw04JHWeT/s9vr23fEh7FZ7s6rsk8fnLG3a\nu38IoajV6sgWUv9V7MhxB5d9O7lPrwFj7n7klTfeeeff/5h479jdN+v9zDdLD7rxzDQGAgB+\ngpp3uaBn0/y3Lhk04d9fLTv+fzcPHf3Zgvb9R9dUqEVf3bjVVlsdcOkPx/dv8PMtQgiViyrz\nirqdt2mr9+8+/NkvF9fO3j/stwcddNCM9F23d8NBF+UmEmce85tZFVVDrtpu2alFX95x2sQP\nvr9V/cDpey+oqt7hwv4hhNWTLaS+x67zXjc9NybvgNNvOvmwp2sHcwvWOX7Ms9fv1TmdiQCA\nn56c/LZPTTin157n7f+zjn132XOLjbs2DQvefOlvz73xWUnnXSY+Orjmbs03OH+XdW5+dtT2\nu380ZKueG1Z/O/3RW2/PzW993sX9QgjDn7jhlo0OGdC118AD99q8e6u3nxt/99PvbTb47kPb\npm2vWEHz7U9er/TKv04rarHT2d1aLDvVtOPm1+zb852DjvhFt+ZvTnrw4Ukft/3FSXcP+K4m\nrYZsoV6fFbvjSdfPPOK0p/7y9NsfzqzIKerYbbNddv9V55IfVujfo/vkae+nMRwA8NPRcbdz\nPpm61UWX3vDX516+e/Jfkvkl623U5/ej/viH049s//2B/onc5o/955kzTjp34t/uffreRU1a\ntv/Zdgc/dO5le3cqCSGUdD7grbean3HGJRMfvu3R8oINN9r03Fv+dvaRv05vzqFn977y6P/b\n+LjLltvX1naLK/5+5KuHnz72kge+Lm674cGnXH3VpScWfH/c3erJVo9iF0LIL91gz4OOWtVH\npn32yfRG5wEAfrqabbTrZbfvelmd92my7i/HPvD02FXMNt9ot3GP7DZuFbND3p2T4pkB+U37\nrerzFxZ8vCCRSJw/oteKU932PP2lPU9f1Zp1Z0sLnxULAJCq6orZw657p3S9k3+7zBXpskf9\n9tgBAPxkHf/7EYvff/ifC8qPfPiUNZ1l5RQ7AICUTB5/88eVzQ8958+37tJxuamB++3X4ufr\nrJFUy1LsAABSMvXrBauaunf8g6szyao4xg4AIBKKHQBAJBQ7AIBIKHYAAOfq6oIAACAASURB\n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\nQmCC"
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "all_trips_v3 %>%\n",
    "    group_by(member_casual, day_of_week) %>%\n",
    "    summarise(average_ride_duration = mean(ride_duration), .groups = 'drop') %>%\n",
    "    ggplot(aes(x = day_of_week, y = average_ride_duration, fill = member_casual)) + \n",
    "    geom_bar(position = \"dodge\", stat = \"identity\") +\n",
    "    labs (fill = \"User Type\")\n",
    "\n",
    "all_trips_v3 %>%\n",
    "    group_by(member_casual, month) %>%\n",
    "    summarise(average_ride_duration = mean(ride_duration), .groups = 'drop') %>%\n",
    "    ggplot(aes(x = month, y = average_ride_duration, fill = member_casual)) + \n",
    "    geom_bar(position = \"dodge\", stat = \"identity\") +\n",
    "    labs (fill = \"User Type\")"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 37,
   "id": "322435d5",
   "metadata": {
    "_cell_guid": "c4abb14d-1c2f-40c3-9ab8-6a5971f3e0a0",
    "_uuid": "0e1614c7-3697-47df-8cc6-3f6d4f84ec00",
    "collapsed": false,
    "execution": {
     "iopub.execute_input": "2023-05-16T13:02:18.131791Z",
     "iopub.status.busy": "2023-05-16T13:02:18.130014Z",
     "iopub.status.idle": "2023-05-16T13:02:24.443670Z",
     "shell.execute_reply": "2023-05-16T13:02:24.441274Z"
    },
    "jupyter": {
     "outputs_hidden": false
    },
    "papermill": {
     "duration": 6.363653,
     "end_time": "2023-05-16T13:02:24.447639",
     "exception": false,
     "start_time": "2023-05-16T13:02:18.083986",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "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\nrkJggg=="
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "all_trips_v3 %>%\n",
    "    group_by(member_casual) %>%\n",
    "    filter(ride_distance < 10000) %>% #Remove outliner\n",
    "    ggplot(aes(x = ride_distance, fill = member_casual)) + \n",
    "    geom_histogram(bins=100) +\n",
    "    labs (fill = \"User Type\")"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 38,
   "id": "6c24175d",
   "metadata": {
    "_cell_guid": "2c63b83b-b0c5-4f03-a061-8ab4842b55a9",
    "_uuid": "cbc17f5d-e10f-4b23-a5c8-4d52b193440b",
    "collapsed": false,
    "execution": {
     "iopub.execute_input": "2023-05-16T13:02:24.549786Z",
     "iopub.status.busy": "2023-05-16T13:02:24.547658Z",
     "iopub.status.idle": "2023-05-16T13:02:25.921213Z",
     "shell.execute_reply": "2023-05-16T13:02:25.918326Z"
    },
    "jupyter": {
     "outputs_hidden": false
    },
    "papermill": {
     "duration": 1.428508,
     "end_time": "2023-05-16T13:02:25.925074",
     "exception": false,
     "start_time": "2023-05-16T13:02:24.496566",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "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\n+zsLq1i0atdKN0l68803n3jiiYrZwYMHN2/efK3l1StFRUW1XUKdoA9BE0IImvA9fQiaEEJI\nuQlLly5NdyXp9u27p97x0aoXvr2tV8OcEEKP577p/4d7vlxV1iono+PRZ9485P/2bp4fQuja\n6cyTrvzdW0uLd1n49OLSsmOPPWSHjQvCtj0nPdjqgwaNqz7EGvdTm8Gud+/eFdPPH939tWVd\nXvz0n9s3+e7Wur57DThqxNBft+p5wKjB797823U4dtnKpSGEZtk/fMJm2ZnFi4qrWFTFJkmf\nfvrpQw89VDG73377tWvXbq2VrFzrGhHJy8tb43i9akKopA+akFSv+qAJSfoQNCGEUHkTfiSC\nYPf5o1PzGv82mepCCIWtj3z++SOT0yedPHzyxAcumf7+J598PO2lx5ODRW1OOmTbm/u379C7\n32932Xnnvv1+37/7xlUfYo37SbdUH5447Z6Znf54XUWqS8oq2PyKYZt+OOGUdTx2bkEI4dvi\nsoqRb4pLs4qyqlhUxSZJjRo12nw12dnZJSlYt/p/pjQhSROCPwwhBE34nj4ETQghVN6E+HpS\ntrIskbGGFFu68rO9O7cbNPq+hZnNdu3/x3EP3JMcz8hudvfrs9987tZ9tmv77nO39dmqbb8z\nnl3jjleVV7WfdEv1dScfLC9pk7OmFJgRSld+vm7Hzi7YMoQp7y0vbpnzXV6csbykYbeGVSyq\nYpOkXr169erVq2J2wYIFCxYsWGslDdbtA/w8VdaQetWEUEkfNCGpXvVBE5L0IWhCCKHyJsSn\nTf8eK0Y/+PqS4l8WZYcQln19Z6etT7v1v5/8ctbIp2et/HLGYxtnZ4QQls25O7n+V1Muv/ix\nkisuO73bLnudEMI7V+6w7Vmnhb9OSy6tOOW09Mt7lpaWhRDmv7fm/aRbqmfsDmpe8MEdp3+y\nsnT1wdKVs868eWZBi0Hrduy8Rru1ycl8curc5GzxkjdeX7xqm91aVrGoik0AAFLUbOtxv9u4\nbO8+Rz3+/L/eePmpY3970oqiffZsnJvbdLvyslWXT5jy6ecfT3369kG7nx5CeOfDr7M2Xjj2\n8jMOv/SuV6e9/a8pEy++YUbDzQ4KIYRE7g4b5U4Y/tc3Znz69itPDe1zfEYiEUKobD+lVVa1\n/lINdqPGH7JywZStuvcbe+fDr057993//HPi3VfttWWPSfNXHHzdGet48ET2yAO6zrz53Mlv\n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\nQmCC"
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    },
    {
     "data": {
      "image/png": "iVBORw0KGgoAAAANSUhEUgAAA0gAAANICAIAAAByhViMAAAABmJLR0QA/wD/AP+gvaeTAAAg\nAElEQVR4nOzdeYBN9f/H8ffdZh+zkrFlmWHstKHSpPjKklJEyla2UiSFLGVrQcYWWRKVQpGk\nUlmyZCnip8iaLTvDmH3mzr3398fVbTAzzszcO/f08Xz80zmfc8/nvO4t16tz7j3X4HA4BAAA\nAP99Rm8HAAAAgHtQ7AAAABRBsQMAAFAExQ4AAEARFDsAAABFUOwAAAAUQbEDAABQBMUOAABA\nEWZvB/CspKQkm83m9mkNBkOJEiVEJDU1NTs72+3zF4Wfn5+vr6/NZktJSfF2lmuVKFHCYDCk\np6dnZWV5O8tVfHx8/P39HQ5HUlKSt7NcKzg42Gg0ZmRkZGZmejvLVSwWS0BAgIgkJSXp7T7n\nQUFBJpMpKysrPT3d21muYjKZgoKCRCQ5Odlut3s7zlUCAgIsFovVak1LS/N2lqsYjcbg4GAR\nSUlJ8cT7eVH4+/v7+PhkZ2enpqZ6O8tVXH9JpaWlWa1WDx0lLCzMQzOjKBQvdna73UPFzmg0\niojD4dDbG43D4TAajToMJiImk0l0+aKJiG5fNKPR6PyPTW/ZzGazK5jeip3rT6jeXjTXv00P\nvTUVhfNFMxgMegsmIrp9v5V//p3qLZie/5KCp3EpFgAAQBEUOwAAAEVQ7AAAABRBsQMAAFAE\nxQ4AAEARFDsAAABFUOwAAAAUQbEDAABQBMUOAABAERQ7AAAARVDsAAAAFEGxAwAAUATFDgAA\nQBEUOwAAAEVQ7AAAABRBsQMAAFAExQ4AAEARFDsAAABFUOwAAAAUQbEDAABQBMUOAABAERQ7\nAAAARVDsAAAAFEGxAwAAUATFDgAAQBEUOwAAAEVQ7AAAABRBsQMAAFAExQ4AAEARFDsAAABF\nUOwAAAAUQbEDAABQBMUOAABAEWZvBwAA4L/KsG6TW+Y5X6uaW+YBOGMHAACgiGI6Y+fIvrRs\nzqyVm3clZBijyse06dynef3SIiJiX7doxooNO/5ONlWv1aBbv+6V/E3/7JTXpnx2AQAAuHkV\n0xm7H996ZcG6M6279Rs3ZvADVTJnjOy7/O8UETm8dPikxVsaPdbzjZe6BPy1etjLcxz/7JLX\npnx2AQAAuJkVxxk7W+bfM3+7EPfWu4/UDBORmNjap3/tsHzmvkfG1olfvDe6c3y7ppVEJHqc\ntO86YeHpzp2iAsWRlfum0pY8dwEAALi5FUuxyzh6a6VKLSsH/zNgqB/iu/VySublDcczbP0e\nKOMc9Q1rXDdoyrb1Zzt1rJzXpscfOpzXLs6RtLS0S5cuuQ7t5+dnMrn/Qq3BYHAuGI1GT8xf\nFEbjlbOwegvmosMXzfUvVG/BXAwGg96y5fwvzeHQ43lzPb9orgX9cP4p0PmLprdsrreOonPv\nUyuGv6RsNpsnpkXRFUex8wlpPHlyY9eqNWXfh6dSKvaMzkr9XERqBPyboWaA+cfdl0UkK/X3\nXDdlNc593LW6evXq0aNHu1YXLFgQGxvriSflFBQU5LnJi8JkMoWFhXk7Re4CAgICAgK8nSIX\nBoNBty+av7+/v7+/t1PkLjQ01NsRcufr6+vr6+vtFLkLCQnxdoTcWSwW3f4pCA4OvvGD/rM8\n9LIHBgYGBnrkilZCQoInpkXRFfftTo5u+3ba1HnZlVsObVbWejRVRCIt//7PRKTFZE2yiog9\nM/dNeY0XW34AAADdKr5il3lp34dTpn2/62Jcu+fe7PSAn8GQ7BsgIhet9tI+V860X7DazGFm\nETHmsSmvcddRGjVqNGPGDNdqRETE5cv/ns9zF4PBUKJECRFJTU3Nzs52+/xF4efn5+vra7fb\nk5OTvZ3lWs6zFOnp6VlZWd7OchUfHx9/f3+Hw5GUlOTtLNcKDg42Go0ZGRmZmZneznIVi8Xi\nPPOalJSkt0uxQUFBJpMpKysrPT3d21muYjabnadPkpOT7Xa7t+NcJSAgwGKxWK3WtLQ0b2e5\nitFodJ6rS0lJ0dvlPzeeR3fvX1Wuv6TS0tKsVo+c+9Dbn3q4FFOxSz6yeuCr0011Woyf06Va\npJ9z0BJQW2T9vnRraZ8rl0sOpGeH1AzJZ1M+uziVLFmyZMmSrtXExERP/Dft+viCzWbz0J+Z\nQrNYLCLicDj0FsxFhy+a2XzlD4LegrnY7Xa9ZXN98slqtertLd6ZR4cvmkt2drbeOorzRdPh\nW4frI2I6fOtw47V+9z41Pf8lBU8rjg/wOuxpb772vu+DL854vZer1YmIX2iTsj6m7zafd65a\nU3ZsT866rUnpfDblswsAAMBNrjjO2KWd+eTPNOuzdQJ/277dNWjxj6lbM2Rgu9hX545ce8ug\n2NDM5dPiA8s261wmUETEYMlrU567AACgWfCE0Td+0A216OCGSQD3KY5id3n/URGZO+7NnIMh\n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\nPziWuGeD6IepAAAAAElFTkSuQmCC"
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "all_trips_v3 %>%\n",
    "    group_by(member_casual, day_of_week) %>%\n",
    "    summarise(average_ride_distance = mean(ride_distance), .groups = 'drop') %>%\n",
    "    ggplot(aes(x = day_of_week, y = average_ride_distance, fill = member_casual)) + \n",
    "    geom_bar(position = \"dodge\", stat = \"identity\") +\n",
    "    labs (fill = \"User Type\")\n",
    "\n",
    "all_trips_v3 %>%\n",
    "    group_by(member_casual, month) %>%\n",
    "    summarise(average_ride_distance = mean(ride_distance), .groups = 'drop') %>%\n",
    "    ggplot(aes(x = month, y = average_ride_distance, fill = member_casual)) + \n",
    "    geom_bar(position = \"dodge\", stat = \"identity\") +\n",
    "    labs (fill = \"User Type\")"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 39,
   "id": "387e8b93",
   "metadata": {
    "_cell_guid": "06241a12-3cf6-4264-bd3a-cae52a0685db",
    "_uuid": "36746fdc-63d1-471c-84dc-e532f7f8bc5e",
    "collapsed": false,
    "execution": {
     "iopub.execute_input": "2023-05-16T13:02:26.026452Z",
     "iopub.status.busy": "2023-05-16T13:02:26.024275Z",
     "iopub.status.idle": "2023-05-16T13:02:28.374454Z",
     "shell.execute_reply": "2023-05-16T13:02:28.372457Z"
    },
    "jupyter": {
     "outputs_hidden": false
    },
    "papermill": {
     "duration": 2.403814,
     "end_time": "2023-05-16T13:02:28.377184",
     "exception": false,
     "start_time": "2023-05-16T13:02:25.973370",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "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\nDapcOeHHxTM4d/XmQJ2V1uIhre6YKtfPbccc/vf5y8MTIw97eafJfz5n4MEHDrx94rd3Xffy\n9KxJky6seHKo3xNOdWsmUbv7CGuUsCOEZPGNw0a9lbXN6cNGN09d+OStN5w/Itx/03EVD7l7\n1KWvr9d32EXHtsgomf7y3XdePXLXyfe3SkspXvbBGZfe2vPw00YP7bri+5njr7n9svZbX9Jv\n0aobL993/dUacVWXXTr5tycdP6h9k+kv/WXS9SOKO9w7uHsV/7MXLpk55rSLC7Y9vuw8e9+5\nZz27YosTh13Qab3EzNefuuHck0tuvmfvDtmrXpFaShbPG33G2K/abHfK2aPzSuc/PvG6KfMK\nOvy489bhf5hS2PXUsy7skFX42uMTrxl5VstJt3XPDDU/47V51vZqU1D9uDWxctYSk2rxkFZ9\nTPuMKtfPCRMf6DD06H/2ufC64zctu/prN17aq++QPw7p8pOB19gJp9KaqeV9hDVK2BGWfHX3\nS98UX/HgWT2y00IIG162eOy1UxYUJ5unJcqPabvP4Wfssf82zTJCCOu3O2zik2M/X17cqmlG\nYf7UgtLkfvv12zSvSei68djzmn+d1bQw/6VVN67uiKvqdsbYI3ZpF0Lo3mPrZTMGPXPjq4Nv\nOqDSMYWLZ14y6tLvehx9+5n7poSwfN7jj368+IoHR5QN1KXbFsVvDnrolg/3HrtN/Tx2jdL3\nU2+atTxz3FUjNs5MDSFsulnWEb+/vGzXsu8e+udX+Wfdff6uLTNDCJv02PyDgYNve2L2pTu+\nUOUzXrYsavms9T7g6erGrZmVszaozUNa3TE7nPRONWeMtLRESKSmpaX98OO3RW1PPHLPLSsN\nvYZOOJXWTC3vI6xpwo4w798z0ptuVXYmCiFktuh/+eX9Kx1z4EH7vPfv1x6dPefbb7/97MO3\nyrdntTywX9fnLj3uhC36bLX5Zpv17vObbTfIS5ZUsXF1R1zV/lu3LP96133a/+3+V0Oo/N/z\nbcPHlGam5H/2eWkypCRC/lfvJJPJ8448pOIxOcVfheA8W3ffT5mT2XzvjX98JSsjd7s+TdPn\nhRBCWPThe6lNOu7eMrNsVyIl+5D22Tf/39fzUqt+xosKQ6j1s1bDuDWzctYGtXlIqzum9meM\n9nt0WnXjGjrhVFoztbyPsKYJO0JpUTKRUtNf2iktmjv21NM+btqj/069e2y72V4D+p195qVl\n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\nagAAAABJRU5ErkJggg=="
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "all_trips_v3 %>%\n",
    "  group_by(member_casual, rideable_type) %>%\n",
    "  summarise(number_of_rides = n() , .groups = 'drop') %>%\n",
    "  ggplot(all_trips_v3, mapping = aes(x = rideable_type, y = number_of_rides, fill = member_casual)) +\n",
    "  geom_bar(stat = \"identity\", position = \"dodge\") +\n",
    "  labs(title = \"Number of Rides by Bike Type and User Type\",\n",
    "       x = \"Rideable Type\",\n",
    "       y = \"Number of Rides\",\n",
    "       fill = \"User Type\")"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 40,
   "id": "3a79ccfa",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-16T13:02:28.475645Z",
     "iopub.status.busy": "2023-05-16T13:02:28.473886Z",
     "iopub.status.idle": "2023-05-16T13:02:29.212601Z",
     "shell.execute_reply": "2023-05-16T13:02:29.210179Z"
    },
    "papermill": {
     "duration": 0.791504,
     "end_time": "2023-05-16T13:02:29.215763",
     "exception": false,
     "start_time": "2023-05-16T13:02:28.424259",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "iVBORw0KGgoAAAANSUhEUgAAA0gAAANICAIAAAByhViMAAAABmJLR0QA/wD/AP+gvaeTAAAg\nAElEQVR4nOzdd0AT5/8H8M/lkpCEMMIUEAci4gDce2sVrQpa9wD31jpwgor759biqHvgHq3b\nWmvrHq1Va1VwVC0VN7IiBEJyvz9CEQIJUUbofd+vv8jdc8/zee4CvMkNGI7jCAAAAAD++wTm\nLgAAAAAACgeCHQAAAABPINgBAAAA8ASCHQAAAABPINgBAAAA8ASCHQAAAABPINgBAAAA8ASC\nHQAAAABPINgBFK1fx/swJuj0x9tiKynxwbXzlx4WercaVczmhRO+aOjrqLAWCcXW9q61mnea\nEbE/UVNSnoJezBX+Pq06wzDtzr8ois4/T8qrXwa0quUgFztXnV50o3Ca5MNr53RrU9+9lINU\nJLaxc6rRuO3U5TvfqbVFN2ihuLOoDsMwrY48M9KmqqU49/evQCC0snWs0aT9vE0/Zp+kie+B\nFRUUDMOcjFcVwhzgf57Q3AUA8JzEoYyn58ef15z2w19PXjKMsEKFctmbuViwxVbSonb+EWn9\nkmMj8lyb9NfZ6WGLjpz99fUHpnzVen1Hh84IapJvn8qYEy1qd7vxNpURiEuVKV+rknXSm5hb\nF47fPH8sImLnmRsH61iLdS057YcrV28LLcrUq+1e8LmY3ltRV1i48yois5p02fY4oVTNlm3q\nViyiIT7E/ty5ceCZZ8lEZGFlX8rNOeH1y9uXf7x9+ce1Edt+uHG8ob2kiIYuTs7lK1ixTNZL\nbUZ63IvY25dO3b50as/Pa+/tHmHG2uB/HQcAxSj1/QkiYsUu5iog4eFmlmHkrqPzXPvm1zWO\nIpaIFOWr1KlRxULAEFG9sXvy6VSb1s1VTkTeXWfcfZWStTjuwcVhTVyIyN53UtbCdOVNIrIu\nM6MwZmNyb0VfYe6t3v1+dNu2bWeyDWdm2jQRw4hklT9otEU0gjolupGthIjKNh948vqjzKWa\nlDtn93T2sSMiG48BqqIavBD88X+1iajl4adG2lSRiYho15sPesu1GYn75wbqfrHOf5ygW2ji\ne2C5hy0RnXifWoDaATIh2AEUK3MFu/SkN39e/2X9woleliIiyjPYadVxLRUSIhqw5rzul2/C\no5O1rcRENPv3t0Y6T3gSSkQSRWtlrsSgSXvhJxcT0eJ/kjIrMUewK4YKC3deRUGbkUBEMoeu\nRTfEJn93IirtPztVo78qQxXTzMaCiIJ+iS26AgqoIMFOZ5SrnIh8Jvz6SeMi2EEhwjV2AP9V\n2nSV6deGbapZyadei2HTlj38oDbU5sW54T/Hqxz8Fm0Z2VR3ksnGs913+7sS0TdBO4x0Hn/n\nKhFZOgdbChi9VQKxy1w/ByL6+WmyqbWagkt78ykXbJmhwsKh/aDKMHcNuRjY+ar3x0acfs6K\nXY4dnCbJ9buFtXBf8XUVIvph4pliqNFcujVxJqKEOwnFPfAnfkcAjyHYAZQc2vM7F3Zq6uto\nKxdb2pSv1nDkrI0v0jTZW4xxsxJJK6iT740PaGAjsxSxQoWze9teo88+SjLedZPwxatXr169\nevWK/ws21ObCtAtE1Ghl3+wLS7deYysUvI8Ke5Vu8NeGWCEjIuWLdS/yavPl2cdKpfL7hi5E\ntLeyg1hek4iSYuYyDGNfaauuDadJ3L0spFXdKvY2lkKx1NHdq12fsaejE7M6iV7fiGGY0X8l\nKP8+2bNJFblYFvkmxVBvxV9hnlvdnl0r14Xz+R/iR9ubMgwz6FH8jcjQaqVt5VKR0MKyvG+T\nsPU58tD7uyfG9vL3dLG3EIlt7Es36TBg7/VXhqZPRD+1KysQ2hJRyruDDMNYuY0xvaQ8d37u\nIR5tnqvmOLdWa6pbivKsodrkzYcPH948r3LWknyPuymTvTqiCsMwX0XFZd+E0yQyDGPp2O1T\nxyogbZqWiOQV5LqXud8DWvWbjTOG1fFyl1tYOLh6dBkS+mdCep5d/X1pd//A5m5OCguZbUWf\nOiNnf/s45WPKN3JQPvW9AXxj7o8MAf63GDkVu6qfHxExDOPs4dO0QW2FiCUiG89O9z6os9qM\ndpWzYpcgL1siEsoc/Wp4y4UCImLFThG/vjGlgA9vdpGBU7Ed7aVEtP+t/vVAurNLK2OTDfWZ\nnnzDXldtxdZLth55+k5lqOXt5XMmTxxARBbWjaZOnTpn2Q2O47QZSUPqOhGRQGjrV7tBs4Z1\nyiksdHvp6L/FRH3bkIgG3zxd3VosdfZq3b7jkbjUPHszS4V5bnUrvCYR+Z/7eObRlEP8cFsT\nImq1tD/DMJYunq06BjSuWU7347rDqj91bd7+vtxWKCAiO4+qjZs1rlLOhogErPyb++8NzevR\nlv+bOnkcEYlklaZOnTprwRHTS8pz5+ce4hsvOyJq/9M/hmrQY8pxN2WyV4ZXJqIu99/l7DzH\neWcTxyrwqdiMnk4yIgq++FL3Wu89kKF61qOyImuHe7vZEJHErlGwsyXlPBV7dUUQyzAMwziX\nq9Konp+DpZCILN1ann1t7DvClN0FvIdgB1CsDAW7p4f6EpGFTZ0jdzJ/P6UnP5zQ3IWIynbY\nntVstKuciBhG0H/lyTQtx3GcJu3dutENicjCpvF7df7XpRsJdjZCARG9TNO/PGq3tz0Rdbn7\nLvcmWR4dCHUWZ97YyzDCCjWaDQ2Zs+/U5bepGXotc1+LFvtLNyKyKtM1+n1m3tJmJK8f4EVE\nPiGZ1yrpfo05lZe3nLY7Jdt1cqZf2VbUFebeSu+XuomHWBfsiKjRhB1ZV6pd+KYTEUntO+pe\nhpS1JqJ+G6/8u5HmWGg9InKqucnIHsh9jZ2JJRna+Xq6O8qIaO7fSUZqyM6UvWrKZE0JdiaO\n9fnBTpP+4tGNBQNrE5FT/XFp/+4kvffA4b4VicimQufzTxN1S/65truyLPMDzqxgl/hkrYWA\nEct9Nvz0OLN79bt1o+sTkY3nUN2bwtBB+bz3BvAJgh1AsTIU7Aa7yolo/OVX2ReqU6JcLVhG\nILmtTNct0QU7d/8tObfWjPawIaIeZ5/nW4ChYKfVKHWRMddV79yJ+qX0PnnKe2pv725YPL1L\n67oK8cdHtwhEilZ9Jv3+9uNHEbkD0OPIcYGBgdN+ytF/wpMQIirjf0b3UvdrTObYQ6+8T7pl\noUgrzDfYmXiIdcFO5tAlPXuC0qrsRALWwlX3qqJURESPUj9+qJauvBUeHr5g6WEj088d7Ews\nydDO16O7z2bTq7zvKsjNlL3KmTBZU4KdiWOZHuwMaTh86Vv1x/2U/T2QkfrERihgBJKTOT8U\njzk1QC/YbW3sQkQjz73IMbBW3c/Zkoi+fankDB+Uz3tvAJ8g2AEUqzyDXUbqE5ZhhNIKuT9x\n213bmYj63c68KVUX7MZG659VeXb0CyIq++UZ/e1zMRjsMpKIiGHY3B/InKhXioi++DEm384z\nu1In3vj5yOKwsS3/PYdoYV39539P3pkSxVTv/940rlruYOc9+LJey8+7F7UoKjQe7Ew/xLpg\nV3n4Fb1mVWSirLfN5Aq2RFSu3agTV+6lmfz0EL2sY3pJhna+nkAHKRHNizH1E7vccu9VzoTJ\nmhLsTBzL9GDnXL6CZ3YVyttLhURkYVsl4tLHoJz9PfD+4QgiUngu0etQq/ngZsFmC3aa8hIh\nK3LI/VyYa6OrElGzvY85wwfl894bwCe4eQLA/NKTr2k4TqJoJ9S/ZZMqtnQmor/v5bjJrpOz\nTK+ZXfUWRJT0IPqza2BYKzkr4DjN21z31iUlqYlI5mzqc2UZoXWtFp0mzV119venf1/Z08he\nmpZ0O6jbQSObZKQ8275q7sDeXZrUre7ubCuxKzt45d3czRS1FCbWYK4KDfnUQ2zrY2uktxln\nd7SqaPvs1JovG1aVWzvXa9lp4uwVF6Pfm17PZ5SU786va2VBRFcfGruPZ23EN6tWrfrz35sA\nTNmrhTJZE8cy3fLrdx5l9/jJW2Xiobnt0xLuh7T/Ks/7jJR/PSYix4b19ZYzAlk3h4/f0RrV\n06eqDI36nUSg//8t6q++R0RJ9z/u4dwHpbB2F/x34T9PAJQEBh9bwrAMEWlz3suZ65EdxAjE\nRMRp8769zkTNbCxOvE+9lpTeKef/BrielE5EDewMBrtpQb0ep2as3r3PWaT/t2KZBj0Pn73h\nWH3Z6+uLifrmuXnczU11m418olQ7VKzVvH7dph16eXpVqeZxrm695XothdLP/JFVbBUa9mmH\nmGFzHeNs5GU7/vTg9W8/Hjp68syFS1d+u3D811+OrZg9uePUg0cWBBRRSfnu/La9y02ff/vO\nkqvUqmueDVTxJ0eN/ZphmIfDRpPJe/UzJ8vlKL4wjmA+GIGsS9jR2otlN5Iuf/cutauDVL+B\niCEiyuvA2mV7W3KcmoiEknIh43rmOVCpeo5ZX+c+KIX03oD/MAQ7APMTW9VjGUYV/4OGSO8/\niz0595qIXKvl+Pzm2OuUFjYW2Zck3P+FiCzdvQtSRvfyVifep+56lJg92HHa1N1vUxiBRS9H\n/Y8Js7w+c+zgqw9NVqaMdZPnXmvpWouIGMbg/0wb1X7cE6V6/O7flveqnbUw6dn1z5xGiazw\nUw9x/hhxnba96rTtRUSa1DdnD27qO2jmsf/rvHv8h96O+pGieEqqNGo0s2DIi59H/Jrcqa6V\nOHeDZwcWE5HMqZ+nhKVP2qufPll16qPsL4vhPUZERGxHO+mN5PS7KequpF+YvFxVoh/fXr1B\n1Fhv1U/Z/kusUFLBUcS+16YsWLjQWLo3osDvDfhPw6lYAPNjJRWCnGUZqY+nXHudfXlG6sMJ\nN98xAvHESjlOuHw38XjODriIsVeIqObEqgUpo3l4XSK6OClH529/n/wmXWNbIbSM4f9mG9yu\nNBEt7r8uzzNQ97esIiJb7+F5bstpEve/SRFalMn+G5eIkh7e/9T6jTB7hZ96iI1IebOzYsWK\nvvUnfOxc6tSm3/RvKio4jjtj8j+SL8SSdCxdBi2u66RRvwtoH5aU69nZGanRwSFXiah26BQy\nea+aPtkPr3NMPPbHBVlfF897TEchFBDRPypN7lVWpcfbiQQJf00/E5ej1Pd/LriQmPbxNSOa\nUslWk/4m9PqbnB1oR/tVcHFxORJn8BAX1nsD/tvMfI0fwP8YQ3fFPtnXk4gsbOuduB+vW6JW\n/hXS0pWIyrT/eA/sv487YYeu/Un3lA6tOmHzxBZEJJbXeJVu/LZFjjP6uBON+l1tKzHDsLNP\nPtUtSU+627GUJRFNuPIqd/ssaYmXPaVCIqrSdfKFqI83Hqo/vPo+YpycFTAMu+rfx2jpbjKw\ncvs6a1gPqZBhmM13P94R8uuBZZVkIiJya3ZKt0R3qXiTbQ/1hs7Vm9kqzF2J3l2xJh5i3c0T\nDb+N0ptC1s0TmvTXDiKWYdgZh//MWvv27jEvqYhhhD8nGHxEX+77CUwsydDOzy0t4aqPpYiI\nnOv1OHjx3r8Pksn44+zuNh7WRGRZyv9d5k2jJu1VUyZ7f00DIrL1Gpz1/n9/7/uqlqJskzVp\nLK4w/qXYtxUVRPTltbyfY3csyIuIbL26XflHmVnq/ZON7TM/Rcu6K/bNb6FEJJb77rmeeWOs\nNiNpx8TmRKTwGqtbkudB+ez3BvAJgh1AsTL8gGLt8j4+utBWulLNpnWq6J48bOMZEJWS4wHF\nRDS2f0MiEtu41a7ro7BgiYgV2S+7ZCx7ZTES7DiOe3VpkS7l1GzVoXvn9u4yERH5Ddyab7fv\n/9xeVZF5dlhm7+xR0cujrKtYwBARw0oHrrmW1VKjfmchYBhG1ParnoNG/8Rx3JWZzYhIwFo2\nbtOxe6C/n5ezgJX3mjJVt6P6jxiVotEayha5ezNXhbm3yvWAYpMOcb7BjuO4q7Pb6Cbi5OnX\nsnWrOr6eAoYhotZTTxvZA3ndKGpSSaYHO47j4u8fqu+UmVTE1g4enuXt5JmnZa3Ktjr94mMe\nMmWvmjLZtMTL5SRCIpI4VGnfuVuLutWkAkYs9/WxFGVN1sSxCh7sTjV1IyLvoed0L3M/oLi7\nt61uh7t51fDzLMUwjIVt3VX9K1LOBxR/P/kL3azL+dZt1aJRBQcJEVnY1Dj579NkDB2Uz3tv\nAJ8g2AEUKyP/eYLjNGe3z/uyUTU7K6lQYlWmcv3hM9fH5nxcsC7Y3VSmX1w/uYG3u6VYaO3g\n2qrb8FP34k0swHiw4zju3e2DAzo1KmVnJZJae/i1mLHutInPTMhI/WfDgsntG/m6OirELCuz\nUlT0a9B37OyfovRrO/9/Q8o62QiEYq9m+3UTP75qSoOqZaRiVq5wavhl38N34jiOWx3czEYi\ntLR3T8owGOzy6s08FebeKvd/njDlEJsS7DiOu7xrcacmNR1tLFmB0MrOtWGbnmsO3zI+fQNP\nAMm/pE8KdhzHadJeRS6a1L6xn7O9jYgVWSscqzdpP2XFntf6nyibtFdNmWz8/WMDOjR0ss4M\nlHL3JnvuxXd1kGWbrEljFTzYPTn4BREJhDbbXn3g8noPaNJerps+pFZFN0ux0MbRrV2/ibfe\nq66Pq6YX7DiOu3V0Tbcv6joq5EKRxNnDt/fX8+8lpGWtNXJQPuO9AXzCcJzJ/0UcAMxtjJvV\n6hfKm8r0Ggb+HSfA/7KMD3FPY1M8vNwNXhAKwHe4KxYAAHhCaGlf0cve3FUAmBPuigUAAADg\nCQQ7AAAAAJ7AqViA/5LeS9dUT1EbeaQcAAD8L8PNEwAAAAA8gVOxAAAAADyBYAcAAADAEwh2\nAAAAADyBYAcAAADAEwh2AAAAADyBYAcAAADAEwh2AAAAADyBYAcAAADAE/jPEwBFS6VSpaWl\nFbAThmFkMpmuN41GUxh1FSaJRKLRaNRqtbkL0ScWi0UikVarTU1NNXct+gQCgVQq/fDhg7kL\nyYOlpSURpaWlZWRkmLsWfWKxmGGYgn9PFTqhUGhhYUFEJfaYpqamarVacxeiTyqVCgQCtVqd\nnp5u7lr0iUQilmVVKpW5C8mDjY2NoVUIdgBFS6vVFjzxCAQCoVBIRCUzP0mlUo7jSmBhYrFY\nKBSWzJ3GsqxQKMzIyCiB//6HZVmGYVQqVQncb7rwVAIL0x3QkvmNQES6N1sJ/LNQLpezLKtW\nq0vgfhMKhbrQae5CPg1OxQIAAADwBIIdAAAAAE8g2AEAAADwBIIdAAAAAE8g2AEAAADwBIId\nAAAAAE8g2AEAAADwBIIdAAAAAE8g2AEAAADwBP7zBMB/RuiVm+YuAQrXU3MXYEiMuQuAwvaw\nxB7TEltYkRjvVaaoh8AndgAAAAA8gWAHAAAAwBMIdgAAAAA8gWAHAAAAwBMIdgAAAAA8gWAH\nAAAAwBMIdgAAAAA8gWAHAAAAwBMIdgAAAAA8gWAHAAAAwBMIdgAAAAA8gWAHAAAAwBMIdgAA\nAAA8gWAHAAAAwBMIdgAAAAA8gWAHAAAAwBMIdgAAAAA8gWAHAAAAwBMIdgAAAAA8gWAHAAAA\nwBMIdgAAAAA8gWAHAAAAwBMIdgAAAAA8gWAHAAAAwBMIdgAAAAA8gWAHAAAAwBMIdgAAAAA8\nITR3Af8r/vxp7/6T5x/GvNIIZU6lKzZr37NHS2/dKuXL50qJUymFuFAGKnhvv43rN/dJou5r\nhmHlts6+9VsHDezsYsGasnl68r1vF2+8FvVC7la5z/iQZuWsDLXkuLTLR/acOHf1yfM3GYyF\ns3uFBi079vyyvoj57NrzsWtQzxutF6zo5ZFHMZqkAd2D3qu1o7fvb6OQFFUFAAAARQnBrjj8\nfWRO2JY/WnUf2HVQRQut8q8/LkVGTHmUsjKsQ3kiuhg++WSd8IjBXoUyVqH0JlG0mTmpORFx\nmvS3MdFH9+4dfzN63bpQhTD/zLVz6oKoSn1XTaz78MSSFdMXNd09L89tOE3iprCxJx+J2nTu\nENi3HKtOfnbv1+83L7x4u9/6sK5FFu0Mir+/IT6DHEXskf3P2gzzLvbxAQAACgGCXXHYuv+O\na8uZY/v46V56+9T0Fj8L2b6UOqwxtAmnUTFskX9uZGgUgci5WrVqmS/8ajZu5jd8QNjcfX8t\n7+OZ77bnX36oH9rU0dbSuoN/+r7lSRrOhs0jp93aFHbysTx8/TI/+8xOajdo0qp+6eDpO76N\nbj3C29aUOvVotBwr+MxMeGXzH1LHziPLXVzwy1btsEW4RgEAAP6LEOyKQ4qGS4t/nX1JuU4j\nQz0SiGh9/+4n3qvoaEi3c40O7JzSu3NA7w2bXm9Zee6uNDIyTJsRd2jj+tNX7rxPE7hV8AsM\nHtrKW6HrIc9Ver0Z2lxvlHzrF1tX/bqB09yTe6jPjHy37etjt2fj2eEz257asNvGs2ueqY7T\nxC/74Z8qo9ZkpTodRbUec0LLkDjznK/eWOkJ9zevjbx656+kdK2Dq6d/7zFdG7oRUXCXwA6r\n5kUtXPR7bJJc4Vy/3YAxPRroelC9+2PD2r23ox+lCh0bdwq2pbxp0mK2PUvyHtfGq3yaeszx\nfS9TernIiOjHiUHbVV12rQnMPI6vD/YcsiMk8mBjy2RDx4WItFrty5cvP+49sVgoLOg3mkCA\nqAkA8J/HsiZd1GQcx3FG1iLYFYdBAT6T9qweOPFK8wZ1/Hx9K1d0F0s8a9cmIhq8abfryKDT\ntcJWDqqka3w5Yo5f0+CFwRWIKHLquB/Tqg35OtTdmom+cvybqcM0a7e1cZUZWqXXm5HNs49i\nCvd2LuqLN5I0XL7btpw6fU/fScNH7rYs679sUd8826TGnUjWaDvVc8y9qnq9BtlfZh9r6+Q5\nV6ybfj1jgJ1Yc/fc1s1LQpof2OUgFBDR8emLWvYbM8DX7fm1fQu3LHRssbenk4zLiJs1Zu5z\np7rDJ8yy1b4/vGnlhbhU17zqeXN1o5oTDqrvJBf3cxKf+mV7dK+pNYmozuAaa6btepHe0VXM\nEtGjnWekDh2b2oi3hxjcsUSUkJAQEBCQ1fmwYcOGDBmS3w4GAAD+UygU+TfKj0ajMbIWwa44\nVOoVHlHl4s+Xrt/6af/BHetZia1P3SZdg/v5OkpYoVDIEMMKhcLMFJ/oPKRna18iUsUd/u5R\n0oI9E6vKhERUwataxq999q6732ZubSOrsnoz0ib7KCYS2VpxHPdOrTW+rUb1z4aFS9Jca2pi\nf68U2MJJJEh+fCdW6OFdTp6jWVosEZUSf/zDZU6frjeS03Vfy5z67d3UTW9vEJGzf/cxrTrU\nthETUelS3TYdm/tMleEgFxORZf2Q4DZ+ROQeOMFt18Xotypykr29ueaBSrJ80UQPCUtElSpL\ne/Sdn2fZpyIfyUv3KS9hiaQDKtkuvbFRxa2VMIyt12A79vyWP9+H1XIkTr35+tvKYzoa37EA\nAABmhGBXTMr6NRng14SIUt/H3r5x/fiBfbNG3ly1c3WZXLeaurRy132hfH6L47hpPbtkX2uZ\n8ZyotpFVWS+Nt8kaxUQZiUqGYRxEAqPbchvGT7nh0mnTqh7Jv20ZujCkQvlNNuuXRlpN3Bzu\nl70da1GaiKJS1GX/nX7wjDldMrREFPtjxNb7H1tmHysg0P/O9cvfxcS+fv36yf3fsndY6ouy\nWV9bswLiiIjeXoiVKNroUh0Ria3q1pKL4nIVnZ5848i7VK+B5WJiYojIulUZzZ+3tj5JGlHB\nhmGthlS1W7v9V6r1ZfLzXTFqaVh9J+X9fHa+lZXV2rVrs1Y5ODgkJiYa2GOmYhjG2tq6gJ0A\nAIB5FfzXgY6NjY2hVQh2RS496fLS1ecHhkwtJRYQkdTOrUGbLrUbV/qq57SdfydP99K/7ktm\nlXlQhJZihrU8sH9H9ovUGIY1viqL8TZZo5jo+emXInkta5Yxsm168rVTscqZi7tIBYy03qAZ\ngQ/mhU6TZSRVDy+t11Jq38GK3X/6xxf+PTKfPFLWu4rui7gdquwts8bSqt/NHTHqkbxq20bV\nq9ap/EWnZhPGzslqJpLmddVCrhsprIWC3MHu+cldHMc92Bw+OtvC65tvj1jQjIh8BjVIHhf5\nRt3u2dZLdtWGO4kECfntfJFIVLdu3ayXKSkpKSkpeZT3KXCNHQAAD6jV6qIeAr8tihwrdvnt\n+vXI62+yL9SkxhNRKbnIyIYy57akTTn5Vi3KJIycExZx7pXxVaZs/qnUyuhVl1+X9u+dTztt\nBhG9TM3QvaoZNLsS+zqFdRrtY6fXkGFtJrZwe3ZgwY23OWKc8u+zax4m5Nm38vnmm2/Vq5fN\n6NetU9MGtdwVynzLdmrqpoo/81SVeS2CRvX4alJa7ma7j/5jVbb/0Wym1XZKiNoUn8ERkVWZ\nYHdR2ua7sRvvxLUYVoMKdccCAAAULnxiV+RYice0DpXmLx8vjelZt3J5mTAj/nXMychd1h7t\ng1wsiUjAUOrL2Pj4UgpFjnNtYqvag6vbb58yVzK0q7eb/PaZLcei4sKnOhpfla03g23ypVW/\niYqKIiJOq34XE3109/5k21pLeuVzp4XYplFDu4id05dYj+jqRPEXDm97zHp40ZOlRx/NCNR/\nrl6NUfObPhk9f8So1gHtqlYob8OmPH1w6/jpB23buZ35LY/ORVYVOe7y4Yt321dzeh9z7+CW\nSCKKeZVQ09PJUD0O1Ud6WQydMX3lqH7tFUzCyR1rrHKd+Fa9O/ZrcnrL6S2yL/Qd3Eo7fM+G\ne3FT/ByIEQ+u4zhvxVwSVe1TWk5Gdz4AAIB5IdgVh7pDFs0qu+f70z+sOPImNYNROJWu3jIo\npO+Xusf9Vg2ot2PLNyNCmu7dPF5vww4zV6RtWH3g20XxapFbed8JC0P9LEXGV2Xvzcjmxqni\nT0+Zcpoy//OEo0+DbuMHdjXh6cSCCSvnbF29ZcuyWamMZaWaTRevD7J9GjkgbNoh781f5Xw0\nHcMqxi1b53tw96lzJ89/Hy+Q2lT0azB93Qp37srb1DzOq0oduoT3f7Nxx6LjKWy5in69p62x\nWTY6cvKY2nt2G6qGEdrPiQhd+82OlfOnk8Shafcpw68vj8zZ5tHOk6ykzMcEg5YAACAASURB\nVLDKOWqzdO1ZXX7oz81X6ZuOROQV9EX6kEiPXlOzPt/+7B0LAABQpBjjT0MBgAIqrGvs7Ozs\nQq/cLJSSAADALMZ7lSmUfhwcHAytwjV2AAAAADyBYAcAAADAEwh2AAAAADyBYAcAAADAEwh2\nAAAAADyBYAcAAADAEwh2AAAAADyBYAcAAADAEwh2AAAAADyBYAcAAADAEwh2AAAAADyBYAcA\nAADAEwh2AAAAADyBYAcAAADAEwh2AAAAADyBYAcAAADAEwh2AAAAADyBYAcAAADAEwh2AAAA\nADyBYAcAAADAEwh2AAAAADyBYAcAAADAEwh2AAAAADyBYAcAAADAEwh2AAAAADyBYAcAAADA\nEwzHceauAYDPUlJSUlJSCtiJQCCws7MjosTERLVaXRh1FSZra2u1Wp2ammruQvRZWlpKpVKN\nRhMfH2/uWvSxLKtQKOLi4krgD2F7e3uGYZRKpUqlMnct+uRyOREplUpzF6JPIpHI5XKO4+Li\n4sxdSx4cHBzi4+M1Go25C9GnUChYlk1NTf3w4YO5a9EnlUrFYnFiYqK5C8mDg4ODoVX4xA4A\nAACAJxDsAAAAAHgCwQ4AAACAJxDsAAAAAHgCwQ4AAACAJxDsAAAAAHhCaO4CAMBUoVdumrsE\nKFxPzV2AITHmLqDIjfcqY+4SAIoEPrEDAAAA4AkEOwAAAACeQLADAAAA4AkEOwAAAACeQLAD\nAAAA4AkEOwAAAACeQLADAAAA4AkEOwAAAACeQLADAAAA4AkEOwAAAACeQLADAAAA4AkEOwAA\nAACeQLADAAAA4AkEOwAAAACeQLADAAAA4AkEOwAAAACeQLADAAAA4AkEOwAAAACeQLADAAAA\n4AkEOwAAAACeQLADAAAA4AkEOwAAAACeQLADAAAA4AkEOwAAAACeQLADAAAA4AkEOwAAAACe\nQLADAAAA4Alh8Qzz27h+c58k6r5mGFZu6+xbv3XQwM4uFmy+2/750979J88/jHmlEcqcSlds\n1r5nj5beRtqnJZzpFhSx6dBhJ1EesbV354D6a3aNdZWbWPn6/t1/LRe6OdzPxPbqlD+/6hk6\nf+8hH5nIxE30GJlvcJdA34jIiW5Wn9eziQpysIgoPfnet4s3Xot6IXer3Gd8SLNyBqud06fr\nLbVLxM6VpcUfe45eN2rmdd/924aZXrDy5XOlxKmUQqx7acpeWh3c/cd4le5rhmGkVo41WgaO\nCP7SmmXo098kuwb1vNF6wYpeHqbXDAAAUBSKKdgRkUTRZuak5kTEadLfxkQf3bt3/M3odetC\nFULGyFZ/H5kTtuWPVt0Hdh1U0UKr/OuPS5ERUx6lrAzrUL6Y6i5eJWS+n3ewdHZOXRBVqe+q\niXUfnliyYvqiprvnGdlGo/p79orzG6e0LEi1F8Mnn6wTHjHY65O2UlQZPKmvBxFxWs3bp7c2\nbts4Kc5+/aQGBakEAADAvIov2AlEztWqVct84VezcTO/4QPC5u77a3kfTyNbbd1/x7XlzLF9\nMj8w8/ap6S1+FrJ9KXVYU9QFm0XRzZfTqBhWYmJjEw9Wnn2ef/mhfmhTR1tL6w7+6fuWJ2k4\nG9ZgtHNq3PTN5VV7Htbq5WXzCZMxWoCJxNblP87R18/x6fVZV/YQIdgBAMB/WPEFOz1i66pf\nN3Cae3IP9ZlBnLpTwFd9t+zr7iDVrc06F5ai4dLiX2ffsFynkaEeCbqv0xPub14befXOX0np\nWgdXT//eY7o2dNOtSnjwU8TG/VEx8Zalyvt3G96rpX581GbEHdq4/vSVO+/TBG4V/AKDh7by\nVphev5GhP7ZJipo1aoaq3uDlo/0504YzPl8i0qrjty2Y+8OtRwKZQ33/gWN7NSAiTVrsrjUb\nzt6ISlILynrV6DZkZKN/T4D27hzQe8Om11tWnrsr3b51xOdNOcfBytlnZGSYXuO+PnZ7Np4d\nPrPtqQ27bTy7Gkl1RGRdoWuQ8NE34YvbRc6zzdXS0LyyF9CYvXPivYqOhnQ71+jAzilG9pJx\nAgGxYle9hT9ODNqu6rJrTaDuZcrrgz2H7AiJPFhXHbVh7d7b0Y9ShY6NOwXb5txKq9W+fPny\n494Ti4XCgn6jCQS4HBagMLGsSdeWmE73TcowTKH3XFhK8o+RkrnfGIYpmYVxHGdkrdmCHRG5\nt3NRX7yRpOGsDb/ZBgX4TNqzeuDEK80b1PHz9a1c0V0s8axdO3Pt1slzrlg3/XrGADux5u65\nrZuXhDQ/sEuXaObNOfDl0EF9XCzu/rI/ctXEDNft/bxz/P6NnDrux7RqQ74Odbdmoq8c/2bq\nMM3abW1cZSYWn+fQDsKPM0lPjg4fNTO1zqDlo/0Zoh2mDWd8vkT0+7wZ7XqMWjrQ7e9rexdt\nWejyxb5uDpJvx0+6kO45YlyYqzT98uFNS0PG2Ueu95ZmHtzLEXP8mgYvDK4QOXXsZ0/548Fi\nmex95m7Zcur0PX0nDR+527Ks/7JFffPtufHo2d/3HTlj082IYbVyruGMzCurABcHK9eRQadr\nha0cVMnoXpLqjZue/HdUlJCISKt5++zW+vPvvhgfrtemzuAaa6btepHe0VXMEtGjnWekDh2b\nWCZP7Tf3uVPd4RNm2WrfH9608kJcavZImJCQEBAQkPVy2LBhQ4YMyXc/AEBxUig+4S/5EtJz\nAdnYfM6JkeIhkUgkks88/VLUSuAB1Wg0RtaaM9iJbK04jnun1lpbGGxTqVd4RJWLP1+6fuun\n/Qd3rGcltj51m3QN7ufrKCEiZ//uY1p1qG0jJqLSpbptOjb3mSrDh4iIvMbM7dGkFBF5V62Z\nEtXnh4iL/dZ0zOpWFXf4u0dJC/ZMrCoTElEFr2oZv/bZu+5+m7m186oiD3kO7SDPvH4/PSl6\n9uQ5b6oGbRjbTvApwxmfLxEp/CYEf+FHRKUDJzrtvBT1Pi1Fe/j0c+W4rdOb20uIqGLVKvd6\n91t/NGZFj8xr+ROdh/Rs7VvAKX88WCyb1WfuZhrVPxsWLklzramJ/b1SYAsnkSD58Z1YoYd3\nOYM3IgjEpUKnth00e/4PHXf6Z0uZKW/2GplX9gKEDDGsUCj8+EdV7r1EuYJd/L0NU6Z8fClz\naeBXxlKvja3XYDv2/JY/34fVciROvfn628pjOr69ueaBSrJ80UQPCUtElSpLe/Sdb8IuBAAA\nKHLmDHYZiUqGYRxEAiKtkWZl/ZoM8GtCRKnvY2/fuH78wL5ZI2+u2rm6jAUbEOh/5/rl72Ji\nX79+/eT+b9m36lDTPuvr5v4uR3ZdJPoY7JTPb3EcN61nl+ybWGY8JzI12BkZmojWjw/XSgTK\nJ8+0HAmYTxvOyHyJyM2/bFZLKwFDRIn377AWbi3tM5MfI5B1cZGtvfSS/g12Lq3cCz7lbAfr\nY5+5cBvGT7nh0mnTqh7Jv20ZujCkQvlNNuuXRlpNNH5bsUPNYQN9r20NW9N8c0jWQuPzMlBA\nptx7KTfn+vM3Ttf9FUBpyXG/7J2/cPyYRTs3VpJ+/KZgWKshVe3Wbv+Van2Z/HxXjFoaVt/p\n7apYiaKNLtURkdiqbi25KC5bzzY2NpGRkR8LsLJKSEigghEIBNbW1gXsBACyFPy7Uo9YLJbJ\nZEXRc6GwtbVNSkrSao39tjULKysrlmXT0tJSU1PNXYs+CwsLkUikVCrNXYg+juOMfI5ozmD3\n/PRLkbyWNcuQ/sliLoMjIkpPurx09fmBIVNLiQVEJLVza9CmS+3Glb7qOW3n38lTy2fMHTHq\nkbxq20bVq9ap/EWnZhPGzsnqIvsvc6FcxDA5zpELLcUMa3lg/47szfTaGKFVvzMyNBE5tw+Z\n0YkN6j9/wenAmf7uJg5nfL7TvWyJSCrT34rjSO95hAIBw2k/fk4rsxIWfMofD1a2PvXrT752\nKlY5c3EXqYCR1hs0I/DBvNBpsoyk6uGl8+3/y+nTjvWbMvvAo2DT5pVnAVly7yXjLKzs2w6c\n8e3x/rsfJMyu7pB9lc+gBsnjIt+o2z3besmu2nAnkeBtrqRoLRRkD3Ysy1auXDnrZUpKSkpK\nyifVk1tJvjgG4L8oIyOjcDvUXUrLcVyh91xYNBqN8VN4ZqTVakvgfhOJRCX5gBpitt8WamX0\nqsuvS/v3zlqizMjMd6r48yotR0Ss2OW369cjr7/JvqEmNZ6ISslFyuebb75Vr142o1+3Tk0b\n1HJX5MjUJ2+/z/r6wuF/ZG4tsq+VObclbcrJt2pRJmHknLCIc69MLN740ETU/avaYpu6s7pW\nvLUx/GGqxsThjM/XUDG2lato0v65EJ+me8lpUw/HfnDMdSdHQaac+2DlTZtBRC9TM78HagbN\nrsS+TmGdRvvY5TuEUOo1Z2T9+3tmXnuf9knzKixadZyW48Ri/URoVSbYXZS2+W7sxjtxLYbV\nICKnpm6q+DNPVZk/HzWqx1eT0oqoKgAAgE9SfJ/YadVvoqKiiIjTqt/FRB/dvT/ZttaSXhWI\niBhRJZno4pqDzYb7C5P/2RuxgWEYImIlHtM6VJq/fLw0pmfdyuVlwoz41zEnI3dZe7QPcrFU\nx1XkuMuHL95tX83pfcy9g1siiSjmVUJVByKiX1fMOKQe7OciufvL/j3PUgavrpe9GLFV7cHV\n7bdPmSsZ2tXbTX77zJZjUXHhUx3zrFytjImKEmdf4uqQ99A1PZ2yN/PuOcvv5ID/W/TjlvB2\npgxnfL6GdqzMuXdr15Nrpyxihn3lJlNf+n7Dgwzb+Z3L6jX7pCkbO1iGiW0aNbSL2Dl9ifWI\nrk4Uf+Hwtseshxc9WXr00YzA/B8y59pycsDhvt9dfyOx+4R5EZGAodSXsfHxpRSKTzhZ+fHm\nCaJ0Zdz5QxtYi9IDPXP1wIgH13Gct2Iuiar2KS0nIofqI70shs6YvnJUv/YKJuHkjjVWpj26\nGQAAoKgVX7BTxZ+eMuU0Zf4zA0efBt3GD+ya9cDbsNlDF0ccmDLqULqWq/LFiPqJm3XL6w5Z\nNKvsnu9P/7DiyJvUDEbhVLp6y6CQvl8KGRI6dAnv/2bjjkXHU9hyFf16T1tjs2x05OQxPusG\nCISK2YMab9uzeve7dJfyngOmr+7orn/xfoeZK9I2rD7w7aJ4tcitvO+EhaF+lnl/KpbwcGP2\nq+yJaO3B7/Mcuvae3S7ZmjGs1fhZXfqFrNv1oGFv04YzMl+DGHbUykVWqzduXDIrOYN196oZ\nsnRkFVkeR9b0KRs/WIYJJqycs3X1li3LZqUylpVqNl28Psj2aeSAsGmHvDd/5W2b3+ZM37nj\nfuo/L+MT51U1oN6OLd+MCGm6d/P4/Ib4KPvNE4xQXNqzbtjK0S65PrEjIq+gL9KHRHr0mirI\nbGw/JyJ07Tc7Vs6fThKHpt2nDL++PDL3ZgAAAMWOMf40lGLGcekJSlJYifNvCvAfUVjX2NnZ\n2YVeuVkoJQHAeK8yhduhRCKRy+Ucx8XFxeXfutg5ODjEx8eXwGvsFAoFy7KpqakfPnwwdy36\npFKpWCxOTEw0dyF5cHBwMLTKnDdP5MYwYkXR/h9UAAAAAN7CrXYAAAAAPIFgBwAAAMATCHYA\nAAAAPIFgBwAAAMATCHYAAAAAPIFgBwAAAMATCHYAAAAAPIFgBwAAAMATCHYAAAAAPIFgBwAA\nAMATCHYAAAAAPIFgBwAAAMATCHYAAAAAPIFgBwAAAMATCHYAAAAAPIFgBwAAAMATCHYAAAAA\nPIFgBwAAAMATCHYAAAAAPIFgBwAAAMATCHYAAAAAPIFgBwAAAMATCHYAAAAAPIFgBwAAAMAT\nCHYAAAAAPCE0dwEAYKr5DWsmJiaq1WpzF6LP2tparVanpqaauxB9lpaWUqlUo9HEx8ebuxZ9\nLMsqFIq4uDiO48xdiz57e3uGYZRKpUqlMnct+uRyOREplUpzFwJQQuETOwAAAACeQLADAAAA\n4AkEOwAAAACeQLADAAAA4AkEOwAAAACeQLADAAAA4Ak87gTgPyP0yk1zlwCF66m5CzAkxtwF\nFL7xXmXMXQJAccAndgAAAAA8gWAHAAAAwBMIdgAAAAA8gWAHAAAAwBMIdgAAAAA8gWAHAAAA\nwBMIdgAAAAA8gWAHAAAAwBMIdgAAAAA8gWAHAAAAwBMIdgAAAAA8gWAHAAAAwBMIdgAAAAA8\ngWAHAAAAwBMIdgAAAAA8gWAHAAAAwBMIdgAAAAA8gWAHAAAAwBMIdgAAAAA8gWAHAAAAwBMI\ndgAAAAA8gWAHAAAAwBMIdgAAAAA8gWAHAAAAwBMIdgAAAAA8gWAHAAAAwBMIdgAAAAA8gWBX\nIjz4dlRAYLdEDZe15PTYvgEBgY9VmqwlN2cP6txthNZwJ707B3zzQpn9CxP9+dPeGRNG9Oja\nuWvPPiNDwvf9HJ19rfLl81fx6XlumJ5875sZ43p37T7061nnnyUbGYLTJJ/ZszZk5MDuX3Xu\n1rNfyKzlFx4mmF5hUds1qOf4PU9yL1/fv/ug8D+Kvx4AAIDPg2BXIrh+6ctp0468S9W95DjV\nnlglx2n3RsVntTnzOEnu3q3QD9jfR+aERRxwrNVh+uxF80Inflnd7vuIKfOOP81qcDF88vxD\nz/LcdufUBVGObVdtWhdcNy1i+iIuz0ZEnDZlzaSR6088rOHfZ+qMGWOH9ilDD5ZNGX7q+YfC\nng0AAMD/NKG5CwAiIrlLdwvBydsX3wR1LUdEqW8OxWvEQeXEx/ZFUY0mRKRJj72alF5lUOVC\nH3rr/juuLWeO7eOne+ntU9Nb/Cxk+1LqsCbfbc+//FA/tKmjraV1B//0fcuTNJwNy+Ru9mBH\n6Nnntou3LqloKdItadKitXRY350Lj7db08PEOjVajhXk0fmn4jQqhpUUvB+dwqoKAACgUCDY\nlQiMUNHRTnr67F3qWo6IYk9ekzp2adonetfS3RquCctQyusjWo5rW8OOiLQZcYc2rj995c77\nNIFbBb/A4KGtvBWGen5z89S3O49H//NSYGnv17Tj6P4dpTmDSIqGS4t/nX1JuU4jQz0yz5Ou\n79/9xHsVHQ3pdq7RgZ1T9Drv62O3Z+PZ4TPbntqw28aza56pjjj18uPPKgSvykp1ugl3Dxlq\nfzfzEztNWuyuNRvO3ohKUgvKetXoNmRko3JWulXBXQI7rJoXtXDR77FJcoVz/XYDxvRoQEQa\nVUzk6i3X7ka/U4m8a7UYMia4rIQ10lXvzgG9N2x6vWXlubvSyMgw1bs/Nqzdezv6UarQsXGn\nYNv8DpAeQ1XpaLXaly9fZr0Ui8VCYUG/0QQCfLgOUCAsyxZp/7pvUoZhinqgz1aSf4yUzP3G\nMEzJLIzjDJ0hI0KwKzkaNnf+/uhhDdeBZejn86/dAhrY+fho0qYde68KtJe8+ilKKCnX1MaC\niCKnjvsxrdqQr0PdrZnoK8e/mTpMs3ZbG1dZ7j4zUu6NmfOtT/dRs0Z6pr2NXrF0wzyXmvPb\nlc7eZlCAz6Q9qwdOvNK8QR0/X9/KFd3FEs/atTPXDt6023Vk0OlaYSsHVcrdf8up0/f0nTR8\n5G7Lsv7LFvXNc15piedfpWvaN3TSW27j1bKLl+5L7tvxky6ke44YF+YqTb98eNPSkHH2keu9\npZlvzuPTF7XsN2aAr9vza/sWblno2GJvT0dxxNeTf5PWHv31LAWbcOzbb6ZPpF1rBhrv6nLE\nHL+mwQuDK3AZcbPGzH3uVHf4hFm22veHN628EJfqavKRMliVU+YhSEhICAgIyGo5bNiwIUOG\nfGL3AFDIFAqDfwD/Rwf6VDY2NuYuwSCJRCKRFNq5lMJVAg+oRqMxshbBrqRwbVNLc/DgL4lp\nLaRvfohPG9TMWSgr29TG4tyPLwJ7edy68taq7CiGSBV3+LtHSQv2TKwqExJRBa9qGb/22bvu\nfpu5tXP3ma68marl2rdvVsnWgjw95k5TvJTK9dpU6hUeUeXiz5eu3/pp/8Ed61mJrU/dJl2D\n+/k6SoiIFQqFDDGsUCjU/5NFo/pnw8Ilaa41NbG/Vwps4SQSJD++Eyv08C6XYwhN2nMiKi02\n+Jdiypu9p58rx22d3txeQkQVq1a517vf+qMxK3p46BpY1g8JbuNHRO6BE9x2XYx+q0pO2/XL\nq4wFe8bpdkK5eUlzl12Iz+As3hvrKtF5SM/WvkT05tc5D1SS5YsmekhYIqpUWdqj73zTj5Sh\nqsgpj2wNAABQnBDsSgqpYxc5e+iXu/G17PeQuHQ7hYSIOtR3mnXmHPUsfSxOVW6AFxEpn9/i\nOG5azy7Zt7XMeE6UR7CT2gc08zwzZ+DgarVqVKlcuXqt+nXK5nHWsaxfkwF+TYgo9X3s7RvX\njx/YN2vkzVU7V5exMPL5M7dh/JQbLp02reqR/NuWoQtDKpTfZLN+aaTVxM3hftnbCcTORBSb\nrtWrj9Mk/RObYOPmnnL/Dmvh1tI+8281RiDr4iJbe+kl/RvsSn1RNmsra1ZAHMVdjxLJa+hS\nHRFJ7NrOn9+WiF4a7cqllbtu+dsLsRJFG12qIyKxVd1aclGc4anmKXdVWWxsbCIjI7NeWllZ\nJSQU9BZggUBgbW1dwE4A/pcV/NvQOLFYLJPJimGgz2Nra5uUlKTVGnmygnlYWVmxLJuWlpaa\nmmruWvRZWFiIRCKl8hOeMlE8OI4z8jkigl1JwbDyLo6y48ef/iV5YF2+v+5yNffOdVQ/Hn38\n2j4xQ9veR0FEQksxw1oe2L8j++VsDJN3AmNY64nLt3e7//sfd+/fv3P20Pb1Pl3Cw4OrZzVI\nT7q8dPX5gSFTS4kFRCS1c2vQpkvtxpW+6jlt59/J070MXnuWnnztVKxy5uIuUgEjrTdoRuCD\neaHTZBlJ1cNL67W0sGmuEK6/ePF1QGDZ7Mvjo9eMnnZ19u5Dzhzp3Z0tEDCc9uPnzCKp/uy0\nao4RiHNXxRntSmb177s91+0O1kLBpwa73FVlYVm2cuWPt7mkpKSkpKR8Yvf6SvLFMQD/CRkZ\nGUXav+5SWo7jinqgz6bRaIyfwjMjrVZbAvebSCQqyQfUEPy2KEFqt3FJfnZ0f3RChe7euiWy\nUt1tWO2a704JpV4NrMREJHNuS9qUk2/VokzCyDlhEede5dlh/N3Dm7Z8V6ZK7Y7dg6aEL10+\n2PPOiW3ZG7Bil9+uX4+8/ib7Qk1qPBGVkovICG0GEb1MzXy71wyaXYl9ncI6jfax02vICKQT\nWrv9tWtxdHK2h+Fxmu/W/ClRtKghF9lWrqJJ++dCfFrmGm3q4dgPjg3djAxuX6dcevKNrIf8\npSX8EhwcfFOpNrErp6ZuqvgzT//dXKN6fDUpzdhkAQAA/iPwiV0J4ty8oXrHjmii/6uS+REr\nI5D1cpOv++GFXdVpuiViq9qDq9tvnzJXMrSrt5v89pktx6Liwqc65tmhyPbD0cP7Umzt21Yv\nz6S8Ov7DC8vSOc7hshKPaR0qzV8+XhrTs27l8jJhRvzrmJORu6w92ge5WOraCBhKfRkbH19K\nofh4KlBs06ihXcTO6UusR3R1ovgLh7c9Zj286MnSo49mBHrpleE7dF6je6NCh00M7B7gU6GU\nOvnV1VP7zr7I6L9kIBHJnHu3dj25dsoiZthXbjL1pe83PMiwnd+5LBlm7TGsru3l2WGrxwa3\nsxMmH1u3KV3SsKZcRJYmdeVQfaSXxdAZ01eO6tdewSSc3LHGyvBJZ7UyJioqx6eDFby9jdQG\nAABgRgh2JYjEvqNCuDPFsmEV2cfjUqNrWVr2Z7kuFbKWdJi5Im3D6gPfLopXi9zK+05YGOpn\nmfena/LSfcIHKred2PzLDqWlwtHTp+2CkZ312tQdsmhW2T3fn/5hxZE3qRmMwql09ZZBIX2/\nFP57urJqQL0dW74ZEdJ07+bx2bYTTFg5Z+vqLVuWzUplLCvVbLp4fZDt08gBYdMOeW/+yjvH\nOVxGqJi4avXxnTvOnNhx5F2SQGJdrlKNiYsHNK1oQ0TEsKNWLrJavXHjklnJGay7V82QpSOz\n74HcGIFkcsS8LasjNy6dmaiVefq1WTCyj+ldMUL7ORGha7/ZsXL+dJI4NO0+Zfj15ZF5jENE\nlPBw45Scj3lZe/B7I7UBAACYEWP8aSgAUECFdY2dnZ1d6JWbhVISwP+g8V5lirR/iUQil8s5\njouL+9RLdouDg4NDfHx8CbzGTqFQsCybmpr64UOJ+19EUqlULBYnJiaau5A8ODg4GFqFa+wA\nAAAAeALBDgAAAIAnEOwAAAAAeALBDgAAAIAnEOwAAAAAeALBDgAAAIAnEOwAAAAAeALBDgAA\nAIAnEOwAAAAAeALBDgAAAIAnEOwAAAAAeALBDgAAAIAnEOwAAAAAeALBDgAAAIAnEOwAAAAA\neALBDgAAAIAnEOwAAAAAeALBDgAAAIAnEOwAAAAAeALBDgAAAIAnEOwAAAAAeALBDgAAAIAn\nEOwAAAAAeALBDgAAAIAnEOwAAAAAeALBDgAAAIAnhOYuAABMNb9hzcTERLVabe5C9FlbW6vV\n6tTUVHMXos/S0lIqlWo0mvj4eHPXoo9lWYVCERcXx3GcuWvRZ29vzzCMUqlUqVTmrkWfXC4n\nIqVSae5CAEoofGIHAAAAwBMIdgAAAAA8gWAHAAAAwBMIdgAAAAA8gWAHAAAAwBMIdgAAAAA8\ngcedAPxnhF65ae4SoHA9NXcBhsSYu4DPN96rjLlLADAnfGIHAAAAwBMIdgAAAAA8gWAHAAAA\nwBMIdgAAAAA8gWAHAAAAwBMIdgAAAAA8gWAHAAAAwBMIdgAAAAA8gWAHAAAAwBMIdgAAAAA8\ngWAHAAAAwBMIdgAAAAA8gWAHAAAAwBMIdgAAAAA8gWAHAAAAwBMIdgAAAAA8gWAHAAAAwBMI\ndgAAAAA8gWAHAAAAwBMIdgAAAAA8gWAHAAAAwBMIdgAAAAA8gWAHAAAAwBMIdgAAAAA8gWAH\nAAAAwBMIdgAAAAA8gWAHAAAAwBPCYhvpt3H95j5J1H3NMKzc1tm3rwD2RQAAIABJREFUfuug\ngZ1dLNh8t/3zp737T55/GPNKI5Q5la7YrH3PHi29jW+SlnCmW1DEpkOHnUT64bV354D6a3aN\ndZWbWPn6/t1/LRe6OdzPxPbqlD+/6hk6f+8hH5nIxE30GJlvcJdA34jIiW5Wn9eziQpysIgo\nPfnet4s3Xot6IXer3Gd8SLNyBqud0avrHx/Se23Y26uULPvymwuHhF99Xb7r8lVBngWZSGEx\nckSUL58rJU6lFGLzVggAAEDFGeyISKJoM3NScyLiNOlvY6KP7t07/mb0unWhCiFjZKu/j8wJ\n2/JHq+4Duw6qaKFV/vXHpciIKY9SVoZ1KF9MdRevEjLfzztYOjunLoiq1HfVxLoPTyxZMX1R\n093zjGzDsMwvkQ97Tar+cRGXvvnmO5bJf6DiYfyIXAyffLJOeMRgL3OXCQAAULzBTiByrlat\nWuYLv5qNm/kNHxA2d99fy/sY+1Rm6/47ri1nju2T+YGZt09Nb/GzkO1LqcOaoi7YLIpuvpxG\nxbASExubeLDy7PP8yw/1Q5s62lpad/BP37c8ScPZsAZTmnML37eXNqdzEeJ/myhjd7+gUo2t\n38WYWCuRRsuxgjyG+KQpG/K/9g4EAID/rmINdnrE1lW/buA09+Qe6jODOHWngK/6btnX3UGq\nW5t1wjRFw6XFv86+YblOI0M9EnRfpyfc37w28uqdv5LStQ6unv69x3Rt6JbVMuHBTxEb90fF\nxFuWKu/fbXivljlCiTYj7tDG9aev3HmfJnCr4BcYPLSVt8L0+o0PndkmKWrWqBmqeoOXj/bn\nTBvO+HyJSKuO37Zg7g+3HglkDvX9B47t1YCINGmxu9ZsOHsjKkktKOtVo9uQkY3+PQHau3NA\n7w2bXm9Zee6uNDIy7PNmneNg5epTr3FfH7s9G88On9n21IbdNp5djaQ6IrIuG8RemLz7eXJ/\n98yCH+y4bF99mMXDxbqXRqYW3CWww6p5UQsX/R6bJFc41283YEyPBrnLM9KDKXvDyBFZ37/7\nifcqOhrS7VyjAzunZPap1b58+fLjrhOLhcKCfqMJBLgcFsAkLGvSFSOFTvdNyjCMuQrIV0n+\nMVIy9xvDMCWzMI7jjKw1Z7AjIvd2LuqLN5I0nLXh99ugAJ9Je1YPnHileYM6fr6+lSu6iyWe\ntWtnrt06ec4V66ZfzxhgJ9bcPbd185KQ5gd2OQgzu5s358CXQwf1cbG4+8v+yFUTM1y39/O2\nzeo5cuq4H9OqDfk61N2aib5y/JupwzRrt7VxleWuIU/Ghyai9OTo8FEzU+sMWj7anyHaYdpw\nxudLRL/Pm9Gux6ilA93+vrZ30ZaFLl/s6+Yg+Xb8pAvpniPGhblK0y8f3rQ0ZJx95Hpvaebx\nvRwxx69p8MLgCgWZ9ceDxTJ6feppOXX6nr6Tho/cbVnWf9mivvn0K7AYVMP+2+3R/cPqEBFx\n6VtuvWu8wlsZqlvNGZ/a8emLWvYbM8DX7fm1fQu3LHRssbenkyxnecZ6MGVvGDkigzftdh0Z\ndLpW2MpBlbLaJyQkBAQEZL0cNmzYkCFD8t29AFAoFIpP+PuclwUYYmNjY+4SDJJIJBJJQc+u\nFJESeEA1Go2RtWYOdiJbK47j3qm11hYG21TqFR5R5eLPl67f+mn/wR3rWYmtT90mXYP7+TpK\niMjZv/uYVh1q24iJqHSpbpuOzX2mynCQZ17J7jVmbo8mpYjIu2rNlKg+P0Rc7Lemo26VKu7w\nd4+SFuyZWFUmJKIKXtUyfu2zd939NnNr511HLsaHTk+Knj15zpuqQRvGthN8ynDG50tECr8J\nwV/4EVHpwIlOOy9FvU9L0R4+/Vw5buv05vYSIqpYtcq93v3WH41Z0cNDt0mi85CerX0LOOuP\nB4tls/epR6P6Z8PCJWmuNTWxv1cKbOEkEiQ/vhMr9PAuZ/BuFe+gxnHjN6q0tSUCJvn5rheM\nWx83+XoiIkp5s9f41CzrhwS38SMi98AJbrsuRr9VkZMse3kpb/YY6sHEvWHkiLBCoZAhhhUK\nhSXuTzoAAPgfZOZgl5GoZBjGQSQg0hppVtavyQC/JkSU+j729o3rxw/smzXy5qqdq8tYsAGB\n/neuX/4uJvb169dP7v+mt2GHmvZZXzf3dzmy6yJRZrBTPr/Fcdy0nl2yt7fMeE5karAzPvT6\n8eFaiUD55JmWIwHzacMZmS8RufmXzWppJWCIKPH+HdbCraV9ZvJjBLIuLrK1l17Sv+nHpZV7\nwWed7WDl6DMnbsP4KTdcOm1a1SP5ty1DF4ZUKL/JZv3SSKuJRm4rlpfuU1pwZNuz5OEe1g92\nXHb8f/buM7CJuoHj+P9ySbr3YJQ92iKjyFJQQVEQEKEUZErZlqlWKquMynyQpQKyi1CWIAiK\nCG5FEFRAES1LGZZNKR00Xck9L4qlhDZNZ+r5/bxKLjd+d+n45VaajtL9c/C2wFWr2O7e1nCV\nNeKf/dM58SzMwfqtYfkdMePm5hYTE5Pz1MXF5fbt2w+OVigajcbV1bWYMwH+C4r/61Y0er3e\n0dHRhgEsc3d3T0pKMpks/au1CRcXF1mW09PTDQaDrbOYs7Oz0+l0KSkptg5iTlEUC/sRbVzs\n4vZd0Tk3dZUlYX68WMlShBAiI+nA/CXfDo6YUFGvEUI4ePq1bB/S7PGA7r0nbriQPKFm1owR\no84413/2scb1m9dr16XNay9Pzz2X3Od2aZ11knTv37DWSS/JTtu2rs89Tu4RLDNl3rS86Aqd\nIqZ0kUMHzpq9L3hqh6pWLs7y+k7ydxdCODiaT6UowuyWhBqNpJju7ap1dNEWf63vvVn3z/O+\n/MmHPr2UMvXNEAeN5PDIkCnBp2ZGTnTMSmocVcXSrCXd4KY+i9f+Nnx687W/xLd+694VpgWu\nms4h7/A58SzMwZqtYc07YkaW5Xr16uU8TU1NTU1NtbD21ijPJ8cA5UpWVpZNlpt9Kq2iKLYK\nUCCj0Wj5EJ4NmUymcrjddDpdeX5D82PL/xaZKSffPnCtSoe+OUNSsu72u7SEb9NMihBC1lf6\n6fDhmMPXc09oNCQIISo661Li1hy9kblkwZT+L3Rp3bJpVQ/zWr3nl1s5j7/b+bej31M5Tx0r\nPCtMqXtuZOru0sZMn7z4m6tWhi9w0T27N9O7tZjWo+6xVVGnDUYrF2d5ffML417vIWP6398l\npGc/VUyGnZfu+DxwJUdx1vrBNytvpiwhxBXD3V+DJqFvBMjXUmXf0Q09LU/nH9rm1h+rr1zY\ncEWq3ruyUxFWLT8W5mDN1ijaOwIAgE2U6R47U+b12NhYIYRiyrx58eRHm7Ymuzed16e2EEJI\nugBH3f6lH7QZ3kGb/PeWxSslSRJCyPa1JnYOmLUw3OFi7xb1ajpqsxKuXdwTs9G1VqfQSk6Z\n8XUV5cDO/Sc6NfC9dfH3D6JjhBAXr95uUsc3e4k/LpqyPXNoUCX7E19v3Xw+deiSR3LC6F2a\nDW3stW78DPuXegT6Of/yefTHsfFRE3zyTJ6ZcjE29r470Fb2LmDR2QJ7TwvaM+h/cz+Ljupo\nzeIsr29+G9axQt9nKu95d/xcKay7n2Pm9x+uPJXlPqtb9QfHtH6tLb1Z+dO7PdbKc/GGSfNc\nR/TwFQnf7XzvrFzLX/w1/6MzU4It3enNqWLvWtrt0xd87tNiQu475Vm/avmxMAdrtkaB74hG\nEoYrlxISKnp4cKgUAGBjZVrs0hL2jR+/T9z9MgOfhi1fCB/cI+eGt5PfeOnNxdvGj9qeYVIe\najfi0cQ12cNbDJs7rfrmD/ftXbTruiFL8vCt0rhtaMSLz2klofUOiRp4fdX6ubtT5Rp1g/pO\nXOq2YHTMuDHNNm+qIIRG6/HGkMff27xk082MSjXrDJq05Pmq952/33nqovSVS7Ytn5uQqfOr\n2ei1OZFBTnnvg7l9etX48fcNefeDD/NbdKVco0myS/i0kP4RyzaeatXXusVZWN98SfKot+a6\nLFm1at605Cy5qn+TiPkjH3LM+821cq0tv1n507z21vS1S6KjF0wzSE4BTVq/uSLU/VzMoMkT\ntweu6R6Yx4HLnFUY9Ihv5DeX+0TWLfKq5TdnC3OwZmtYfkfqd31kffQ7IyJab1kTXohUAACU\nAsny3VDKnqJk3E4RHi58QRNUoqTOsfP09Iw8eLREIgEqFu5fzSbLtbe3d3Z2VhQlPj7eJgEs\n8/b2TkhIKIfn2Hl4eMiybDAY7ty5Y+ss5hwcHPR6fWJioq2D5MHb2zu/l2x88cSDJEnvUbrf\ngwoAAKBOXGoHAACgEhQ7AAAAlaDYAQAAqATFDgAAQCUodgAAACpBsQMAAFAJih0AAIBKUOwA\nAABUgmIHAACgEhQ7AAAAlaDYAQAAqATFDgAAQCUodgAAACpBsQMAAFAJih0AAIBKUOwAAABU\ngmIHAACgEhQ7AAAAlaDYAQAAqATFDgAAQCUodgAAACpBsQMAAFAJih0AAIBKUOwAAABUgmIH\nAACgElpbBwBgrVmtmiQmJmZmZto6iDlXV9fMzEyDwWDrIOacnJwcHByMRmNCQoKts5iTZdnD\nwyM+Pl5RFFtnMefl5SVJUkpKSlpamq2zmHN2dhZCpKSk2DoIUE6xxw4AAEAlKHYAAAAqQbED\nAABQCYodAACASlDsAAAAVIJiBwAAoBLc7gT414g8eNTWEVCyztk6QH4uFnP6cP9qJZIDQGGx\nxw4AAEAlKHYAAAAqQbEDAABQCYodAACASlDsAAAAVIJiBwAAoBIUOwAAAJWg2AEAAKgExQ4A\nAEAlKHYAAAAqQbEDAABQCYodAACASlDsAAAAVIJiBwAAoBIUOwAAAJWg2AEAAKgExQ4AAEAl\ntIUa+1bcXzfuZD44PCAgoITyAAAAoIisLXZpN7/o/nivPadu5fmqoiglFwkAAABFYW2xW9m1\n/6dnkjuPmNChUQ2tVKqRAAAAUBTWFruZP92o1WvHx+92KdU0AAAAKDKrLp5QjMk3Mo3VezUq\n7TQAAAAoMquKnSQ7P+lu/9d7P5d2GgAAABSZlbc7kbbsnpHx6YsDZ6y7dierdBMBAACgSKw9\nx67HhF0VKunWTR24ftoQz4oVHeT7LqD4+++/SyEbAAAACsHaYuft7e3t/Uz1xqUaBgAAAEVn\nbbH78MMPSzUHAAAAiqlw3zyReumXD3Z9/sdfl1ON2kq16rcP7tG0qnMpJfuPmNKnx693Mvqs\n3NKnomPu4UfnDIv64VrNHgvfDq3TpUuX4FVbBldwzG8mA0KCGy2OGevn8uBLBU5bIhRj0qCe\nobcyTaPXbW3vYV9Ss81I/n35m6sOxV529qvXLzyiTY08VvCfAMnf7nx/33c/nrt80yg7VqwR\n8ES7Lt3bBskW77mYmfpb996Rs7Zsb+ios5zkty+2bN3z7emLV41aR98qddt06t2rbWD2SylX\n4lLsfSt66Au/fgAAlLBCFLvtU3v3m7U13XTvSyYiXx3+QuTG96d3L4Vg/yGSLH0dc7rP67mO\ncysZa47elKW7raRjx46BDoWr4DmKM631Ev5YmZAlfHTyrq3n24cFltRsN0yYHRvw4ttjW5z+\nZN6iSXNbb5qZZ08zZVydP3bsD9ecOnR7vpt/NdmYfPrXAzuWTP36cO/FE/sU/37aF3ZNnxz9\n69M9B/cYUtfOlPLnr9/HLB5/JvWtyZ1rCiH2R43b0zxq8VD/4i4GAIBis/KqWHFuW78eM973\nbTP4/c8PX7oen3Dj8k9ffTDkyQpbZ/Tov+N8aSZUvwpPNbrx05qMXN/KlnJp02VR8XHXuzuB\nRowY0cq1iDuEijNtDqOpgK+MO7jmVwefbiMf9rr69VpTMReWy7dX7jTq0drH3atZ5w4ZKceT\njHnH+Op/kYeu+cxcuSSsz/MtmgY1bfF4n2HjV8wJi/9xS9SuC8WPsXbr8cptp77c77mg+v6B\nDZs89+LLs/rUPrJufvHnDABAybJ2X878Vz9y9ht48otVjpq7O0CaPdW9aZuOpuoVt45ZIEIW\nl1pC9XOtHip/N25TXPLAqncPNZ5af8CrcZjd6Tezn+Y+nGpMuxizJPrQiZM303SBTZ8aNmZA\ndXtZCGHKTHhv9oy9x85oHL0f7TD45T4tzaY1pl187+3VPxz/w2BXqdPA104ue73KonVhFZ0y\nbv+x5t2YH47/mZRh8q5cp0PfMT1a+WVPOyAkuPPbM2PnzD1yKcnZo8KjHQeN6dXywfzG9Ivv\nnU8KfLW9f830zDG737+S2qeSoxDis7Gh69JCNi4Nzh4t9doHvYetj4j54HGn5O2rVuw7ePxW\nusavdlDwgJeeDvTIc8u82NBz86ovh0999tOVm9zq9HDL68BqVurJpUduNh03u777ff3VLbDT\nhNYfzdz8thK8UBLCwmpmy0iKnTZqStojQxeO7mC2mFSjkp5wLfeQGl1GRta6LYRYMbDnJ7fS\nxEcRL3zz2LYN4+9uEKPx9OnTOSO7uLg4Oxf3jAWNxtrPYEB5oNWW1oGC7N+F0pt/kWUHkySp\nHGbLJsuyJJXTrwTVaDTlcLtpNJry+YYqiqW9LdbG3XIj1X/yKzmtLpukcXxldMC6KZuFoNgV\ng8ZuyMNey9edHDi5uRBCKBnRx24+vigwJfKBMZWsxa+M+8mh2ehXpnnItz9e/s6ksWLj0sFC\niCMzp3TsNWr+YL8Lh7bMjZ5Tqd37L3g75J5ydcTE77RNXxk3yz790qbF486kZlYRQgixdtz0\ng66tX5kyyFNvPPHN2jXzIp7cttFbe7dG7J40t23/MYMa+cUden9O9Byfp7b09jU/Xe/6D6sy\nFe2QR32d9f199Z9+ve5knwlNhBDNhz68dOLGyxnPV9bLQogzGz538H6+tZt+XcSrn6U3GPZK\nZFVX6eTB3e9MCDO++177ynmcBdh2wqTNL74+fOQmp+odFsx9Mc+Nd+fyh0ZF6dvU+8GX/Hs9\nnPXNJz8lZ7Rw0ee5mm7/jJmRfDJq1FRD8yEPtjohxJCuDV/fvGTw2INPtmwe1KhRvbpV9fZ1\nmjUTQoihqzdVHhm6r+nkt4YE5IyfmJjYv3//nKdhYWHDhg3LMzygVu7u7qU6f72+/J7VWtrr\nXmSurq62jpAvOzs7Ozs7W6fIWzl8Q41Go4VXrd0N4KzRpF1Le3B42rU0Seb6ieIKDH08/pdV\naSZFCJEct/Gy5NfPL4+tmhy39uurWZNmv9ry4XqBjVqOmTmwhvufCVmKEMIj6LUB7VpUqej3\nWPBYX70ceys994SpN7bt+fvO2JljWgQFNGrRdmJUx8x/+n6FDj3HTBnarL5/rbr1OvR+QTHe\nOZ927x7UTo9GDGjfompFv5bBr/nZySdv5PEz8GnMGecq/Wray5LGYVCA+42fV6UpihDC3X+o\np5wZ/dstIYRQMtccvlFv0PNp8Tt3nEmaNHfsk80a1vZv8NzACYMr67Ys++PB2RrT/l45Z156\n5SZp19KqPPyUr06TfPb4yfMpZqMZrqVIklTDXn5wDlrHGkKIv9ONllczI+nkG6OmXK8fuvDl\njnn+PgT0iVo84/Unajkf+2LrlIhRvXqFTp2/6viNNCGErNVqJSHJWq02jwAAAJQxa/fYvVrX\nbcL6kT/P/KGZx71OnZF4dPTq0251/lc62f5DnKv0q6LZ9d755OG1XE+tP+DTdJQur/3l8Ydj\ndc4P13e8+67Zez47a9az2Y/9OlTPGc1FYz5xwm9HZfvaTZzvXvvpUvU5IXZmP+4a3OH44QM7\nLl66du3aX3/8ZDZhxXb3Zusqa8QDe38zkn/eddPgP7jGxYsXhRCuT1cz/nZs7V9JI2q7SbLL\nsPqe7677UTR9Ljlu48VMh8mP+qb8cUxRlIm9Q3LPxCkrTohm989YWRk+/udKXVa/3Sv5p+iX\n5kTUrrnabcX8GJexa6KCco9n7+usKMqFNGPNB7qdMe1vIUQVO9nyaq4IjzLZa1L+Om9SxANb\n7q7qQU8MCnpCCGG4demXnw/v3vb+tJFH396wpJpdHn3Ozc0tJiYm56mLi8vt27fznq/VNBpN\nef60DZgp/s98fhwdHYUQqamppTT/ItPr9dnZSm/di8Pd3T0pKclkKsGzoEuGi4uLLMvp6ekG\ng8HWWczZ2dnpdLqUFPMdCjanKIqHR96nMAnri92gD6ZPqz/msRpBg0cPeqxRHXth+PO3g+8t\niT6dqn9n26ASivofJukGN/VZvPa34dObr/0lvvVbeV9iacpUJE3eByAcHC3tMVIyTELk6iyS\n/M8Mb84YMeqMc/1nH2tcv3m9dl3avPby9NwT6hwK2BEVt2ejoiin1kSNzjXw8JpfRsxuI4Ro\nOKRl8qsx1zM7nl/7vWeD4b46zW0nvSQ7bdu6PneDkiTzpWQkH/r0UsrUN0McNJLDI0OmBJ+a\nGTnRMSupcVQVszGd/bpqpEObf4mf9Kiv2UtnPziicwxo4aK3vJoVOkVM6SKHDpw1e1/w1A5V\nzZMkHZi/5NvBERMq6jVCCAdPv5btQ5o9HtC998QNF5In+eexi16W5Xr16uU8TU1NLf4/Ic6x\nw79LVlZpfflkdjUpvfkXWfaZWIqilMNs2YxGo+VDeDZkMpnK4XbT6XTl+Q3Nj7XFzj1g5B+f\na18cOWn57AnL/xnoGdB66dKY4YHl7vDzv5F/aJtbo1dfuXDqilS9d2WnPMfxal4j4/2DZ9OM\ndexlIUT67a9feuW9V5auLnDm7g0fMqbt+vVOZpCTTghxJ+6T7OEpcWuO3shct2KKuywJIdIT\nvyls7E0f/e1SfeDGxff2wP0wfejcY6sTslp7aCWXagOq6vasOXHpr+PxT731sBDCscKzwvTj\nnhuZwXdPqlOip0xIbPNK+DOV75uvKUsIccWQJVz0QogmoW8E7H3xlOI7uqGnWQCt40MjHvZa\n8dbckyvnBOa6/jfp7L45X11uMHSxJESyxdXs2b2Z3lE3rUfdSauiTrdZ6X9/l5X1lX46fFh3\n+PrrT1TMGWg0JAghKjoXcPc7AADKWCF2A1R56qVvYm/8HfvT3t27du3e+9MfF2+c/Hb409VK\nL9x/ilPF3rW0idMXfO7TYlB+t15zrRXWwl15Y/KSn347/WfskWVTV2fYt2hiRb1w9gvtUM1x\n/rRlR34/+8eRb+fNOSaE0Aihc6mrKFk795+4fvPayaNfzYtcJ4S4ePW2lTvr025+/GNyRvPh\nT+Ue2Gjo0yZj4srf44UQQtIPbe5zZNGMBF39flWchRB6l2ZDG3ttGD9j7/4j5/86tXPFhI9j\n49u29DGbs97tsVae9hsmzfv2yO+xR75fOW3MWbmWvzZ+/kdnHozxzKQZLbyuTHrpldXbPj3y\n62+/Hjm0LXp+2OvvercaNLVTNWHdagb2nhZkn/i/uZ+ZzVy2rzWxc8D3C8OXbNz149HjJ44f\n3f/5zjfC33at1Sm0kpMQQiMJw5VLCQlJ1m0zAABKUWEv4pWqBDarUmI3oEUukjzoEd/Iby73\niayb7yga+3GLZ0YviVk1f2qiybFOUPvZI/tZN3dN2IJFTovefmfGBOFRe0jk67+MGeGm1Th4\nh0QNvL5q/dzdqXKNukF9Jy51WzA6ZtyYZps35Xn2mJkzG/bI9tXC6t23y9apcu/Gztt/W/OD\neOd5IYR/aLuMYTG1+kzI+QzReeqi9JVLti2fm5Cp86vZ6LU5kdn7Ec0Cv/bW9LVLoqMXTDNI\nTgFNWr+5ItT9XMygyRO3B67pfv9OYlnvN/6dZV/v2PrZdzu+eP+m5ORVpUr17qNndH+6UXZD\nzm81g9ZMvLdtZZfwaSH9I5ZtPNWqX4Bb7vm3GDZ3WvXNH+7bu2jXdUOW5OFbpXHb0IgXn8vu\n3/W7PrI++p0REa23rAm34o0AAKAUSZbvhgJ1MGbE7f3810ef7eSllYQQabf29hq0bOH7O2rn\ndTEpSlZJnWPn6ekZefBoiUQCSlu4f2kdzMm+K2Q5PJ/d3t7e2dlZUZT4+HhbZ8mDt7d3QkJC\nOTzHzsPDQ5Zlg8Fw584dW2cx5+DgoNfrExMTbR0kD97eedzkK5ulPXYPP/ywpLE7euRQ9mML\nYx47dqzI4VAGNLLbl+vX7I93jOjaQpt+beuiza41e9HqAABQGUvFztnZWdLcvblJObxBH6wn\nyS4z5o9d+u6WV3YvztS4BDRtPXNML1uHAgAAJcxSsdu/f3/O46+//rr0w6AUOVV9bNycx2yd\nAgAAlCJrr4pt2bLl/Lg8zmm4evDlJ9r2f3A4AAAAylgBV8UmnTt7JcMohDh06FCt2NhTd8zu\nfa+c+OS7g/vPl1Y6AAAAWK2AYre9wyODT9/KfrypfYtNeY3jWmNUSacCAABAoRVQ7FpNX7j8\ndpoQYvjw4W1mLOrj42A2gkbn0rJ7j9JKBwAAAKsVUOwCeg0IEEIIsWXLluDBQ8MqO5uNoJhS\nk+9kCZH3F5gCAACgzFj7zRP5XRUb90W3Wl1OZqZdKLlIAAAAKApri51iTFny6rB1X/4cb8jK\nPfzqxQuSw0OlEAwAAACFY+3tTo5Nf/LlJVuS3Gv6V8o6f/58YKPGQY0CtfGXJc+n3t21t1Qj\nAgAAwBrW7rGbtPh3rwYzTx+MVIwptZw9Hl+yPrKqi+H6tw1qdkqp7FSqEQEAAGANa/fY7U/K\nqNG7sxBCkp37+zp+dTReCOHg22b9wBoze6wqxYAAAACwjrXFzkMrZSZnZj9+pIrTpV2Xsh9X\nD6ly++yiUokGAACAwrC22A31czm79n9/pxuFEFW7+MXtWZk9/OqX10orGgAAAArD2mIXFj3M\ncGNHbe9q59KMtUOHpl6PaTlo3Lzp4Z0XnPCsP75UIwIAAMAa1l48UanNm8e2V3pjxccaSThV\nCtv86gf93pp/SFFcaz/7wd6wUo0IAAAAa1hb7IQQQd3Cd3QLz37ca+HnHcNPn7tj/1BANZ1U\nOtEAAABQGNYeim3ZsuX8uJTcQ1yr+gcFVov/4eUn2vYvhWDl4PGAAAAgAElEQVQAAAAonAL2\n2CWdO3slwyiEOHToUK3Y2FN3XO9/XTnxyXcH958vrXQAAACwWgHFbnuHRwafvpX9eFP7Fpvy\nGse1xqiSTgUAAIBCK6DYtZq+cPntNCHE8OHD28xY1MfHwWwEjc6lZfcepZUOAAAAViug2AX0\nGhAghBBiy5YtwYOHhlV2LoNMAAAAKAJrr4r9+uuvSzUHAAAAismKYqdknf7tN6+Hgry0dy+h\n/Xn7O+s+PWz0DHzqmW4vtG9QugEBAABgnQJud3L1wLonanoGBDXZl5CWPWTvxCea93hlyZpN\ny+ZN7flsw0eGLFNKPyUAAAAKZGmPneH6p03aDrmhqTJw1MiHnfRCiPSEfZ3nHnDwart13/IG\numsxb46cGj0yrG+XlU/7lVVg4L9rVqsmiYmJmZmZtg5iztXVNTMz02Aw2DqIOScnJwcHB6PR\nmJCQYOss5mRZ9vDwiI+PV5Ry9+nYy8tLkqSUlJS0tDRbZwFQOJaK3XejRl8X3rtPnehQ7e41\nEyeXRxoVZfDHmzo3rSBE3Snrf/zkY/cdr+xYeWJMmaQFAABAviwdil345eWKLd/NaXVCiJ0r\nz2rta859xPefqe2nNfJKvhBdqhEBAABgDUvF7ueUjIrtauc8NWVeX/B3skfgFCfNvW+Hdavn\nmmU4XYoBAQAAYB1LxU4vSalxqTlPb5+dlWw01Xvt8dzjGC4bZD0n2AEAANiepWL3go9j3O61\nOU8PTd0thBj2bO4ap6z88YaDT0hppQMAAIDVLBW7EZOaJ8etah8RHXvx6rF9S/rsPO/g9Xw/\nX8ecEb5c9MLWG6nNJwwo/ZwAAAAogKWrYgPDdo2MqfPugiEPLbg7ZNSKd7JPrzsyI3zqpzv2\n/HDR46G+O14KLPWYAISIPHjU1hFQss7ZOkB+LhZq7HD/aqWUA0BhWSp2kuy85MCf7Va9s2v/\nL1kOvk/1HD24XY3sl85sivnsgggeOWvhgvGusmRhJgAAACgbBXylmKRxCg6bGBxmPrzb96fv\neHrqaXQAAADlhhXfFZsXOy/Pks0BAACAYirgu2IBAADwb0GxAwAAUAmKHQAAgEpQ7AAAAFTC\n2mLXsmXL+XEpDw6/evDlJ9r2L9FIAAAAKIoCropNOnf2SoZRCHHo0KFasbGn7rje/7py4pPv\nDu4/X1rpAAAAYLUCit32Do8MPn0r+/Gm9i025TWOa41RJZ0KAAAAhVZAsWs1feHy22lCiOHD\nh7eZsaiPj4PZCBqdS8vuPUorHQAAAKxWQLEL6DUgQAghxJYtW4IHDw2r7FwGmQAAAFAEVn7z\nhGnv3r0avV3pZgEAAEAxWHVVrGJMdnd0aLf1z9JOAwAAgCKzqthJstvYep5/Rf9U2mkAAABQ\nZNbex27K/j2N/h4z6p1d8enGUg0EAACAorHyHDvRuWekqUK1Za92WxZuX6GSj73uvkZ47ty5\nUsgGAACAQrC22Nnb2wtR+bnnKpdqGgAAABSZtcXu448/znO4YkpNvlNycQAAAFBU1p5jl5+4\nL7p5+dQrkSgAAAAoDmv32CnGlCWvDlv35c/xhqzcw69evCA5PFQKwQAAAFA41u6xOzb9yZeX\nbElyr+lfKev8+fOBjRoHNQrUxl+WPJ96d9feUo0IAAAAa1i7x27S4t+9Gsw8fTBSMabUcvZ4\nfMn6yKouhuvfNqjZKaWyU6lGBAAAgDWs3WO3PymjRu/OQghJdu7v6/jV0XghhINvm/UDa8zs\nsaoUAwIAAMA61hY7D62UmZyZ/fiRKk6Xdl3Kflw9pMrts4tKJRoAAAAKw9piN9TP5eza//2d\nbhRCVO3iF7dnZfbwq19eK61oAAAAKAxri11Y9DDDjR21vaudSzPWDh2aej2m5aBx86aHd15w\nwrP++FKNCAAAAGtYe/FEpTZvHtte6Y0VH2sk4VQpbPOrH/R7a/4hRXGt/ewHe8NKNSJKyqnl\no8btvb5++1Y3Wcoesu/lF9+9kLLg/e117OXsIUffGDLjhH77tmX5Vf6+3bo+unTjy5Wdcx5Y\nufTfvtiydc+3py9eNWodfavUbdOpd6+2gdkvpVyJS7H3reihz3PCjOTfl7+56lDsZWe/ev3C\nI9rUcMlztCOvD3jjVMKDw7fv+kgnicKmLanwAACUJWuLnRAiqFv4jm7h2Y97Lfy8Y/jpc3fs\nHwqoppNKJxpKWuXnGil7Ptl10xBawVEIoShpmy+lKIppS2zC5Ie9s8f5/GySc9URxb1v9QMu\n7Jo+OfrXp3sO7jGkrp0p5c9fv49ZPP5M6luTO9cUQuyPGrenedTiof55TrthwuzYgBffHtvi\n9CfzFk2a23rTzPx+4uzd204d94zZQG2xfz6LEx4AgLJUiGJnxrWqf1AJBkHpc67U006z55f9\n10N71BBCGK5vTzDqQ2voP34/Vjz8hBDCmHHph6SMh4aU/FeJrN16vHLbqS/3u/sjE9iwSaD+\nfMS6+aLz0gKn/fbKnUcjW/u4O7l27pDx/sIko5Kzx9GMRufToEED6xKZjIomn9mUZHgAAMqS\ntcWuZcuW3bd9HlHF/EjW1YMvvzA5Yf9XMSUdDCVP0no87+mw78sTokcNIcSlPYccfEJa9zu5\ncf4mo/KELInUa7tMivLsw55CCFNW/PZVK/YdPH4rXeNXOyh4wEtPB3rkN+frRz9dvmH3yb+v\naJy8glo/P3rg8w6a+0pTqlFJT7jvOpsaXUZG1rothFgxsOcnt9LERxEvfPPYtg15nK/5YkPP\nzau+HD712U9XbnKr0yO/VmelASHB7aaO/nnh8nOJRrcKtftFTKkdt2PBus+uGTS1Gj85dfxQ\n1wfmX9jwRqPx9OnTOSO7uLg4OxfxEHAOjabE96ICJUarLfo+gsLK/l0oyyVaKTuYJEnlMFs2\nWZYlqZweYtNoNOVwu2k0mvL5hiqKYuHVAuImnTt7JcMohDh06FCt2NhTd1zNZn7ik+8O7j9f\nzIgoM62erPDhRzuNSmdZEl99e82va0vPhg2N6RM/vpUW7GV/9YtYrX2N1m52QoiYCa9+lt5g\n2CuRVV2lkwd3vzMhzPjue+0rOz44z6zU38dMX96w56hpI+uk3zi5aP7KmZWazOpYJfc4Q7o2\nfH3zksFjDz7ZsnlQo0b16lbV29dp1kwIIYau3lR5ZOi+ppPfGhKQZ+a2EyZtfvH14SM3OVXv\nsGDuixbWzpR5IzY2NvcQjdYjoG5Fs9F2zv5w6LiZQRU0Hy2YvmzCGM9GT457Y4F089jUmSvn\nHXx+xhPm4xc2fGJiYv/+/XOehoWFDRs2zEJs4N/O3d29jJeo15ffs1rLfmtYydXVteCRbMTO\nzs7Ozs7WKfJWDt9Qo9Fo4dUCit32Do8MPn0r+/Gm9i025TWOa41RRYyGMle5fVPjBx98nZj+\nlMP1vQnpQ9pU0DpWb+1m981nl4P71Dp28IZL9VGSEGnxO3ecSZq9eWx9R60QorZ/g6wf+21Z\n9kf7Gc0enGdGylGDSenUqU2Au52oU2vGRI8rDuY7qAL6RC1+aP9X3x8+9sXWD9avkO3dG7Z4\noseA/o187GWtVisJSdZqtfKDMzem/b1yzrz0yk2Ml44EBD/lq9Mknz1+SVsrsEYe+8DSbn81\nfvxXuYfYez639T3zi3tqD53UoZmfEKLncP89449Mmzigup0salQO8Y757vdE8UCxK3J4AADK\nWAHFrtX0hctvpwkhhg8f3mbGoj4+DmYjaHQuLbv3KK10KGkOPiHO8vavTyQ09dos9FU6etgL\nITo/6jvt829E7yofx6fVGOQvhEiJO6YoysTeIbmndcqKEyKPYufg1bVNnc+nDx7aoOnDD9Wr\n17jpo82r5/H5pnrQE4OCnhBCGG5d+uXnw7u3vT9t5NG3NyypZmehEikrw8f/XKnL6rd7Jf8U\n/dKciNo1V7utmB/jMnZNVB5neDr69Nqypl+BG8G93t2PrVonnUbnU/2fAK6yRuSzf7tQ4d3c\n3GJi7p2c4OLicvv27QJTWabRaMrzp238xxX/J9x6jo6OQojU1NQyW6KV9Hp9dray3BrWc3d3\nT0pKMplMtg5izsXFRZbl9PR0g8Fg6yzm7OzsdDpdSkqKrYOYUxTFwyPfk6MKKHYBvQZkH2Ha\nsmVL8OChYUW9WwTKCUl2DvFx3L373J/2p1xrDsw+naxqt+Zpn3109ppXYpapU0MPIYTWSS/J\nTtu2rs99OoYk5d3AJNl17MJ1L/xx5NcTf/xx/Mvt61Y0DImKGtA4Z4SMpAPzl3w7OGJCRb1G\nCOHg6deyfUizxwO695644ULyJP9893JnJB/69FLK1DdDHDSSwyNDpgSfmhk50TErqXFUlfwm\nKbwCzl0rQnhZluvVu3cBSmpqavH/CXGOHcqzrKysMltWdjUpyyVaKftMLEVRymG2bEaj0fIh\nPBsymUzlcLvpdLry/Ibmx4r/FkrW6ePHPvj8y1f+aXU/b39nzNB+I8fN2PbZidJNh1LQrH2l\n5PMfbT15u3bPu3dic6zY0002Ld3xqdbBv6WLXgjhWOFZYUrdcyNTd5c2Zvrkxd9czXOGCSd2\nro7eUe2hZs/3DB0fNX/h0DrHP3kv9wiyvtJPhw/HHL6ee6DRkCCEqOiss5TVlCWEuGK4+0vV\nJPSNAPlaquw7uqFnkVa9KIoeHgCAMlfAHrurB9a90G/M9xeSN16/09fHUQixd+ITHf/3ffar\ny+ZNbTH43UNrRpTTy2yQlwpPtspcv/6kEP976O6OXEnj2MfPedney571J2YP0bs0G9rYa934\nGfYv9Qj0c/7l8+iPY+OjJvjkOUOd+52Pdr6f6u71bOOaUurV3XsvO1W57xiubF9rYueAWQvD\nHS72blGvpqM2K+HaxT0xG11rdQqt5CSE0EjCcOVSQkJFD4/7jjbq3R5r5bl4w6R5riN6+IqE\n73a+d1au5S/+mv/RmSnBedw37sGLJ4QQ7rX9K+mLfgJckcMDAFD2LBU7w/VPm7QdckNTZeCo\nkQ876YUQ6Qn7Os894ODVduu+5Q1012LeHDk1emRY3y4rn/Yrq8AoLnuv5z20G1KdWj3keO/d\nf7hHdbHgtxohtXOGdJ66KH3lkm3L5yZk6vxqNnptTmSQU947qJyr9IsanPLeJ2u+Xp/i5OFT\np+Gzs0d2MxunxbC506pv/nDf3kW7rhuyJA/fKo3bhka8+Fz23YPrd31kffQ7IyJab1kTfv90\nmtfemr52SXT0gmkGySmgSes3V4S6n4sZNHni9sA13QPND4M+ePGEEOKZ5ZuK/IUTxQsPAEBZ\nkyzcDWXfC7Wf++jO7jNnO1S7+3/x1znNGk86Murg1SUtKwghhCntUQ/3s1Xn3TwxpmziAv86\nJXWOnaenZ+TBoyUSCShZ4f7VymxZ2XeFLIfns9vb2zs7OyuKEh8fb+ssefD29k5ISCiH59h5\neHjIsmwwGO7cuWPrLOYcHBz0en1iYqKtg+TB29s7v5csnWO38MvLFVu+m9PqhBA7V57V2tec\n+4jvP1PbT2vklXwhuoRyAgAAoOgsFbufUzIqtrt3bM6UeX3B38kegVOccn2pgFs91yzD6bym\nBgAAQJmyVOz0kpQad+8Q0u2zs5KNpnqvPZ57HMNlg6znBDsAAADbs1TsXvBxjNu9Nufpoam7\nhRDDns1d45SVP95w8Al5YFIAAACUNUvFbsSk5slxq9pHRMdevHps35I+O887eD3fz/fet4V+\nueiFrTdSm08YUPo5AQAAUABLtzsJDNs1MqbOuwuGPLTg7pBRK97JPr3uyIzwqZ/u2PPDRY+H\n+u54KbDUYwIAAKAgloqdJDsvOfBnu1Xv7Nr/S5aD71M9Rw9uVyP7pTObYj67IIJHzlq4YLyr\nzP2JAQAAbK+Ab56QNE7BYRODw8yHd/v+9B1PTz2NDgAAoNwooNjlx86r7L6sEwAAANawdPEE\nAAAA/kUodgAAACpBsQMAAFAJih0AAIBKUOwAAABUgmIHAACgEhQ7AAAAlaDYAQAAqATFDgAA\nQCUodgAAACpBsQMAAFAJih0AAIBKUOwAAABUgmIHAACgEhQ7AAAAlaDYAQAAqATFDgAAQCW0\ntg4AwFqzWjVJTEzMzMy0dRBzrq6umZmZBoPB1kHMOTk5OTg4GI3GhIQEW2cxJ8uyh4dHfHy8\noii2zmLOy8tLkqSUlJS0tDRbZwFQOOyxAwAAUAmKHQAAgEpQ7AAAAFSCYgcAAKASFDsAAACV\noNgBAACoBLc7Af41Ig8etXUElKxztg6Qn4sFjhHuX60McgAoLPbYAQAAqATFDgAAQCUodgAA\nACpBsQMAAFAJih0AAIBKUOwAAABUgmIHAACgEhQ7AAAAlaDYAQAAqATFDgAAQCUodgAAACpB\nsQMAAFAJih0AAIBKUOwAAABUgmIHAACgEhQ7AAAAlaDYAQAAqATFDgAAQCUodgAAACpBsQMA\nAFAJih0AAIBKUOwAAABUgmIHAACgEhQ7AAAAlaDYAQAAqATFDgAAQCW0tg4AG1CMyV9sjdm3\n/+eL1xIUnXP1gIe79Bvc2t89+9W+3bo+unTjy5WdrZxbZupv3XtHztqyvaGjzsJov32xZeue\nb09fvGrUOvpWqdumU+9ebQOzX0q5Epdi71vRQ5/nhBnJvy9/c9Wh2MvOfvX6hUe0qeGS52hH\nXh/wxqmEB4dv3/WRTir0SpVUeAAAyhLF7j9HMaUufX3kN9e9uvXs17eax51b1499++GC8cPv\nLF7TsYpTKS30wq7pk6N/fbrn4B5D6tqZUv789fuYxePPpL41uXNNIcT+qHF7mkctHuqf57Qb\nJsyODXjx7bEtTn8yb9Gkua03zZTyWYq9e9up454xG6jNb+wyCQ8AQFmi2P3nnFof+WWc+5tr\n59V1uruD7YmnnnEIe3HDnN0dl/Yq7NwUY5o1o63derxy26kv9wvKfhrYsEmg/nzEuvmi89IC\np/32yp1HI1v7uDu5du6Q8f7CJKPiJudd1jQ6nwYNGlgX3GRUNPnMpiTDAwBQlih2/zFK5sLd\n52sPeDun1QkhhKTtGfGS14k7ZuNm3P5jzbsxPxz/MynD5F25Toe+Y3q08st+qW+3rn1Xrr4W\n/dY3JxyiV3S9N0lS7LRRU9IeGbpwdIfcrSnVqKQnXMs98xpdRkbWui2EWDGw5ye30sRHES98\n89i2DeMfjPxiQ8/Nq74cPvXZT1ducqvTI79WZ6UBIcHtpo7+eeHyc4lGtwq1+0VMqR23Y8G6\nz64ZNLUaPzl1/FDXB+ZfnPAAAJQlit1/S3rit1czjJ1a+ZoNd/NvG/LAscS146YfdG39ypRB\nnnrjiW/WrpkX8eS2jd7auxfcHFg8Paj1gDkDagsRlz0kI/lk1KiphuZDzFqdEGJI14avb14y\neOzBJ1s2D2rUqF7dqnr7Os2aCSHE0NWbKo8M3dd08ltDAvLM3HbCpM0vvj585Can6h0WzH3R\nwtqZMm/ExsbmHqLRegTUrWg22s7ZHw4dNzOoguajBdOXTRjj2ejJcW8skG4emzpz5byDz894\nwnz8woY3Go2nT5/Oeeri4uLsXMRz++6tiIbrnFC+aLW2+feR/btgq6VbkB1MkqRymC2bLMuS\nVOxzU0qHRqMph9tNo9GUzzdUURQLr5a7uChVxvQ4IUQVvVUtoUKHnmOe7tzMTS+EqFLxhdUf\nzzifluXtfPcqgcQKw3o/00gIkZkaJ4TISDr5xrjp1+uHrny544NzD+gTtfih/V99f/jYF1s/\nWL9Ctndv2OKJHgP6N/Kxl7VarSQkWavVynkETvt75Zx56ZWbGC8dCQh+ylenST57/JK2VmCN\nPKpS2u2vxo//KvcQe8/ntr4XZjZa7aGTOjTzE0L0HO6/Z/yRaRMHVLeTRY3KId4x3/2eKB4o\ndoUNn5iY2L9//5ynYWFhw4YNy3crA/9O7u7uNly6Xl9+L1ey7ZaxwNXV1dYR8mVnZ2dnZ2fr\nFHkrh2+o0Wi08CrF7r9Fo68ghLiUYWp2/3DFmPT3pdtuflVzH+jsGtzh+OEDOy5eunbt2l9/\n/GQ2q0pPV839dEV4lMlek/LXeZMiNHl9Jqwe9MSgoCeEEIZbl375+fDube9PG3n07Q1Lqtnl\n0edycq0MH/9zpS6r3+6V/FP0S3Miatdc7bZifozL2DVRQQ+O7ejTa8uafhY3gBBCuNe7+9dN\n66TT6Hyq/xPAVdaIfD4GFSk8AABljWL332Ln9qSHdsX+/de6BlfPPTzh5NLRE394Y9P2h53v\nnntnyrw5Y8SoM871n32scf3m9dp1afPay9NzT+Loct8PT4VOEVO6yKEDZ83eFzy1w32dLyPp\nwPwl3w6OmFBRrxFCOHj6tWwf0uzxgO69J264kDzJP98PQxnJhz69lDL1zRAHjeTwyJApwadm\nRk50zEpqHFWlmNshlwJ2XhYhvJubW0xMTM5TFxeX27dvFzelRlOeP23jP6j4P9VF4+joKIRI\nTU21ydIt0Ov12dlstWUsc3d3T0pKMplMtg5izsXFRZbl9PR0g8Fg6yzm7OzsdDpdSkqKrYOY\nUxTFw8Mjv1cpdv8tksbhtWf8oja+efLpRYEu/xzLUIw7lv5m7/FUTqsTQqTErTl6I3Pdiinu\nsiSESE/8xvKce3ZvpnfUTetRd9KqqNNtVvo73NuVJesr/XT4sO7w9ddzHeU0GhKEEBWdLd36\nTpiyhBBXDFnCRS+EaBL6RsDeF08pvqMbehZqrYujCOFlWa5Xr17O09TU1OL/E+IcO5Q3WVlZ\nNlludjWx1dItyD4TS1GUcpgtm9FotHwIz4ZMJlM53G46na48v6H5odj95zR6aeZjv4+KDBsb\n3LNrw9oVM5Ov/vDp+19ezho4b3Du0XQudRXlwM79Jzo18L118fcPomOEEBev3m5Sx9dCxQjs\nPS1oz6D/zf0sOqpjzkDZvtbEzgGzFoY7XOzdol5NR21WwrWLe2I2utbqFFrJSQihkYThyqWE\nhIoeHvftlNK7PdbKc/GGSfNcR/TwFQnf7XzvrFzLX/w1/6MzU4LzuG/cgxdPCCHca/tX0hf9\ngGmRwwMAUPYodv85ktZj7NtLdm9Y//kn63fdTNLYu9YIeHjsm4Na13XLPZqDd0jUwOur1s/d\nnSrXqBvUd+JStwWjY8aNabZ5k4UTyyTZJXxaSP+IZRtPteoXcG+GLYbNnVZ984f79i7add2Q\nJXn4VmncNjTixeey7x5cv+sj66PfGRHResua8Pvnp3ntrelrl0RHL5hmkJwCmrR+c0Wo+7mY\nQZMnbg9c0z3Q/DDogxdPCCGeWb6pyF84UbzwAACUNcnyRbMAiqmkDsV6enpGHjxaIpGA4gv3\nr2aT5WbfPKgcnvZkb2/v7OysKEp8fLyts+TB29s7ISGhHB6K9fDwkGXZYDDcuWN+L1Wbc3Bw\n0Ov1iYmJtg6SB29v7/xe4sQdAAAAlaDYAQAAqATFDgAAQCUodgAAACpBsQMAAFAJih0AAIBK\nUOwAAABUgmIHAACgEhQ7AAAAlaDYAQAAqATFDgAAQCUodgAAACpBsQMAAFAJih0AAIBKUOwA\nAABUgmIHAACgEhQ7AAAAlaDYAQAAqATFDgAAQCUodgAAACpBsQMAAFAJih0AAIBKUOwAAABU\ngmIHAACgEhQ7AAAAlaDYAQAAqATFDgAAQCW0tg4AwFqzWjVJTEzMzMy0dRBzrq6umZmZBoPB\n1kHMOTk5OTg4GI3GhIQEW2cxJ8uyh4dHfHy8oii2zmLOy8tLkqSUlJS0tDRbZwFQOOyxAwAA\nUAmKHQAAgEpQ7AAAAFSCYgcAAKASFDsAAACVoNgBAACoBLc7Af41Ig8etXUElKxztg6Qn4uW\nXw73r1Y2OQAUFnvsAAAAVIJiBwAAoBIUOwAAAJWg2AEAAKgExQ4AAEAlKHYAAAAqQbEDAABQ\nCYodAACASlDsAAAAVIJiBwAAoBIUOwAAAJWg2AEAAKgExQ4AAEAlKHYAAAAqQbEDAABQCYod\nAACASlDsAAAAVIJiBwAAoBIUOwAAAJWg2AEAAKgExQ4AAEAlKHYAAAAqQbEDAABQCYodAACA\nSlDsAAAAVIJiBwAAoBIUO9w1pU+PLl26bL6aajb86JxhXbp0eWX92eynXbp0ib6WKoTo263r\nO5dTsgfmflxSchZUso5GDuqSS4+e/cZOW3T0qsH6OWSm/talS5ffUjNLPBsAAMWktXUAlCOS\nLH0dc7rP643vDVIy1hy9KUtSzoCOHTsGOpTFj03pLcjO7Ylp4zsKIYQw3b7+1+61G2e9evm9\njW+6yFIBUwIAUL5R7HBPhaca3fh+TYayWP9Pw0m5tOmyqPi4682L/4wzYsSIYi7FaFJkTR4V\nymx4YRZkMioa61uZRufToEGDf541CqqT2G/09m03DIMrOhY4rWJMszoVAABljUOxuMe1emhF\nU9ymuOScIafWH/BqPMQuV9+yfITUlBW/bdnsof17h/TsO2bi3C9PJuS8NCAkeNvfJ6aP7B/S\nLbjfwJcWv/+D5eH3FqRkdunSZevNe0dLc478DggJ3vDLF6+G9gwJ7hb6UsS+04lnv1o7YkCf\nkJ79ImavSjIq1qy1zsVXCHEryyiEyLj9x7LZE0N79wwO6TF09IQPDl7KWeLuGzfWzI0MHTg/\n97QZSbET+/cIX7LXqiUBAFDK2GOHXDR2Qx72Wr7u5MDJzYUQQsmIPnbz8UWBKZHWziBmwquf\npTcY9kpkVVfp5MHd70wIM777XvvKd/eE7Z40t23/MYMa+cUden9O9Byfp7b09nW0MNwaO2d/\nOHTczKAKmo8WTF82YYxnoyfHvbFAunls6syV8w4+P+OJihanVpJunNvx1vuS7Bjs7SiEWDtu\n+kHX1q9MGeSpN574Zu2aeRFPbtvordUIIQ4snh7UesCcAbWFiMueOCP5ZNSoqYbmQxaO7pB7\nd6HRaDx9+nTOUxcXF2dnZytXJz8aDZ/BUI5otTb73xZKH1cAACAASURBVJH9u2DDAPnJDiZJ\nUjnMlk2WZUkqpyecaDSacrjdNBpN+XxDFcXSzoRyFxe2FRj6eHz4qjRTM3uNlBy38bLk18/P\neYV106bF79xxJmn25rH1HbVCiNr+DbJ+7Ldl2R/tZzTLHsHp0YgB7YOEEFWDX/PbuP/kjTTh\n62hhuDVqD53UoZmfEKLncP89449Mmzigup0salQO8Y757vdEkVexM9zc0aXLjpynsn3F3mNn\n1bGXhRAVOvQc83TnZm56IUSVii+s/njG+bQsb2e9ECKxwrDezzQSQmSmxgkhMpJOvjFu+vX6\noStf7mjWuRITE/v375/zNCwsbNiwYVauDvCv4O7ubtsAer3etgEssPnGyY+rq6utI+TLzs7O\nzs7O1inyVg7fUKPRaOFVih3u41ylXxXNrvfOJw+v5Xpq/QGfpqN0Vn/AS4k7pijKxN4huQc6\nZcUJcbfYVWxXPWe4q6wR/3zkyG+4Ndzr3f1TpXXSaXQ+1e3kXPPJe0a5Lp4QWnsXv2pVXfR3\nu1nX4A7HDx/YcfHStWvX/vrjp9xTVXq6au6nK8KjTPaalL/OmxSR1xmDAADYAMUO95N0g5v6\nLF772/Dpzdf+Et/6LX/rJ9U66SXZadvW9bl7jiTJOY91DvKDU1kYng8lK9/mZ9XxyvsvnrjH\nlHlzxohRZ5zrP/tY4/rN67Xr0ua1l6fnvOroct8vS4VOEVO6yKEDZ83eFzy1w32dz93dfdeu\nXTlP9Xp9QkKCKB6NRuPm5lbMmQAlpfg/0kXm6OgohEhNLfl7IRWTnZ1ddjYbbhwLPDw8EhMT\nTSaTrYOYc3V1lWU5LS3NYCjEbafKhp2dnV6vT05OLnjUsqUoiqenZ36vUuxgzj+0za3Rq69c\nOHVFqt67spP1EzpWeFaYftxzIzP47kl1SvSUCYltXgl/pnLxU6X80+bSEr5NM5XKtQopcWuO\n3shct2KKuywJIdITv7Ewcs/uzfSOumk96k5aFXW6zUr/XN1Uo9H4+fnlPE1NTS3+PyHLZ1QA\nZczykaBSlf27YMMA+cnuTIqilMNs2UwmU7nNVj63m6Io5TOYZZyRDXNOFXvX0iZOX/C5T4tB\n2sIcZNS7NBva2GvD+Bl79x85/9epnSsmfBwb37alT3EDSboAR93+pR/8een6hZNH3p68spTO\n/9W51FWUrJ37T1y/ee3k0a/mRa4TQly8etvCJ9zA3tOC7BP/N/ez0sgDAEBhUezwAEke9Ijv\npQt3nnyxbmEn7Tx1Ue9WztuWz31twvQv//J8bc7CICdd8RNNfuOlygnfjR81bMy4NxIC+z/q\nUgLzfJCDd0jUwE6H188dOXrc6g9/6TRxabs63jHjxsSl5/txTZJdwqeF3Dy6bOOpxNKIBABA\noUgc4sG/haJk3E4RHi7l92q4PJXIoViNRuPp6Rl58GiJRAKKKdy/mq0WnX3zoJSUEv4Ow+Kz\n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"
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "#Top 10 start stations for casual riders\n",
    "all_trips_v3 %>%\n",
    "  group_by(member_casual, start_station_name, start_station_id) %>%\n",
    "  summarise(number_of_rides = n(), .groups = \"drop\") %>%\n",
    "  filter(member_casual == \"casual\") %>%\n",
    "  filter(!start_station_name == \"\") %>%\n",
    "  arrange(desc(number_of_rides)) %>%\n",
    "  head(10) %>%\n",
    "  ggplot(aes(x = reorder(start_station_name, number_of_rides), y = number_of_rides, fill = member_casual)) +\n",
    "  geom_bar(stat = \"identity\", fill = \"cadetblue3\") +\n",
    "  coord_flip() +\n",
    "  labs(title = \"Top 10 Start Stations for Casual Riders\", \n",
    "       x = \"Start Station\", \n",
    "       y = \"Number of Rides\",\n",
    "       fill = \"User Type\")"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 41,
   "id": "b2defae3",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-16T13:02:29.316934Z",
     "iopub.status.busy": "2023-05-16T13:02:29.313314Z",
     "iopub.status.idle": "2023-05-16T13:02:29.951874Z",
     "shell.execute_reply": "2023-05-16T13:02:29.949941Z"
    },
    "papermill": {
     "duration": 0.691671,
     "end_time": "2023-05-16T13:02:29.954950",
     "exception": false,
     "start_time": "2023-05-16T13:02:29.263279",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "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\nMiIU4wAAAABJRU5ErkJggg=="
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "#Top 10 end stations for casual riders\n",
    "all_trips_v3 %>%\n",
    "  group_by(member_casual, end_station_name, end_station_id) %>%\n",
    "  summarise(number_of_rides = n(), .groups = \"drop\") %>%\n",
    "  filter(member_casual == \"casual\") %>%\n",
    "  filter(!end_station_name == \"\") %>%\n",
    "  arrange(desc(number_of_rides)) %>%\n",
    "  head(10) %>%\n",
    "  ggplot(aes(x = reorder(end_station_name, number_of_rides), y = number_of_rides, fill = member_casual)) +\n",
    "  geom_bar(stat = \"identity\", fill = \"cadetblue3\") +\n",
    "  coord_flip() +\n",
    "  labs(title = \"Top 10 End Stations for Casual Riders\", \n",
    "       x = \"Start Station\", \n",
    "       y = \"Number of Rides\", \n",
    "       fill = \"User Type\")"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 42,
   "id": "a909b814",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-16T13:02:30.059155Z",
     "iopub.status.busy": "2023-05-16T13:02:30.057333Z",
     "iopub.status.idle": "2023-05-16T13:02:30.786688Z",
     "shell.execute_reply": "2023-05-16T13:02:30.784425Z"
    },
    "papermill": {
     "duration": 0.7872,
     "end_time": "2023-05-16T13:02:30.789974",
     "exception": false,
     "start_time": "2023-05-16T13:02:30.002774",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "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\n7v5i+R710pJObrqSZB/fPbxnt0Hb01dLuvZx69at98WmWs2RWxZN79ejc7uOXQePDfv6VPQ9\nTgoAgEKr0J2xS43/5+RJrYiI1XLj/JHwvTdfGBqa/uoP86fUaBgyI6SsiG3x0JH7UoMHvj2h\nuEvqD9uXzhrxts+a8IouWhFZMWrKAc+GQyb29tZZjn23Ytn7I57bss5HoicPnnrRv96AYZO9\nrFHbl87dF5lsD02Nmhff+cl2kdoicnjvNY1WffSLy9KvvCXln31xqa06lFoxqn/WDZZs39y0\nc/GRhH613J1E5MjSQ17BfQN0mqyTajxm3IbuIwe8sd6t1Euzw7rne/rZzstXq/5vZ/7TKF/n\ng/dY5PUfI9Js2r71/d11Pfx1X3y76lSXMbVF5Il+tT4au+5yaqviOo2InFm7x8W3VUODbtWI\nt3ebqvYfMj7QU3XqwM55Y163LFz5YnFX+9aSk5PPnz+fvnGj0ajX5/Mkq1qttubvnQBEtNpH\n93NErVbb92iz2R7ZTnOi0Wge5dyzUqvVKpXKUTWYzWaH7Bd3VeiCXfTxJaNH31l0LfZUjZJu\n6YuxRfp3blpdRJKub/jqYsLbK8Y956MXkXJVKh/v2iP80wtzOgWJSJGXOg5u0rKuQSciJYp2\nWPrZ1PMpZuuJj06n6D8IGx6k14hIhUounbpPs2+2WJMXUlcv+j0xrbpL2o7I5M4dS3+y5wfp\nVz7+whaVxrNLcfc92W2wrvHlOu7LNuy9WqtFoNUcufRUzFNhT2adkSXl3yUz3jcVr2259EuF\nts/7O6nj/zp6SRtUsbR7Xqef7bx83XUZO5OpUSL3VKSIfLHmjHuJbmX0GhGX3hW8Zh2OSLEt\n1KtUXuX7eWv2Lv8jakIdP7GlLTt0o9LgVimRSjS5YQAAF5NJREFU2z85Ezd9w/AqrloRKVu+\nqvmnbhsXnXhxal371s6ePRsSEpK+8dDQ0JYtW2a733thyvc7gULPy8vrEe/RYDA84j1mS6/X\n5/v3yQfo0fffLjIy0iH7xV0VumBXpP60iHHV7F+b4iO/3ThtxtDBYWsjKrhoRaRYk0D7S7En\njmqcAxr73PpPq1K7tivmunD/FekUJCJt2r509NAPn1y4dO3atbMnfravc2PfJb3xRXuqExGd\nR7067k72A19vfKmsPmL7yZhyJf9ncirTptkL6zetiDL3urjtT4/Abm4aVbYbFJEuTYtN2PqV\ntOgXdXRJorZ432DPLBOyLRk6+nCx1ks/7BT/8/LXZowoW2apIXzWGo/hy0Jr5HX6OZWRsTNZ\nF++hSEmNP7zjZnL5PqUvXLggIp5NSlr+OLLibNzAsgaVxqN/Fe+Fq36SOi3iL667kOYyob5/\nwokjNpttbOd2GTfiZr4oUjfrxgEAgF2hC3YZOXv4NOszcfHOXutPx7xT01dEXD1uNcRmk0w3\nIKrVKpvVIiLWtJtTBw46416lWYOaVZ6o9ELrRsPemiIios58Z5unVn37NxpV18rGj7b+db3u\nz+4l2+mNDYpol269mhj1R3TpgbVy3KBIYNvWKdsXHEsK+XPZsSJPjdJn2UVq/MEvLiVMmtnO\nRa1yebLvxLan3x0/1tUcVzO0RF6nn0sZGTuTdfGuRYrIxV3rbDbb6WWhb2YYPLTst4HTG4lI\ntb5Pxb+95nray+dX7PeuOsDfSR3jplNp3LZsXp1xWyrVnSu85cqV27FjR/qiTqeLjs7nTXhu\nbm53XwlADvL9Xy8f1Gq1wWCIiYlx7KVYg8GgVquTk5NTUlIcWIazs7NOp4uPj7/7qg/B43A1\nHNkq1MFORKxpkVabTZflnjCvSpUtpi37ok0Njc4iYrMmb7+U6NcqQEQSLi779UbaqvCJXhqV\niJhiv7O/xb9hQMr3e86l2K82iiXlrx/jTEVvb7Bclypxk7b8Fn21RNfyotJ0LOG+ddu+y/Gp\n02r5JFycne0GRURvfKGee/jKPQfOXUzo9U757CZgFpEryWbx0IlI7Z7vVPiy+2mb/5vVvPM6\n/ZzmdVd3L1Jk/af/epTqtW7+nTNwP07pF3ZkabS5oVGr8igZEui0a9mxS2ePRj4/t5aIuBZp\nJtafdt1Ia3vrpjrb8oljYhsNGdr01qMeOp0uICAgfWvx8fEmUz4vqPLtCbgfFks2D0s97D0+\nDv9trVbro597RjabzWazObYGPIYK3VOxqfH/nLzt95/3fxQ6ReNcok+Wq4euRbo2Le62cHTY\n978cP3vytzXvDT9t9nrtlVIi4uRRzmYzb//+2PWb1079+s3741eJyIWrMd413yjvnDRx3Nwf\nj5w89duPH44L9XC+kxc9g7qrTX+vuZLYtIZRRCq3KXH5f8ucDc9VddXmtEH7Hf2dmgWcWTFX\n7fFUK1+XrNPRGRo87a1fO+79vb8cP/nL/iWTB/+lCSqvjZz16Zm8Tj/3MnKXe5EpNz/7KT71\n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\n1SrP0t1+vhCXU1UAHj0uxQIoqFRa71VfjLWk/N2m6+p8vF2t9cm4qFWJs5/xzsbVTpnWN1Zr\n/5/19cEtvPVJ175PifrCYrP9Mbtexs+Qc/ZqJCKxf8Smr69zr+nvlP233JToL0UkqGeZjIPu\ngT1F5Mruq/c+o9qhRzJ+f0+MvLRlertfN73XMGRP1pWvf39eRDrX9s04WLZ3rVsl3W1SGufA\nr2b0sP27oV4przLVn+722rDwjV9FPdrHUABkxcedACjA/OpOXNZmeZ/t/UIPtWqb65o26/1m\njqyPpGpVolI7i1onItVGLX+/cfFMKzgb7nz4iErtlkt12exOpRUR231EJVfv4u3Hbnl+ptvB\n3R+KNMv0qlqrFpFMN/up9bej7T1MquGoVdd7jd2+fed3+/b/sGfl+og5w4bW337s2xd89Pmu\nGcB94owdgIKt+9pPy7k4zWzR46Y506eI/Gfx2uH7/WsKUce2/2frpvOfRaZ4BjXRezfXqFTm\nmArNMmjSsFRMTIyqtOu9bFlvbCYi59adzziYcHGNiBRpUuT+qlY39XJOSz6d9QW/Z8uIyMbf\nIjMOXv3651sl3W1SaQmnDx06dNEzuPNrIxav3f7HuagTu6YkXT04ZMKR+ysYwH0h2AEo2Jzc\nqn0R0S45cnf7VX+lD7pq1ClRn99Mu/XIbErkwTe+uXSfO0q4vHDc52dvL1nWj2iTYLG2mdlA\nqw8Orex9Zk3I11eT0lfeMKhNly5dLtzbt1gX31fb+bmeCu/7441bHxdiM0fN6LZUpXae1DLw\nPsvWqFQW05Ws477VZ/jrNLtDhpxONNtHUmN/HzDqV/vXd51U4rVF9evX7/jenRhXuu4TImK+\nvTUADsGlWAAFXtlu64e9978Pjt05+dS6R/l33v25RuOeo7o3Trt6auUHH17z1cnF+8oczn76\n91pXPtatzxNlPY58u3nb3vOBzaZ+9FQREXl718KI8t1eLlv1lc6t65TzPvbNpjV7/qzWa00P\n/3s6YyeiXvTZxN0Nxj9Xtk5I31fKuCfv/WTFVyeiG4//uomX8/3ULCKlXLQ2a8z+uNRnPHUZ\nxzX6Mntmtavx1pZaZZ7q0f0lf7m2c+Wa2Ppd5cvl9hVyn5Sh9DtN/ZZ8PbVh87O961cJssac\n3750ucbJJ3R6rfssGMB9cdRTGwCQDxmfis0o4fLHHhq13H4q1mpJXDCsS4VSRZ1UKhEJaNBz\n/4GX5b9PxTp7Nsi4BaNWXfKlPemLcRfelf8+Fdtw3a9LJ/evWaaoXqvzK1mtz4SIWLM1ff2Y\n01++3rZRUS93nat3xZrPTI74Iu3Oi7bl5b31Xk1yn9rl/es6v1DPx9NFq/coW/v5d1Z8m/7S\nPT4Vm+nhCbvfptcRkXJdN9gX05+KtTu4btrztYLcnbUevoGvDloQn3BCbn/cyV0nlXT1h8Gd\nmpb09dSqNR4+JRq17bvtyM3c5wjgYVPZbDzEBECxrKa4izfMJUt4O7oQAHgUCHYAAAAKwcMT\nAAAACkGwAwAAUAiCHQAAgEIQ7AAAABSCYAcAAKAQBDsAAACFINgBAAAoBMEOAABAIQh2AAAA\nCkGwAwAAUAiCHQAAgEIQ7AAAABTi/yGG5T8Fl/VcAAAAAElFTkSuQmCC"
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "#Top 10 start stations for member riders\n",
    "all_trips_v3 %>%\n",
    "  group_by(member_casual, start_station_name, start_station_id) %>%\n",
    "  summarise(number_of_rides = n(), .groups = \"drop\") %>%\n",
    "  filter(member_casual == \"member\") %>%\n",
    "  filter(!start_station_id == \"\") %>%\n",
    "  arrange(desc(number_of_rides)) %>%\n",
    "  head(10) %>%\n",
    "  ggplot(aes(x = reorder(start_station_name, number_of_rides), y = number_of_rides, fill = member_casual)) +\n",
    "  geom_bar(stat = \"identity\") +\n",
    "  coord_flip() +\n",
    "  labs(title = \"Top 10 Start Stations for Member Riders\", \n",
    "       x = \"Start Station\", \n",
    "       y = \"Number of Rides\", \n",
    "       fill = \"User Type\")"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 43,
   "id": "69bd43c7",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-05-16T13:02:30.898086Z",
     "iopub.status.busy": "2023-05-16T13:02:30.896070Z",
     "iopub.status.idle": "2023-05-16T13:02:31.715712Z",
     "shell.execute_reply": "2023-05-16T13:02:31.713325Z"
    },
    "papermill": {
     "duration": 0.8752,
     "end_time": "2023-05-16T13:02:31.718668",
     "exception": false,
     "start_time": "2023-05-16T13:02:30.843468",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "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\n5nHmJadSSJVMrqZOoVf34onTp0+P+yrVEVHCH92MTErywC4AAACAb6CUvVsV5FvHzozH4egb\nVW3de+yld1m5a9OfnR3fp101E5GOnqFT3Va/rDuizNN3o6OR2G5pdsrfA36qKdAxTFeU4DEN\ncat/YDAYKxPzXkuqbC3mC8x9iUiXxWy69kb4OA9jPV0Oi2tStZb3lFXvZHknL6a2MqHufXFV\nivTw8UM3n7zy/tOT43O8in/G4Ncs66oAAAAACraso1vAyVctew/r6Vc1Lf7K2vWrfj4Xn5y4\nj8OgDy/2uTn3imdY9h881N6YdePPXSEjOu27sPH65kG53ZXyJB+39u+bDZy/YiyfWYIda7b9\n5jBH/7xu4Z0xyxvnLEl7GnoqJevHNVNy3saFdxh7922bnj6Naohunt0ds2j0iYvxCedCc3YK\nqlPbt1M32F2f/dPY8Ks13Ns4iOJ+v5jQvounDmXdOX2KYdhydezmMiwIAAAAoDDyzAeTT76o\n2n73ye1eOUu8hD902fjX3neZvU34i9v6xTPsz8RfczfKuX72132T6nYLGzxvVrfptgY57SXP\n56WsuHJidL2STq0jajXWUrBuy2xafjhnyaWgSAZTZ9mAj1dXpNx5OXZX3PIeTkREqtCN/nV9\n1y70OzNuYwsLIlKntm+n7qHYaSvvGNWe++DC78fOxdnw2D+GR+/bf/Tmo9/NMy6lW+iVVTUA\nAAAARWAw+VwGpcTtvfJckrPEfeFfb9++7W3Cl2fcmXM3yWnk5k/JiYioY/ByItqx5kGeIXSi\nh7uVbvZh0+tkJh2JfPWBiFTKD+MPxhvVXlBf8PFSWb0qAz+mOiJisAcu/U2XxTw+9QIRqVvb\nN1M32J1Lk9r08SAiBksw0FT31LX3RMQ3bRE9yGZuj/VlWBAAAABAYVg6VY8vGKh6vr2Rtah6\nnab9h01cF3s8Sa4ioqykowqV6taSRow8dEQtiCj1VmruCFyBmylH3fyTj23fOUwGY+Xye0T0\n7saUuAxZ22W9c9eKHPvlbczm2Xcy5EmenVa/tm+n7qFYMZshk8hyXje20tu5P5G62hCRtZdV\nyoalRFPKsCYAAAD43jA5TCJSyQu4mkEpVRIRl/HxfLjmUza/GTR1375Df549/9eJTdvWL504\nocm+26fdmVwicpkStaiVRb4RdAw+76JjMEt/pFHHoOV4K8HayF9pwa4/Juxn61Rb0czs82pG\n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"
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "#Top 10 end stations for member riders\n",
    "all_trips_v3 %>%\n",
    "  group_by(member_casual, end_station_name, end_station_id) %>%\n",
    "  summarise(number_of_rides = n(), .groups = \"drop\") %>%\n",
    "  filter(member_casual == \"member\") %>%\n",
    "  filter(!end_station_name == \"\") %>%\n",
    "  arrange(desc(number_of_rides)) %>%\n",
    "  head(10) %>%\n",
    "  ggplot(aes(x = reorder(end_station_name, number_of_rides), y = number_of_rides, fill = member_casual)) +\n",
    "  geom_bar(stat = \"identity\") +\n",
    "  coord_flip() +\n",
    "  labs(title = \"Top 10 End Stations for Member Riders\", \n",
    "       x = \"Start Station\", \n",
    "       y = \"Number of Rides\", \n",
    "       fill = \"User Type\")"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "75f5ed9b",
   "metadata": {
    "_cell_guid": "df3b782d-5733-4122-93c7-41474e3d565b",
    "_uuid": "db856d75-6b45-46ed-bda4-b61d54698002",
    "papermill": {
     "duration": 0.056703,
     "end_time": "2023-05-16T13:02:31.832371",
     "exception": false,
     "start_time": "2023-05-16T13:02:31.775668",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**Conclusion:**\n",
    "\n",
    "1. **User Segmentation:** Cyclistic's user base can be segmented into two main groups: casual riders and annual members. Casual riders are individuals who purchase single-ride or full-day passes, while annual members are customers who opt for annual memberships. Annual members are more profitable for Cyclistic, and maximizing their number is crucial for the company's future success.\n",
    "\n",
    "2. **Usage Patterns:** Annual members exhibit more frequent and regular usage patterns compared to casual riders. They tend to use Cyclistic bikes for commuting purposes and are more likely to ride on weekdays. Casual riders, on the other hand, show a higher inclination to use the service for leisure and weekend rides.\n",
    "\n",
    "3. **Bike Preference:** Both casual riders and annual members show a preference for electric bikes and classic bikes over docked bikes. This preference could be attributed to the ease of use, comfort, and the ability to cover longer distances with electric bikes. Understanding this preference can help Cyclistic optimize their bike fleet and ensure the availability of preferred bike types.\n",
    "\n",
    "4. **Ride Frequency:** The bike-sharing service experiences higher ride frequencies on weekdays compared to weekends, indicating that it is commonly used for commuting or regular daily activities. Ride frequency also tends to be higher during the warmer months, suggesting that weather conditions impact the demand for bike rides.\n",
    "\n",
    "5. **Ride Duration:** Average ride durations remain relatively consistent throughout the week and across different months, implying that riders have consistent ride durations regardless of the day or season. This information can help in managing resources and estimating ride times for users.\n",
    "\n",
    "6. **Ride Distance:** Most rides have distances below a certain threshold, indicating that the majority of riders tend to take shorter rides. This suggests that the bike-sharing service is utilized for short-distance commuting, leisurely rides within a limited area, or quick errands."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "29f38ea7",
   "metadata": {
    "papermill": {
     "duration": 0.054529,
     "end_time": "2023-05-16T13:02:31.942784",
     "exception": false,
     "start_time": "2023-05-16T13:02:31.888255",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**Recommendation:**\n",
    "\n",
    "1. **Targeted Marketing Campaigns:** Design and implement targeted marketing campaigns aimed at converting casual riders into annual members. Utilize digital media platforms, such as email and social media, to highlight the benefits of annual memberships, such as cost savings, convenience, and access to exclusive features. Tailor the messaging and incentives to address the specific needs and motivations of casual riders, showcasing the value proposition of becoming an annual member.\n",
    "\n",
    "2. **Optimize Bike Fleet:** Based on the preference for electric bikes and classic bikes, optimize the bike fleet by ensuring an adequate supply of these preferred bike types. Conduct regular maintenance and inspections to keep the bikes in good condition, prioritize repairs for the preferred bike types, and consider expanding the fleet of electric bikes to meet the demand. By providing the preferred bike options, Cyclistic can enhance customer satisfaction and attract more riders.\n",
    "\n",
    "3. **Spatial Expansion and Station Optimization:** Conduct spatial analysis to identify areas with high ride demand, popular routes, and underutilized stations. Use these insights to guide spatial expansion plans, considering additional docking stations in high-demand areas and adjusting station capacities based on usage patterns. Optimize station distribution to ensure convenient access for riders and improve the overall user experience. Monitor and analyze station performance regularly to identify opportunities for expansion or relocation based on changing user behavior and demand."
   ]
  }
 ],
 "metadata": {
  "kernelspec": {
   "display_name": "R",
   "language": "R",
   "name": "ir"
  },
  "language_info": {
   "codemirror_mode": "r",
   "file_extension": ".r",
   "mimetype": "text/x-r-source",
   "name": "R",
   "pygments_lexer": "r",
   "version": "4.0.5"
  },
  "papermill": {
   "default_parameters": {},
   "duration": 328.392976,
   "end_time": "2023-05-16T13:02:32.727509",
   "environment_variables": {},
   "exception": null,
   "input_path": "__notebook__.ipynb",
   "output_path": "__notebook__.ipynb",
   "parameters": {},
   "start_time": "2023-05-16T12:57:04.334533",
   "version": "2.4.0"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
