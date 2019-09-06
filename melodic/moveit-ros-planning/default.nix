
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf2-msgs, rosconsole, tf2-geometry-msgs, pluginlib, srdfdom, catkin, message-filters, tf2-ros, tf2, urdf, moveit-core, tf2-eigen, actionlib, moveit-ros-perception, moveit-msgs, dynamic-reconfigure, roscpp, eigen }:
buildRosPackage {
  pname = "ros-melodic-moveit-ros-planning";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_ros_planning/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "c3b8fc441f13cfac3da59cf186ac92f8c8b60449bccc9ae029b01e8a1f2c9871";
  };

  buildType = "catkin";
  buildInputs = [ tf2-msgs rosconsole pluginlib tf2-geometry-msgs moveit-ros-perception srdfdom message-filters tf2-ros tf2 actionlib moveit-core tf2-eigen dynamic-reconfigure urdf moveit-msgs roscpp eigen ];
  propagatedBuildInputs = [ tf2-msgs rosconsole tf2-geometry-msgs pluginlib srdfdom message-filters tf2-ros tf2 urdf actionlib moveit-core dynamic-reconfigure moveit-ros-perception moveit-msgs tf2-eigen roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Planning components of MoveIt! that use ROS'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
