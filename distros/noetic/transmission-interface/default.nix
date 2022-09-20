
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, hardware-interface, pluginlib, resource-retriever, roscpp, tinyxml }:
buildRosPackage {
  pname = "ros-noetic-transmission-interface";
  version = "0.19.5-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_control-release/archive/release/noetic/transmission_interface/0.19.5-1.tar.gz";
    name = "0.19.5-1.tar.gz";
    sha256 = "5105c573a9eace338fc2d3b1a09a3ffc87824fe3f1680c2343d40bd0ee551de5";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules ];
  checkInputs = [ resource-retriever ];
  propagatedBuildInputs = [ hardware-interface pluginlib roscpp tinyxml ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Transmission Interface.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
