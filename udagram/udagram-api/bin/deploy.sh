eb init udagram-api --region us-east-1 --platform node.js 
# cat .elasticbeanstalk/config.yml 
eb use udagram-api-dev --profile default
eb deploy --profile default

    # "deploy": "npm run build && eb list && eb use udagram-api-dev && eb deploy",
