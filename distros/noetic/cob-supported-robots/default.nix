
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-cob-supported-robots";
  version = "0.6.16-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_supported_robots-release/archive/release/noetic/cob_supported_robots/0.6.16-1.tar.gz";
    name = "0.6.16-1.tar.gz";
    sha256 = "e276d79787be46fd66f33af637b8e4a28050b98d6e02cbd9a4e2073f0f68bdd2";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the list of supported robots within the care-o-bot family.'';
    license = with lib.licenses; [ asl20 ];
  };
}
