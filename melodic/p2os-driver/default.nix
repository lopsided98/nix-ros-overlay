
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, kdl-parser, tf, catkin, p2os-msgs, diagnostic-updater, nav-msgs, message-runtime, std-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-p2os-driver";
  version = "2.2.0";

  src = fetchurl {
    url = https://github.com/allenh1/p2os-release/archive/release/melodic/p2os_driver/2.2.0-0.tar.gz;
    sha256 = "aa0e4297afd7633bc1049a8524c1cebd057b4d7a60bf8125e241da31d099e903";
  };

  propagatedBuildInputs = [ kdl-parser roscpp p2os-msgs diagnostic-updater nav-msgs message-runtime std-msgs tf geometry-msgs ];
  nativeBuildInputs = [ kdl-parser catkin roscpp p2os-msgs diagnostic-updater nav-msgs std-msgs tf geometry-msgs ];

  meta = {
    description = ''Driver file descriptions for P2OS/ARCOS robot'';
    #license = lib.licenses.GPL-2.0;
  };
}
