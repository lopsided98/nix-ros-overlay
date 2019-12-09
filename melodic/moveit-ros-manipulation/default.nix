
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-core, dynamic-reconfigure, moveit-ros-move-group, pluginlib, actionlib, catkin, moveit-ros-planning, tf2-eigen, eigen, moveit-msgs, roscpp, rosconsole }:
buildRosPackage {
  pname = "ros-melodic-moveit-ros-manipulation";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_ros_manipulation/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "156ae51dac52174c5702fd6c73088fe6b3cb36da1a202e8eddb5a4b02e843b51";
  };

  buildType = "catkin";
  buildInputs = [ moveit-core dynamic-reconfigure moveit-ros-move-group pluginlib actionlib moveit-ros-planning tf2-eigen eigen moveit-msgs roscpp rosconsole ];
  propagatedBuildInputs = [ moveit-core dynamic-reconfigure moveit-ros-move-group pluginlib actionlib moveit-ros-planning tf2-eigen moveit-msgs roscpp rosconsole ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Components of MoveIt! used for manipulation'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
