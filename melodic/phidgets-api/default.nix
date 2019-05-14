
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, libusb1, catkin, libphidget21, libusb }:
buildRosPackage {
  pname = "ros-melodic-phidgets-api";
  version = "0.7.8-r1";

  src = fetchurl {
    url = https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/melodic/phidgets_api/0.7.8-1.tar.gz;
    sha256 = "724401a8a4f5e4046acb595eace743404df64f3d512ad49a51eca5d1b9fb56c0";
  };

  buildInputs = [ libusb1 libphidget21 ];
  propagatedBuildInputs = [ libphidget21 libusb ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A C++ Wrapper for the Phidgets C API'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
