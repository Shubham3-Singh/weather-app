# Weather Application

In this application you can simply login using your "Email" & "Password" after Signup, and then can check the weather of your desired place. This can be very helpful if you are planning to go on some outing by letting you know that place's current weather and help you plan accordingly.

# Table of Contents

- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Usage](#usage)

# Prerequisites

Before you begin, ensure you have met the following requirements:

- Ruby (version 2.7.2)
- Rails (version 6.1.7.6)
- MySQL (version 5.7.42)
- Yarn (version 1.22.19)

# Installation

1. Clone the repository:
   
    - git clone https://github.com/Shubham3-Singh/weather-app.git

2. Navigate to the project directory:
   
    - cd weather-app

3. Add rails gem (version 6.1.7.6) in Gemfile.
   
4. Bundle Install.
   
5. Install Yarn (version 1.22.19)
   
6. Create the database and run migrations:
    
    - rails db:create
    - rails db:migrate
      
   If **rails db** dosen't work try,

    - rake db:create
    - rake db:migrate
      
7. Start the Rails server:
    
     - rails server

8. Open your web browser and visit http://localhost:3000 to see the application.

# Usage
  Once you start your server & visit the http://localhost:3000 from your browser, you will be directed to a "Sign      Up" page where you need to sign-up using your "Email" & "Password". Post which you will be then directed to a        "Login" page where you can login using your email and password that you used for signup.

  After you have logged-in successfully our "Weather App" opens up where you can select your desired location and      check its current weather, once done you can then logout when needed. 
