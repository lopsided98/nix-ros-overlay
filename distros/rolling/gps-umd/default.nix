
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gps-msgs, gps-tools, gpsd-client }:
buildRosPackage {
  pname = "ros-rolling-gps-umd";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gps_umd-release/archive/release/rolling/gps_umd/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "adc53efd9f4c03c31463d7184be5767b0446ab0adbccbdc96376265a24ae67b6";
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
