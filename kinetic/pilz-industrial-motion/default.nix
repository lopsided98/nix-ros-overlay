
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pilz-extensions, catkin, pilz-msgs, pilz-trajectory-generation, pilz-robot-programming }:
buildRosPackage {
  pname = "ros-kinetic-pilz-industrial-motion";
  version = "0.3.8";

  src = fetchurl {
    url = https://github.com/PilzDE/pilz_industrial_motion-release/archive/release/kinetic/pilz_industrial_motion/0.3.8-0.tar.gz;
    sha256 = "220d517169e5790c5561a85f0506a889b079498da4fe3a49d7a3abc76062ed31";
  };

  propagatedBuildInputs = [ pilz-extensions pilz-msgs pilz-trajectory-generation pilz-robot-programming ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pilz_industrial_motion package'';
    license = with lib.licenses; [ asl20 ];
  };
}
