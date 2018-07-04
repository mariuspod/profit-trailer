PT_HOME=$1
PT_NAME=$2
PT_PORT=$3
docker rm -f $PT_NAME
docker run -d -p $PT_PORT:8081 --name $PT_NAME -v "$PT_HOME:/app/ProfitTrailer" profit_trailer
docker logs -f $PT_NAME
