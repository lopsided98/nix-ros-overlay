
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-kilted-ublox-serialization";
  version = "2.3.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ublox-release/archive/release/kilted/ublox_serialization/2.3.0-4.tar.gz";
    name = "2.3.0-4.tar.gz";
    sha256 = "e6d6d79c415c23ead2d8ae34ded26fd914f11a2f88cf5b66a66aa78b5e2ca300";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ublox_serialization provides header files for serialization of ROS messages to and from u-blox message format.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
