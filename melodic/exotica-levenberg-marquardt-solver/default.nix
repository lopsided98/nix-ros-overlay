
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, eigen, catkin, exotica-core }:
buildRosPackage {
  pname = "ros-melodic-exotica-levenberg-marquardt-solver";
  version = "5.0.0";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/melodic/exotica_levenberg_marquardt_solver/5.0.0-0.tar.gz";
    name = "5.0.0-0.tar.gz";
    sha256 = "8de5b8fb856c5ca84c37447698c4635251f39b39db82d323f6b788aea4b1d93f";
  };

  buildType = "catkin";
  buildInputs = [ eigen exotica-core ];
  propagatedBuildInputs = [ eigen exotica-core ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A Levenberg-Marquardt solver for EXOTica'';
    license = with lib.licenses; [ mit ];
  };
}
