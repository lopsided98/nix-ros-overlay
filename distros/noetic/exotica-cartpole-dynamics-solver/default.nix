
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, exotica-core, exotica-python, roscpp }:
buildRosPackage {
  pname = "ros-noetic-exotica-cartpole-dynamics-solver";
  version = "6.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/noetic/exotica_cartpole_dynamics_solver/6.1.0-1.tar.gz";
    name = "6.1.0-1.tar.gz";
    sha256 = "d382b52b244950a8e2ea5cf12b580e7fab91398e3a324c8468d46176d8067ce0";
  };

  buildType = "catkin";
  checkInputs = [ exotica-python ];
  propagatedBuildInputs = [ exotica-core roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Cartpole dynamics solver plug-in for Exotica'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
