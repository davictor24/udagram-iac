STACK_NAME=udagram-servers
REGION=us-east-2

echo "Deploying servers stack..."
if ! aws cloudformation describe-stacks --region $REGION --stack-name $STACK_NAME ; then
  echo "Creating servers stack..."
  aws cloudformation create-stack \
  --stack-name $STACK_NAME \
  --template-body file://stack.yml \
  --parameters file://parameters.json \
  --capabilities "CAPABILITY_IAM" "CAPABILITY_NAMED_IAM" \
  --region=$REGION
else
  echo "Updating servers stack..."
  aws cloudformation update-stack \
  --stack-name $STACK_NAME \
  --template-body file://stack.yml \
  --parameters file://parameters.json \
  --capabilities "CAPABILITY_IAM" "CAPABILITY_NAMED_IAM" \
  --region=$REGION
fi