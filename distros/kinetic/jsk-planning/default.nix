
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pddl-msgs, pddl-planner, pddl-planner-viewer, task-compiler }:
buildRosPackage {
  pname = "ros-kinetic-jsk-planning";
  version = "0.1.10";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_planning-release/archive/release/kinetic/jsk_planning/0.1.10-0.tar.gz";
    name = "0.1.10-0.tar.gz";
    sha256 = "5b2cfc6fa1191f7f907215a436eafa5936e5f78f4ade3001ce2cb0d27e493120";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pddl-msgs pddl-planner pddl-planner-viewer task-compiler ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>Metapackage that contains planning package for jsk-ros-pkg</p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
