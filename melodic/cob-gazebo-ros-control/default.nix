
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, joint-limits-interface, controller-manager, hardware-interface, pluginlib, urdf, catkin, transmission-interface, gazebo-ros-control, roscpp, gazebo-ros }:
buildRosPackage {
  pname = "ros-melodic-cob-gazebo-ros-control";
  version = "0.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_gazebo_plugins-release/archive/release/melodic/cob_gazebo_ros_control/0.7.3-1.tar.gz";
    name = "0.7.3-1.tar.gz";
    sha256 = "a4f50274e0b24a27cdf983d3a4b1827c38065df889c876a1238a51f840e40f04";
  };

  buildType = "catkin";
  buildInputs = [ controller-manager urdf hardware-interface pluginlib joint-limits-interface transmission-interface gazebo-ros-control roscpp gazebo-ros ];
  propagatedBuildInputs = [ controller-manager urdf hardware-interface pluginlib joint-limits-interface transmission-interface gazebo-ros-control roscpp gazebo-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains a specialization of the gazebo_ros_control plugin.
    The cob_gazebo_ros_control plugin allows Multi-HardwareInterface-Support.'';
    license = with lib.licenses; [ asl20 ];
  };
}
