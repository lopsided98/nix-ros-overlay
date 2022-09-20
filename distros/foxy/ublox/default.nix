
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ublox-gps, ublox-msgs, ublox-serialization }:
buildRosPackage {
  pname = "ros-foxy-ublox";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ublox-release/archive/release/foxy/ublox/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "3e5e64fd859c7f95736cb96bf761a3ea83a67ecd05a2265c00b243ef1bf55fbe";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ublox-gps ublox-msgs ublox-serialization ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Provides a ublox_gps node for u-blox GPS receivers, messages, and serialization packages for the binary UBX protocol.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
