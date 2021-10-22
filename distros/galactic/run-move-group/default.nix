
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, controller-manager, moveit-common, moveit-resources-panda-moveit-config, moveit-ros-move-group, moveit-ros-planning-interface, robot-state-publisher, rviz2, tf2-ros, warehouse-ros-mongo }:
buildRosPackage {
  pname = "ros-galactic-run-move-group";
  version = "2.3.0-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit2-release/archive/release/galactic/run_move_group/2.3.0-1.tar.gz";
    name = "2.3.0-1.tar.gz";
    sha256 = "367043f71529e8e1172b02fe0d64177574d9e7b3d3bda30254b112c36fc220ed";
  };

  buildType = "ament_cmake";
  buildInputs = [ moveit-common ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ controller-manager moveit-resources-panda-moveit-config moveit-ros-move-group moveit-ros-planning-interface robot-state-publisher rviz2 tf2-ros warehouse-ros-mongo ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Demo launch file for running a MoveGroup setup'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
