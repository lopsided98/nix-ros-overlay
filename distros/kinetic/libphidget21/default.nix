
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libusb, libusb1 }:
buildRosPackage {
  pname = "ros-kinetic-libphidget21";
  version = "0.7.10-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/kinetic/libphidget21/0.7.10-1.tar.gz";
    name = "0.7.10-1.tar.gz";
    sha256 = "cb19859d7275598b9bf33f5cdf35397ef394275a7f427f30f94f7ff324ab33ac";
  };

  buildType = "catkin";
  buildInputs = [ libusb1 ];
  propagatedBuildInputs = [ libusb ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package wraps the libphidget21 to use it as a ROS dependency'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
