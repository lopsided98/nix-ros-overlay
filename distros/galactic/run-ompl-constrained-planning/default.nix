
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, moveit-common, moveit-ros-planning-interface, warehouse-ros-mongo }:
buildRosPackage {
  pname = "ros-galactic-run-ompl-constrained-planning";
  version = "2.2.1-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit2-release/archive/release/galactic/run_ompl_constrained_planning/2.2.1-1.tar.gz";
    name = "2.2.1-1.tar.gz";
    sha256 = "b6f251d9c8dad11feb8677dab6e291f53a257455955f8ab4741b70524b6b8db0";
  };

  buildType = "ament_cmake";
  buildInputs = [ moveit-common ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ moveit-ros-planning-interface warehouse-ros-mongo ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Demo ompl constrained planning capabilities'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
