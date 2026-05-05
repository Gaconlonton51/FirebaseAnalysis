# Game Player Engagement Dashboard

This project analyzes player engagement data from a Firebase game dataset using **BigQuery** and **Power BI**.

The goal is to understand how players interact with the game across different countries and operating systems, based on metrics such as active players, sessions, completed levels, new installs, and revenue.

## Tools Used

- Google BigQuery
- Power BI

## The data covers the period from **August 1, 2018 to August 14, 2018**.

## Dashboard Overview

The Power BI dashboard includes two pages:

### 1. Overview

This page gives a high-level view of player activity, including:

- Active players
- Total sessions
- Completed levels
- New installs
- Daily active player trend
- Top countries by active players
- OS performance comparison

### 2. Country & OS Deep Dive

This page provides a more detailed breakdown of player engagement by country and operating system.

## Key Insights

- The United States had the largest active player base.
- Android generated more sessions and completed levels than iOS.
- Players completed multiple levels on average, showing a good level of engagement.
- Revenue was included as a supporting metric because only a few records contained revenue values.

## Limitations

This dataset is suitable for engagement analysis, but it does not include enough data to analyze win rate, loss rate, session duration, churn, or detailed gameplay difficulty.
