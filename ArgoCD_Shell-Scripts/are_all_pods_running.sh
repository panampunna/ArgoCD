
#!/bin/bash

# Function to check if all pods are in Running state
are_all_pods_running() {
  # Get the count of pods that are not in the Running state
  non_running_pods=$(kubectl get pods -A --no-headers | awk '{print $4}' | grep -v "Running" | wc -l)
  # If the count is 0, then all pods are running
  if [ "$non_running_pods" -eq 0 ]; then
    return 0
  else
    return 1
  fi
}

# Check the status of the pods every 10 seconds until all are running
while ! are_all_pods_running; do
  echo "Waiting for all pods to be in Running state..."
  sleep 10
done

echo "All pods are in Running state!"

