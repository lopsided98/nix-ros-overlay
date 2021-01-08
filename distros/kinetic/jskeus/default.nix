
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, euslisp }:
buildRosPackage {
  pname = "ros-kinetic-jskeus";
  version = "1.2.2-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jskeus-release/archive/release/kinetic/jskeus/1.2.2-1.tar.gz";
    name = "1.2.2-1.tar.gz";
    sha256 = "35496d0fc2c8369c30f5c7bbb55ccd490708c13e0e4d4046cc8828eb3c705c90";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ euslisp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''EusLisp software developed and used by JSK at The University of Tokyo'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
