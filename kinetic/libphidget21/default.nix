
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libusb }:
buildRosPackage {
  pname = "ros-kinetic-libphidget21";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/kinetic/libphidget21/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "936ad040bd0caebc715bac37f4faf68598debec5dc1041a80a42286d340ca6d4";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ libusb ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package wraps the libphidget21 to use it as a ROS dependency'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
