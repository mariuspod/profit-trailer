PT_HOME=$1
PT_NAME=$2
PT_PORT=$3
docker rm -f $PT_NAME
docker run -d -p 127.0.0.1:$PT_PORT:8081 --name $PT_NAME -v "$PT_HOME:/app/ProfitTrailer" profit-trailer
docker logs -f $PT_NAME
