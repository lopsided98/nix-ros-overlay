
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosconsole, cv-bridge, freeglut, octomap, tf-conversions, tf, image-transport, message-filters, moveit-core, libGL, catkin, urdf, moveit-msgs, libGLU, roscpp, pluginlib, sensor-msgs, eigen, glew }:
buildRosPackage {
  pname = "ros-lunar-moveit-ros-perception";
  version = "0.9.12-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/moveit-release/archive/release/lunar/moveit_ros_perception/0.9.12-1.tar.gz;
    sha256 = "106a11e15d6210f59db83e1e7e353e47585a2f85819e0876126f33334f7636ca";
  };

  buildInputs = [ pluginlib rosconsole libGLU image-transport sensor-msgs cv-bridge message-filters glew tf libGL urdf moveit-core octomap eigen tf-conversions moveit-msgs freeglut roscpp ];
  propagatedBuildInputs = [ pluginlib rosconsole libGLU image-transport sensor-msgs cv-bridge message-filters glew tf libGL urdf moveit-core octomap tf-conversions moveit-msgs freeglut roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Components of MoveIt connecting to perception'';
    #license = lib.licenses.BSD;
  };
}
