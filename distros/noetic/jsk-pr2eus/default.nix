
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pr2eus }:
buildRosPackage {
  pname = "ros-noetic-jsk-pr2eus";
  version = "0.3.15-r4";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_pr2eus-release/archive/release/noetic/jsk_pr2eus/0.3.15-4.tar.gz";
    name = "0.3.15-4.tar.gz";
    sha256 = "ead27474a4142d16751712d6b3c25560c534c2186276471999a48c9e08a9394c";
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
