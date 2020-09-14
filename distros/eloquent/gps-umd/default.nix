
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, gps-msgs, gps-tools, gpsd-client }:
buildRosPackage {
  pname = "ros-eloquent-gps-umd";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/gps_umd-release/archive/release/eloquent/gps_umd/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "7e8160d28a9377c9cd1e311608f75e8773a436c08b273f33fead5d0a148967ef";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gps-msgs gps-tools gpsd-client ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''gps_umd metapackage'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
