
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, joint-state-publisher, joint-state-publisher-gui, moveit-resources-panda-description, robot-state-publisher, topic-tools, xacro }:
buildRosPackage {
  pname = "ros-rolling-dual-arm-panda-moveit-config";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit_resources-release/archive/release/rolling/dual_arm_panda_moveit_config/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "9dc26abb540ea8917aa46bc51d75da010dcfa84b6ae2538403402ff4e881a1f3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ joint-state-publisher joint-state-publisher-gui moveit-resources-panda-description robot-state-publisher topic-tools xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''<p>
      Dual Franka Emika Panda MoveIt Configuration 
    </p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
