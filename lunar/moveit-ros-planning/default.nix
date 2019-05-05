
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, dynamic-reconfigure, pluginlib, catkin, moveit-core, actionlib, moveit-ros-perception, angles, eigen-conversions, eigen }:
buildRosPackage {
  pname = "ros-lunar-moveit-ros-planning";
  version = "0.9.12-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/moveit-release/archive/release/lunar/moveit_ros_planning/0.9.12-1.tar.gz;
    sha256 = "0458728c6af89e5e88ab359d615e32b0e4ea8d58dd9e72bc51f6ecb603faf93c";
  };

  buildInputs = [ pluginlib eigen-conversions actionlib moveit-core angles moveit-ros-perception dynamic-reconfigure eigen ];
  propagatedBuildInputs = [ pluginlib eigen-conversions actionlib moveit-core angles moveit-ros-perception dynamic-reconfigure ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Planning components of MoveIt that use ROS'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
