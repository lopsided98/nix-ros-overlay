
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pddl-planner }:
buildRosPackage {
  pname = "ros-noetic-pddl-planner-viewer";
  version = "0.1.14-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_planning-release/archive/release/noetic/pddl_planner_viewer/0.1.14-1.tar.gz";
    name = "0.1.14-1.tar.gz";
    sha256 = "b4f1beaec161cfa11dea92f4f9f4185729470dd4c82f7cce4ced1745c0646135";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ pddl-planner ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''a viewer of pddl_planner.'';
    license = with lib.licenses; [ asl20 ];
  };
}
