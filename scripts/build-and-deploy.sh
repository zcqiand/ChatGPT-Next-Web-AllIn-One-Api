version=main
name=chatgpt-next-web-allin-one-api
docker login --username=$1  --password=$2
docker stop $name
docker rm  $name -f
docker rmi zcqiand/$name:$version -f
docker pull zcqiand/$name:$version
docker run -d --restart=always --name $name \
	   -p 0.0.0.0:3001:3000 \
	   zcqiand/$name:$version
echo -e "---------deploy Success--------"
