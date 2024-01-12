
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, joint-state-publisher, joint-state-publisher-gui, moveit-resources-panda-description, robot-state-publisher, topic-tools, xacro }:
buildRosPackage {
  pname = "ros-iron-dual-arm-panda-moveit-config";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit_resources-release/archive/release/iron/dual_arm_panda_moveit_config/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "731283fefdb73055b092bb1e21479abab180cdb12240118a60c18f79c313b845";
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
