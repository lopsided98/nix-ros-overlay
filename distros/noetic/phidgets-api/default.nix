
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libphidget22 }:
buildRosPackage {
  pname = "ros-noetic-phidgets-api";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/noetic/phidgets_api/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "20009c1554c652d1bb8ec9af96392dc94dedd4c52470e426101859b93556aeb9";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ libphidget22 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A C++ Wrapper for the Phidgets C API'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
