
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, chomp-motion-planner, moveit-common, moveit-core, pluginlib }:
buildRosPackage {
  pname = "ros-humble-moveit-chomp-optimizer-adapter";
  version = "2.5.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/humble/moveit_chomp_optimizer_adapter/2.5.10-1.tar.gz";
    name = "2.5.10-1.tar.gz";
    sha256 = "3883cfcb0094081c2d90dfbd8a076b3011e0613a3f8fbce498934717e9b54cd3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ chomp-motion-planner moveit-common moveit-core pluginlib ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "MoveIt planning request adapter utilizing chomp for solution optimization";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
