
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, hardware-interface, controller-manager, pluginlib, joint-limits-interface, control-toolbox, catkin, gazebo-dev, urdf, angles, std-msgs, roscpp, transmission-interface }:
buildRosPackage {
  pname = "ros-lunar-gazebo-ros-control";
  version = "2.7.6";

  src = fetchurl {
    url = https://github.com/ros-gbp/gazebo_ros_pkgs-release/archive/release/lunar/gazebo_ros_control/2.7.6-0.tar.gz;
    sha256 = "453135aa8a240636ab0f6aeb68a884e1a843e53e340891ab7c06bebaacda832f";
  };

  buildInputs = [ controller-manager hardware-interface pluginlib control-toolbox joint-limits-interface gazebo-dev urdf angles std-msgs roscpp transmission-interface ];
  propagatedBuildInputs = [ gazebo-ros hardware-interface controller-manager pluginlib control-toolbox joint-limits-interface urdf angles std-msgs roscpp transmission-interface ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''gazebo_ros_control'';
    #license = lib.licenses.BSD;
  };
}
