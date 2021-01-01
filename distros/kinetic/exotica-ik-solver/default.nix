
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, exotica-core }:
buildRosPackage {
  pname = "ros-kinetic-exotica-ik-solver";
  version = "6.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/kinetic/exotica_ik_solver/6.0.2-1.tar.gz";
    name = "6.0.2-1.tar.gz";
    sha256 = "9b541fc73a8b33efff32009959dea0d40e189e8cdc7b7b91c94d2a9bb7fdbd86";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ exotica-core ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Regularised and weighted pseudo-inverse unconstrained end-pose solver'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
