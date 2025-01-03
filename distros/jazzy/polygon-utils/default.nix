
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-cmake-python, geometry-msgs, polygon-msgs, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-polygon-utils";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/polygon_ros-release/archive/release/jazzy/polygon_utils/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "5ddac03af96d1733d08254753c8c6840f7ffa8944666e91fdb7652ed81eeffc5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python ];
  checkInputs = [ ament-cmake-pytest ];
  propagatedBuildInputs = [ geometry-msgs polygon-msgs python3Packages.shapely ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Utilities for working with polygons, including triangulation";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
