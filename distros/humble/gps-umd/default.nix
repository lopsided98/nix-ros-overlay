
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gps-msgs, gps-tools, gpsd-client }:
buildRosPackage {
  pname = "ros-humble-gps-umd";
  version = "1.0.4-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gps_umd-release/archive/release/humble/gps_umd/1.0.4-3.tar.gz";
    name = "1.0.4-3.tar.gz";
    sha256 = "d7ead7500f944ad1964110540571ef5220b12a8f8c3b0ff21e5899798b6e8e7e";
  };

  buildType = "catkin";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ gps-msgs gps-tools gpsd-client ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''gps_umd metapackage'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
