
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, joint-state-publisher, moveit-resources-prbt-ikfast-manipulator-plugin, moveit-resources-prbt-support, moveit-ros-move-group, robot-state-publisher, rviz2, xacro }:
buildRosPackage {
  pname = "ros-humble-moveit-resources-prbt-moveit-config";
  version = "2.5.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit2-release/archive/release/humble/moveit_resources_prbt_moveit_config/2.5.10-1.tar.gz";
    name = "2.5.10-1.tar.gz";
    sha256 = "ec4b948d89cd617816af23c3f38a950f682491d8eafc5469b1bdfb5153904050";
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
    license = with lib.licenses; [ bsdOriginal ];
  };
}
