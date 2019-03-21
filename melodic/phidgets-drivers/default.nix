
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, phidgets-api, catkin, phidgets-imu, phidgets-high-speed-encoder, libphidget21 }:
buildRosPackage {
  pname = "ros-melodic-phidgets-drivers";
  version = "0.7.7";

  src = fetchurl {
    url = https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/melodic/phidgets_drivers/0.7.7-0.tar.gz;
    sha256 = "15dfbffa4b9c25597a909ff1c2e2a58b7e8498e764501562064da010a40d6c04";
  };

  propagatedBuildInputs = [ phidgets-imu phidgets-api libphidget21 phidgets-high-speed-encoder ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''API and ROS drivers for Phidgets devices'';
    #license = lib.licenses.BSD, LGPL;
  };
}
