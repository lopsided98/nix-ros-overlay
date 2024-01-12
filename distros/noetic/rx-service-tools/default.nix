
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages, pythonPackages, roslib, rospy }:
buildRosPackage {
  pname = "ros-noetic-rx-service-tools";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/nobleo/rx_service_tools-release/archive/release/noetic/rx_service_tools/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "4bab469592a818690220bfbcee55ee63d3f48b4376bc5bdd088e3d958a9dd61a";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  propagatedBuildInputs = [ python3Packages.pyyaml pythonPackages.wxPython roslib rospy ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''Graphical tools to interact with ROS services.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
