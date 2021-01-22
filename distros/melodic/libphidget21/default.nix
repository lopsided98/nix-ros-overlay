
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libusb, libusb1 }:
buildRosPackage {
  pname = "ros-melodic-libphidget21";
  version = "0.7.10-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/melodic/libphidget21/0.7.10-1.tar.gz";
    name = "0.7.10-1.tar.gz";
    sha256 = "b493f61274d99ad205a18a6c841f140e54789361fdaccb2cc59f79ef2cfde9e1";
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
