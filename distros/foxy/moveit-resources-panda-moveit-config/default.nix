
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, joint-state-publisher, joint-state-publisher-gui, moveit-resources-panda-description, robot-state-publisher, xacro }:
buildRosPackage {
  pname = "ros-foxy-moveit-resources-panda-moveit-config";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit_resources-release/archive/release/foxy/moveit_resources_panda_moveit_config/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "1cb766154f53adc871b83e143a84d39fbf3745ae7f8724161ec8e4e9aa10be71";
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
