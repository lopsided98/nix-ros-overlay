
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, joint-state-publisher, moveit-resources-prbt-ikfast-manipulator-plugin, moveit-resources-prbt-support, moveit-ros-move-group, robot-state-publisher, rviz2, xacro }:
buildRosPackage {
  pname = "ros-rolling-moveit-resources-prbt-moveit-config";
  version = "2.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/rolling/moveit_resources_prbt_moveit_config/2.7.3-1.tar.gz";
    name = "2.7.3-1.tar.gz";
    sha256 = "291adac9a29bad48086bd1dc84ea14a5d6ad8d4a9ba5113ddaa7843a45dbda5d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ joint-state-publisher moveit-resources-prbt-ikfast-manipulator-plugin moveit-resources-prbt-support moveit-ros-move-group robot-state-publisher rviz2 xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''<p>
      MoveIt Resources for testing: Pilz PRBT 6
    </p>
    <p>
		A project-internal configuration for testing in MoveIt.
    </p>'';
    license = with lib.licenses; [ bsd3 ];
  };
}
