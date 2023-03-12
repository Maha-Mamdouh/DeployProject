# Infrastructure description

## Diagram
below is a diagram to demonstrate overview of the infrastructure.
 ![Infrastructure description diagram](/Diagrams/infra.png)" 

## About AWS services
### **RDS**

A rational database created using Standard creating with Engine PostgreSQL 12,
Free tier template, with minimal size like db.t2.micro, Public access and Edited  security group's inbound rule to allow incoming connections from anywhere.

### **S3 buckets**

 To host the frontend files, a public s3 bucket created with ACLs enabled, policy as follows:

    {
        "Version": "2012-10-17",
        "Statement": [
            {
                "Sid": "PublicReadGetObject",
                "Effect": "Allow",
                "Principal": "*",
                "Action": [
                    "s3:GetObject"
                ],
                "Resource": [
                    "arn:aws:s3:::[BucketName]/*"
                ]
            }
        ]
    }

and cors policy:

    [
    {
        "AllowedHeaders": [
            "*",
            "Content-Type",
            "Authorization",
            "Access-Control-Allow-Origin",
            "Access-Control-Allow-Headers",
            "Access-Control-Allow-Methods"
        ],
        "AllowedMethods": [
            "POST",
            "GET",
            "PUT",
            "DELETE",
            "HEAD"
        ],
        "AllowedOrigins": [
            "*"
        ],
        "ExposeHeaders": []
    }
    ]


### **Elastic Beanstalk**

To deploy the api, a Elastic Beanstalk `EB` bucket created with some special environment properties. 