
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, octomap-server }:
buildRosPackage {
  pname = "ros-iron-octomap-mapping";
  version = "2.0.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/octomap_mapping-release/archive/release/iron/octomap_mapping/2.0.0-4.tar.gz";
    name = "2.0.0-4.tar.gz";
    sha256 = "aa1f900178f06cf4d90225c36ab9a001dc0bf663b4f79eaff0dd5da3c137a7fd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ octomap-server ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Mapping tools to be used with the <a href="https://octomap.github.io/">OctoMap library</a>, implementing a 3D occupancy grid mapping.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
