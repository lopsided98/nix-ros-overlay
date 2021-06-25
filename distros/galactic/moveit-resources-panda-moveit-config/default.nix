
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, joint-state-publisher, joint-state-publisher-gui, moveit-resources-panda-description, robot-state-publisher, xacro }:
buildRosPackage {
  pname = "ros-galactic-moveit-resources-panda-moveit-config";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit_resources-release/archive/release/galactic/moveit_resources_panda_moveit_config/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "6fd85578912213782703256aa5b4e7a2e87d44e47ddcc886e8f18eba042b9908";
  };

  buildType = "ament_cmake";
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
