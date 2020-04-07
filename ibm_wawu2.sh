#!/bin/bash

# Watson Assistant credentials
username="26566e3b-8630-4a12-9d54-aa57d210969a"
password="QVta02fhcqbd"
workspace_id="f406439f-7f4b-41dd-bf14-e0bbed381b3d"
wa_getway="https://gateway.watsonplatform.net/conversation/api/v1/workspaces"
wa_version="version=2018-02-16"
ct_json="Content-Type: application/json"

# Other parameters
wa_getway="https://gateway.watsonplatform.net/conversation/api/v1/workspaces"
wa_version="version=2018-09-20"
ct_json="Content-Type: application/json"

# Read from json file modified
json_file="NipuWebTest.json"
json="@${json_file}"

# Update workspace with json_data
curl -H "$ct_json" -X POST -u "${username}":"${password}" --data "${json}" "${wa_getway}/${workspace_id}?${wa_version}"