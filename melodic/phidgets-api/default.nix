
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, libusb1, catkin, libphidget21, libusb }:
buildRosPackage {
  pname = "ros-melodic-phidgets-api";
  version = "0.7.7";

  src = fetchurl {
    url = https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/melodic/phidgets_api/0.7.7-0.tar.gz;
    sha256 = "bfbd02aa5ca164b4ba558a53dd7ddeff44e81b7682c9ea21c08f4f3aa9333152";
  };

  buildInputs = [ libusb1 libphidget21 ];
  propagatedBuildInputs = [ libphidget21 libusb ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A C++ Wrapper for the Phidgets C API'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
