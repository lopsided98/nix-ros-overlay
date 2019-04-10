
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-lunar-ieee80211-channels";
  version = "1.0.15";

  src = fetchurl {
    url = https://github.com/pr2-gbp/linux_networking-release/archive/release/lunar/ieee80211_channels/1.0.15-0.tar.gz;
    sha256 = "ff9a195b737c23860cb91ab498d6ecb7f641fee2b23f36a5d32ccc2ebce3c48a";
  };

  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides mapping from frequencies to
    IEEE802.11 channels and vice-versa.'';
    #license = lib.licenses.BSD;
  };
}
