
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gps-msgs, gps-tools, gpsd-client }:
buildRosPackage {
  pname = "ros-jazzy-gps-umd";
  version = "2.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gps_umd-release/archive/release/jazzy/gps_umd/2.0.5-1.tar.gz";
    name = "2.0.5-1.tar.gz";
    sha256 = "b31d9393af8cd1926e217981d7f018c0ba382eb33038ba0be1a20b71bea29130";
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
