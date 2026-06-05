
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gps-msgs, gps-tools, gpsd-client }:
buildRosPackage {
  pname = "ros-lyrical-gps-umd";
  version = "2.1.2-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gps_umd-release/archive/release/lyrical/gps_umd/2.1.2-4.tar.gz";
    name = "2.1.2-4.tar.gz";
    sha256 = "1fb47878db167f9df854b2b8311a7be69d57660e719d36b8d058687c030f03aa";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ gps-msgs gps-tools gpsd-client ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "gps_umd metapackage";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
