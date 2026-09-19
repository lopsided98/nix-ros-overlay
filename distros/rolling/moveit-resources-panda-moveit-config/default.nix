
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-manager, joint-state-publisher, joint-state-publisher-gui, moveit-resources-panda-description, parallel-gripper-controller, robot-state-publisher, ros2cli-common-extensions, topic-tools, xacro }:
buildRosPackage {
  pname = "ros-rolling-moveit-resources-panda-moveit-config";
  version = "3.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit_resources-release/archive/release/rolling/moveit_resources_panda_moveit_config/3.2.1-1.tar.gz";
    name = "3.2.1-1.tar.gz";
    sha256 = "52ef42390cd2c5620e20d6a0c3babc5f9f01262b6f19d8afdee9b5b76eb20fb7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ controller-manager joint-state-publisher joint-state-publisher-gui moveit-resources-panda-description parallel-gripper-controller robot-state-publisher ros2cli-common-extensions topic-tools xacro ];
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
