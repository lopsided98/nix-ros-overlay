
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, joint-state-publisher, joint-state-publisher-gui, moveit-resources-panda-description, robot-state-publisher, topic-tools, xacro }:
buildRosPackage {
  pname = "ros-kilted-dual-arm-panda-moveit-config";
  version = "3.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit_resources-release/archive/release/kilted/dual_arm_panda_moveit_config/3.1.1-1.tar.gz";
    name = "3.1.1-1.tar.gz";
    sha256 = "445902af49819806669f0df06125cfe71568757dea036702212cb28f0c40c9bb";
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
