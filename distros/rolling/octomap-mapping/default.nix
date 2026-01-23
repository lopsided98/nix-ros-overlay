
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, octomap-server }:
buildRosPackage {
  pname = "ros-rolling-octomap-mapping";
  version = "2.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/octomap_mapping-release/archive/release/rolling/octomap_mapping/2.3.1-1.tar.gz";
    name = "2.3.1-1.tar.gz";
    sha256 = "b5b295e0ae9c2b4e13ad96bd1ffccbb2a80164a201e13086520ffc3714ac1d47";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ octomap-server ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Mapping tools to be used with the <a href=\"https://octomap.github.io/\">OctoMap library</a>, implementing a 3D occupancy grid mapping.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
