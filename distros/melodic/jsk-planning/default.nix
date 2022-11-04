
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pddl-msgs, pddl-planner, pddl-planner-viewer, task-compiler }:
buildRosPackage {
  pname = "ros-melodic-jsk-planning";
  version = "0.1.12-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_planning-release/archive/release/melodic/jsk_planning/0.1.12-1.tar.gz";
    name = "0.1.12-1.tar.gz";
    sha256 = "8182d06f0742a80fa8b31184bfd8f1fd385b69d660e0716a0091e5d4b248137d";
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
