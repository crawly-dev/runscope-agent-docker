FROM ubuntu:18.04

RUN apt-get update && apt-get install wget unzip -y && \
    wget https://storage.googleapis.com/runscope-downloads/runscope-radar/latest/linux-amd64/runscope-radar.zip && \
    unzip runscope-radar.zip -d /usr/local/bin/ && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* runscope-radar.zip && \
    chmod +x /usr/local/bin/runscope-radar

CMD runscope-radar --api-host="${RUNSCOPE_API_HOST:-https://api.runscope.com}" \
    --logfile="${RUNSCOPE_LOGFILE:-/home/runscope.log}" \
    --timeout=${RUNSCOPE_TIMEOUT:-300} \
    --threads=${RUNSCOPE_THREADS:-1} \
    --disconnect-timeout=${RUNSCOPE_DISCONNECT_TIMEOUT:-5} \
    --agent-id="$RUNSCOPE_AGENT_ID" \
    --team-id="$RUNSCOPE_TEAM_ID" \
    --name="$RUNSCOPE_NAME" \
    --token="$RUNSCOPE_TOKEN"