
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-manager, joint-state-publisher, moveit-resources-fanuc-description, position-controllers, robot-state-publisher, ros2cli-common-extensions, tf2-ros, xacro }:
buildRosPackage {
  pname = "ros-lyrical-moveit-resources-fanuc-moveit-config";
  version = "3.1.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit_resources-release/archive/release/lyrical/moveit_resources_fanuc_moveit_config/3.1.1-3.tar.gz";
    name = "3.1.1-3.tar.gz";
    sha256 = "103277d115965ebc869942b117b4cb9255efe9c7a6a51d5aa658d4980f177591";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ controller-manager joint-state-publisher moveit-resources-fanuc-description position-controllers robot-state-publisher ros2cli-common-extensions tf2-ros xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "<p>
      MoveIt Resources for testing: Fanuc M-10iA.
    </p>
    <p>
      A project-internal configuration for testing in MoveIt.
    </p>";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
