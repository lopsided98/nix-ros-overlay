
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, aws-ros1-common, std-srvs, catkin, cloudwatch-metrics-common, ros-monitoring-msgs, roscpp, gtest, gmock, aws-common, rostest }:
buildRosPackage {
  pname = "ros-kinetic-cloudwatch-metrics-collector";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/cloudwatch_metrics_collector-release/archive/release/kinetic/cloudwatch_metrics_collector/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "ad0dacd69d1bdc0b155d3d06dd5803ddd8ff8ac8dea22d9b6f61bc0a71170611";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs std-srvs aws-ros1-common cloudwatch-metrics-common ros-monitoring-msgs roscpp aws-common ];
  checkInputs = [ gtest gmock rostest ];
  propagatedBuildInputs = [ std-msgs std-srvs aws-ros1-common cloudwatch-metrics-common ros-monitoring-msgs roscpp aws-common ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Subscriber node for the aws/monitoring topic to publish metrics to AWS Cloudwatch'';
    license = with lib.licenses; [ asl20 ];
  };
}
