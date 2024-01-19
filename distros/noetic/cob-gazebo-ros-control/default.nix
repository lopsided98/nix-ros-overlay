
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, gazebo, gazebo-ros, gazebo-ros-control, hardware-interface, joint-limits-interface, pluginlib, roscpp, transmission-interface, urdf }:
buildRosPackage {
  pname = "ros-noetic-cob-gazebo-ros-control";
  version = "0.7.7-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_gazebo_plugins-release/archive/release/noetic/cob_gazebo_ros_control/0.7.7-1.tar.gz";
    name = "0.7.7-1.tar.gz";
    sha256 = "fd49e81694642749589b62ad73957b9e4504ca1f3beb0b7350fb77e1440863db";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ controller-manager gazebo gazebo-ros gazebo-ros-control hardware-interface joint-limits-interface pluginlib roscpp transmission-interface urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a specialization of the gazebo_ros_control plugin.
    The cob_gazebo_ros_control plugin allows Multi-HardwareInterface-Support.'';
    license = with lib.licenses; [ asl20 ];
  };
}
