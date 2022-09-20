
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, exotica-core, roscpp }:
buildRosPackage {
  pname = "ros-melodic-exotica-pendulum-dynamics-solver";
  version = "6.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/melodic/exotica_pendulum_dynamics_solver/6.2.0-1.tar.gz";
    name = "6.2.0-1.tar.gz";
    sha256 = "8a80eee1ef29f578cc6ccf406b01044127ed46c988dab54484779b2b2b9963f0";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ exotica-core roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Pendulum dynamics solver plug-in for Exotica'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
