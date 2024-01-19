
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, grid-map-cmake-helpers, grid-map-core, pcl }:
buildRosPackage {
  pname = "ros-humble-grid-map-sdf";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/grid_map-release/archive/release/humble/grid_map_sdf/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "19f37d4d5c2077644ada70d64815f93994655410761621a7729058044a7e66e2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake grid-map-cmake-helpers ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ grid-map-core pcl ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Generates signed distance fields from grid maps.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
