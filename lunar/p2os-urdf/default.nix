
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, kdl-parser, p2os-driver, sensor-msgs, catkin, p2os-msgs, urdf, std-msgs, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-p2os-urdf";
  version = "2.1.0";

  src = fetchurl {
    url = https://github.com/allenh1/p2os-release/archive/release/lunar/p2os_urdf/2.1.0-0.tar.gz;
    sha256 = "b712b236a3329fbfb8ada7feb104a64996eadcccaf3a386c3d40b4a658e58277";
  };

  buildInputs = [ urdf kdl-parser std-msgs sensor-msgs tf geometry-msgs ];
  propagatedBuildInputs = [ urdf kdl-parser p2os-driver std-msgs sensor-msgs tf geometry-msgs p2os-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF file descriptions for P2OS/ARCOS robot'';
    #license = lib.licenses.BSD;
  };
}
