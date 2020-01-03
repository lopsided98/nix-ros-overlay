
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libphidget21, phidgets-api, phidgets-high-speed-encoder, phidgets-imu }:
buildRosPackage {
  pname = "ros-kinetic-phidgets-drivers";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/kinetic/phidgets_drivers/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "22a3125649e36a9a00b1afaec1374b2ea9b9e0b11b846ad2d946a6a95dcd9e44";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ libphidget21 phidgets-api phidgets-high-speed-encoder phidgets-imu ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''API and ROS drivers for Phidgets devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
