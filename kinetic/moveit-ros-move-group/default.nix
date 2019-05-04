
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-ros-planning, std-srvs, moveit-resources, pluginlib, moveit-kinematics, catkin, rostest, moveit-core, actionlib, tf }:
buildRosPackage {
  pname = "ros-kinetic-moveit-ros-move-group";
  version = "0.9.15";

  src = fetchurl {
    url = https://github.com/ros-gbp/moveit-release/archive/release/kinetic/moveit_ros_move_group/0.9.15-0.tar.gz;
    sha256 = "1d371b992c942d78e66fbc94893bebd8449df9dc6b4ac7a15509d1bd9a9d37de";
  };

  buildInputs = [ moveit-ros-planning std-srvs pluginlib moveit-core actionlib tf ];
  checkInputs = [ moveit-resources rostest ];
  propagatedBuildInputs = [ moveit-ros-planning std-srvs pluginlib moveit-kinematics moveit-core actionlib tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The move_group node for MoveIt'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
