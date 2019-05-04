
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python, catkin, pythonPackages, rospy, eigen }:
buildRosPackage {
  pname = "ros-kinetic-pybind11-catkin";
  version = "2.2.4-r4";

  src = fetchurl {
    url = https://github.com/wxmerkt/pybind11_catkin-release/archive/release/kinetic/pybind11_catkin/2.2.4-4.tar.gz;
    sha256 = "e9a32d7fb75912577076fceb2ab0faf53ec7ade8746472f83b567ac1b7b1dbb4";
  };

  buildInputs = [ python pythonPackages.numpy rospy eigen ];
  propagatedBuildInputs = [ python pythonPackages.numpy rospy eigen ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pybind11 package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
