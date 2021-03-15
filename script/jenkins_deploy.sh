#!/bin/sh -ex

# get next build number
export build_number=$( docker run --rm appropriate/curl -f -u $JENKINS_CI_USERNAME:$JENKINS_CI_API_KEY  https://jenkinsci.library.nyu.edu/job/Moloney%20Collection%20Deploy/api/json | jq .nextBuildNumber )
# trigger build
curl -f -u $JENKINS_CI_USERNAME:$JENKINS_CI_API_KEY -X POST https://jenkinsci.library.nyu.edu/job/Moloney%20Collection%20Deploy/buildWithParameters\?GIT_COMMIT\=$CIRCLE_SHA1\&DEPLOY_ENV\=$DEPLOY_ENV
# check build status until success
check_build_status_until_success() {
  result="no"
  until [[ "$result" == '"SUCCESS"' ]]
  do
    sleep 5
    result=$( docker run --rm appropriate/curl -f -u $JENKINS_CI_USERNAME:$JENKINS_CI_API_KEY https://jenkinsci.library.nyu.edu/job/Moloney%20Collection%20Deploy/$build_number/api/json | jq .result )
    echo $result
  done
}
export -f check_build_status_until_success
timeout --foreground 3m sh -c check_build_status_until_success
