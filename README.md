<!-- TABLE OF CONTENTS -->

# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
- [💻 Getting Started](#getting-started)
  - [Setup](#setup)
  - [Prerequisites](#prerequisites)
  - [Install](#install)
  - [Usage](#usage)
  - [Run tests](#run-tests)
  - [Deployment](#triangular_flag_on_post-deployment)
  - [API Documentation](#api-documentation)
- [👥 Authors](#authors)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [📝 License](#license)

<!-- PROJECT DESCRIPTION -->

# 📖 book_devs_api <a name="about-project"></a>

**book_devs_api** is a rails AP1 for book_devs_app.

## 🛠 Built With <a name="built-with"></a>

  - [Ruby](https://www.ruby-lang.org/en/)
  - [Ruby on Rails](https://rubyonrails.org/)
  - [PostgreSQL](https://www.postgresql.org/)
  - [RSpec](https://rspec.info/)

### Tech Stack <a name="tech-stack"></a>

<details>
  <summary>Client</summary>
  <ul>
    <li><a href="https://rubyonrails.org/">Ruby on Rails</a></li>
    <li><a href="https://www.ruby-lang.org/en/">Ruby</a></li>
  </ul>
</details>

<details>
  <summary>Server</summary>
  <ul>
    <li><a href="https://render.com/">Render</a></li>
  </ul>
</details>

<details>
<summary>Database</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>

<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>

To get a local copy up and running, follow these steps.

If you dont have Ruby installed on your computer, you can download it from [here](https://www.ruby-lang.org/en/downloads/).

If you dont have Rails installed on your computer, you can download it from [here](https://rubyonrails.org/).

If you dont have PostgreSQL installed on your computer, you can download it from [here](https://www.postgresql.org/download/).

### Prerequisites

- Ruby: v3.1.2
- Rails: v7.0.1
- PostgreSQL: v14.5

### Setup

If you have installed git you can clone the code to your machine, or download a ZIP of all the files directly.

[Download the ZIP from this location](https://github.com/gak92/book_devs_api/archive/refs/heads/main.zip), or run the following [git](https://git-scm.com/downloads) command to clone the files to your machine:

- [ ] Once the files are on your machine, open the _blog-app_ folder in your code editor.
Run the following command in your terminal to install the required gems and run the application:

- [ ] Open the config/database.yml file in the project directory and change the username and password to your PostgreSQL username and password.
Edit the default section of the file to look like this:
    
```
  default: &default
  adapter: postgresql
  encoding: unicode
  # For details on connection pooling, see Rails configuration guide
  # http://guides.rubyonrails.org/configuring.html#database-pooling
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
  username: <your PostgreSQL role username>
  password: <your PostgreSQL role password>

```

### Install

`NOTE:` _You may need to run this command in the project directory to install the required gems and run the application:_

```
bundle install
```

### Usage

To run the project, execute the following command:

1. Create the database with:

```sh
rails db:create
```

2. Run the migrations with:

```sh
rails db:migrate
```

3. Start the development server with:

```sh
rails server
```

4. Open the app in your browser at http://localhost:3000

### Run tests

To run tests, run the following command:

```sh
  bundle exec rspec
```

### Deployment

You can deploy this project using:

1. Deplay to Heroku

```sh
  git push heroku main
```

2. Or deploy to Render

```sh
  git push render main
```
<!-- how to use the api -->

###  API Documentation  <a name="api-documentation"></a>

- [ ] To get all greetings, send a GET request to the following URL:

```
  https://book_devs_app.herokuapp.com/api/v1/greetings.json
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 👥 Authors <a name="authors"></a>

👤 **Desmond Owusu Ansah**

- Github [@Owusu-Desmond](https://github.com/Owusu-Desmond)
- Twitter [@DesmondOwusuDev](https://twitter.com/DesmondOwusuDev)
- LinkedIn [@desmond-owusu-ansah](https://www.linkedin.com/in/desmond-owusu-ansah-09274a223/)
- Dev.to [desmondowusudev](https://dev.to/desmondowusudev)

👤 **Ghazanfar Ali**

- GitHub: [@gak92](https://github.com/gak92)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/ghazanfar-ali-9a4998a/)

👤 **Elisha Tetteyfio**

- GitHub: [@Elisha-Tetteyfio](https://github.com/Elisha-Tetteyfio)
- Twitter: [@Elisha](https://twitter.com/Nii_AlYasa)
- LinkedIn: [Elisha Tetteyfio](https://linkedin.com/in/elisha-tetteyfio)

👤 **Taheny BELGUITH** 

- GitHub: [@TahenyBELGUITH](https://github.com/TahenyBELGUITH) 
- Twitter: [@BelguithTaheny](https://twitter.com/BelguithTaheny) 
- LinkedIn: [belguith-taheny](https://www.linkedin.com/in/belguith-taheny/) 

👤 **Hamayoun Ali** 

- GitHub: [@Hamayounali](https://github.com/Hamayounali) 
- Twitter: [@hamayounAli6](https://twitter.com/hamayounAli6) 
- LinkedIn: [Humayoon Ali](https://www.linkedin.com/in/humayoon-ali-663ba2239) 


<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/gak92/book_devs_api/issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

> Write a message to encourage readers to support your project

If you like this project...

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>

I would like to thanks [Gregoire Vella on Behance](https://www.behance.net/gregoirevella) the author of the original design,


<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

_NOTE: we recommend using the [MIT license](https://choosealicense.com/licenses/mit/) - you can set it up quickly by [using templates available on GitHub](https://docs.github.com/en/communities/setting-up-your-project-for-healthy-contributions/adding-a-license-to-a-repository). You can also use [any other license](https://choosealicense.com/licenses/) if you wish._

<p align="right">(<a href="#readme-top">back to top</a>)</p>