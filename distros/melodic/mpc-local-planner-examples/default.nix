
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, amcl, catkin, map-server, move-base, mpc-local-planner, stage-ros }:
buildRosPackage {
  pname = "ros-melodic-mpc-local-planner-examples";
  version = "0.0.1-r2";

  src = fetchurl {
    url = "https://github.com/rst-tu-dortmund/mpc_local_planner-release/archive/release/melodic/mpc_local_planner_examples/0.0.1-2.tar.gz";
    name = "0.0.1-2.tar.gz";
    sha256 = "b9f4eac97f3a645144e828e8e1f7fd8a3c127562b1f9ab4320dfa25dec8fab2f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ amcl map-server move-base mpc-local-planner stage-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mpc_local_planner_examples package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
