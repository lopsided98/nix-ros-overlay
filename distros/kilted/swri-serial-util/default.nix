
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-kilted-swri-serial-util";
  version = "3.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/kilted/swri_serial_util/3.9.0-1.tar.gz";
    name = "3.9.0-1.tar.gz";
    sha256 = "d73a1f46a247ece6279db6c4f38c384cbc0b5edcb1d5e28a106c44561116bbf9";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Contains nodes and utilities for serial communication in ROS.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
