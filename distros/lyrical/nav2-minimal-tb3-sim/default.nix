
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, robot-state-publisher, ros-gz-bridge, ros-gz-image, ros-gz-interfaces, ros-gz-sim, xacro }:
buildRosPackage {
  pname = "ros-lyrical-nav2-minimal-tb3-sim";
  version = "1.2.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nav2_minimal_turtlebot_simulation-release/archive/release/lyrical/nav2_minimal_tb3_sim/1.2.0-3.tar.gz";
    name = "1.2.0-3.tar.gz";
    sha256 = "e1ed937f2e792021de48e92c91436ab5b835ae6ff2a95af945b6f0fb9495fe08";
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
