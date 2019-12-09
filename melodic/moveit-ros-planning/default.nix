
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-core, message-filters, srdfdom, urdf, dynamic-reconfigure, pluginlib, catkin, tf2, actionlib, tf2-eigen, tf2-geometry-msgs, moveit-ros-perception, eigen, tf2-msgs, moveit-msgs, roscpp, rosconsole, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-moveit-ros-planning";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_ros_planning/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "c3b8fc441f13cfac3da59cf186ac92f8c8b60449bccc9ae029b01e8a1f2c9871";
  };

  buildType = "catkin";
  buildInputs = [ moveit-core message-filters srdfdom urdf dynamic-reconfigure pluginlib actionlib roscpp tf2-eigen tf2-geometry-msgs moveit-ros-perception eigen tf2-msgs moveit-msgs tf2 rosconsole tf2-ros ];
  propagatedBuildInputs = [ moveit-core message-filters srdfdom dynamic-reconfigure urdf pluginlib actionlib roscpp tf2-eigen tf2-geometry-msgs moveit-ros-perception tf2-msgs moveit-msgs tf2 rosconsole tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Planning components of MoveIt! that use ROS'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
