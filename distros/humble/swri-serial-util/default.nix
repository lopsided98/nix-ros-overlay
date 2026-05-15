
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-humble-swri-serial-util";
  version = "3.8.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/humble/swri_serial_util/3.8.9-1.tar.gz";
    name = "3.8.9-1.tar.gz";
    sha256 = "794eddb114d8bf5a77cf25788b1efe09bdb1f4331d5f3373cab68f764f0fb2ce";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Contains nodes and utilities for serial communication in ROS.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
