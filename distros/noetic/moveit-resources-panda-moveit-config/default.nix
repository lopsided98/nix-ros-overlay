
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-state-publisher, joint-state-publisher-gui, moveit-resources-panda-description, robot-state-publisher, rviz, tf2-ros, xacro }:
buildRosPackage {
  pname = "ros-noetic-moveit-resources-panda-moveit-config";
  version = "0.8.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit_resources-release/archive/release/noetic/moveit_resources_panda_moveit_config/0.8.2-1.tar.gz";
    name = "0.8.2-1.tar.gz";
    sha256 = "e5b5da7f3f30a6e0ddd98c802432f99fa526c623d00780c1c4e66759c3813164";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ joint-state-publisher joint-state-publisher-gui moveit-resources-panda-description robot-state-publisher rviz tf2-ros xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>
      MoveIt Resources for testing: Franka Emika Panda
    </p>
    <p>
      A project-internal configuration for testing in MoveIt.
    </p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
