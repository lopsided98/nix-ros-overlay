
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, angles, geographic-msgs, geometry-msgs, pythonPackages, sensor-msgs, unique-identifier-msgs }:
buildRosPackage {
  pname = "ros-eloquent-geodesy";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-geographic-info/geographic_info-release/archive/release/eloquent/geodesy/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "c248cf6e42246a0116dec42163e84966219d6a810894d7be9143fe279c9e7a98";
  };

  buildType = "ament_cmake";
  buildInputs = [ pythonPackages.catkin-pkg ];
  propagatedBuildInputs = [ angles geographic-msgs geometry-msgs pythonPackages.pyproj sensor-msgs unique-identifier-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Python and C++ interfaces for manipulating geodetic coordinates.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
