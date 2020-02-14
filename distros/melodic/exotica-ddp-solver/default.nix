
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, exotica-core, exotica-python }:
buildRosPackage {
  pname = "ros-melodic-exotica-ddp-solver";
  version = "5.1.3-r3";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/melodic/exotica_ddp_solver/5.1.3-3.tar.gz";
    name = "5.1.3-3.tar.gz";
    sha256 = "1fcf2a9fb9871aaf86e29a4cf1ba2981a780d3ba9cdb6cb1406f29e12ead952a";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ exotica-core exotica-python ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Various DDP Solvers'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
