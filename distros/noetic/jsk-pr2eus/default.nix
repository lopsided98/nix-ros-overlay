
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pr2eus }:
buildRosPackage {
  pname = "ros-noetic-jsk-pr2eus";
  version = "0.3.15-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_pr2eus-release/archive/release/noetic/jsk_pr2eus/0.3.15-1.tar.gz";
    name = "0.3.15-1.tar.gz";
    sha256 = "376c42adf021c0b38119929b9b6ff8431e9a3ef145b609216f3f3c520e3f947d";
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
