
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pddl-planner }:
buildRosPackage {
  pname = "ros-melodic-pddl-planner-viewer";
  version = "0.1.12-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_planning-release/archive/release/melodic/pddl_planner_viewer/0.1.12-1.tar.gz";
    name = "0.1.12-1.tar.gz";
    sha256 = "4496310c975f2847fc8b6ba03073810225b48e166ba3da11c06aabaa1c7031af";
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
