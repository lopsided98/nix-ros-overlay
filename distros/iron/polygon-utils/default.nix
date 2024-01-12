
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, polygon-msgs }:
buildRosPackage {
  pname = "ros-iron-polygon-utils";
  version = "1.0.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/polygon_ros-release/archive/release/iron/polygon_utils/1.0.2-2.tar.gz";
    name = "1.0.2-2.tar.gz";
    sha256 = "68222e521de5702484e3e4d41c3122bc30507a1a4425b36a0fb74f5a60a77db2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ geometry-msgs polygon-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Utilities for working with polygons, including triangulation'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
