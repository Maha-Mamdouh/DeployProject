eb init udagram-api --region us-east-1 --platform node.js 
# cat .elasticbeanstalk/config.yml 

eb setenv POSTGRES_USERNAME=$POSTGRES_USERNAME POSTGRES_PASSWORD=$myPasPOSTGRES_PASSWORDsword POSTGRES_HOST=$POSTGRES_HOST POSTGRES_DB=$POSTGRES_DB AWS_BUCKET=$AWS_BUCKET AWS_REGION=$AWS_REGION AWS_PROFILE=$AWS_PROFILE JWT_SECRET=$JWT_SECRET URL=http://localhost:8100

eb use udagram-api-dev --profile default
eb deploy --profile default

    # "deploy": "npm run build && eb list && eb use udagram-api-dev && eb deploy",
