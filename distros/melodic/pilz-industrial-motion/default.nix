
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pilz-extensions, pilz-robot-programming, pilz-trajectory-generation }:
buildRosPackage {
  pname = "ros-melodic-pilz-industrial-motion";
  version = "0.4.14-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_industrial_motion-release/archive/release/melodic/pilz_industrial_motion/0.4.14-1.tar.gz";
    name = "0.4.14-1.tar.gz";
    sha256 = "d934fc24dca066e31c7c49f2d59c4ee22d52e38b4afb0b10fedaca0418c3ee63";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ pilz-extensions pilz-robot-programming pilz-trajectory-generation ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pilz_industrial_motion package'';
    license = with lib.licenses; [ asl20 ];
  };
}
