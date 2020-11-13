
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, exotica-core }:
buildRosPackage {
  pname = "ros-melodic-exotica-levenberg-marquardt-solver";
  version = "6.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/melodic/exotica_levenberg_marquardt_solver/6.0.0-1.tar.gz";
    name = "6.0.0-1.tar.gz";
    sha256 = "b13b9c12f8257e8df3b5f27987bb429b7f8cf40e408a39009ea2b3a91b6d246f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ eigen exotica-core ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A Levenberg-Marquardt solver for EXOTica'';
    license = with lib.licenses; [ mit ];
  };
}
