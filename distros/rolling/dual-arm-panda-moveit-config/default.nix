
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, joint-state-publisher, joint-state-publisher-gui, moveit-resources-panda-description, robot-state-publisher, topic-tools, xacro }:
buildRosPackage {
  pname = "ros-rolling-dual-arm-panda-moveit-config";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit_resources-release/archive/release/rolling/dual_arm_panda_moveit_config/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "ebaf1624aa2f4d79c1dd65c109862d9b1a096db2dd763997cc2455086b02c017";
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
