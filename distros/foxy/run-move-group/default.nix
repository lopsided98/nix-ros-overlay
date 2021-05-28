
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, moveit-common, moveit-ros-planning-interface }:
buildRosPackage {
  pname = "ros-foxy-run-move-group";
  version = "2.1.3-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit2-release/archive/release/foxy/run_move_group/2.1.3-1.tar.gz";
    name = "2.1.3-1.tar.gz";
    sha256 = "54b4769a77cebb458d57864121abd6192ef81dac16f0bb80e5df53ca4c134b1e";
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
