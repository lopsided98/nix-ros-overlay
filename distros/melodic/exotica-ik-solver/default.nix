
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, exotica-core }:
buildRosPackage {
  pname = "ros-melodic-exotica-ik-solver";
  version = "6.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/melodic/exotica_ik_solver/6.0.2-1.tar.gz";
    name = "6.0.2-1.tar.gz";
    sha256 = "43c8feb9cafe87ee40393f9d5af579a82b6a804fe25f7f8177ba42f8214a465f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ exotica-core ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Regularised and weighted pseudo-inverse unconstrained end-pose solver'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
