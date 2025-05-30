
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, nav2-minimal-tb4-description, robot-state-publisher, ros-gz-bridge, ros-gz-image, ros-gz-interfaces, ros-gz-sim, xacro }:
buildRosPackage {
  pname = "ros-kilted-nav2-minimal-tb4-sim";
  version = "1.1.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nav2_minimal_turtlebot_simulation-release/archive/release/kilted/nav2_minimal_tb4_sim/1.1.0-3.tar.gz";
    name = "1.1.0-3.tar.gz";
    sha256 = "a190cd11f3e2bff9b2bcfd4a67818ec4ea6a2c4af26bec986a57beb99251c1ac";
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
