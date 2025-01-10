
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, joint-state-publisher, robot-state-publisher, urdf, xacro }:
buildRosPackage {
  pname = "ros-rolling-nav2-minimal-tb4-description";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nav2_minimal_turtlebot_simulation-release/archive/release/rolling/nav2_minimal_tb4_description/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "f205ef4d43830411455f4206b0b66eb67a6f80c72f98d1dfbd7905d00ff009c4";
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
