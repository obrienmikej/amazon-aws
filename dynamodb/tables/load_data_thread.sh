#!/bin/bash

aws dynamodb batch-write-item --request-items file://data_thread.json
