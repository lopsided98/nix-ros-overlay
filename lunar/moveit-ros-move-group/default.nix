
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-ros-planning, std-srvs, moveit-resources, pluginlib, moveit-kinematics, catkin, rostest, moveit-core, actionlib, tf }:
buildRosPackage {
  pname = "ros-lunar-moveit-ros-move-group";
  version = "0.9.12-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/moveit-release/archive/release/lunar/moveit_ros_move_group/0.9.12-1.tar.gz;
    sha256 = "db14325eaf834e9d35c7795a0a6540def57a37693bf064447e35d49f7674e449";
  };

  buildInputs = [ moveit-ros-planning std-srvs moveit-core pluginlib actionlib tf ];
  checkInputs = [ moveit-resources rostest ];
  propagatedBuildInputs = [ moveit-ros-planning std-srvs moveit-core pluginlib actionlib tf moveit-kinematics ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The move_group node for MoveIt'';
    #license = lib.licenses.BSD;
  };
}
