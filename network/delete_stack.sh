STACK_NAME=udagram-network
REGION=us-east-2

echo "Deleting network stack..."
aws cloudformation delete-stack --stack-name $STACK_NAME --region=$REGION
echo "Network stack deleted"
