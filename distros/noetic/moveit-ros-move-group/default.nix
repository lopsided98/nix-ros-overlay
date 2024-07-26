
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, moveit-core, moveit-kinematics, moveit-resources-fanuc-moveit-config, moveit-ros-planning, pluginlib, roscpp, rostest, std-srvs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-moveit-ros-move-group";
  version = "1.1.14-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/noetic/moveit_ros_move_group/1.1.14-1.tar.gz";
    name = "1.1.14-1.tar.gz";
    sha256 = "f0134e5e2d638341ec373671e095fdfd71e6b93bf725e183761cf19b93aab4d3";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ moveit-resources-fanuc-moveit-config rostest ];
  propagatedBuildInputs = [ actionlib moveit-core moveit-kinematics moveit-ros-planning pluginlib roscpp std-srvs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "The move_group node for MoveIt";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
