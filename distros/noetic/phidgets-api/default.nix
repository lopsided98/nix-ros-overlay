
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libphidget22 }:
buildRosPackage {
  pname = "ros-noetic-phidgets-api";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/noetic/phidgets_api/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "82c3c565bca2961eadb2acc1d543bd1a8369579859ee668016f9edda4a3cc5bc";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ libphidget22 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A C++ Wrapper for the Phidgets C API'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
