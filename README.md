# CSE 340 Course Repository

A web application for the CSE 340 Service Network that connects volunteers with service opportunities.

## Getting Started

1. Install dependencies:

```bash
npm install
```

2. Set up the database by running `src/setup.sql` in pgAdmin.

3. Configure the database connection in a `.env` file (see `.env` file for required variables).

4. Start the server:

```bash
npm run dev
```

5. Open in your browser:

- **Home:** http://127.0.0.1:3000/
- **Organizations:** http://127.0.0.1:3000/organizations
- **Organization Details:** http://127.0.0.1:3000/organization/:id
- **Projects:** http://127.0.0.1:3000/projects
- **Project Details:** http://127.0.0.1:3000/project/:id
- **Categories:** http://127.0.0.1:3000/categories
- **Category Details:** http://127.0.0.1:3000/category/:id

## Project Structure

```text
cse340-course-repo/
├── public/
│   ├── css/
│   └── images/
├── src/
│   ├── controllers/
│   │   ├── index.js
│   │   ├── organizations.js
│   │   ├── projects.js
│   │   ├── categories.js
│   │   └── errors.js
│   ├── models/
│   │   ├── db.js
│   │   ├── organizations.js
│   │   ├── projects.js
│   │   └── categories.js
│   ├── views/
│   │   ├── partials/
│   │   │   ├── header.ejs
│   │   │   └── footer.ejs
│   │   ├── errors/
│   │   │   ├── 404.ejs
│   │   │   └── 500.ejs
│   │   ├── home.ejs
│   │   ├── organizations.ejs
│   │   ├── organization.ejs
│   │   ├── projects.ejs
│   │   ├── project.ejs
│   │   ├── categories.ejs
│   │   └── category.ejs
│   ├── routes.js
│   └── setup.sql
├── server.js
├── nodemon.json
├── package.json
└── README.md
```

## Technologies

- Node.js
- Express.js
- EJS (Embedded JavaScript templating)
- PostgreSQL

## Architecture

The application follows the **Model-View-Controller (MVC)** pattern:

- **Models** (`src/models/`) — Handle database queries and data access
- **Views** (`src/views/`) — EJS templates for rendering HTML
- **Controllers** (`src/controllers/`) — Business logic that connects models and views
- **Routes** (`src/routes.js`) — Define URL mappings to controller functions

## Middleware

The application uses the following custom middleware:

- **Request logging** — Logs `METHOD URL` for every request in development mode
- **NODE_ENV** — Makes the environment variable available to all templates
- **Catch-all 404** — Handles unmatched routes with a custom 404 error page
- **Global error handler** — Catches all errors and renders appropriate error pages