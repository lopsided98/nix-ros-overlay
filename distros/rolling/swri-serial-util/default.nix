
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-rolling-swri-serial-util";
  version = "3.8.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/rolling/swri_serial_util/3.8.5-1.tar.gz";
    name = "3.8.5-1.tar.gz";
    sha256 = "9afcbeb6bc8cceb7c41bd805c5802b2863835eac7e8bc1c0cbb4cbdf10d027bb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Contains nodes and utilities for serial communication in ROS.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
