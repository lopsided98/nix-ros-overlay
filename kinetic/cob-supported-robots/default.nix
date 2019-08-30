
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-cob-supported-robots";
  version = "0.6.12-r1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_supported_robots-release/archive/release/kinetic/cob_supported_robots/0.6.12-1.tar.gz;
    sha256 = "cc66873218b8903836d42374cade45b8b0774686abe43236fa10208b24f5c51d";
  };

  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the list of supported robots within the care-o-bot family.'';
    license = with lib.licenses; [ asl20 ];
  };
}
