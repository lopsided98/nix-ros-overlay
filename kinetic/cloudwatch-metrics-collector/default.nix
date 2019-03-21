
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cloudwatch-metrics-common, catkin, roscpp, rostest, aws-common, aws-ros1-common, ros-monitoring-msgs }:
buildRosPackage {
  pname = "ros-kinetic-cloudwatch-metrics-collector";
  version = "2.0.0-r1";

  src = fetchurl {
    url = https://github.com/aws-gbp/cloudwatch_metrics_collector-release/archive/release/kinetic/cloudwatch_metrics_collector/2.0.0-1.tar.gz;
    sha256 = "c2f04c03f61ddd6f8b0bc3cbeff2ea7f4d6bc98e59ac37a8340d73cf5ef86a90";
  };

  checkInputs = [ rostest ];
  propagatedBuildInputs = [ aws-ros1-common ros-monitoring-msgs roscpp cloudwatch-metrics-common ];
  nativeBuildInputs = [ aws-common cloudwatch-metrics-common aws-ros1-common catkin ros-monitoring-msgs roscpp ];

  meta = {
    description = ''Subscriber node for the aws/monitoring topic to publish metrics to AWS Cloudwatch'';
    #license = lib.licenses.Apache 2.0;
  };
}
