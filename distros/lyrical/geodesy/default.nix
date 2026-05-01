
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, angles, geographic-msgs, geometry-msgs, python3Packages, sensor-msgs, unique-identifier-msgs }:
buildRosPackage {
  pname = "ros-lyrical-geodesy";
  version = "1.0.6-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geographic_info-release/archive/release/lyrical/geodesy/1.0.6-3.tar.gz";
    name = "1.0.6-3.tar.gz";
    sha256 = "8846c1c2dfcd2f41139b4e9c2089562e7748b04706b5d9aaa5bf0768d31071f9";
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
