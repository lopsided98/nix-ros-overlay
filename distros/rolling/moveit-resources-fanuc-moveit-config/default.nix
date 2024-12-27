
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-manager, joint-state-publisher, moveit-resources-fanuc-description, position-controllers, robot-state-publisher, ros2cli-common-extensions, tf2-ros, xacro }:
buildRosPackage {
  pname = "ros-rolling-moveit-resources-fanuc-moveit-config";
  version = "3.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit_resources-release/archive/release/rolling/moveit_resources_fanuc_moveit_config/3.1.0-1.tar.gz";
    name = "3.1.0-1.tar.gz";
    sha256 = "29848936c9c027cd76f64f21e2a42733e3bbecb2d84773b9ffe22e9697c861ab";
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
