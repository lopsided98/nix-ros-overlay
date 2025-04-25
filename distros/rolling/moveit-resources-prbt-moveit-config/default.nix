
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, joint-state-publisher, moveit-resources-prbt-ikfast-manipulator-plugin, moveit-resources-prbt-support, moveit-ros-move-group, robot-state-publisher, rviz2, xacro }:
buildRosPackage {
  pname = "ros-rolling-moveit-resources-prbt-moveit-config";
  version = "2.13.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/rolling/moveit_resources_prbt_moveit_config/2.13.2-1.tar.gz";
    name = "2.13.2-1.tar.gz";
    sha256 = "af8091427b4b42e13746883dfb7914220b2af4d2603c8257156af3f4149d0924";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ joint-state-publisher moveit-resources-prbt-ikfast-manipulator-plugin moveit-resources-prbt-support moveit-ros-move-group robot-state-publisher rviz2 xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "<p>
      MoveIt Resources for testing: Pilz PRBT 6
    </p>
    <p>
		A project-internal configuration for testing in MoveIt.
    </p>";
    license = with lib.licenses; [ bsd3 ];
  };
}
