
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, octomap-server }:
buildRosPackage {
  pname = "ros-rolling-octomap-mapping";
  version = "2.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/octomap_mapping-release/archive/release/rolling/octomap_mapping/2.1.0-2.tar.gz";
    name = "2.1.0-2.tar.gz";
    sha256 = "ca43574dff8532acd3c1a3a432f611ba5e9349bf208fbba5ac8d801197dc9106";
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
