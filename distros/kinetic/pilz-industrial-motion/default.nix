
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pilz-extensions, pilz-msgs, pilz-robot-programming, pilz-trajectory-generation }:
buildRosPackage {
  pname = "ros-kinetic-pilz-industrial-motion";
  version = "0.3.10-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_industrial_motion-release/archive/release/kinetic/pilz_industrial_motion/0.3.10-1.tar.gz";
    name = "0.3.10-1.tar.gz";
    sha256 = "f6521ad3538c01a6a671fcb86c4db0a04f3febadfab405518109b8ff186740d3";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pilz-extensions pilz-msgs pilz-robot-programming pilz-trajectory-generation ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pilz_industrial_motion package'';
    license = with lib.licenses; [ asl20 ];
  };
}
