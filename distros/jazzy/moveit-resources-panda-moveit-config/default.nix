
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, joint-state-publisher, joint-state-publisher-gui, moveit-resources-panda-description, robot-state-publisher, xacro }:
buildRosPackage {
  pname = "ros-jazzy-moveit-resources-panda-moveit-config";
  version = "3.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit_resources-release/archive/release/jazzy/moveit_resources_panda_moveit_config/3.0.0-3.tar.gz";
    name = "3.0.0-3.tar.gz";
    sha256 = "60c7727980084a14a96b7a6f33123dc82f4ab56a6518a821ae0da0ccc5f358ae";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ joint-state-publisher joint-state-publisher-gui moveit-resources-panda-description robot-state-publisher xacro ];
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
