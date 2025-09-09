
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ublox-gps, ublox-msgs, ublox-serialization }:
buildRosPackage {
  pname = "ros-kilted-ublox";
  version = "2.3.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ublox-release/archive/release/kilted/ublox/2.3.0-4.tar.gz";
    name = "2.3.0-4.tar.gz";
    sha256 = "121bf2ad72ac7c0fe8b837e18c8d25799d57fa789d235594de8e39810780fe45";
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
