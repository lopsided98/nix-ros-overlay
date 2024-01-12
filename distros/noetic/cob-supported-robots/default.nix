
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-cob-supported-robots";
  version = "0.6.17-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_supported_robots-release/archive/release/noetic/cob_supported_robots/0.6.17-1.tar.gz";
    name = "0.6.17-1.tar.gz";
    sha256 = "759491f7332143a68c6f8b74311f2f62fb06ebed5f091f3fd29625517328f217";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the list of supported robots within the care-o-bot family.'';
    license = with lib.licenses; [ asl20 ];
  };
}
