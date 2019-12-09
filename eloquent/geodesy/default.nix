
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, geometry-msgs, pythonPackages, ament-cmake, unique-identifier-msgs, geographic-msgs, angles }:
buildRosPackage {
  pname = "ros-eloquent-geodesy";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-geographic-info/geographic_info-release/archive/release/eloquent/geodesy/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "c248cf6e42246a0116dec42163e84966219d6a810894d7be9143fe279c9e7a98";
  };

  buildType = "ament_cmake";
  buildInputs = [ sensor-msgs geometry-msgs unique-identifier-msgs geographic-msgs pythonPackages.catkin-pkg pythonPackages.pyproj angles ];
  propagatedBuildInputs = [ sensor-msgs geometry-msgs unique-identifier-msgs geographic-msgs pythonPackages.pyproj angles ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Python and C++ interfaces for manipulating geodetic coordinates.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
