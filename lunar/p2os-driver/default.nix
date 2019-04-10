
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, kdl-parser, tf, catkin, p2os-msgs, diagnostic-updater, nav-msgs, message-runtime, std-msgs, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-p2os-driver";
  version = "2.1.0";

  src = fetchurl {
    url = https://github.com/allenh1/p2os-release/archive/release/lunar/p2os_driver/2.1.0-0.tar.gz;
    sha256 = "3f0aab668693b1ecac8a9afbb228ec5474b0255b697f959d7055e7e997aab94c";
  };

  buildInputs = [ diagnostic-updater nav-msgs kdl-parser geometry-msgs std-msgs tf roscpp p2os-msgs ];
  propagatedBuildInputs = [ kdl-parser roscpp p2os-msgs diagnostic-updater nav-msgs message-runtime std-msgs tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver file descriptions for P2OS/ARCOS robot'';
    #license = lib.licenses.BSD;
  };
}
