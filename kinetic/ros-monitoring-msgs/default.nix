
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-ros-monitoring-msgs";
  version = "1.0.0-r3";

  src = fetchurl {
    url = https://github.com/aws-gbp/ros_monitoring_msgs-release/archive/release/kinetic/ros_monitoring_msgs/1.0.0-3.tar.gz;
    sha256 = "6fab3b96fbc03dae4c15ec6b50ca013837658fffaddbb4698f1832972c60ca97";
  };

  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages for publishing monitoring data about ROS systems'';
    #license = lib.licenses.Apache 2.0;
  };
}
