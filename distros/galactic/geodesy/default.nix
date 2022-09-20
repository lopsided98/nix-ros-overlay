
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, angles, geographic-msgs, geometry-msgs, python3Packages, sensor-msgs, unique-identifier-msgs }:
buildRosPackage {
  pname = "ros-galactic-geodesy";
  version = "1.0.4-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geographic_info-release/archive/release/galactic/geodesy/1.0.4-5.tar.gz";
    name = "1.0.4-5.tar.gz";
    sha256 = "bb3d667e92d67677aee68063dd76b3f43d745649614787c04abf2c0fe562aeb7";
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
