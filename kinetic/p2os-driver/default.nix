
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, std-msgs, tf, catkin, p2os-msgs, roscpp, diagnostic-updater, message-runtime, nav-msgs, kdl-parser }:
buildRosPackage {
  pname = "ros-kinetic-p2os-driver";
  version = "2.1.0";

  src = fetchurl {
    url = "https://github.com/allenh1/p2os-release/archive/release/kinetic/p2os_driver/2.1.0-0.tar.gz";
    name = "2.1.0-0.tar.gz";
    sha256 = "eb6f5a08cf1e70e2160dddf092289989841b16739f16d4431db1de6ba572fc14";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs std-msgs tf p2os-msgs kdl-parser roscpp nav-msgs diagnostic-updater ];
  propagatedBuildInputs = [ geometry-msgs std-msgs tf p2os-msgs kdl-parser roscpp message-runtime nav-msgs diagnostic-updater ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver file descriptions for P2OS/ARCOS robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
