
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ublox-gps, ublox-msgs, ublox-serialization }:
buildRosPackage {
  pname = "ros-rolling-ublox";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ublox-release/archive/release/rolling/ublox/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "b1962b384cae2233a2d30b9710000b88f717c871fcf9fe0d29789297cc4f85f4";
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
