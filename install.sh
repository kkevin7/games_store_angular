cd server
npm init --yes
npm i express morgan promise-mysql cors
npm install -g typescript
npm i nodemon -D
#Decirle a servidor que sera una dependencia de desarrollo
npm i  @types/express -D
#Install the moduludes fro typescript so that can reconize in the server
npm i @types/morgan @types/cors -D
#Downgrade de la version de mysql-promise
npm i promise-mysql@3.3.1 