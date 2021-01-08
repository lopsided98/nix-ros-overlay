
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-ros-monitoring-msgs";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/ros_monitoring_msgs-release/archive/release/kinetic/ros_monitoring_msgs/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "6c7ce0c94cb5df58f0b40861686727393121d0b34b99bdac88b12dfeee6619e5";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages for publishing monitoring data about ROS systems'';
    license = with lib.licenses; [ asl20 ];
  };
}
