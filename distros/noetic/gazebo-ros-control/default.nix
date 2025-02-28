
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, angles, catkin, control-toolbox, controller-manager, gazebo-dev, gazebo-ros, hardware-interface, joint-limits-interface, pluginlib, roscpp, std-msgs, transmission-interface, urdf }:
buildRosPackage {
  pname = "ros-noetic-gazebo-ros-control";
  version = "2.9.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/gazebo_ros_pkgs-release/archive/release/noetic/gazebo_ros_control/2.9.3-1.tar.gz";
    name = "2.9.3-1.tar.gz";
    sha256 = "8ab4bf8ca1211a731f4a88836ee14c4d0fad49f1372b94e5a20025ae93128991";
  };

  buildType = "catkin";
  buildInputs = [ catkin gazebo-dev ];
  propagatedBuildInputs = [ angles control-toolbox controller-manager gazebo-ros hardware-interface joint-limits-interface pluginlib roscpp std-msgs transmission-interface urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "gazebo_ros_control";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
