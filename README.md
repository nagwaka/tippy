# Tippy - Tip Calculator

## Project Overview

Tippy is a web-based tip calculator that's used for effortless managing of tips. It features an Admin Dashboard to track all past calculations.

## Table of Contents

- [Setup and Installation](#setup-and-installation)
- [Usage Instructions](#usage-instructions)
- [Approach to Solving the Challenge](#approach-to-solving-the-challenge)
- [Contributing](#contributing)
- [License](#license)

## Setup and Installation

Follow these steps to set up the application on your local machine:

### 1. Clone the Repository
```
git clone <git@github.com:nagwaka/tippy.git>
cd tip-calculator
```

### 2. Install Dependencies
Ensure you have Ruby and Bundler installed, then install the necessary gems:
```
bundle install
```

### 3. Configure the Environment
Create a .env file from the provided .env.example file and configure the database settings:
``` 
cp .env.example .env
```
Update the .env file with your PostgreSQL credentials:
### Example
```
POSTGRES_USERNAME=your_postgres_username
POSTGRES_PASSWORD=your_postgres_password
DEVELOPMENT_DATABASE_NAME=tip_calculator_development
TEST_DATABASE_NAME=tip_calculator_test
```
### 4. Set Up the Database
Run the following commands to create and migrate the database:
```
rails db:create
rails db:migrate
```

### 5. Start the Rails Server
To start the application, run:
```
rails server
```
Open your browser and navigate to http://localhost:3000.

## Usage Instructions
### 1. Core Functionality: Tip Calculator
The Tip Calculator allows users to calculate tips based on their bill, tip percentage, and the number of people splitting the bill.
#### How to Use the Tip Calculator:
* Enter the Bill Amount
* Enter Tip Percentage
* Enter Number of People – Specify the number of people splitting the bill.
* Click "Calculate."
The application will display:
* The tip amount.
* The total bill (including the tip).
* The per-person amount if the bill is split among multiple people.

### 2. Admin Dashboard
The Admin Dashboard provides a comprehensive view of all past tip calculations.

#### Accessing the Admin Dashboard:
* Log in as an Admin. Enter your admin credentials and if you don't have an account, sign up before logging 
* Navigate to the Dashboard and view a list of all past calculations.

#### Dashboard Features:
* Bill Amount – The total bill entered by the user.
* Tip Percentage – The percentage of the tip.
* Tip Amount – The calculated tip amount.
* Total Bill – The sum of the bill and tip.
* Number of People – The number of people sharing the bill.
* Per-Person Amount – The amount each person needs to pay.
* Timestamp – The date and time when the calculation was made.

## Approach to Solving the Challenge
### 1. Familiarization with the Frontend Mentor Tip Calculator
Before diving into the project, the first step was to thoroughly understand the functionality of the Frontend Mentor Tip Calculator:

#### Core Features:
* Input for the bill amount, tip percentage, and number of people.
* Calculation of the tip amount and total bill based on user inputs.
* User-friendly and responsive interface.

This understanding helped in planning and implementing the core functionality accurately in a Ruby on Rails environment.

## 2. Planning
The first step was to outline the key components of the project based on the challenge requirements:
* Core Functionality: Implement a tip calculator with fields for the bill amount, tip percentage, and number of people.
* Admin Dashboard: Provide a secure, paginated dashboard for admins to view past tip calculations.

### The project stack was selected as:
* Backend: Ruby on Rails for handling calculations, data persistence, and admin authentication
* Frontend: Bootstrap for responsive UI design.
* Database: PostgreSQL to store calculation records.

## 3. Development
### Tip Calculator:
* Controller: The TipCalculatorController handles the logic for calculating the tip, total bill, and per-person amount.
* Views: The tip calculator form allows users to enter inputs and view the calculated results dynamically.
* Database: Each calculation is saved to the PostgreSQL database to ensure admins can review them later.

### Admin Dashboard:
* Authentication: Admin authentication was implemented using the Devise gem, securing access to the dashboard.
* Pagination: The Kaminari gem was used to paginate past calculations, ensuring the dashboard remains performant with large datasets.

## 4. Challenges and Solutions
* Styling Conflicts: Initially, Tailwind CSS was used but faced integration issues. Switching to Bootstrap resolved styling conflicts and improved UI consistency.
* Custom Tip Input: Implementing a dynamic form to show a custom tip input required 
* Data Persistence: Ensuring all tip calculations, even for non-logged-in users, are saved and displayed correctly in the admin dashboard.

## Contributing
I welcome contributions to enhance and improve the Tip Calculator project. If you have suggestions for new features, improvements, or bug fixes, please follow these steps:
### 1. Fork the Repository:
Click the "Fork" button at the top right of the repository page.

### 2. Clone the Forked Repository:
```
git clone git@github.com:nagwaka/tippy.git
cd tip-calculator

```
### 3. Create a New Branch:
```
git checkout -b feature/your-feature-name
```

### 4. Make Your Changes:
Implement the desired feature, improvement, or fix.

### 5. Test Your Changes:
Run the application and ensure your changes work as expected.

### 6. Commit and Push Your Changes:
```
git add .
git commit -m "Add feature: your-feature-name"
git push origin feature/your-feature-name
```

### 7. Open a Pull Request:
Go to the original repository and open a pull request. Provide a detailed description of your changes.

## License
This project is licensed under the MIT License. You are free to use, modify, and distribute this software under the terms of the license.
