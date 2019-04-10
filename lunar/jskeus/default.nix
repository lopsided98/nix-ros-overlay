
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, euslisp }:
buildRosPackage {
  pname = "ros-lunar-jskeus";
  version = "1.2.0-r1";

  src = fetchurl {
    url = https://github.com/tork-a/jskeus-release/archive/release/lunar/jskeus/1.2.0-1.tar.gz;
    sha256 = "b37a9a1c5d0a9c7fd28e4cdeb4c6e0a518f67e043720996c5bcc4cafa6e3d942";
  };

  buildInputs = [ euslisp ];
  propagatedBuildInputs = [ euslisp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''EusLisp software developed and used by JSK at The University of Tokyo'';
    #license = lib.licenses.BSD;
  };
}
