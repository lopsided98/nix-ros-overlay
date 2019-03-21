
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-ieee80211-channels";
  version = "1.0.15";

  src = fetchurl {
    url = https://github.com/pr2-gbp/linux_networking-release/archive/release/melodic/ieee80211_channels/1.0.15-0.tar.gz;
    sha256 = "5f2daddce7efd176d3ba7c74852789521240c0891387d42444c0b2f1f37a19ef";
  };

  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides mapping from frequencies to
    IEEE802.11 channels and vice-versa.'';
    #license = lib.licenses.BSD;
  };
}
