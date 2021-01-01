
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, euslisp }:
buildRosPackage {
  pname = "ros-melodic-jskeus";
  version = "1.2.2-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jskeus-release/archive/release/melodic/jskeus/1.2.2-1.tar.gz";
    name = "1.2.2-1.tar.gz";
    sha256 = "513db833024ebb0d9946faa34d1efbd566900217928b9ab3ba488a684a3e1a7f";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ euslisp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''EusLisp software developed and used by JSK at The University of Tokyo'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
