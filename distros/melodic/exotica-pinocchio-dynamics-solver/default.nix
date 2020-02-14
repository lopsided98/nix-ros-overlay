
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, exotica-core, pinocchio, roscpp }:
buildRosPackage {
  pname = "ros-melodic-exotica-pinocchio-dynamics-solver";
  version = "5.1.3-r3";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/melodic/exotica_pinocchio_dynamics_solver/5.1.3-3.tar.gz";
    name = "5.1.3-3.tar.gz";
    sha256 = "9a7ec88e3788da0ea147ce0d7eb2ee4c4bbd7fd3de6eaf9ac3796f18fb6dc5c9";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ exotica-core pinocchio roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Dynamics solver plug-in using Pinocchio for Exotica'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
