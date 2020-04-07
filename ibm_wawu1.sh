#!/bin/bash

# Watson Assistant credentials
username="XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX"
password="XXXXXXXXXXXX"
workspace_id="XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX"
wa_getway="https://gateway.watsonplatform.net/conversation/api/v1/workspaces"
wa_version="version=2018-02-16"
ct_json="Content-Type: application/json"

# Watson & cURL parameters
wa_getway="https://gateway.watsonplatform.net/conversation/api/v1/workspaces"
wa_version="version=2018-09-20"
ct_json="Content-Type: application/json"

# Read from json file modified
json_file="modified.json"
json="@${json_file}"

# Update workspace with json_data
curl -H "$ct_json" -X POST -u "${username}":"${password}" --data "${json}" "${wa_getway}/${workspace_id}?${wa_version}"