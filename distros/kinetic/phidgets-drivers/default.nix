
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libphidget21, phidgets-api, phidgets-high-speed-encoder, phidgets-ik, phidgets-imu, phidgets-msgs }:
buildRosPackage {
  pname = "ros-kinetic-phidgets-drivers";
  version = "0.7.10-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/phidgets_drivers-release/archive/release/kinetic/phidgets_drivers/0.7.10-1.tar.gz";
    name = "0.7.10-1.tar.gz";
    sha256 = "6145d09441e835743fd3bee6a61aac26c1eea54f930a982b1f07ffd7316b4028";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ libphidget21 phidgets-api phidgets-high-speed-encoder phidgets-ik phidgets-imu phidgets-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''API and ROS drivers for Phidgets devices'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
