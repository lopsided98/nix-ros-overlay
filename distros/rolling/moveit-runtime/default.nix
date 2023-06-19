
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, moveit-core, moveit-planners, moveit-plugins, moveit-ros-move-group, moveit-ros-perception, moveit-ros-planning, moveit-ros-planning-interface, moveit-ros-warehouse }:
buildRosPackage {
  pname = "ros-rolling-moveit-runtime";
  version = "2.7.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/rolling/moveit_runtime/2.7.4-1.tar.gz";
    name = "2.7.4-1.tar.gz";
    sha256 = "5098e1bcaac77f7ddd148cb9ccadde3b50a513c41431c9cbce93bf6381a9918e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ moveit-core moveit-planners moveit-plugins moveit-ros-move-group moveit-ros-perception moveit-ros-planning moveit-ros-planning-interface moveit-ros-warehouse ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''moveit_runtime meta package contains MoveIt packages that are essential for its runtime (e.g. running MoveIt on robots).'';
    license = with lib.licenses; [ bsd3 ];
  };
}
