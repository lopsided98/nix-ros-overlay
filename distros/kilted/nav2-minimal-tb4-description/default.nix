
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, joint-state-publisher, robot-state-publisher, urdf, xacro }:
buildRosPackage {
  pname = "ros-kilted-nav2-minimal-tb4-description";
  version = "1.1.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nav2_minimal_turtlebot_simulation-release/archive/release/kilted/nav2_minimal_tb4_description/1.1.0-3.tar.gz";
    name = "1.1.0-3.tar.gz";
    sha256 = "206ec37c3d25fcc1235b895a8ae4d7fb5dc92eca9bf9f0c55d25572cd9bb4469";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ joint-state-publisher robot-state-publisher urdf xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Nav2's minimum Turtlebot4 Description package";
    license = with lib.licenses; [ asl20 ];
  };
}
