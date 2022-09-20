
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, aws-common, aws-ros1-common, catkin, gtest, message-generation, message-runtime, ros-monitoring-msgs, roscpp, rospy, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-health-metric-collector";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/health_metric_collector-release/archive/release/melodic/health_metric_collector/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "de3cceb8580f9dea5b9dc921ff1364c6486c89e217ae42ebf5349d67f8668c0c";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ gtest rostest ];
  propagatedBuildInputs = [ aws-common aws-ros1-common message-generation message-runtime ros-monitoring-msgs roscpp rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The health_metric_collector package'';
    license = with lib.licenses; [ asl20 ];
  };
}
