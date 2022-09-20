
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libphidget21 }:
buildRosPackage {
  pname = "ros-melodic-phidgets-api";
  version = "0.7.11-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/melodic/phidgets_api/0.7.11-1.tar.gz";
    name = "0.7.11-1.tar.gz";
    sha256 = "9d4a754230661ad607e621d6cfc94ef56549e1b9e3f0772937b1ba023195e189";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ libphidget21 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A C++ Wrapper for the Phidgets C API'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
