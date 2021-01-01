
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, rosunit, urdf }:
buildRosPackage {
  pname = "ros-kinetic-industrial-utils";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/industrial_core-release/archive/release/kinetic/industrial_utils/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "5675376695d424f26a29f4393ddb50820a37027725b1d2bf21234ea79e2a0868";
  };

  buildType = "catkin";
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ roscpp urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Industrial utils is a library package that captures common funcitonality for the ROS-Industrial distribution.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
