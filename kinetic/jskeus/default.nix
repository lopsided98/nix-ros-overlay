
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, euslisp }:
buildRosPackage {
  pname = "ros-kinetic-jskeus";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jskeus-release/archive/release/kinetic/jskeus/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "26322625fc37ce5c7d724dc86269dba4300cfda1088d695ea65e832aa2ce6790";
  };

  buildType = "cmake";
  buildInputs = [ euslisp ];
  propagatedBuildInputs = [ euslisp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''EusLisp software developed and used by JSK at The University of Tokyo'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
