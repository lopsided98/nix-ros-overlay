
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, nav2-minimal-tb4-description, robot-state-publisher, ros-gz-bridge, ros-gz-image, ros-gz-interfaces, ros-gz-sim, xacro }:
buildRosPackage {
  pname = "ros-jazzy-nav2-minimal-tb4-sim";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-navigation/nav2_minimal_turtlebot_simulation-release/archive/release/jazzy/nav2_minimal_tb4_sim/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "878af745f050e4439666f853cc1c4eac21359723bb3a87c0da3b45ee5a2a8d99";
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
