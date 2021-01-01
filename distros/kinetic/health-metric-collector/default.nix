
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, aws-common, aws-ros1-common, catkin, gmock, gtest, message-generation, message-runtime, ros-monitoring-msgs, roscpp, rospy, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-health-metric-collector";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/health_metric_collector-release/archive/release/kinetic/health_metric_collector/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "18254dab64e59ab796df8ee321cc0a7e4a234a4a1112d28fd3cfaf3eb95c653f";
  };

  buildType = "catkin";
  checkInputs = [ gmock gtest rostest ];
  propagatedBuildInputs = [ aws-common aws-ros1-common message-generation message-runtime ros-monitoring-msgs roscpp rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The health_metric_collector package'';
    license = with lib.licenses; [ asl20 ];
  };
}
