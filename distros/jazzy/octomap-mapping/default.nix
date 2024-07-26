
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, octomap-server }:
buildRosPackage {
  pname = "ros-jazzy-octomap-mapping";
  version = "2.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/octomap_mapping-release/archive/release/jazzy/octomap_mapping/2.3.0-1.tar.gz";
    name = "2.3.0-1.tar.gz";
    sha256 = "ab2bd712fa64941dc4494f7888a5cffb4fe50a89ce0abf7f7d561c63b45387aa";
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
