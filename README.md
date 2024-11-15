# Spotify Festival Artist Recommendation System

## Description

This project analyzes Spotify's playlist and artist data across different countries to curate artist lineups for region-specific music festivals.

## Business Case

Spotify's goal is to host regional music festivals tailored to the unique musical tastes of major markets worldwide to target its promotional efforts more effectively. 

We are hired to identify the most popular playlists in each country, the artists that frequent the playlists the most and the top genres.  

The top genres will be use to create "vibe" stages. Each stage will represent a genre. 

Each "vibe" will be used to inform design and marketing departments which will feature the top artists that fit local preferences.

Spotify intends to use this first round of Spotichellas to test the concept and will hold its festivals in the country with the largest number of users within each region. 

## Research Questions
1)What are the top playlists in each target country?
2)Which artists are most frequently featured in the top playlists across these categories and countries?
3)What are the most popular genres in each country?

## Research Objectives
- Identify top playlist categories for a country in each of the following regions: 
North America, 
South America, 
Western Europe, 
Northern Europe, 
Southern Europe, 
Eastern Europe, 
North Africa, 
Sub-Saharan Africa, 
Oceania, 
East Asia, 
Southeast Asia, 
South Asia, 
Middle Eastern 
and determine the most popular artists within the top playlists. To recommend lists of artists that fit the vibe of each stage.

## Methodology
1)Entity-Relationship Diagram (ERD) Design:
Developed a ERD to define key entities, relationships, and data requirements.

2)Data Extraction with Spotify API and Spotipy:
Utilized Spotify's API using the Spotipy library, handled data constraints to retrieve relevant data, adhering to API usage policies.

3)Database Schema Design and Implementation
Designed a normalized database schema in MySQL based on the ERD, defining primary and foreign keys, data types, and constraints to enforce data integrity.

4)Data Wrangling and Transformation:
Used Pandas to clean and structure the extracted data, ensuring consistency and alignment with the  schema. Exported data to CSV files.

5)Database Seeding:
Seeded the MySQL database with CSV data using the MySQL import wizard.,

6)Data Analysis with SQL and Python:
Conducted analysis using SQL queries and Python, and using Pandas and visualization libraries to find trends and insights.

## Dataset
Data was wrangled from the Spotify API. Cleaned, formatted, and standardized, ensuring consistency for meaningful analysis using Python.

## Data Sources
- **Spotify API**: Provides data on playlists, tracks, artists and countries.

## Database Structure
(Original)
- **festival**: Infomation on name, stages, artists and countries.
- **stage**: Includes name, artists and vibe.
- **artists**: Contains artist information (ID, name, popularity).
- **track**: Lists tracks associated with playlists, artists and popularity.
- **country**: Maps countries to regions.
- **playlists**: Stores playlist data (ID, name, vibe, country, popularity).
(Downsized)
- **festival**: artist name, country code
- **artists**: artist id, name, popularity, genre
- **country**: artist id, name

## Libraries and Tools Used
- Juypter
- dotenv
- os
- Spotipy
- pycountry
- pandas
- matplotlib.pyplot
- seaborn
- numpy
- mySQL
- mysql.connector

## Visualizations
*Refer to the figures folder*
- **Top Genres by Country**: Identifies the popular genres to base the "vibe" of each stage on.

## Recommendations
*Refer to Festival Posters folder*
Converted findings of the most popular genres of each country along with their associated most popular artists to assist in curating Spotichella's stage and artist lineups.

## Links
Trello:
https://trello.com/b/y3JZk54Q/groupprojectweek4

Entity relationship diagram (ERD):
https://drawsql.app/teams/ironhack-18/diagrams/spotify

## Sources
https://developer.spotify.com/

## Presentation Slides
https://www.canva.com/design/DAGWXoVRRKk/5qxkgFPxD9MEfRQ5TcA0_Q/edit?utm_content=DAGWXoVRRKk&utm_campaign=designshare&utm_medium=link2&utm_source=sharebutton