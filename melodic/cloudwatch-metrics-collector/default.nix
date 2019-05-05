
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cloudwatch-metrics-common, catkin, roscpp, rostest, aws-common, aws-ros1-common, ros-monitoring-msgs }:
buildRosPackage {
  pname = "ros-melodic-cloudwatch-metrics-collector";
  version = "2.0.0";

  src = fetchurl {
    url = https://github.com/aws-gbp/cloudwatch_metrics_collector-release/archive/release/melodic/cloudwatch_metrics_collector/2.0.0-0.tar.gz;
    sha256 = "85f807efb7f6dfc6cca35eed12ee12e4bc864e618221903eddab3c28920721cf";
  };

  buildInputs = [ cloudwatch-metrics-common ros-monitoring-msgs aws-common aws-ros1-common roscpp ];
  checkInputs = [ rostest ];
  propagatedBuildInputs = [ aws-ros1-common ros-monitoring-msgs roscpp cloudwatch-metrics-common ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Subscriber node for the aws/monitoring topic to publish metrics to AWS Cloudwatch'';
    license = with lib.licenses; [ asl20 ];
  };
}
