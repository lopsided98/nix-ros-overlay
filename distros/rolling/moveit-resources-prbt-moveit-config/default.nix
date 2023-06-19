
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, joint-state-publisher, moveit-resources-prbt-ikfast-manipulator-plugin, moveit-resources-prbt-support, moveit-ros-move-group, robot-state-publisher, rviz2, xacro }:
buildRosPackage {
  pname = "ros-rolling-moveit-resources-prbt-moveit-config";
  version = "2.7.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/rolling/moveit_resources_prbt_moveit_config/2.7.4-1.tar.gz";
    name = "2.7.4-1.tar.gz";
    sha256 = "cd59c1267135dc2fb030ca330e3b56d794113826868070fc7f5d1f12e2dad933";
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
