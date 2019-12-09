
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, p2os-driver, sensor-msgs, geometry-msgs, urdf, std-msgs, tf, catkin, p2os-msgs, kdl-parser }:
buildRosPackage {
  pname = "ros-melodic-p2os-urdf";
  version = "2.1.1-r3";

  src = fetchurl {
    url = "https://github.com/allenh1/p2os-release/archive/release/melodic/p2os_urdf/2.1.1-3.tar.gz";
    name = "2.1.1-3.tar.gz";
    sha256 = "10b0c2e34e4c56a3816165507eb40d1424b6d77c82f9fa09729e5f5069745c11";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs geometry-msgs urdf std-msgs tf kdl-parser ];
  propagatedBuildInputs = [ p2os-driver sensor-msgs geometry-msgs urdf std-msgs tf p2os-msgs kdl-parser ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF file descriptions for P2OS/ARCOS robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
