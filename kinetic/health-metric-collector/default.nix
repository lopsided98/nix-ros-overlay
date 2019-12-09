
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, std-msgs, aws-ros1-common, catkin, ros-monitoring-msgs, rospy, roscpp, gtest, gmock, message-runtime, aws-common, rostest }:
buildRosPackage {
  pname = "ros-kinetic-health-metric-collector";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/health_metric_collector-release/archive/release/kinetic/health_metric_collector/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "10f98c84b00af1a744645482ce9d264136b7779306e31666f0e9efd60280047a";
  };

  buildType = "catkin";
  buildInputs = [ std-msgs aws-ros1-common ros-monitoring-msgs rospy roscpp message-generation aws-common ];
  checkInputs = [ gtest gmock rostest ];
  propagatedBuildInputs = [ message-runtime std-msgs aws-ros1-common ros-monitoring-msgs rospy roscpp message-generation aws-common ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The health_metric_collector package'';
    license = with lib.licenses; [ asl20 ];
  };
}
