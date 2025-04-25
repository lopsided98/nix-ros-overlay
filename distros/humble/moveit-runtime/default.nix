
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, moveit-core, moveit-planners, moveit-plugins, moveit-ros-move-group, moveit-ros-perception, moveit-ros-planning, moveit-ros-planning-interface, moveit-ros-warehouse }:
buildRosPackage {
  pname = "ros-humble-moveit-runtime";
  version = "2.5.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/humble/moveit_runtime/2.5.9-1.tar.gz";
    name = "2.5.9-1.tar.gz";
    sha256 = "48779e0aa5f5a95bf9ca143f647e358c27b9bdcdec60e0e23a12e655c27f638c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ moveit-core moveit-planners moveit-plugins moveit-ros-move-group moveit-ros-perception moveit-ros-planning moveit-ros-planning-interface moveit-ros-warehouse ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "moveit_runtime meta package contains MoveIt packages that are essential for its runtime (e.g. running MoveIt on robots).";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
