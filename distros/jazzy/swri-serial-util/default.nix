
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-swri-serial-util";
  version = "3.8.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/jazzy/swri_serial_util/3.8.4-1.tar.gz";
    name = "3.8.4-1.tar.gz";
    sha256 = "110ea5f332bf26008110f0869bf0cc471f0b44a6a6a55cc0c3effe0206f6251f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Contains nodes and utilities for serial communication in ROS.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
