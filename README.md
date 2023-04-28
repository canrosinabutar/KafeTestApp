REST API for a cafe with entities like **Menu**, **SubMenu** and **Dish**.

The API is written in FastAPI using ORM **SqlAlchemy**.
**Required prefix for all requests _/api/v1_**

---

### Launch of the project:
- install Docker/Docker-Compose on your PC


- Execute commands one by one
   - `docker-compose up -d`
- After that, the application is launched and available in the browser at the link http://127.0.0.1:8000/docs
- API - http://127.0.0.1:8000/api/v1/menus


- To run tests (app/tests)
   - `docker-compose -f docker-compose.tests.yml up -d`

We can see the results of the tests in the logs of the container called `test_api` using the command
- `docker logs test_api`

### Generation of records in the database for exporting the .xlsx file
- **POST** request with empty body to - `http://127.0.0.1:8000/api/v1/fill_db`

### URL for creating tasks in Celery
- **POST** request with empty body to - `http://127.0.0.1:8000/api/v1/report/xlsx`
- **GET** request with task_id in request URL - `http://127.0.0.1:8000/api/v1/report/xlsx/{task_id}`
- **GET** request with filename to - `http://127.0.0.1:8000/api/v1/report/xlsx/download/f/{file_name}`

### URL for main menu requests:
- GET /menus - get all menus
- POST /menus - menu creation
- GET /menus/{menu_id} - detailed information about a specific menu
- PATCH /menus/{menu_id} - update a specific menu
- DELETE /menus/{menu_id} - delete a specific menu

**Additionally, the response to GET requests contains the number of all submenus and dishes**
-submenus_count
- dishes_count

### URL for submenu requests:
- GET /menus/{menu_id}/submenus - get all submenus of a specific menu
- POST /menus/{menu_id}/submenus - create a submenu
- GET /menus/{menu_id}/submenus/{submenu_id} - detailed information about a specific submenu
- PATCH /menus/{menu_id}/submenus/{submenu_id} - update a specific submenu
- DELETE /menus/{menu_id}/submenus/{submenu_id} - delete a specific submenu

**Additionally, the response to GET requests contains the number of all dishes**
- dishes_count

### URL for dish requests:
- GET /menus/{menu_id}/submenus/{submenu_id}/dishes - get all dishes
- POST /menus/{menu_id}/submenus/{submenu_id}/dishes - create a dish
- GET /menus/{menu_id}/submenus/{submenu_id}/dishes/{dish_id} - detailed information about a particular dish
- PATCH /menus/{menu_id}/submenus/{submenu_id}/dishes/{dish_id} - update a specific dish
- DELETE /menus/{menu_id}/submenus/{submenu_id}/dishes/{dish_id} - delete a specific dishREST API for a cafe with entities like **Menu**, **SubMenu** and **Dish**.

The API is written in FastAPI using ORM **SqlAlchemy**.
**Required prefix for all requests _/api/v1_**

---

### Launch of the project:
- install Docker/Docker-Compose on your PC


- Execute commands one by one
   - `docker-compose up -d`
- After that, the application is launched and available in the browser at the link http://127.0.0.1:8000/docs
- API - http://127.0.0.1:8000/api/v1/menus


- To run tests (app/tests)
   - `docker-compose -f docker-compose.tests.yml up -d`

We can see the results of the tests in the logs of the container called `test_api` using the command
- `docker logs test_api`

### Generation of records in the database for exporting the .xlsx file
- **POST** request with empty body to - `http://127.0.0.1:8000/api/v1/fill_db`

### URL for creating tasks in Celery
- **POST** request with empty body to - `http://127.0.0.1:8000/api/v1/report/xlsx`
- **GET** request with task_id in request URL - `http://127.0.0.1:8000/api/v1/report/xlsx/{task_id}`
- **GET** request with filename to - `http://127.0.0.1:8000/api/v1/report/xlsx/download/f/{file_name}`

### URL for main menu requests:
- GET /menus - get all menus
- POST /menus - menu creation
- GET /menus/{menu_id} - detailed information about a specific menu
- PATCH /menus/{menu_id} - update a specific menu
- DELETE /menus/{menu_id} - delete a specific menu

**Additionally, the response to GET requests contains the number of all submenus and dishes**
-submenus_count
- dishes_count

### URL for submenu requests:
- GET /menus/{menu_id}/submenus - get all submenus of a specific menu
- POST /menus/{menu_id}/submenus - create a submenu
- GET /menus/{menu_id}/submenus/{submenu_id} - detailed information about a specific submenu
- PATCH /menus/{menu_id}/submenus/{submenu_id} - update a specific submenu
- DELETE /menus/{menu_id}/submenus/{submenu_id} - delete a specific submenu

**Additionally, the response to GET requests contains the number of all dishes**
- dishes_count

### URL for dish requests:
- GET /menus/{menu_id}/submenus/{submenu_id}/dishes - get all dishes
- POST /menus/{menu_id}/submenus/{submenu_id}/dishes - create a dish
- GET /menus/{menu_id}/submenus/{submenu_id}/dishes/{dish_id} - detailed information about a particular dish
- PATCH /menus/{menu_id}/submenus/{submenu_id}/dishes/{dish_id} - update a specific dish
- DELETE /menus/{menu_id}/submenus/{submenu_id}/dishes/{dish_id} - delete a specific dish
