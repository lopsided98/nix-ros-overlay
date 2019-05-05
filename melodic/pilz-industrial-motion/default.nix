
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pilz-extensions, catkin, pilz-msgs, pilz-trajectory-generation, pilz-robot-programming }:
buildRosPackage {
  pname = "ros-melodic-pilz-industrial-motion";
  version = "0.4.3";

  src = fetchurl {
    url = https://github.com/PilzDE/pilz_industrial_motion-release/archive/release/melodic/pilz_industrial_motion/0.4.3-0.tar.gz;
    sha256 = "1c527e08942328ba1546b35ae73285e3043f7e483d16463e5456b71a94a40e93";
  };

  propagatedBuildInputs = [ pilz-extensions pilz-msgs pilz-trajectory-generation pilz-robot-programming ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The pilz_industrial_motion package'';
    license = with lib.licenses; [ asl20 ];
  };
}
