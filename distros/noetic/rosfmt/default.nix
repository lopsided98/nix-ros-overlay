
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosconsole, roscpp }:
buildRosPackage {
  pname = "ros-noetic-rosfmt";
  version = "7.0.0-r1";

  src = fetchurl {
    url = "https://github.com/xqms/rosfmt-release/archive/release/noetic/rosfmt/7.0.0-1.tar.gz";
    name = "7.0.0-1.tar.gz";
    sha256 = "b2c2c4f2436a5a0215d932e2cc308cfa91dde43404cba0af8986624a907b1def";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rosconsole roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''fmt is an open-source formatting library for C++.
		It can be used as a safe and fast alternative to (s)printf and IOStreams.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
