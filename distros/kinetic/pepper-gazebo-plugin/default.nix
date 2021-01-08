
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-plugins, gazebo-ros, gazebo-ros-control, pepper-control, pepper-description, ros-control, ros-controllers }:
buildRosPackage {
  pname = "ros-kinetic-pepper-gazebo-plugin";
  version = "0.0.4";

  src = fetchurl {
    url = "https://github.com/ros-naoqi/pepper_virtual-release/archive/release/kinetic/pepper_gazebo_plugin/0.0.4-0.tar.gz";
    name = "0.0.4-0.tar.gz";
    sha256 = "4391f6c61d2932d3a45400773c68390748b28c64d8d5fbc483f4d7175293e78c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gazebo-plugins gazebo-ros gazebo-ros-control pepper-control pepper-description ros-control ros-controllers ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Gazebo plugin for Pepper robot'';
    license = with lib.licenses; [ asl20 ];
  };
}
