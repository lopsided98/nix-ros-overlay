
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-iron-grid-map-cmake-helpers";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/grid_map-release/archive/release/iron/grid_map_cmake_helpers/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "346cfb9ae1c42ebbafcb6e1759431ffdbc8a9dc1c78ce2e99244bda486c4265b";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''CMake support functionality used throughout grid_map'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
