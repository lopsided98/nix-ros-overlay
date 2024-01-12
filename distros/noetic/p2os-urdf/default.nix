
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, kdl-parser, p2os-driver, p2os-msgs, sensor-msgs, std-msgs, tf, urdf }:
buildRosPackage {
  pname = "ros-noetic-p2os-urdf";
  version = "2.2.1-r2";

  src = fetchurl {
    url = "https://github.com/allenh1/p2os-release/archive/release/noetic/p2os_urdf/2.2.1-2.tar.gz";
    name = "2.2.1-2.tar.gz";
    sha256 = "0d5c50d77beb3c16d2caac93311dff7d0add06bd0f20301dca10939c08bc0420";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs kdl-parser p2os-driver p2os-msgs sensor-msgs std-msgs tf urdf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF file descriptions for P2OS/ARCOS robot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
