
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, exotica-core }:
buildRosPackage {
  pname = "ros-noetic-exotica-levenberg-marquardt-solver";
  version = "6.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/noetic/exotica_levenberg_marquardt_solver/6.2.0-1.tar.gz";
    name = "6.2.0-1.tar.gz";
    sha256 = "135bb1e8166b3f10b61c15be56718dc1249b6555404e6026a61df817911e4ef3";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ eigen exotica-core ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A Levenberg-Marquardt solver for EXOTica'';
    license = with lib.licenses; [ mit ];
  };
}
