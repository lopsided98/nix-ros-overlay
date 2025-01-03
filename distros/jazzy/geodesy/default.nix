
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, angles, geographic-msgs, geometry-msgs, python3Packages, sensor-msgs, unique-identifier-msgs }:
buildRosPackage {
  pname = "ros-jazzy-geodesy";
  version = "1.0.6-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geographic_info-release/archive/release/jazzy/geodesy/1.0.6-2.tar.gz";
    name = "1.0.6-2.tar.gz";
    sha256 = "1bda0070499a655e4613e71ca293ce5f96aa18b0aaf438febbad8ee1efb55734";
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
