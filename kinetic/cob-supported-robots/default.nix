
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-cob-supported-robots";
  version = "0.6.11";

  src = fetchurl {
    url = https://github.com/ipa320/cob_supported_robots-release/archive/release/kinetic/cob_supported_robots/0.6.11-0.tar.gz;
    sha256 = "715866071791e62fd28ff7a84661d43cf4d090ec04a18996efbc351035ee479b";
  };

  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the list of supported robots within the care-o-bot family.'';
    #license = lib.licenses.Apache 2.0;
  };
}
