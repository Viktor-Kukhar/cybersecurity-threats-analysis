# Project Background
This project analyzes global cybersecurity threat data from 2015-2024, examining patterns in cyberattacks across different countries, industries, and attack vectors. As a data analyst working in the cybersecurity intelligence division, I've investigated how cyber threats have evolved over this decade-long period, focusing on financial impacts, attack frequency, and defensive measures. The analysis covers key business metrics including total financial losses ($151.5 billion), number of affected users (1.51 billion), attack frequency trends, and incident resolution effectiveness across 3,000 documented cybersecurity incidents.

Insights and recommendations are provided on the following key areas:

- **Attack Evolution & Trends:** Analysis of how different attack types have changed in frequency and impact over the 2015-2024 period
- **Geographic Risk Assessment:** Identification of countries with highest financial losses and vulnerability patterns
- **Industry Vulnerability Analysis:** Examination of which sectors face the greatest cybersecurity risks and attack frequencies
- **Attack Source Intelligence:** Investigation of threat actors and their preferred methods, from nation-states to hacker groups

The SQL queries used to inspect and analyze the data for this analysis can be found in the `cybersecurity_project.sql` file.

An interactive Tableau dashboard used to report and explore cybersecurity trends can be found here [Cybersecurity Threats Analysis Dashboard](https://public.tableau.com/app/profile/viktor.kukhar/viz/Cybersecurity_17538803089120/Dashboard).

# Data Structure & Initial Checks

The cybersecurity threat database consists of a single comprehensive table with a total of 3,000 incident records spanning 2015-2024. A description of each column is as follows:

- **Country:** Geographic location where the cyberattack occurred
- **Year:** Year of the incident (2015-2024)
- **Attack Type:** Classification of attack method (DDoS, Malware, Phishing, Ransomware, etc.)
- **Target Industry:** Sector targeted by the attack (Banking, Healthcare, Government, IT, etc.)
- **Financial Loss (in Million $):** Economic impact of the incident in millions USD
- **Number of Affected Users:** Count of individuals impacted by the breach
- **Attack Source:** Origin classification of the threat actor (Nation-state, Hacker Group, Insider, Unknown)
- **Security Vulnerability Type:** Technical weakness exploited in the attack
- **Defense Mechanism Used:** Security measures employed to mitigate the incident
- **Incident Resolution Time (in Hours):** Duration required to resolve the security incident

<img width="1347" height="611" alt="Screenshot 2025-07-30 at 15 04 20" src="https://github.com/user-attachments/assets/e42faf25-b9c6-4693-b3ff-e328202723bd" />

# Executive Summary

### Overview of Findings

The analysis reveals that cybersecurity threats have maintained consistently high levels throughout 2015-2024, with nation-state actors causing the most significant financial damage while DDoS and malware attacks remain the most frequent threat vectors. Financial losses have reached $151.5 billion across all incidents, with an average of over $50 million per attack, indicating that while attack frequency has stabilized, the financial impact per incident continues to escalate. The data shows that banking, healthcare, and government sectors face the highest risk profiles, with Man-in-the-Middle attacks affecting the largest number of users on average, suggesting that threat actors are increasingly targeting high-value, high-impact vulnerabilities rather than pursuing volume-based attack strategies.

<img width="1204" height="804" alt="Screenshot 2025-07-30 at 15 24 31" src="https://github.com/user-attachments/assets/5782a0bd-88ee-4f44-bd36-68b851c27269" />

# Insights Deep Dive
### Attack Evolution & Trends:

* **Attack frequency shows significant year-to-year variation, ranging from 263 to 319 incidents annually.** After peaking at 319 attacks in 2017, incident numbers have fluctuated considerably, dropping to 263 in 2019 before recovering to the 299-318 range in recent years, suggesting evolving threat landscapes and defensive capabilities rather than a stable trend.

* **DDoS and phishing attacks consistently represent the largest attack categories year-over-year.** Throughout the analysis period, DDoS and phishing attacks have maintained their positions as the most frequent attack types, comprising roughly 18-20% of all incidents annually each, indicating their continued effectiveness and low barrier to entry for threat actors.

* **Malware and ransomware attacks show more targeted, strategic patterns.** While these attacks are less frequent than DDoS and phishing, they demonstrate more focused targeting approaches, suggesting different operational calendars and higher-value targeting strategies between these attack types.

* **Man-in-the-Middle attacks, while less frequent, consistently affect the highest number of users per incident.** These attacks average over 500,000 affected users per incident, nearly double that of other attack types, highlighting their potential for mass impact despite lower overall frequency.

<img width="1301" height="691" alt="Screenshot 2025-07-30 at 14 52 55" src="https://github.com/user-attachments/assets/f44549da-4d39-47f1-b40a-de4f55c754be" />

<img width="1297" height="691" alt="Screenshot 2025-07-30 at 14 45 44" src="https://github.com/user-attachments/assets/f7dbebba-dd7f-4d39-855e-3d89f3902529" />

### Geographic Risk Assessment:

* **Germany leads in average financial loss per attack at $54.3 million per incident.** This exceeds other major targets including Australia ($51.9M), USA ($51.6M), UK ($51.4M), and Brazil ($50.9M), indicating either more sophisticated attacks or higher-value targets being successfully compromised in German incidents.

* **The UK, Brazil, and India represent the highest-volume attack targets.** These countries lead in total attack frequency with the UK experiencing 321 attacks, Brazil 310 attacks, and India 308 attacks, reflecting both their expanding digital economies and evolving cybersecurity threat landscapes.

* **Brazil and India show emerging patterns as significant targets with substantial financial impacts.** With losses of $31M and $47M respectively, these countries represent growing cybersecurity concerns as their digital economies expand and attract more sophisticated threat actors.

* **Incident resolution times vary significantly by country, ranging from highly efficient to problematic.** Some countries demonstrate sub-24-hour average resolution times while others exceed 48 hours, indicating substantial differences in cybersecurity response capabilities and infrastructure maturity.

<img width="1293" height="689" alt="Screenshot 2025-07-30 at 14 43 58" src="https://github.com/user-attachments/assets/cbebd93d-8d89-4004-adf3-29805c271440" />

### Industry Vulnerability Analysis:

* **IT, banking, and healthcare sectors face the highest attack frequencies.** These three industries lead as the most targeted sectors with IT experiencing 478 attacks, banking 445 attacks, and healthcare 429 attacks, reflecting both their high-value data assets and critical infrastructure importance.

* **Healthcare incidents show disproportionately high user impact relative to frequency.** While healthcare may not lead in total attack numbers, incidents in this sector tend to affect significantly more individuals per attack, indicating successful breaches of large-scale patient databases and systems.

* **IT and telecommunications industries experience more frequent but lower-impact incidents.** These sectors show higher attack volumes but generally lower per-incident financial losses, suggesting more robust defensive measures or attacks focused on service disruption rather than data theft.

* **Retail and education sectors demonstrate seasonal attack patterns.** These industries show notable spikes during specific periods, likely correlating with high-traffic seasons (holiday shopping, academic year cycles) when systems are under greater stress and potentially more vulnerable.

<img width="1299" height="696" alt="Screenshot 2025-07-30 at 15 23 35" src="https://github.com/user-attachments/assets/66f907a3-01b4-413f-b3c4-20df3272690a" />

### Attack Source Intelligence:

* **Nation-state actors cause the highest total financial damage at over $40 million in aggregate losses.** These sophisticated threat actors consistently execute high-impact attacks with substantial economic consequences, reflecting their advanced capabilities and strategic targeting approaches.

* **Unknown attack sources represent a significant intelligence gap, causing over $30 million in losses.** The substantial financial impact from unattributed attacks highlights critical challenges in threat attribution and the need for improved forensic capabilities and international cooperation.

* **Insider threats, while less frequent, demonstrate concerning financial impact potential.** Despite lower overall numbers, insider-originated attacks show substantial per-incident damage, indicating the particular risk posed by authorized users with legitimate system access.

* **Hacker groups show more consistent attack patterns compared to nation-state actors.** While nation-states may focus on strategic, high-value targets intermittently, criminal hacker groups demonstrate more regular operational patterns, suggesting different motivational structures and operational constraints.

<img width="1296" height="426" alt="Screenshot 2025-07-30 at 14 52 08" src="https://github.com/user-attachments/assets/c21250eb-d157-4121-85fd-6415df895a17" />

# Recommendations:

Based on the insights and findings above, I would recommend the cybersecurity leadership team to consider the following: 

* Nation-state actors consistently cause the highest financial damage per incident, averaging significantly more than other threat sources. **Implement enhanced monitoring and threat intelligence capabilities specifically focused on advanced persistent threat (APT) detection and nation-state attack patterns.**

* Man-in-the-Middle attacks affect dramatically more users per incident than any other attack type, creating massive breach exposure. **Prioritize implementation of end-to-end encryption and certificate pinning across all user-facing applications and services.**

* Banking, healthcare, and government sectors face disproportionately high attack frequencies, indicating systemic vulnerabilities in critical infrastructure. **Establish sector-specific threat sharing programs and mandatory security frameworks tailored to each industry's unique risk profile.**

* Germany shows the highest average financial loss per attack at $54.3 million per incident, significantly exceeding other major targets like Australia ($51.9M) and the USA ($51.6M). **Develop enhanced threat intelligence and incident response protocols specifically for high-value target environments, focusing on the sophisticated attack vectors that enable such substantial financial impacts.**

* Attack frequency shows significant variability rather than a clear plateau, with numbers ranging from 263 attacks in 2019 to 319 attacks in 2017, but financial impact per incident continues to escalate. **Shift security investment from volume-based detection to high-impact incident prevention and sophisticated attack mitigation capabilities.**

# Assumptions and Caveats:

Throughout the analysis, multiple assumptions were made to manage challenges with the data. These assumptions and caveats are noted below:

* Financial loss amounts are reported in USD millions and may not account for long-term indirect costs, regulatory fines, or reputational damage that often exceed immediate technical remediation costs.

* Attack attribution to specific sources (Nation-state, Hacker Group, etc.) relies on initial incident classification and may not reflect subsequent forensic discoveries or attribution changes that occurred after the reporting period.

* The dataset represents documented and reported incidents only, and may not include classified attacks, unreported breaches, or incidents where organizations chose not to disclose details publicly, potentially underrepresenting the true scale of cybersecurity threats.
