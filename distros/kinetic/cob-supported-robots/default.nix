
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-cob-supported-robots";
  version = "0.6.14-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_supported_robots-release/archive/release/kinetic/cob_supported_robots/0.6.14-1.tar.gz";
    name = "0.6.14-1.tar.gz";
    sha256 = "c51fe493a1bcfcc90ccf79b1faa0a34325aa53b4f11f228e564eb88a0ce99848";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the list of supported robots within the care-o-bot family.'';
    license = with lib.licenses; [ asl20 ];
  };
}
