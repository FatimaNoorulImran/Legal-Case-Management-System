<div align="center">

# ⚖️ Legal Case Management System

### A Relational Database Web Application for Streamlining Legal Workflows & Analytics

<br/>

![PHP](https://img.shields.io/badge/PHP-777BB4?style=for-the-badge&logo=php&logoColor=white)
![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white)
![JavaScript](https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black)
![Apache](https://img.shields.io/badge/Apache-D22128?style=for-the-badge&logo=apache&logoColor=white)

<br/>

> A responsive, full-stack relational database platform engineered to digitize law firm operations. The system features a highly optimized, state-managed PHP backend coupled with an asynchronous JavaScript user interface to manage, track, and update legal cases, clients, legal counsel assignments, hearings, and evidence trails in real time.

</div>

---

## 📋 Table of Contents
1. [Project Overview](#-project-overview)
2. [Core Architecture & Features](#-core-architecture--features)
3. [Database Relational Schema](#-database-relational-schema)
4. [Tech Stack](#-tech-stack)
5. [Directory Structure](#-directory-structure)
6. [Installation & Local Reproduction](#-installation--local-reproduction)

---

## 🎯 Project Overview

In traditional legal administration, manual documentation tracking can introduce data fragmentation, scheduling overlaps, and missing evidence links. 

This **Legal Case Management System** resolves these operational inefficiencies through a fully normalized database architecture. It features full CRUD (Create, Read, Update, Delete) capability across connected operational metrics, allowing an administrator or law firm to instantly view real-time counts, monitor upcoming hearings, isolate case categories, and examine distinct corporate firms or legal specializations from a single asynchronous interface.

---

## ⚡ Core Architecture & Features

* **Asynchronous Data Engine:** Utilizes JavaScript `Fetch API` protocols to execute backend requests to asynchronous PHP modules without triggering standard page-frame reloads.
* **Complex Data Synthesizers:** Features modular SQL queries with multi-table `INNER JOIN` operations to compile aggregated client-lawyer-case profiles instantly.
* **Prepared-Statement Security Matrix:** Leverages object-oriented MySQLi parameter binding to defend the application interface against structural exploits like SQL Injection.
* **Dynamic Search & Filtering:** Aggregates distinct categorical filters dynamically straight from live data indexes (e.g., pulling exact existing `CaseType` variations).
* **Live Server Adaptation:** Built with fully decoupled connection parameter components for rapid porting from development instances (XAMPP) to hosted cloud nodes (InfinityFree).

---

## 🗄️ Database Relational Schema

The relational backbone optimizes system metrics across 6 highly cohesive entities configured with strict relational integrity rules:

* **Client:** Houses individual customer profiles including unique identifier metrics (`cnic`) and physical communication records.
* **Lawyer:** Inventories corporate and independent legal advocates, mapping their specific areas of legal specialization and firm associations.
* **CaseInfo:** The central operational entity connecting an active case record (`CaseType`, `Status`) to both a specific `Client` and an assigned defensive `Lawyer` using tracking foreign keys.
* **Hearing:** Coordinates future and past litigation date sequences, tracking judicial outcomes tied directly back to parental `CaseInfo` rows via cascading pathways (`ON DELETE CASCADE`).
* **Witness:** Aggregates verbal statements and contact identifiers linked specifically to active legal briefs.
* **Evidence:** Categorizes specific physical or digital objects (`EvidenceType`) necessary to validate active court contentions.

---

## 🛠️ Tech Stack

* **Frontend Presentation:** HTML5, CSS3 (Custom Grid Layouts), Vanilla JavaScript (ES6 Modules & Fetch API)
* **Backend Core Architecture:** PHP (Procedural & Object-Oriented MySQLi Wrapper Scripting)
* **Database Engine:** MySQL (InnoDB Storage Engine with Cascading Relations)
* **Deployment Target:** Apache Web Server Configuration

---

## 📁 Directory Structure

```text
Legal-Case-Management-System/
│
├── css/
│   └── style.css                   # System dashboard global theme and component layout
│
├── js/
│   └── script.js                  # Async frontend controller managing state variations and fetch requests
│
├── database/
│   └── database_schema.sql         # Exported production relational SQL snapshot file
│
├── db.php                          # Core centralized relational database connection handler
├── index.php                       # Primary viewport landing page and system dashboard grid layout
├── server.php                      # Main state processing router handling analytics summaries and distinct actions
├── get_distinct_case_types.php     # Target specialized data handler separating unique case types
├── cases_crud.php                  # Dedicated transaction lifecycle operational pipeline for case data
└── client_crud.php                 # Transaction lifecycle operational pipeline for customer tracking profiles

```

---

## 🚀 Installation & Local Reproduction

To establish a local mirror copy of this platform within a development sandbox environment:

### 1. Replicate Project Repositories

Clone this repository directly to your target deployment index folder (such as your local server root, e.g., `C:/xampp/htdocs/`):

```bash
git clone [https://github.com/YourUsername/Legal-Case-Management-System.git](https://github.com/YourUsername/Legal-Case-Management-System.git)

```

### 2. Configure Your Database Runtime

1. Initialize your local server panel setup (e.g., launch **XAMPP Control Panel**).
2. Start both the **Apache HTTP Server** and **MySQL Database** server tasks.
3. Access your web database engine management screen via your browser (`http://localhost/phpmyadmin/`).
4. Generate an empty relational structural repository name called `legal_case_db`.
5. Select the **Import** tab window, choose the `database/database_schema.sql` file included within this project directory, and click **Go** to restore all tables, relationships, and 50 data items.

### 3. Synchronize Connection Credentials

Open the `db.php` script inside your project workspace directory and verify your database instance parameters are pointing to your local connection details:

```php
<?php
$servername = "localhost"; 
$username = "root";
$password = ""; // Input your local development engine instance password if active
$database = "legal_case_db";

$conn = new mysqli($servername, $username, $password, $database);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>

```

### 4. Execute the Application Instance

Launch your browser and load the development directory path index link:
`http://localhost/Legal-Case-Management-System/`

---

*Developed for academic evaluation in Advanced Database Management Systems.*
