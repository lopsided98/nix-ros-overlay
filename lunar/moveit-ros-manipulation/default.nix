
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-ros-planning, moveit-ros-move-group, pluginlib, rosconsole, catkin, roscpp, moveit-core, actionlib, moveit-msgs, dynamic-reconfigure, tf, eigen }:
buildRosPackage {
  pname = "ros-lunar-moveit-ros-manipulation";
  version = "0.9.12-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/moveit-release/archive/release/lunar/moveit_ros_manipulation/0.9.12-1.tar.gz;
    sha256 = "bf981cef7fa6cc2bc759362d2027361604211bc23ec102719fd4929bf6170f56";
  };

  buildInputs = [ moveit-ros-planning moveit-ros-move-group pluginlib rosconsole roscpp actionlib moveit-core dynamic-reconfigure moveit-msgs tf eigen ];
  propagatedBuildInputs = [ moveit-ros-planning moveit-ros-move-group pluginlib rosconsole roscpp actionlib moveit-core dynamic-reconfigure moveit-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Components of MoveIt used for manipulation'';
    #license = lib.licenses.BSD;
  };
}
