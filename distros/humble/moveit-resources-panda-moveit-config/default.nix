
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, joint-state-publisher, joint-state-publisher-gui, moveit-resources-panda-description, robot-state-publisher, xacro }:
buildRosPackage {
  pname = "ros-humble-moveit-resources-panda-moveit-config";
  version = "2.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit_resources-release/archive/release/humble/moveit_resources_panda_moveit_config/2.0.5-1.tar.gz";
    name = "2.0.5-1.tar.gz";
    sha256 = "60ff512e969f1afcddb4a161ebcdffa4b0a224e80be4787e92a1fe14327e1935";
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
