
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, angles, geographic-msgs, geometry-msgs, python3Packages, sensor-msgs, unique-identifier-msgs }:
buildRosPackage {
  pname = "ros-rolling-geodesy";
  version = "1.0.7-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geographic_info-release/archive/release/rolling/geodesy/1.0.7-4.tar.gz";
    name = "1.0.7-4.tar.gz";
    sha256 = "92b12f2fc7a8e3083544b5e81d8df61f1008ecaacdc3574341c36ba5a1367984";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake python3Packages.catkin-pkg ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ angles geographic-msgs geometry-msgs python3Packages.pyproj sensor-msgs unique-identifier-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Python and C++ interfaces for manipulating geodetic coordinates.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
