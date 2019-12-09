
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, geometry-msgs, pythonPackages, ament-cmake, unique-identifier-msgs, geographic-msgs, angles }:
buildRosPackage {
  pname = "ros-dashing-geodesy";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-geographic-info/geographic_info-release/archive/release/dashing/geodesy/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "65697d626472d7515652b20979bd6b975b81d8444b66e86a6025b7362176dc92";
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
