
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, moveit-core, moveit-kinematics, moveit-resources-fanuc-moveit-config, moveit-ros-planning, pluginlib, roscpp, rostest, std-srvs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-moveit-ros-move-group";
  version = "1.1.8-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/noetic/moveit_ros_move_group/1.1.8-1.tar.gz";
    name = "1.1.8-1.tar.gz";
    sha256 = "3dfcc82072e0e722a6a8a6bdf2d895013b720f7adbecb64a9b8d6b58b1f81bf8";
  };

  buildType = "catkin";
  checkInputs = [ moveit-resources-fanuc-moveit-config rostest ];
  propagatedBuildInputs = [ actionlib moveit-core moveit-kinematics moveit-ros-planning pluginlib roscpp std-srvs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The move_group node for MoveIt'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
