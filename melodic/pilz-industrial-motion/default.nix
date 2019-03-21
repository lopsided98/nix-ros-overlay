
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pilz-extensions, catkin, pilz-msgs, pilz-trajectory-generation, pilz-robot-programming }:
buildRosPackage {
  pname = "ros-melodic-pilz-industrial-motion";
  version = "0.4.2";

  src = fetchurl {
    url = https://github.com/PilzDE/pilz_industrial_motion-release/archive/release/melodic/pilz_industrial_motion/0.4.2-0.tar.gz;
    sha256 = "3a2d7629615033383f22891ecc8116a83fe1dfbfc9c3259aba35b8be5eef2f7b";
  };

  propagatedBuildInputs = [ pilz-extensions pilz-msgs pilz-trajectory-generation pilz-robot-programming ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pilz_industrial_motion package'';
    #license = lib.licenses.Apache 2.0;
  };
}
