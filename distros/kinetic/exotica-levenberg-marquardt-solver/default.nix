
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, exotica-core }:
buildRosPackage {
  pname = "ros-kinetic-exotica-levenberg-marquardt-solver";
  version = "5.0.0";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/kinetic/exotica_levenberg_marquardt_solver/5.0.0-0.tar.gz";
    name = "5.0.0-0.tar.gz";
    sha256 = "49f2a5535759894ad4b2a8a8d3442cd8aa7f90b914bc8f867cda0fd2d962d4a7";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ eigen exotica-core ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A Levenberg-Marquardt solver for EXOTica'';
    license = with lib.licenses; [ mit ];
  };
}
