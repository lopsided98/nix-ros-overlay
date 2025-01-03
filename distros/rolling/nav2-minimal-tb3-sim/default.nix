
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, robot-state-publisher, ros-gz-bridge, ros-gz-image, ros-gz-interfaces, ros-gz-sim, xacro }:
buildRosPackage {
  pname = "ros-rolling-nav2-minimal-tb3-sim";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-navigation/nav2_minimal_turtlebot_simulation-release/archive/release/rolling/nav2_minimal_tb3_sim/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "5952a0f5763f6e78177c4c049f100b14d9f7df194b1a586a0692e640a6f35239";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ robot-state-publisher ros-gz-bridge ros-gz-image ros-gz-interfaces ros-gz-sim xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Nav2 Minimum TurtleBot3 Simulation";
    license = with lib.licenses; [ asl20 ];
  };
}
