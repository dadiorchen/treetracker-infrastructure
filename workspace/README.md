# cloud workspace for quick development on projects


## How to do web map client development in the cloud

1. Create a new workspace by script, specify the project name, for example, `web-map-client`, the script will create a pod running kasm with desktop, and a persistent volume for the project.

2. Open the workspace in the browser, open vscode in the desktop, and open the project folder in vscode, then you can start development.

3. When finished the development, commit the changes to the repository, and then stop the workspace.


## How to do query-api server development in the cloud

1. Create a new workspace by script, specify the project name, for example, `query-api`, the script will create a pod running kasm with desktop, and a persistent volume for the project, also, the script will create a pod running postgresql for the database.

2. Open the workspace in the browser, open vscode in the desktop, and open the project folder in vscode, then you can start development.
