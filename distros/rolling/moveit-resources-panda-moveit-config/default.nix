
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, joint-state-publisher, joint-state-publisher-gui, moveit-resources-panda-description, robot-state-publisher, xacro }:
buildRosPackage {
  pname = "ros-rolling-moveit-resources-panda-moveit-config";
  version = "2.0.6-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit_resources-release/archive/release/rolling/moveit_resources_panda_moveit_config/2.0.6-2.tar.gz";
    name = "2.0.6-2.tar.gz";
    sha256 = "990306c0eb96dd298e845d65d7174b2a2375d6449d36d5584d16f05eb154c280";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ joint-state-publisher joint-state-publisher-gui moveit-resources-panda-description robot-state-publisher xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''<p>
      MoveIt Resources for testing: Franka Emika Panda
    </p>
    <p>
      A project-internal configuration for testing in MoveIt.
    </p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
