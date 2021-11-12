
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, joint-state-publisher, moveit-resources-fanuc-description, moveit-resources-fanuc-moveit-config, moveit-resources-panda-description, moveit-resources-panda-moveit-config, moveit-resources-pr2-description, robot-state-publisher }:
buildRosPackage {
  pname = "ros-noetic-moveit-resources";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit_resources-release/archive/release/noetic/moveit_resources/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "676d396be3f8fecbdb7d6a41a2b49613e440b955d51737517be177ecd2f2b136";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ joint-state-publisher moveit-resources-fanuc-description moveit-resources-fanuc-moveit-config moveit-resources-panda-description moveit-resources-panda-moveit-config moveit-resources-pr2-description robot-state-publisher ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Resources used for MoveIt! testing'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
