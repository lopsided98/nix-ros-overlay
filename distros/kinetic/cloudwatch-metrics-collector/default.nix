
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, aws-common, aws-ros1-common, catkin, cloudwatch-metrics-common, gmock, gtest, ros-monitoring-msgs, roscpp, rostest, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-kinetic-cloudwatch-metrics-collector";
  version = "2.2.1-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/cloudwatch_metrics_collector-release/archive/release/kinetic/cloudwatch_metrics_collector/2.2.1-1.tar.gz";
    name = "2.2.1-1.tar.gz";
    sha256 = "0283f3f8774b37e49b1847b0fe77e9adb917c2eedd11f6993c4359a8a2581d90";
  };

  buildType = "catkin";
  checkInputs = [ gmock gtest rostest ];
  propagatedBuildInputs = [ aws-common aws-ros1-common cloudwatch-metrics-common ros-monitoring-msgs roscpp std-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Subscriber node for the aws/monitoring topic to publish metrics to AWS Cloudwatch'';
    license = with lib.licenses; [ asl20 ];
  };
}
