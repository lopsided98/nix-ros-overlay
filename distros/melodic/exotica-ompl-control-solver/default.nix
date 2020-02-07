
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, exotica-core }:
buildRosPackage {
  pname = "ros-melodic-exotica-ompl-control-solver";
  version = "5.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/melodic/exotica_ompl_control_solver/5.1.0-1.tar.gz";
    name = "5.1.0-1.tar.gz";
    sha256 = "f7bd90a177fa3c7c75385bd4fafe681b084e7d99964fcff748a17d0f7be88f30";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ exotica-core ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Kinodynamic Control Solvers from OMPL'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
