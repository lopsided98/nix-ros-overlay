
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, joint-state-publisher, moveit-resources-prbt-ikfast-manipulator-plugin, moveit-resources-prbt-support, moveit-ros-move-group, robot-state-publisher, rviz2, xacro }:
buildRosPackage {
  pname = "ros-lyrical-moveit-resources-prbt-moveit-config";
  version = "2.14.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/lyrical/moveit_resources_prbt_moveit_config/2.14.1-3.tar.gz";
    name = "2.14.1-3.tar.gz";
    sha256 = "a0cee853ead87d5074cbdbc611ca6686ce679d9ba0f4338b975025a674b275a6";
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
