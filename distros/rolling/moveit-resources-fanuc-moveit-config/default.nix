
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, joint-state-publisher, moveit-resources-fanuc-description, robot-state-publisher, tf2-ros, xacro }:
buildRosPackage {
  pname = "ros-rolling-moveit-resources-fanuc-moveit-config";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/moveit_resources-release/archive/release/rolling/moveit_resources_fanuc_moveit_config/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "6abbe489b433087b304c9c84d7f34fc77711a28ec56e8e0b8e30d1ffaa240563";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ joint-state-publisher moveit-resources-fanuc-description robot-state-publisher tf2-ros xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''<p>
      MoveIt Resources for testing: Fanuc M-10iA.
    </p>
    <p>
      A project-internal configuration for testing in MoveIt.
    </p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
