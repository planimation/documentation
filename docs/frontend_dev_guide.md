# Frontend - Javascript




## 1. Getting started

This section of the development guide provides an overview of how to get started with the Frontend-JS project, setting up the development environment, and running the application locally.

###  Prerequisites
Before you start, ensure you have the following installed on your system:

**Node.js**: A JavaScript runtime built on Chrome's V8 JavaScript engine. The project requires Node.js version 18.x or higher. You can download it from Node.js official website.
**npm**: Node Package Manager, comes with Node.js, used for managing dependencies.
**Git**: Version control system to clone the repository. Download from Git's official site.


###  Clone the repo
First, clone the Frontend-JS repository from GitHub:
 ```
 git clone https://github.com/planimation/Frontend-JS.git
 cd Frontend-JS
 ```


###  Installing Dependencies
**After cloning the repository, Change the scripts of package.json based on your system. the project's dependencies.** 

- For Window system, change the scripts content of package.json

        "scripts": {
          "start": "set NODE_OPTIONS=--openssl-legacy-provider&& node scripts/start.js",
          "build": "set NODE_OPTIONS=--openssl-legacy-provider&& node scripts/build.js",
          "test": "jest"
        }

- For Linux/ubuntu system, change the scripts content of package.json

     ```
     "scripts": {
            "start": "NODE_OPTIONS=--openssl-legacy-provider node scripts/start.js ",
            "build": "NODE_OPTIONS=--openssl-legacy-provider node scripts/build.js",
        "test": "jest"
      }
     ```
     
     

**Run the following command in the project directory to install dependencies:**

```
npm install
```


###  Running the Application locally
To start the development server and run the application locally, use:
```
npm start
```
This command will start a development server and open the application in your default web browser. The development server typically runs on http://localhost:3000.


## 2. Architecture Overview


### Directory Structure
```
Frontend-JS/
│
├── src/                      # Source files for the application
│   ├── components/           # Reusable components
│   │   ├── alertInFormat.jsx # Alert component for error messages
│   │   └── navigationBar/    # Navigation bar component
│   │   └── Template/    # Navigation bar component
│   ├── pages/                # Components representing entire pages
│   │   ├── HomePage/         # 
│   │   ├── PageOne/          # Upload domain, problem, ap file to get animation of a plan.
│   │   │   ├── dropAndFetch.jsx  # Manages file upload and backend communication
│   │   │   └── dropAndFetch.test.jsx      # The test file of dropAndFetch
│   │   │   └── dropZone.jsx      # Drop zone component for file input
│   │   │   └── dropZone.test.jsx      # the test file of dropZone
│   │   │   └── DragUpload.jsx      # New file uploader with lots of api.
│   │   │   └── DemoCards.jsx      # Shows all the animation demos by a card grid.
│   │   │   └── DemoCard.jsx      # A card component displays all the infomation of a animations.
│   │   ├── PageTwo/          # Options to upload VFG directly
│   │   ├── PageThree/        # User Manual
│   │   ├── PageFour/         # Process VFG and display visualizaton
│   │   └── PageFive/         # Handle messages received from the plugin
│   │   └── Test/        		
│   ├── plugin/
│   └── Styles/
│   └── tests/
│
├── public/                   # Static assets
│
├── scripts/                  # 
│
├── config/                   # Project configuration files
│   └── webpack.config.js     # Webpack configuration
│
├── cypress/                  # 
│
└── package.json              # Project metadata and dependencies
```




## 3. Extensions

The animation samples gallery are connect to Github. Thus if you want to your animation profile can show your file correctly, you should follow following rules under [Animation profiles](../AnimationProfiles/README.md)
