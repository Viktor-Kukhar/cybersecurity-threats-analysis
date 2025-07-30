-- Project: Cybersecurity Threats Analysis
-- Dataset: Global Cybersecurity Threats (2015-2024)
-- Source: https://www.kaggle.com/datasets/atharvasoundankar/global-cybersecurity-threats-2015-2024
-- Purpose: Analyze global cybersecurity threat patterns and financial impacts to identify key vulnerabilities, attack trends, and defense effectiveness across different countries, industries, and time periods from 2015-2024.
-- Author: [Viktor Kukhar]
-- Date: March 2025



-- What is the total number of attacks for each attack type per year?
SELECT `Year`, `Attack Type`, COUNT(`Attack Type`) num_attacks
FROM `Global_Cybersecurity_Threats_2015-2024`
GROUP BY `Year`, `Attack Type`
ORDER BY `Year`, num_attacks DESC;

-- Which country has the highest average financial loss per attack?
SELECT Country, AVG(`Financial Loss (in Million $)`) avg_loss
FROM `Global_Cybersecurity_Threats_2015-2024`
GROUP BY Country
ORDER BY avg_loss DESC
LIMIT 1;

-- For each target industry, what is the most frequent attack type?
SELECT `Target Industry`, `Attack Type`, RANK() OVER(PARTITION BY `Target Industry` ORDER BY COUNT(*) DESC) AS frequency_rank
FROM `Global_Cybersecurity_Threats_2015-2024`
GROUP BY `Target Industry`, `Attack Type`;

-- Is there a relationship between the security vulnerability type and the defense mechanism used?
SELECT `Security Vulnerability Type`, `Defense Mechanism Used`, COUNT(*) AS occurrences
FROM `Global_Cybersecurity_Threats_2015-2024`
GROUP BY `Security Vulnerability Type`, `Defense Mechanism Used`
ORDER BY occurrences DESC;

-- What is the average number of affected users for each attack type?
SELECT `Attack Type`, AVG(`Number of Affected Users`) AS avg_affected_users
FROM `Global_Cybersecurity_Threats_2015-2024`
GROUP BY `Attack Type`
ORDER BY avg_affected_users DESC;

-- What is the average incident resolution time for each country?
SELECT Country, AVG(`Incident Resolution Time (in Hours)`) AS resolution_time_hours
FROM `Global_Cybersecurity_Threats_2015-2024`
GROUP BY Country
ORDER BY resolution_time_hours;

-- Which attack source has caused the highest total financial loss?
SELECT `Attack Source`, SUM(`Financial Loss (in Million $)`) AS total_loss_millions
FROM `Global_Cybersecurity_Threats_2015-2024`
GROUP BY `Attack Source`
ORDER BY total_loss_millions DESC;

-- How does the average financial loss per attack differ between nation-state and hacker group sources?
SELECT `Attack Source`, AVG(`Financial Loss (in Million $)`) AS avg_loss_millions
FROM `Global_Cybersecurity_Threats_2015-2024`
WHERE `Attack Source` IN ('Nation-state', 'Hacker Group')
GROUP BY `Attack Source`;

-- For the top 3 most targeted industries, what is the yearly trend in the number of attacks?
WITH top_industries AS (
    SELECT `Target Industry`
    FROM `Global_Cybersecurity_Threats_2015-2024`
    GROUP BY `Target Industry`
    ORDER BY COUNT(*) DESC
    LIMIT 3
)
SELECT t1.`Target Industry`, t1.`Year`, COUNT(*) AS num_attacks
FROM `Global_Cybersecurity_Threats_2015-2024` AS t1
JOIN top_industries AS t2 ON t1.`Target Industry` = t2.`Target Industry`
GROUP BY t1.`Target Industry`, t1.`Year`
ORDER BY t1.`Target Industry`, t1.`Year`;

-- For each year, which attack type has the highest average number of affected users?
WITH ranked AS (
    SELECT `Year`, `Attack Type`, AVG(`Number of Affected Users`) AS avg_affected,
           RANK() OVER(PARTITION BY `Year` ORDER BY AVG(`Number of Affected Users`) DESC) AS rnk
    FROM `Global_Cybersecurity_Threats_2015-2024`
    GROUP BY `Year`, `Attack Type`
)
SELECT `Year`, `Attack Type`, avg_affected
FROM ranked
WHERE rnk = 1;