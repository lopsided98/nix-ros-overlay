
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, kdl-parser, p2os-driver, sensor-msgs, catkin, p2os-msgs, urdf, std-msgs, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-p2os-urdf";
  version = "2.1.0";

  src = fetchurl {
    url = https://github.com/allenh1/p2os-release/archive/release/kinetic/p2os_urdf/2.1.0-0.tar.gz;
    sha256 = "e65cc280d2cacb0e5cf78cd065d8c6db2a55c5e3defc0c257b1dc19933411834";
  };

  buildInputs = [ kdl-parser sensor-msgs urdf std-msgs tf geometry-msgs ];
  propagatedBuildInputs = [ kdl-parser p2os-driver sensor-msgs p2os-msgs urdf std-msgs tf geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF file descriptions for P2OS/ARCOS robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
