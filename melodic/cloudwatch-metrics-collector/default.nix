
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, aws-ros1-common, std-srvs, catkin, cloudwatch-metrics-common, ros-monitoring-msgs, roscpp, gtest, gmock, aws-common, rostest }:
buildRosPackage {
  pname = "ros-melodic-cloudwatch-metrics-collector";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/cloudwatch_metrics_collector-release/archive/release/melodic/cloudwatch_metrics_collector/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "765bfbb06471515deaa6dc40b39f426ef386774cf658a7b9afe356cfa75e2ca2";
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
