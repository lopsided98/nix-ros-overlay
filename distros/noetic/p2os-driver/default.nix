
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, geometry-msgs, kdl-parser, message-runtime, nav-msgs, p2os-msgs, roscpp, std-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-p2os-driver";
  version = "2.2.1-r2";

  src = fetchurl {
    url = "https://github.com/allenh1/p2os-release/archive/release/noetic/p2os_driver/2.2.1-2.tar.gz";
    name = "2.2.1-2.tar.gz";
    sha256 = "8aa76ee11da3490c0de741a401d9ffe8d6784959a1e03c1e05a75717b0f1463a";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ diagnostic-updater geometry-msgs kdl-parser message-runtime nav-msgs p2os-msgs roscpp std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver file descriptions for P2OS/ARCOS robot'';
    license = with lib.licenses; [ "GPL-2.0-only" ];
  };
}
