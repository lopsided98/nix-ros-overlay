
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, exotica-core, roscpp }:
buildRosPackage {
  pname = "ros-melodic-exotica-pendulum-dynamics-solver";
  version = "6.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/melodic/exotica_pendulum_dynamics_solver/6.0.0-1.tar.gz";
    name = "6.0.0-1.tar.gz";
    sha256 = "e552cd01f7ae31c86e4b0aea41e196300f01bf861d57e9c5591ad9ea213b0e9e";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ exotica-core roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Pendulum dynamics solver plug-in for Exotica'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
