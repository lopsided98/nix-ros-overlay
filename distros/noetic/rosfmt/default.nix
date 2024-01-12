
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosconsole, roscpp }:
buildRosPackage {
  pname = "ros-noetic-rosfmt";
  version = "8.0.0-r1";

  src = fetchurl {
    url = "https://github.com/xqms/rosfmt-release/archive/release/noetic/rosfmt/8.0.0-1.tar.gz";
    name = "8.0.0-1.tar.gz";
    sha256 = "30bbda0ce08f4f729b6cb47524d1723ea0b7d9722ea9081377161009e575b4c5";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ rosconsole roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''fmt is an open-source formatting library for C++.
		It can be used as a safe and fast alternative to (s)printf and IOStreams.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
