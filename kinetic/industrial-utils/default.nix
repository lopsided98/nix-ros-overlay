
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, urdf, rosunit, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-industrial-utils";
  version = "0.7.0";

  src = fetchurl {
    url = https://github.com/ros-industrial-release/industrial_core-release/archive/release/kinetic/industrial_utils/0.7.0-0.tar.gz;
    sha256 = "34824a9a2aa860bd9747dc1f57d9a3bad1b38257731d08fd34ee6018eec9738a";
  };

  buildInputs = [ roscpp urdf ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ roscpp urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Industrial utils is a library package that captures common funcitonality for the ROS-Industrial distribution.'';
    #license = lib.licenses.BSD;
  };
}
