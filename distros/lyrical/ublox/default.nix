
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ublox-gps, ublox-msgs, ublox-serialization }:
buildRosPackage {
  pname = "ros-lyrical-ublox";
  version = "3.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ublox-release/archive/release/lyrical/ublox/3.0.0-3.tar.gz";
    name = "3.0.0-3.tar.gz";
    sha256 = "a95af1066231bab7a04d41b3812c1c85f7106e208a5be53b18881513f167b98f";
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
