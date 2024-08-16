#! /bin/bash

echo "Deleting pipelines and pipeline runs referring to filenet..."

oc delete pipeline,pipelinerun -l "app=filenet"

echo "Applying pipeline..."

oc apply -f pipeline.yaml

echo "Creating pipeline run..."

oc create -f pipeline_run.yaml

echo "Starting pipeline run..."
