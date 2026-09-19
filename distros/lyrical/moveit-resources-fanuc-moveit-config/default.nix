
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-manager, joint-state-publisher, moveit-resources-fanuc-description, robot-state-publisher, ros2cli-common-extensions, tf2-ros, xacro }:
buildRosPackage {
  pname = "ros-lyrical-moveit-resources-fanuc-moveit-config";
  version = "3.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit_resources-release/archive/release/lyrical/moveit_resources_fanuc_moveit_config/3.2.1-1.tar.gz";
    name = "3.2.1-1.tar.gz";
    sha256 = "1a531eda44dbbfe1fd1c45cf422b3a7960adb78a920efbf3b6bdf6b67f35047d";
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
