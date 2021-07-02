
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, moveit-common, moveit-ros-planning-interface }:
buildRosPackage {
  pname = "ros-galactic-run-move-group";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit2-release/archive/release/galactic/run_move_group/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "762f994116876259c9b776090ba6bf335263285da11a691499a54e80dccd66be";
  };

  buildType = "ament_cmake";
  buildInputs = [ moveit-common ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ moveit-ros-planning-interface ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Demo launch file for running a MoveGroup setup'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
