
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, libusb1, catkin, libphidget21, libusb }:
buildRosPackage {
  pname = "ros-lunar-phidgets-api";
  version = "0.7.8-r1";

  src = fetchurl {
    url = https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/lunar/phidgets_api/0.7.8-1.tar.gz;
    sha256 = "0a09f9b14fabf767b0315895510c3780c8d149c692f9e2935ea1e4073074d823";
  };

  buildInputs = [ libusb1 libphidget21 ];
  propagatedBuildInputs = [ libphidget21 libusb ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A C++ Wrapper for the Phidgets C API'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
