
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, class-loader, cmake-modules, rosconsole, roslib, tinyxml-2 }:
buildRosPackage {
  pname = "ros-noetic-pluginlib";
  version = "1.13.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/pluginlib-release/archive/release/noetic/pluginlib/1.13.1-1.tar.gz";
    name = "1.13.1-1.tar.gz";
    sha256 = "e6893821b8ab839fcd004f064019f8a59f187dd6ad5a0e9dee57de25fd01b63c";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules ];
  propagatedBuildInputs = [ boost class-loader rosconsole roslib tinyxml-2 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "The pluginlib package provides tools for writing and dynamically loading plugins using the ROS build infrastructure.
    To work, these tools require plugin providers to register their plugins in the package.xml of their package.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
