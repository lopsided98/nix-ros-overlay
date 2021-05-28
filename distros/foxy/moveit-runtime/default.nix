
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, moveit-core, moveit-planners, moveit-plugins, moveit-ros-move-group, moveit-ros-planning, moveit-ros-planning-interface, moveit-ros-warehouse }:
buildRosPackage {
  pname = "ros-foxy-moveit-runtime";
  version = "2.1.3-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit2-release/archive/release/foxy/moveit_runtime/2.1.3-1.tar.gz";
    name = "2.1.3-1.tar.gz";
    sha256 = "e214d4a8ef5304049f5fdcfc5a87a94aab398d44e39842eb9cf2b3761d87d09e";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ moveit-core moveit-planners moveit-plugins moveit-ros-move-group moveit-ros-planning moveit-ros-planning-interface moveit-ros-warehouse ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''moveit_runtime meta package contains MoveIt packages that are essential for its runtime (e.g. running MoveIt on robots).'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
