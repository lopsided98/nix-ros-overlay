
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, phidgets-api, catkin, phidgets-imu, phidgets-high-speed-encoder, libphidget21 }:
buildRosPackage {
  pname = "ros-kinetic-phidgets-drivers";
  version = "0.7.7";

  src = fetchurl {
    url = https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/kinetic/phidgets_drivers/0.7.7-0.tar.gz;
    sha256 = "62a4a8e9e76c7b1e046a2e3e417a62eb1dff01864bdf509bd6025fd721251e36";
  };

  propagatedBuildInputs = [ phidgets-imu phidgets-api libphidget21 phidgets-high-speed-encoder ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''API and ROS drivers for Phidgets devices'';
    #license = lib.licenses.BSD, LGPL;
  };
}
