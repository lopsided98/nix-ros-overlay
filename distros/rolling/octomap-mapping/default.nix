
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, octomap-server }:
buildRosPackage {
  pname = "ros-rolling-octomap-mapping";
  version = "2.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/octomap_mapping-release/archive/release/rolling/octomap_mapping/2.0.0-2.tar.gz";
    name = "2.0.0-2.tar.gz";
    sha256 = "02862a10cd97500288686dd2ca987dce53a6a297b504756641f8b245c8faa67b";
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
