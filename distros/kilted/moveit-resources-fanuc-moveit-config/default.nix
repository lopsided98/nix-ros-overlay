
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-manager, joint-state-publisher, moveit-resources-fanuc-description, position-controllers, robot-state-publisher, ros2cli-common-extensions, tf2-ros, xacro }:
buildRosPackage {
  pname = "ros-kilted-moveit-resources-fanuc-moveit-config";
  version = "3.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit_resources-release/archive/release/kilted/moveit_resources_fanuc_moveit_config/3.1.1-1.tar.gz";
    name = "3.1.1-1.tar.gz";
    sha256 = "56652f34f77566cfa6859752774dcdba6452c48114c53f62a0d61a9f947fc560";
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
