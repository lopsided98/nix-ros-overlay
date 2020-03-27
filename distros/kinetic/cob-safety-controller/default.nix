
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-cob-safety-controller";
  version = "0.6.9-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_substitute-release/archive/release/kinetic/cob_safety_controller/0.6.9-1.tar.gz";
    name = "0.6.9-1.tar.gz";
    sha256 = "f94d839a76e965e21abbe9371641418d6f690f03a25938cadcf70155bcc1558c";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package is a substitute for the private implementation of cob_safety_controller package'';
    license = with lib.licenses; [ asl20 ];
  };
}
