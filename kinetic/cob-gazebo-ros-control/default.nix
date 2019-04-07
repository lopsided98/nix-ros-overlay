
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, hardware-interface, controller-manager, pluginlib, joint-limits-interface, catkin, urdf, roscpp, transmission-interface, gazebo-ros-control }:
buildRosPackage {
  pname = "ros-kinetic-cob-gazebo-ros-control";
  version = "0.7.2";

  src = fetchurl {
    url = https://github.com/ipa320/cob_gazebo_plugins-release/archive/release/kinetic/cob_gazebo_ros_control/0.7.2-0.tar.gz;
    sha256 = "85f572414acd8e1edd1b8d7ebec9647e8b49fd809d293d4f69f3349813b2bded";
  };

  buildInputs = [ gazebo-ros hardware-interface controller-manager pluginlib joint-limits-interface urdf roscpp transmission-interface gazebo-ros-control ];
  propagatedBuildInputs = [ gazebo-ros hardware-interface controller-manager pluginlib joint-limits-interface urdf roscpp transmission-interface gazebo-ros-control ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a specialization of the gazebo_ros_control plugin.
    The cob_gazebo_ros_control plugin allows Multi-HardwareInterface-Support.'';
    #license = lib.licenses.Apache 2.0;
  };
}
