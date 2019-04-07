
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosconsole, cv-bridge, freeglut, octomap, tf-conversions, tf, image-transport, message-filters, moveit-core, libGL, catkin, urdf, moveit-msgs, libGLU, roscpp, pluginlib, sensor-msgs, eigen, glew }:
buildRosPackage {
  pname = "ros-kinetic-moveit-ros-perception";
  version = "0.9.15";

  src = fetchurl {
    url = https://github.com/ros-gbp/moveit-release/archive/release/kinetic/moveit_ros_perception/0.9.15-0.tar.gz;
    sha256 = "ac7f565766ee1c96434711462dd6b82235b3668c2cec91724aa8b745081c46cb";
  };

  buildInputs = [ pluginlib rosconsole libGLU image-transport sensor-msgs cv-bridge message-filters glew tf libGL urdf moveit-core octomap eigen tf-conversions moveit-msgs freeglut roscpp ];
  propagatedBuildInputs = [ pluginlib rosconsole libGLU image-transport sensor-msgs cv-bridge message-filters glew tf libGL urdf moveit-core octomap tf-conversions moveit-msgs freeglut roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Components of MoveIt! connecting to perception'';
    #license = lib.licenses.BSD;
  };
}
