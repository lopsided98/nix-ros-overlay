
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, aws-common, aws-ros1-common, catkin, cloudwatch-metrics-common, gmock, gtest, ros-monitoring-msgs, roscpp, rostest, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-melodic-cloudwatch-metrics-collector";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/cloudwatch_metrics_collector-release/archive/release/melodic/cloudwatch_metrics_collector/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "e42cf30115b38b5976b736aaaa0e00e27c69ef6e6086e61eb1dc91f42630691a";
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
