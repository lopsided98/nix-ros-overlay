
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, euslisp }:
buildRosPackage {
  pname = "ros-noetic-jskeus";
  version = "1.2.5-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jskeus-release/archive/release/noetic/jskeus/1.2.5-1.tar.gz";
    name = "1.2.5-1.tar.gz";
    sha256 = "bb43fd1f54ff95c468ea7bda7cc7063013b11c15b7430eb88dcc7880b8f2257e";
  };

  buildType = "cmake";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ euslisp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''EusLisp software developed and used by JSK at The University of Tokyo'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
