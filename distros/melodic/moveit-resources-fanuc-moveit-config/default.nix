
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-state-publisher, moveit-resources-fanuc-description, robot-state-publisher, tf2-ros, xacro }:
buildRosPackage {
  pname = "ros-melodic-moveit-resources-fanuc-moveit-config";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit_resources-release/archive/release/melodic/moveit_resources_fanuc_moveit_config/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "4c86b67b20b8779fc503a66e9ba9c6090e9aefbb5a07916aae4342b91bf626f7";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ joint-state-publisher moveit-resources-fanuc-description robot-state-publisher tf2-ros xacro ];
  nativeBuildInputs = [ catkin ];

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
