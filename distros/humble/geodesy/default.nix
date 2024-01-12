
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, angles, geographic-msgs, geometry-msgs, python3Packages, sensor-msgs, unique-identifier-msgs }:
buildRosPackage {
  pname = "ros-humble-geodesy";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geographic_info-release/archive/release/humble/geodesy/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "fa05af8d16df4be6cc8f6a71d9009933d293d9054c3177fae791cc998e3e70da";
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
