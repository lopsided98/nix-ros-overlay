
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, exotica-core, exotica-python, roscpp }:
buildRosPackage {
  pname = "ros-melodic-exotica-cartpole-dynamics-solver";
  version = "6.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/melodic/exotica_cartpole_dynamics_solver/6.0.2-1.tar.gz";
    name = "6.0.2-1.tar.gz";
    sha256 = "0edc0b00f3405bf966e9a985da932a5fcc5acf48ed3904b68d958183fbd97d22";
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
