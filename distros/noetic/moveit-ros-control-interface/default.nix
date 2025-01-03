
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, catkin, controller-manager-msgs, moveit-core, moveit-simple-controller-manager, pluginlib, trajectory-msgs }:
buildRosPackage {
  pname = "ros-noetic-moveit-ros-control-interface";
  version = "1.1.16-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/noetic/moveit_ros_control_interface/1.1.16-1.tar.gz";
    name = "1.1.16-1.tar.gz";
    sha256 = "2fc76d65882b91888182d6f9e7d4b8d0f6fc70fe4f11bf77657a1a3b288c16e6";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ actionlib controller-manager-msgs moveit-core moveit-simple-controller-manager pluginlib trajectory-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "ros_control controller manager interface for MoveIt";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
