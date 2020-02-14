
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, exotica-core }:
buildRosPackage {
  pname = "ros-melodic-exotica-levenberg-marquardt-solver";
  version = "5.1.3-r3";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/melodic/exotica_levenberg_marquardt_solver/5.1.3-3.tar.gz";
    name = "5.1.3-3.tar.gz";
    sha256 = "2782ec425a5659acb31d3492e8999a765fd7654e35b2fd41361018e0e58587c6";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ eigen exotica-core ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A Levenberg-Marquardt solver for EXOTica'';
    license = with lib.licenses; [ mit ];
  };
}
