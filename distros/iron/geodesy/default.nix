
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, angles, geographic-msgs, geometry-msgs, python3Packages, sensor-msgs, unique-identifier-msgs }:
buildRosPackage {
  pname = "ros-iron-geodesy";
  version = "1.0.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geographic_info-release/archive/release/iron/geodesy/1.0.6-1.tar.gz";
    name = "1.0.6-1.tar.gz";
    sha256 = "252b8b13c89b705d8e3a5ec74c9ac4b2ca56f519943ab5103b27b7b88d9fbc28";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake python3Packages.catkin-pkg ];
  propagatedBuildInputs = [ angles geographic-msgs geometry-msgs python3Packages.pyproj sensor-msgs unique-identifier-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Python and C++ interfaces for manipulating geodetic coordinates.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
