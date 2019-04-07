
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-pilz-testutils";
  version = "0.4.7";

  src = fetchurl {
    url = https://github.com/PilzDE/pilz_robots-release/archive/release/kinetic/pilz_testutils/0.4.7-0.tar.gz;
    sha256 = "9e7042f169ec06f59ba78734679cc689bcd6dcad3924bd1f20a764269f7bf262";
  };

  buildInputs = [ roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains testing utilities used by Pilz packages.'';
    #license = lib.licenses.Apache 2.0;
  };
}
