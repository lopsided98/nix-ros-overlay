
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, moveit-core, moveit-kinematics, moveit-resources-fanuc-moveit-config, moveit-ros-planning, pluginlib, roscpp, rostest, std-srvs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-moveit-ros-move-group";
  version = "1.1.13-r2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/noetic/moveit_ros_move_group/1.1.13-2.tar.gz";
    name = "1.1.13-2.tar.gz";
    sha256 = "b4a488434e3ad1851a6a1e880b0135d90d060f9f1084e23c8716bb508a68621d";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ moveit-resources-fanuc-moveit-config rostest ];
  propagatedBuildInputs = [ actionlib moveit-core moveit-kinematics moveit-ros-planning pluginlib roscpp std-srvs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The move_group node for MoveIt'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
