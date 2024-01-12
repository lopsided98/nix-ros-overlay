
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-bringup, cob-default-robot-behavior, cob-default-robot-config, cob-hardware-config, cob-moveit-config }:
buildRosPackage {
  pname = "ros-noetic-cob-robots";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_robots-release/archive/release/noetic/cob_robots/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "324b2a78e80b86337ddf497988c69ddc9e7d43df7525be1b1dee1b2d64688c1f";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cob-bringup cob-default-robot-behavior cob-default-robot-config cob-hardware-config cob-moveit-config ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This stack holds packages for hardware configuration as well as launch files for starting up the basic layer for operating Care-O-bot.'';
    license = with lib.licenses; [ asl20 ];
  };
}
