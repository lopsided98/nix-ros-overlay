
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, libusb, catkin }:
buildRosPackage {
  pname = "ros-melodic-libphidget21";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/melodic/libphidget21/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "5c5acae522f6e58661d819125794697d8de28be1409b98304ee8752ff724faa7";
  };

  buildType = "catkin";
  buildInputs = [ libusb ];
  propagatedBuildInputs = [ libusb ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package wraps the libphidget21 to use it as a ROS dependency'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
