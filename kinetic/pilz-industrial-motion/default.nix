
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pilz-extensions, catkin, pilz-msgs, pilz-trajectory-generation, pilz-robot-programming }:
buildRosPackage {
  pname = "ros-kinetic-pilz-industrial-motion";
  version = "0.3.6";

  src = fetchurl {
    url = https://github.com/PilzDE/pilz_industrial_motion-release/archive/release/kinetic/pilz_industrial_motion/0.3.6-0.tar.gz;
    sha256 = "2d6bce15e0e2e9996d1de535c64d8c60da1daf28f6ad66dc72d3a9d9235218d8";
  };

  propagatedBuildInputs = [ pilz-extensions pilz-msgs pilz-trajectory-generation pilz-robot-programming ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pilz_industrial_motion package'';
    #license = lib.licenses.Apache 2.0;
  };
}
