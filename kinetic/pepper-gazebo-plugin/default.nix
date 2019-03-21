
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, ros-control, catkin, pepper-description, gazebo-plugins, pepper-control, gazebo-ros-control, ros-controllers }:
buildRosPackage {
  pname = "ros-kinetic-pepper-gazebo-plugin";
  version = "0.0.4";

  src = fetchurl {
    url = https://github.com/ros-naoqi/pepper_virtual-release/archive/release/kinetic/pepper_gazebo_plugin/0.0.4-0.tar.gz;
    sha256 = "4391f6c61d2932d3a45400773c68390748b28c64d8d5fbc483f4d7175293e78c";
  };

  propagatedBuildInputs = [ gazebo-ros ros-controllers ros-control pepper-control pepper-description gazebo-ros-control gazebo-plugins ];
  nativeBuildInputs = [ gazebo-ros catkin pepper-description ];

  meta = {
    description = ''Gazebo plugin for Pepper robot'';
    #license = lib.licenses.Apache 2.0;
  };
}
