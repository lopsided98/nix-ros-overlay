
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, joint-state-publisher, joint-state-publisher-gui, moveit-resources-panda-description, robot-state-publisher, topic-tools, xacro }:
buildRosPackage {
  pname = "ros-lyrical-dual-arm-panda-moveit-config";
  version = "3.1.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit_resources-release/archive/release/lyrical/dual_arm_panda_moveit_config/3.1.1-3.tar.gz";
    name = "3.1.1-3.tar.gz";
    sha256 = "bf84c1bc34229d5fdf08a37fe44d7f99e45d3d7c88971ae8a6ea008a83268da5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ joint-state-publisher joint-state-publisher-gui moveit-resources-panda-description robot-state-publisher topic-tools xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "<p>
      Dual Franka Emika Panda MoveIt Configuration 
    </p>";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
