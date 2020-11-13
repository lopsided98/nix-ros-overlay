
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, exotica-core }:
buildRosPackage {
  pname = "ros-noetic-exotica-levenberg-marquardt-solver";
  version = "6.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ipab-slmc/exotica-release/archive/release/noetic/exotica_levenberg_marquardt_solver/6.0.0-1.tar.gz";
    name = "6.0.0-1.tar.gz";
    sha256 = "d6ec17486e0ff0917b9a58441c5b6d02fbebaee63c29f1939b1a3bfdc5c04d93";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ eigen exotica-core ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A Levenberg-Marquardt solver for EXOTica'';
    license = with lib.licenses; [ mit ];
  };
}
