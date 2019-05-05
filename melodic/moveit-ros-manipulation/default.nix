
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-ros-planning, moveit-ros-move-group, pluginlib, rosconsole, catkin, moveit-core, tf2-eigen, actionlib, moveit-msgs, dynamic-reconfigure, roscpp, eigen }:
buildRosPackage {
  pname = "ros-melodic-moveit-ros-manipulation";
  version = "1.0.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_ros_manipulation/1.0.1-0.tar.gz;
    sha256 = "2bbac6007c1cf0799f38dfbadaaed30957d5d1d31fd7781e599254db553517a9";
  };

  buildInputs = [ moveit-ros-planning moveit-ros-move-group pluginlib rosconsole actionlib moveit-core tf2-eigen dynamic-reconfigure moveit-msgs roscpp eigen ];
  propagatedBuildInputs = [ moveit-ros-planning moveit-ros-move-group pluginlib rosconsole actionlib moveit-core tf2-eigen dynamic-reconfigure moveit-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Components of MoveIt! used for manipulation'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
