
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, amcl, catkin, map-server, move-base, mpc-local-planner, mpc-local-planner-msgs, stage-ros }:
buildRosPackage {
  pname = "ros-melodic-mpc-local-planner-examples";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/rst-tu-dortmund/mpc_local_planner-release/archive/release/melodic/mpc_local_planner_examples/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "cd714dbefccd4740cc76657dc09776e1a243664df04c01f46b7434f4abc5aaaf";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ amcl map-server move-base mpc-local-planner mpc-local-planner-msgs stage-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mpc_local_planner_examples package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
