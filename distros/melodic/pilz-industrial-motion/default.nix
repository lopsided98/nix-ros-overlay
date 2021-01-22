
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pilz-extensions, pilz-robot-programming, pilz-trajectory-generation }:
buildRosPackage {
  pname = "ros-melodic-pilz-industrial-motion";
  version = "0.4.12-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_industrial_motion-release/archive/release/melodic/pilz_industrial_motion/0.4.12-1.tar.gz";
    name = "0.4.12-1.tar.gz";
    sha256 = "601db0a28cf0e8b77acc2652c08c010cb78bde4becb004e4f3d4711f2bf331e4";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pilz-extensions pilz-robot-programming pilz-trajectory-generation ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pilz_industrial_motion package'';
    license = with lib.licenses; [ asl20 ];
  };
}
