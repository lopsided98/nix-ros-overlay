
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp, rosunit, urdf }:
buildRosPackage {
  pname = "ros-melodic-industrial-utils";
  version = "0.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-industrial-release/industrial_core-release/archive/release/melodic/industrial_utils/0.7.3-1.tar.gz";
    name = "0.7.3-1.tar.gz";
    sha256 = "82705cad368cb6995c9d75f3045802d2a86aae8de325ee517d8f066e3ad19c58";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ roscpp urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Industrial utils is a library package that captures common funcitonality for the ROS-Industrial distribution.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
