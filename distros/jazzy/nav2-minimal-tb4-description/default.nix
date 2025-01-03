
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, joint-state-publisher, robot-state-publisher, urdf, xacro }:
buildRosPackage {
  pname = "ros-jazzy-nav2-minimal-tb4-description";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-navigation/nav2_minimal_turtlebot_simulation-release/archive/release/jazzy/nav2_minimal_tb4_description/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "58c6be4763f93ff86ea6d4f3d8779d6a36e0adc18317811b0088c21ce0c58d39";
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
