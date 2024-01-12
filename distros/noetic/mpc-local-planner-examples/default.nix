
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, amcl, catkin, map-server, move-base, mpc-local-planner, mpc-local-planner-msgs, stage-ros }:
buildRosPackage {
  pname = "ros-noetic-mpc-local-planner-examples";
  version = "0.0.3-r1";

  src = fetchurl {
    url = "https://github.com/rst-tu-dortmund/mpc_local_planner-release/archive/release/noetic/mpc_local_planner_examples/0.0.3-1.tar.gz";
    name = "0.0.3-1.tar.gz";
    sha256 = "b0ef5b7b4bf1c078f9dc2aa977e465a8435c3c7640ea94afe6848e79467b849b";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ amcl map-server move-base mpc-local-planner mpc-local-planner-msgs stage-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mpc_local_planner_examples package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
