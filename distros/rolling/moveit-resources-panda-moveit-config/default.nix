
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-manager, gripper-controllers, joint-state-publisher, joint-state-publisher-gui, moveit-resources-panda-description, position-controllers, robot-state-publisher, ros2cli-common-extensions, topic-tools, xacro }:
buildRosPackage {
  pname = "ros-rolling-moveit-resources-panda-moveit-config";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit_resources-release/archive/release/rolling/moveit_resources_panda_moveit_config/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "992be484934499516dfa472c03a2446195af1fa10cb585e85696864b4b2a7cf6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ controller-manager gripper-controllers joint-state-publisher joint-state-publisher-gui moveit-resources-panda-description position-controllers robot-state-publisher ros2cli-common-extensions topic-tools xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "<p>
      MoveIt Resources for testing: Franka Emika Panda
    </p>
    <p>
      A project-internal configuration for testing in MoveIt.
    </p>";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
