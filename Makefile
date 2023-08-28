BUCKET:=S3バケットを指定

.PHONY: build
build:
	sam build -t template.yaml

.PHONY: deploy
deploy: build
	sam deploy --stack-name ProvidedAL2Sample --capabilities CAPABILITY_IAM --s3-bucket $(BUCKET)

.PHONY: delete
delete: delete
	sam delete --stack-name ProvidedAL2Sample
