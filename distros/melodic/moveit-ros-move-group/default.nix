
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, moveit-core, moveit-kinematics, moveit-resources-fanuc-moveit-config, moveit-ros-planning, pluginlib, roscpp, rostest, std-srvs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-moveit-ros-move-group";
  version = "1.0.11-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_ros_move_group/1.0.11-1.tar.gz";
    name = "1.0.11-1.tar.gz";
    sha256 = "1685b88f790758cb9cda652a26d0d750c98eb2c202e5d8c81b8a06f1ade9773f";
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
