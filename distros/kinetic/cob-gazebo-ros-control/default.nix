
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, gazebo, gazebo-ros, gazebo-ros-control, hardware-interface, joint-limits-interface, pluginlib, roscpp, transmission-interface, urdf }:
buildRosPackage {
  pname = "ros-kinetic-cob-gazebo-ros-control";
  version = "0.7.5-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_gazebo_plugins-release/archive/release/kinetic/cob_gazebo_ros_control/0.7.5-1.tar.gz";
    name = "0.7.5-1.tar.gz";
    sha256 = "5c433a61714731008812f1f02374bf250abc8792baf35e3f7a4fbffaecc76c48";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ controller-manager gazebo gazebo-ros gazebo-ros-control hardware-interface joint-limits-interface pluginlib roscpp transmission-interface urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a specialization of the gazebo_ros_control plugin.
    The cob_gazebo_ros_control plugin allows Multi-HardwareInterface-Support.'';
    license = with lib.licenses; [ asl20 ];
  };
}
