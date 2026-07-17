
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-manager, joint-state-publisher, moveit-resources-fanuc-description, robot-state-publisher, ros2cli-common-extensions, tf2-ros, xacro }:
buildRosPackage {
  pname = "ros-lyrical-moveit-resources-fanuc-moveit-config";
  version = "3.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit_resources-release/archive/release/lyrical/moveit_resources_fanuc_moveit_config/3.2.0-1.tar.gz";
    name = "3.2.0-1.tar.gz";
    sha256 = "fe49527ce07af508dab26fff5f90e8f591713a4afbc74ae671dd84f102eca85c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ controller-manager joint-state-publisher moveit-resources-fanuc-description robot-state-publisher ros2cli-common-extensions tf2-ros xacro ];
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
