
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-ieee80211-channels";
  version = "1.0.15";

  src = fetchurl {
    url = "https://github.com/pr2-gbp/linux_networking-release/archive/release/kinetic/ieee80211_channels/1.0.15-0.tar.gz";
    name = "1.0.15-0.tar.gz";
    sha256 = "5e3c151c11290620e507ca10cca76010beaba3ef499f51bc96788d3ee07f2ed2";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides mapping from frequencies to
    IEEE802.11 channels and vice-versa.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
