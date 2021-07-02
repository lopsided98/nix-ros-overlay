
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, moveit-common, moveit-ros-planning-interface }:
buildRosPackage {
  pname = "ros-foxy-run-move-group";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit2-release/archive/release/foxy/run_move_group/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "14adab3f57004822bbd01824c22ae77e8e5a5aebe93533833ff6dfe462c782a5";
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
