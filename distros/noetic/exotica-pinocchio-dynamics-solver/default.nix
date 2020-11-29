
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, exotica-core, pinocchio, roscpp }:
buildRosPackage {
  pname = "ros-noetic-exotica-pinocchio-dynamics-solver";
  version = "6.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/noetic/exotica_pinocchio_dynamics_solver/6.0.1-1.tar.gz";
    name = "6.0.1-1.tar.gz";
    sha256 = "bb3534a5a35767350ff6d096b89951701e7027ec2e51e00ccee0a8d1c102b695";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ exotica-core pinocchio roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Dynamics solver plug-in using Pinocchio for Exotica'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
