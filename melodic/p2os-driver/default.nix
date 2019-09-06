
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, kdl-parser, tf, catkin, p2os-msgs, diagnostic-updater, nav-msgs, message-runtime, std-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-p2os-driver";
  version = "2.1.1-r3";

  src = fetchurl {
    url = "https://github.com/allenh1/p2os-release/archive/release/melodic/p2os_driver/2.1.1-3.tar.gz";
    name = "2.1.1-3.tar.gz";
    sha256 = "6964b9f9c333b2290f586f8ea5bb23cd9bf6d3eb0e774dd33d2498624bae978d";
  };

  buildType = "catkin";
  buildInputs = [ kdl-parser roscpp p2os-msgs diagnostic-updater nav-msgs std-msgs tf geometry-msgs ];
  propagatedBuildInputs = [ kdl-parser tf p2os-msgs diagnostic-updater nav-msgs message-runtime std-msgs roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver file descriptions for P2OS/ARCOS robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
