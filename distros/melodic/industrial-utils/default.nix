
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, rosunit, urdf }:
buildRosPackage {
  pname = "ros-melodic-industrial-utils";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/industrial_core-release/archive/release/melodic/industrial_utils/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "c27a7592fb1c7e08f7b88330936da7dd70647e414514b1e1b2e198324c64916c";
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
