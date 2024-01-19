
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pilz-industrial-motion-planner, pilz-msgs, pilz-robot-programming }:
buildRosPackage {
  pname = "ros-noetic-pilz-industrial-motion";
  version = "0.5.0-r4";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_industrial_motion-release/archive/release/noetic/pilz_industrial_motion/0.5.0-4.tar.gz";
    name = "0.5.0-4.tar.gz";
    sha256 = "722c0b449c3c1f60769edd5ce16c2833c781d389d26b49a56a455aaaf5289641";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ pilz-industrial-motion-planner pilz-msgs pilz-robot-programming ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pilz_industrial_motion package'';
    license = with lib.licenses; [ asl20 ];
  };
}
