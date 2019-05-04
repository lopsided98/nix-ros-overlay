
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, exotica-core, catkin }:
buildRosPackage {
  pname = "ros-kinetic-exotica-ik-solver";
  version = "5.0.0";

  src = fetchurl {
    url = https://github.com/ipab-slmc/exotica-release/archive/release/kinetic/exotica_ik_solver/5.0.0-0.tar.gz;
    sha256 = "535f0ae4bc0843b65e146336560747815b88c846aa1e4a98b24022e78372c1b3";
  };

  buildInputs = [ exotica-core ];
  propagatedBuildInputs = [ exotica-core ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Pseudo-inverse unconstrained end-pose solver'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
