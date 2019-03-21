
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-ros-planning, std-srvs, moveit-resources, pluginlib, tf2-geometry-msgs, moveit-kinematics, catkin, tf2-ros, rostest, tf2, moveit-core, actionlib, roscpp }:
buildRosPackage {
  pname = "ros-melodic-moveit-ros-move-group";
  version = "1.0.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_ros_move_group/1.0.1-0.tar.gz;
    sha256 = "0b67a53e3f9ac332042ca174e04388c21a556b4f0eb0b1856001b86426294be5";
  };

  checkInputs = [ moveit-resources rostest ];
  propagatedBuildInputs = [ moveit-ros-planning std-srvs pluginlib tf2-geometry-msgs moveit-kinematics tf2-ros tf2 moveit-core actionlib roscpp ];
  nativeBuildInputs = [ moveit-ros-planning std-srvs pluginlib tf2-geometry-msgs catkin tf2-ros tf2 moveit-core actionlib roscpp ];

  meta = {
    description = ''The move_group node for MoveIt'';
    #license = lib.licenses.BSD;
  };
}
