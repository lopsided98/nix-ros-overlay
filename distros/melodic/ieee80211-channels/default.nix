
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-ieee80211-channels";
  version = "1.0.16-r1";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/linux_networking-release/archive/release/melodic/ieee80211_channels/1.0.16-1.tar.gz";
    name = "1.0.16-1.tar.gz";
    sha256 = "0fdd1c65ca9d698ae50345ae73904b34161753ada49f53ddceec13066f9bd355";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides mapping from frequencies to
    IEEE802.11 channels and vice-versa.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
