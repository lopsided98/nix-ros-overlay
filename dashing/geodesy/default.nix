
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, unique-identifier-msgs, ament-cmake, sensor-msgs, pythonPackages, geographic-msgs, angles, geometry-msgs }:
buildRosPackage {
  pname = "ros-dashing-geodesy";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-geographic-info/geographic_info-release/archive/release/dashing/geodesy/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "65697d626472d7515652b20979bd6b975b81d8444b66e86a6025b7362176dc92";
  };

  buildType = "ament_cmake";
  buildInputs = [ unique-identifier-msgs sensor-msgs geographic-msgs angles pythonPackages.catkin-pkg pythonPackages.pyproj geometry-msgs ];
  propagatedBuildInputs = [ unique-identifier-msgs sensor-msgs geographic-msgs angles pythonPackages.pyproj geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Python and C++ interfaces for manipulating geodetic coordinates.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
