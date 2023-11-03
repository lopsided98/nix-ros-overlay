
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pr2eus }:
buildRosPackage {
  pname = "ros-noetic-jsk-pr2eus";
  version = "0.3.15-r3";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_pr2eus-release/archive/release/noetic/jsk_pr2eus/0.3.15-3.tar.gz";
    name = "0.3.15-3.tar.gz";
    sha256 = "96418335d29894832854311c01d6d6a2444ef49bd285af9ad580517a7caac092";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ pr2eus ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>Metapackage that contains robot eus client package for jsk-ros-pkg</p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
