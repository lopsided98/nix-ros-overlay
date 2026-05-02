
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-rolling-ublox-serialization";
  version = "3.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ublox-release/archive/release/rolling/ublox_serialization/3.0.0-2.tar.gz";
    name = "3.0.0-2.tar.gz";
    sha256 = "8ef25f4355c0180b02c05350babe3e3a5417b33f36191d7707cbafe1ca973dd7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ublox_serialization provides header files for serialization of ROS messages to and from u-blox message format.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
