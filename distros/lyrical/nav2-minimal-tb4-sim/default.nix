
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, nav2-minimal-tb4-description, robot-state-publisher, ros-gz-bridge, ros-gz-image, ros-gz-interfaces, ros-gz-sim, xacro }:
buildRosPackage {
  pname = "ros-lyrical-nav2-minimal-tb4-sim";
  version = "1.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nav2_minimal_turtlebot_simulation-release/archive/release/lyrical/nav2_minimal_tb4_sim/1.3.0-1.tar.gz";
    name = "1.3.0-1.tar.gz";
    sha256 = "2c649060e68bd5f3828dbd87098f77901bb7ebcea6136f7d442d9b8f68bd30eb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ nav2-minimal-tb4-description robot-state-publisher ros-gz-bridge ros-gz-image ros-gz-interfaces ros-gz-sim xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Nav2 Minimum TurtleBot4 Simulation";
    license = with lib.licenses; [ asl20 ];
  };
}
