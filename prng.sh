#! /bin/bash

prng_service="./prng-service.txt"
while [ true ]
do 
    sleep 3s
    _run=$(cat $prng_service)
    if [ "$_run" == "run" ]; then
        echo -n > $prng_service
        sleep 3s
        echo -n $(( $RANDOM % 30 + 1 )) > $prng_service
    fi
done

exit 0