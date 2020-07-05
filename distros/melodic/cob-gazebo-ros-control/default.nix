
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, controller-manager, gazebo, gazebo-ros, gazebo-ros-control, hardware-interface, joint-limits-interface, pluginlib, roscpp, transmission-interface, urdf }:
buildRosPackage {
  pname = "ros-melodic-cob-gazebo-ros-control";
  version = "0.7.4-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_gazebo_plugins-release/archive/release/melodic/cob_gazebo_ros_control/0.7.4-1.tar.gz";
    name = "0.7.4-1.tar.gz";
    sha256 = "2dff0323105ded5f8c582052e7e80f2377675c67e0777a54697ccd3341d2a9ab";
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
