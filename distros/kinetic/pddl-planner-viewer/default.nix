
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pddl-planner }:
buildRosPackage {
  pname = "ros-kinetic-pddl-planner-viewer";
  version = "0.1.10";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_planning-release/archive/release/kinetic/pddl_planner_viewer/0.1.10-0.tar.gz";
    name = "0.1.10-0.tar.gz";
    sha256 = "08e145556c84fb223f370ab0ee0aacc938102e6d09675c59b00842b1b15f462e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pddl-planner ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''a viewer of pddl_planner.'';
    license = with lib.licenses; [ asl20 ];
  };
}
