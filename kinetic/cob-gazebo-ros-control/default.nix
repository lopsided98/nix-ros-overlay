
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, gazebo-ros, gazebo-ros-control, hardware-interface, joint-limits-interface, pluginlib, roscpp, transmission-interface, urdf }:
buildRosPackage {
  pname = "ros-kinetic-cob-gazebo-ros-control";
  version = "0.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_gazebo_plugins-release/archive/release/kinetic/cob_gazebo_ros_control/0.7.3-1.tar.gz";
    name = "0.7.3-1.tar.gz";
    sha256 = "78342cbeecb2f84a541d808c5a3e658ff5fca9ed44439cb5151f272574590ff8";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ controller-manager gazebo-ros gazebo-ros-control hardware-interface joint-limits-interface pluginlib roscpp transmission-interface urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a specialization of the gazebo_ros_control plugin.
    The cob_gazebo_ros_control plugin allows Multi-HardwareInterface-Support.'';
    license = with lib.licenses; [ asl20 ];
  };
}
