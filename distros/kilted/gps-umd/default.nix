
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gps-msgs, gps-tools, gpsd-client }:
buildRosPackage {
  pname = "ros-kilted-gps-umd";
  version = "2.0.5-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gps_umd-release/archive/release/kilted/gps_umd/2.0.5-2.tar.gz";
    name = "2.0.5-2.tar.gz";
    sha256 = "f10dc0de90e7a49e41628dbfa52f5fc333550d2330818eef17f07bd369280574";
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
