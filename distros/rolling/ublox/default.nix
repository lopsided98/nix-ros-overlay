
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ublox-gps, ublox-msgs, ublox-serialization }:
buildRosPackage {
  pname = "ros-rolling-ublox";
  version = "2.3.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ublox-release/archive/release/rolling/ublox/2.3.0-3.tar.gz";
    name = "2.3.0-3.tar.gz";
    sha256 = "2976021ed63ae46e7247d8224d9e4d56c1964726f7b37f1783b0e3bfa711c96a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ublox-gps ublox-msgs ublox-serialization ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Provides a ublox_gps node for u-blox GPS receivers, messages, and serialization packages for the binary UBX protocol.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
