
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-core, trajectory-msgs, controller-manager-msgs, moveit-simple-controller-manager, pluginlib, actionlib, catkin }:
buildRosPackage {
  pname = "ros-kinetic-moveit-ros-control-interface";
  version = "0.9.17-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/kinetic/moveit_ros_control_interface/0.9.17-1.tar.gz";
    name = "0.9.17-1.tar.gz";
    sha256 = "0592af36d9c8add86a1d73a18056616153244497d9b81e08b917e3d944d40baf";
  };

  buildType = "catkin";
  buildInputs = [ moveit-core trajectory-msgs controller-manager-msgs pluginlib moveit-simple-controller-manager actionlib ];
  propagatedBuildInputs = [ moveit-core trajectory-msgs controller-manager-msgs pluginlib moveit-simple-controller-manager actionlib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''ros_control controller manager interface for MoveIt!'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
