
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, aws-common, aws-ros1-common, catkin, gmock, gtest, message-generation, message-runtime, ros-monitoring-msgs, roscpp, rospy, rostest, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-health-metric-collector";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/health_metric_collector-release/archive/release/melodic/health_metric_collector/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "f5e60876143b1062f020f54087a4513795c1f1b5b1c8facc4b466a95ac25a7a9";
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
