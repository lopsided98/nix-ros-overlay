
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libphidget22 }:
buildRosPackage {
  pname = "ros-noetic-phidgets-api";
  version = "1.0.10-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/noetic/phidgets_api/1.0.10-1.tar.gz";
    name = "1.0.10-1.tar.gz";
    sha256 = "3fdafa9a1ec6f1a98e13342ba9dc12c5ac9537f006f7a6f50f012494f0c82e0a";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ libphidget22 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "A C++ Wrapper for the Phidgets C API";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
