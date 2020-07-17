
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pilz-extensions, pilz-msgs, pilz-robot-programming, pilz-trajectory-generation }:
buildRosPackage {
  pname = "ros-melodic-pilz-industrial-motion";
  version = "0.4.11-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_industrial_motion-release/archive/release/melodic/pilz_industrial_motion/0.4.11-1.tar.gz";
    name = "0.4.11-1.tar.gz";
    sha256 = "efbd579fd09475b7933f7a154c43198f6b8df1295aefccf946e29654df1c0e36";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pilz-extensions pilz-msgs pilz-robot-programming pilz-trajectory-generation ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pilz_industrial_motion package'';
    license = with lib.licenses; [ asl20 ];
  };
}
