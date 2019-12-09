
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, joint-limits-interface, controller-manager, urdf, pluginlib, std-msgs, control-toolbox, hardware-interface, catkin, transmission-interface, roscpp, angles, gazebo-ros, gazebo-dev }:
buildRosPackage {
  pname = "ros-kinetic-gazebo-ros-control";
  version = "2.5.19-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/gazebo_ros_pkgs-release/archive/release/kinetic/gazebo_ros_control/2.5.19-1.tar.gz";
    name = "2.5.19-1.tar.gz";
    sha256 = "cf8ff66909d778351f33baae7867e9f356a1110c0cd06c092c3ba84d59c9ee66";
  };

  buildType = "catkin";
  buildInputs = [ controller-manager urdf hardware-interface pluginlib std-msgs joint-limits-interface control-toolbox transmission-interface roscpp angles gazebo-dev ];
  propagatedBuildInputs = [ controller-manager urdf hardware-interface pluginlib std-msgs joint-limits-interface gazebo-ros control-toolbox transmission-interface roscpp angles ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''gazebo_ros_control'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
