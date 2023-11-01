
#!/bin/bash

# Configurações do banco de dados
DB_USER="user"
DB_PASS="pass"
DB_NAME="database"
CSV_FILE="file.csv"
TABLE_NAME="table"

# Loop to read the csv file and insert the data into the database
IFS=";"

while read -r colunm1 colunm2 colunm3 colunm4 colunm5 colunm6
do
  mysql -u $DB_USER -p $DB_PASS -e "INSERT INTO $TABLE_NAME (fields, fields, fields and other) VALUES ('$field1', '$colunm2', '$colunm3', '$colunam', '$colunam', '$colunm6');"
done < $CSV_FILE
