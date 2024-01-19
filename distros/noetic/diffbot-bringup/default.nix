
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, teleop-twist-keyboard }:
buildRosPackage {
  pname = "ros-noetic-diffbot-bringup";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-mobile-robots-release/diffbot-release/archive/release/noetic/diffbot_bringup/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "7baeb9418cea432d5c7bf5e33c071c1f0bb5fa3c48f5038fe9389f4e9558d230";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ teleop-twist-keyboard ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The diffbot_bringup package'';
    license = with lib.licenses; [ gpl3Only ];
  };
}
