
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libphidget22 }:
buildRosPackage {
  pname = "ros-noetic-phidgets-api";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/noetic/phidgets_api/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "d72e7e5dc409ecb5130f27b62236f4b46dbbda55b330088e50c6f211f04043ad";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ libphidget22 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A C++ Wrapper for the Phidgets C API'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
