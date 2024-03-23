
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, joint-state-publisher, joint-state-publisher-gui, moveit-resources-panda-description, robot-state-publisher, topic-tools, xacro }:
buildRosPackage {
  pname = "ros-rolling-dual-arm-panda-moveit-config";
  version = "3.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit_resources-release/archive/release/rolling/dual_arm_panda_moveit_config/3.0.0-2.tar.gz";
    name = "3.0.0-2.tar.gz";
    sha256 = "9ba61b7776b683344052756c8ea3e0fac5ecc873198cec358aa08c9d4894a1d6";
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
