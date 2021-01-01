
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libphidget21 }:
buildRosPackage {
  pname = "ros-melodic-phidgets-api";
  version = "0.7.10-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/melodic/phidgets_api/0.7.10-1.tar.gz";
    name = "0.7.10-1.tar.gz";
    sha256 = "4fc49e7bad1c3bf5a165f144a18d0c3a2af76ec27a2d1cf70eb6ce98b0281ee3";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ libphidget21 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A C++ Wrapper for the Phidgets C API'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
