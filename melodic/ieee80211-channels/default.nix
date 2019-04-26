
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-ieee80211-channels";
  version = "1.0.13-r2";

  src = fetchurl {
    url = https://github.com/pr2-gbp/linux_networking-release/archive/release/melodic/ieee80211_channels/1.0.13-2.tar.gz;
    sha256 = "80f472b6cc80c82eacfbf5b1bdba951fa3d53730041b74aa7261aa56cc2e5ecf";
  };

  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides mapping from frequencies to
    IEEE802.11 channels and vice-versa.'';
    #license = lib.licenses.BSD;
  };
}
