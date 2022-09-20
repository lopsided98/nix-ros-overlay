
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, amcl, catkin, map-server, move-base, mpc-local-planner, mpc-local-planner-msgs, stage-ros }:
buildRosPackage {
  pname = "ros-melodic-mpc-local-planner-examples";
  version = "0.0.3-r1";

  src = fetchurl {
    url = "https://github.com/rst-tu-dortmund/mpc_local_planner-release/archive/release/melodic/mpc_local_planner_examples/0.0.3-1.tar.gz";
    name = "0.0.3-1.tar.gz";
    sha256 = "79549b550d571485d31da57e740d6d35eda56544939da69caf2c521543705430";
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
