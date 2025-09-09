
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, angles, geographic-msgs, geometry-msgs, python3Packages, sensor-msgs, unique-identifier-msgs }:
buildRosPackage {
  pname = "ros-kilted-geodesy";
  version = "1.0.6-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geographic_info-release/archive/release/kilted/geodesy/1.0.6-2.tar.gz";
    name = "1.0.6-2.tar.gz";
    sha256 = "cb1b9f77bd34c1193693c48f591b3a04755f8b87177b096d84aee3080fcb6c60";
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
