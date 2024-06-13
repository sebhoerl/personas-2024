set -e

mkdir -p output/scenarios

scp bullx:/scratch/sebastian.horl/personas/scenarios/*_persons.csv output/scenarios
scp bullx:/scratch/sebastian.horl/personas/scenarios/*_households.csv output/scenarios
