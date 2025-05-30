
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, robot-state-publisher, ros-gz-bridge, ros-gz-image, ros-gz-interfaces, ros-gz-sim, xacro }:
buildRosPackage {
  pname = "ros-kilted-nav2-minimal-tb3-sim";
  version = "1.1.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nav2_minimal_turtlebot_simulation-release/archive/release/kilted/nav2_minimal_tb3_sim/1.1.0-3.tar.gz";
    name = "1.1.0-3.tar.gz";
    sha256 = "a49a6b5eefcecfbff0db73e9d207cda8e54007c25b044ca629757d86b30f4aaf";
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
