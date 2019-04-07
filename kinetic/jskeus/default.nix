
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, euslisp }:
buildRosPackage {
  pname = "ros-kinetic-jskeus";
  version = "1.2.1";

  src = fetchurl {
    url = https://github.com/tork-a/jskeus-release/archive/release/kinetic/jskeus/1.2.1-0.tar.gz;
    sha256 = "9e37bd817de53e87589a3206f0ee30c22801ca18f97f6651fa6b1f16481a083d";
  };

  buildInputs = [ euslisp ];
  propagatedBuildInputs = [ euslisp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''EusLisp software developed and used by JSK at The University of Tokyo'';
    #license = lib.licenses.BSD;
  };
}
