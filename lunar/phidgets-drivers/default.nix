
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, phidgets-api, catkin, phidgets-imu, phidgets-high-speed-encoder, libphidget21 }:
buildRosPackage {
  pname = "ros-lunar-phidgets-drivers";
  version = "0.7.8-r1";

  src = fetchurl {
    url = https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/lunar/phidgets_drivers/0.7.8-1.tar.gz;
    sha256 = "3ce85b15a2c91d4fb5ec9b3f79a21052ac1fb9406fbf0ddbd91d40f0a9e93041";
  };

  propagatedBuildInputs = [ phidgets-imu phidgets-api libphidget21 phidgets-high-speed-encoder ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''API and ROS drivers for Phidgets devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
