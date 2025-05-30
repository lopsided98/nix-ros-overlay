
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost }:
buildRosPackage {
  pname = "ros-kilted-swri-serial-util";
  version = "3.7.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_common-release/archive/release/kilted/swri_serial_util/3.7.5-1.tar.gz";
    name = "3.7.5-1.tar.gz";
    sha256 = "4dec5120b71ba54c840ec4a437d62e0263a9be3b945a1927a215d7422300a63f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ boost ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Contains nodes and utilities for serial communication in ROS.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
