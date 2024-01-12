
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ublox-gps, ublox-msgs, ublox-serialization }:
buildRosPackage {
  pname = "ros-iron-ublox";
  version = "2.3.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ublox-release/archive/release/iron/ublox/2.3.0-3.tar.gz";
    name = "2.3.0-3.tar.gz";
    sha256 = "017383fcb76f4731858b1fa85ae554c5368d73e6793e8858b44070eb549c5c48";
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
