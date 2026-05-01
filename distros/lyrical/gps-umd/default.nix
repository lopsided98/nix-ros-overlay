
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gps-msgs, gps-tools, gpsd-client }:
buildRosPackage {
  pname = "ros-lyrical-gps-umd";
  version = "2.1.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gps_umd-release/archive/release/lyrical/gps_umd/2.1.2-3.tar.gz";
    name = "2.1.2-3.tar.gz";
    sha256 = "55931af0ea0d2e228ddb5770fcc32880b1e222c6385b1036d535a709c7e41c7f";
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
