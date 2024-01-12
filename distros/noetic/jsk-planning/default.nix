
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pddl-msgs, pddl-planner, pddl-planner-viewer, task-compiler }:
buildRosPackage {
  pname = "ros-noetic-jsk-planning";
  version = "0.1.14-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_planning-release/archive/release/noetic/jsk_planning/0.1.14-1.tar.gz";
    name = "0.1.14-1.tar.gz";
    sha256 = "64a533802960ec4640626146cb89c273987b6d3e81bf4900507271774408c92b";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ pddl-msgs pddl-planner pddl-planner-viewer task-compiler ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>Metapackage that contains planning package for jsk-ros-pkg</p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
