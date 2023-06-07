#!/bin/bash

echo "Attendi comando" &
process_id = $!
wait $process_id
echo "Uscito con stato $?"
