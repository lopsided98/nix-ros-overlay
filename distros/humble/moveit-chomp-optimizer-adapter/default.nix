
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, chomp-motion-planner, moveit-common, moveit-core, pluginlib }:
buildRosPackage {
  pname = "ros-humble-moveit-chomp-optimizer-adapter";
  version = "2.5.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/humble/moveit_chomp_optimizer_adapter/2.5.7-1.tar.gz";
    name = "2.5.7-1.tar.gz";
    sha256 = "ac6aa6ab66caeea67abd740f82e080a39097e79ee8cd8461f0c1fadbb73f0e48";
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
