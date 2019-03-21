
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-cob-supported-robots";
  version = "0.6.10";

  src = fetchurl {
    url = https://github.com/ipa320/cob_supported_robots-release/archive/release/kinetic/cob_supported_robots/0.6.10-0.tar.gz;
    sha256 = "8096e7e1be665d376325df7de2557b3b076e41d29e999158b3c025f3cf562ca0";
  };

  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the list of supported robots within the care-o-bot family.'';
    #license = lib.licenses.Apache 2.0;
  };
}
