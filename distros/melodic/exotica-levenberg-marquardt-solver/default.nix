
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, exotica-core }:
buildRosPackage {
  pname = "ros-melodic-exotica-levenberg-marquardt-solver";
  version = "6.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/melodic/exotica_levenberg_marquardt_solver/6.2.0-1.tar.gz";
    name = "6.2.0-1.tar.gz";
    sha256 = "5c6f06ce4d3fd4a069477fd994f0b31c61adc48bc4b2709b955e1a784721879a";
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
