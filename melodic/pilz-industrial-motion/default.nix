
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pilz-extensions, catkin, pilz-msgs, pilz-trajectory-generation, pilz-robot-programming }:
buildRosPackage {
  pname = "ros-melodic-pilz-industrial-motion";
  version = "0.4.6-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_industrial_motion-release/archive/release/melodic/pilz_industrial_motion/0.4.6-1.tar.gz";
    name = "0.4.6-1.tar.gz";
    sha256 = "2966d410019dffd3439a81607654e091fe4da6febd49d856d1b3b0070d0034b0";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pilz-extensions pilz-msgs pilz-trajectory-generation pilz-robot-programming ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pilz_industrial_motion package'';
    license = with lib.licenses; [ asl20 ];
  };
}
