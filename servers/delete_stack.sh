STACK_NAME=udagram-servers
REGION=us-east-2

echo "Deleting servers stack..."
aws cloudformation delete-stack --stack-name $STACK_NAME --region=$REGION