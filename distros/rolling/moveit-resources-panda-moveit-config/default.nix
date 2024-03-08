
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, joint-state-publisher, joint-state-publisher-gui, moveit-resources-panda-description, robot-state-publisher, xacro }:
buildRosPackage {
  pname = "ros-rolling-moveit-resources-panda-moveit-config";
  version = "3.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit_resources-release/archive/release/rolling/moveit_resources_panda_moveit_config/3.0.0-2.tar.gz";
    name = "3.0.0-2.tar.gz";
    sha256 = "acca6672c5f826ec50fa901e8f9eff6795b3acbafe131616d0f06ec3f25fb53d";
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
