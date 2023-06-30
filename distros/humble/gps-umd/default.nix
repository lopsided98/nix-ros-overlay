
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gps-msgs, gps-tools, gpsd-client }:
buildRosPackage {
  pname = "ros-humble-gps-umd";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gps_umd-release/archive/release/humble/gps_umd/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "150b520e8984fe3eb9b557f3d509ebeb32dda1f66c40752cfc02ca53c73c356a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ gps-msgs gps-tools gpsd-client ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''gps_umd metapackage'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
