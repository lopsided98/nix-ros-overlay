
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pr2eus }:
buildRosPackage {
  pname = "ros-kinetic-jsk-pr2eus";
  version = "0.3.14";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_pr2eus-release/archive/release/kinetic/jsk_pr2eus/0.3.14-0.tar.gz";
    name = "0.3.14-0.tar.gz";
    sha256 = "02611a63c4a55717654cdfca8be34771befe6d1b1e9d23582e255683e5a4713b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ pr2eus ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''<p>Metapackage that contains robot eus client package for jsk-ros-pkg</p>'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
