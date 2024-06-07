
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, octomap-server }:
buildRosPackage {
  pname = "ros-rolling-octomap-mapping";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/octomap_mapping-release/archive/release/rolling/octomap_mapping/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "7302fe84aea2073618413c9ead427e2e7e73ec949c1d1fd697617ed68d17b615";
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
