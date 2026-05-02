
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-manager, joint-state-publisher, joint-state-publisher-gui, moveit-resources-panda-description, position-controllers, robot-state-publisher, ros2cli-common-extensions, topic-tools, xacro }:
buildRosPackage {
  pname = "ros-rolling-moveit-resources-panda-moveit-config";
  version = "3.1.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit_resources-release/archive/release/rolling/moveit_resources_panda_moveit_config/3.1.1-2.tar.gz";
    name = "3.1.1-2.tar.gz";
    sha256 = "bd43d22d9cb500e117fa8596eb82ea1bf9740da72903737df2b2111c07541513";
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
