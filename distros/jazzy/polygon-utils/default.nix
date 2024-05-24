
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, polygon-msgs }:
buildRosPackage {
  pname = "ros-jazzy-polygon-utils";
  version = "1.0.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/polygon_ros-release/archive/release/jazzy/polygon_utils/1.0.2-3.tar.gz";
    name = "1.0.2-3.tar.gz";
    sha256 = "6a13d021809e64dc69bd3648296d6bfd62bdde58a324bc531ec572f71dfdc3d1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ geometry-msgs polygon-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Utilities for working with polygons, including triangulation";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
