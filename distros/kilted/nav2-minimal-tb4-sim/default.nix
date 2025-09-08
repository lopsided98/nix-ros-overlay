
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, nav2-minimal-tb4-description, robot-state-publisher, ros-gz-bridge, ros-gz-image, ros-gz-interfaces, ros-gz-sim, xacro }:
buildRosPackage {
  pname = "ros-kilted-nav2-minimal-tb4-sim";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nav2_minimal_turtlebot_simulation-release/archive/release/kilted/nav2_minimal_tb4_sim/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "78bf7fad3a38898439987a26827715db4125bdb1eab90a8aea453ec165fda0e6";
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
