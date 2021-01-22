
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, control-toolbox, controller-manager, gazebo-dev, gazebo-ros, hardware-interface, joint-limits-interface, pluginlib, roscpp, std-msgs, transmission-interface, urdf }:
buildRosPackage {
  pname = "ros-kinetic-gazebo-ros-control";
  version = "2.5.20-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/gazebo_ros_pkgs-release/archive/release/kinetic/gazebo_ros_control/2.5.20-1.tar.gz";
    name = "2.5.20-1.tar.gz";
    sha256 = "fe0bb120255223ebaff31bf4668509e73546abb9f0bc94156305ef71b7779ed6";
  };

  buildType = "catkin";
  buildInputs = [ gazebo-dev ];
  propagatedBuildInputs = [ angles control-toolbox controller-manager gazebo-ros hardware-interface joint-limits-interface pluginlib roscpp std-msgs transmission-interface urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''gazebo_ros_control'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
