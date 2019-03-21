
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, kdl-parser, p2os-driver, sensor-msgs, catkin, p2os-msgs, urdf, std-msgs, tf, geometry-msgs }:
buildRosPackage {
  pname = "ros-melodic-p2os-urdf";
  version = "2.2.0";

  src = fetchurl {
    url = https://github.com/allenh1/p2os-release/archive/release/melodic/p2os_urdf/2.2.0-0.tar.gz;
    sha256 = "bda7d9b660aba7d77667c54cda251a01b037a4e64e91668f16ecafc602a2ab11";
  };

  propagatedBuildInputs = [ urdf kdl-parser p2os-driver std-msgs sensor-msgs tf geometry-msgs p2os-msgs ];
  nativeBuildInputs = [ catkin urdf kdl-parser std-msgs sensor-msgs tf geometry-msgs ];

  meta = {
    description = ''URDF file descriptions for P2OS/ARCOS robot'';
    #license = lib.licenses.BSD;
  };
}
