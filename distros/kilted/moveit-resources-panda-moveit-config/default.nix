
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-manager, joint-state-publisher, joint-state-publisher-gui, moveit-resources-panda-description, position-controllers, robot-state-publisher, ros2cli-common-extensions, topic-tools, xacro }:
buildRosPackage {
  pname = "ros-kilted-moveit-resources-panda-moveit-config";
  version = "3.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit_resources-release/archive/release/kilted/moveit_resources_panda_moveit_config/3.1.1-1.tar.gz";
    name = "3.1.1-1.tar.gz";
    sha256 = "c579e99a7bf6edd38e69a66ec78641c8457b5cf31eb31585e70e88837ed59319";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ controller-manager joint-state-publisher joint-state-publisher-gui moveit-resources-panda-description position-controllers robot-state-publisher ros2cli-common-extensions topic-tools xacro ];
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
