
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, angles, geographic-msgs, geometry-msgs, python3Packages, sensor-msgs, unique-identifier-msgs }:
buildRosPackage {
  pname = "ros-rolling-geodesy";
  version = "1.0.4-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geographic_info-release/archive/release/rolling/geodesy/1.0.4-5.tar.gz";
    name = "1.0.4-5.tar.gz";
    sha256 = "52de865618ce1c63b8f4c91d82c3368c1de63fb466fc9f0d44563b77c1305d63";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake python3Packages.catkin-pkg ];
  propagatedBuildInputs = [ angles geographic-msgs geometry-msgs python3Packages.pyproj sensor-msgs unique-identifier-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Python and C++ interfaces for manipulating geodetic coordinates.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
