
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-state-publisher, moveit-resources-fanuc-description, robot-state-publisher, tf2-ros, xacro }:
buildRosPackage {
  pname = "ros-melodic-moveit-resources-fanuc-moveit-config";
  version = "0.8.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit_resources-release/archive/release/melodic/moveit_resources_fanuc_moveit_config/0.8.2-1.tar.gz";
    name = "0.8.2-1.tar.gz";
    sha256 = "1252b8c2c843e7c35bc03ea29f72edf7595bad2a9bf9976e715e39c15549e4f4";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
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
