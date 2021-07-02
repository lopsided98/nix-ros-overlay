
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, rosunit, urdf }:
buildRosPackage {
  pname = "ros-noetic-industrial-utils";
  version = "0.7.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/industrial_core-release/archive/release/noetic/industrial_utils/0.7.2-1.tar.gz";
    name = "0.7.2-1.tar.gz";
    sha256 = "1965c307f351ec1c4df257c92e7d36c6937f2a4b8f279c10155f5bc3cd66308b";
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
