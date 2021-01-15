
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-cob-supported-robots";
  version = "0.6.15-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_supported_robots-release/archive/release/noetic/cob_supported_robots/0.6.15-1.tar.gz";
    name = "0.6.15-1.tar.gz";
    sha256 = "2ce0e4b4b56c74b35c96a7f164889146a9b04afc2869c983d4c5852aa9d70fb2";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the list of supported robots within the care-o-bot family.'';
    license = with lib.licenses; [ asl20 ];
  };
}
