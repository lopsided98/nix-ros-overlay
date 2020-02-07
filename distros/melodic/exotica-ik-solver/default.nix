
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, exotica-core }:
buildRosPackage {
  pname = "ros-melodic-exotica-ik-solver";
  version = "5.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/melodic/exotica_ik_solver/5.1.0-1.tar.gz";
    name = "5.1.0-1.tar.gz";
    sha256 = "0cc069f206bd5685839b49f2adff4d9d6406e7546f02da5748168c91c57cbcac";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ exotica-core ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Pseudo-inverse unconstrained end-pose solver'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
