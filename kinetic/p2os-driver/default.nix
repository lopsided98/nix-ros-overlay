
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, kdl-parser, tf, catkin, p2os-msgs, diagnostic-updater, nav-msgs, message-runtime, std-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-p2os-driver";
  version = "2.1.0";

  src = fetchurl {
    url = https://github.com/allenh1/p2os-release/archive/release/kinetic/p2os_driver/2.1.0-0.tar.gz;
    sha256 = "eb6f5a08cf1e70e2160dddf092289989841b16739f16d4431db1de6ba572fc14";
  };

  buildInputs = [ kdl-parser roscpp p2os-msgs diagnostic-updater nav-msgs std-msgs tf geometry-msgs ];
  propagatedBuildInputs = [ kdl-parser tf p2os-msgs diagnostic-updater nav-msgs message-runtime std-msgs roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver file descriptions for P2OS/ARCOS robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
