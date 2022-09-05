#!/bin/sh
#

/opt/softwareag/common/lib/ant/bin/ant -f /var/lib/jenkins/workspace/ContinousDeliveryJob/Packages/SDISTestSuiteExecutor/run-composite-runner.xml composite-runner-all-tests -Dtest.reports.dir=${WORKSPACE}/reports/
