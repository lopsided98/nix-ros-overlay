
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, geometry-msgs, kdl-parser, message-runtime, nav-msgs, p2os-msgs, roscpp, std-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-p2os-driver";
  version = "2.1.1-r3";

  src = fetchurl {
    url = "https://github.com/allenh1/p2os-release/archive/release/melodic/p2os_driver/2.1.1-3.tar.gz";
    name = "2.1.1-3.tar.gz";
    sha256 = "6964b9f9c333b2290f586f8ea5bb23cd9bf6d3eb0e774dd33d2498624bae978d";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ diagnostic-updater geometry-msgs kdl-parser message-runtime nav-msgs p2os-msgs roscpp std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver file descriptions for P2OS/ARCOS robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
