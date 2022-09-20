
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, euslisp }:
buildRosPackage {
  pname = "ros-melodic-jskeus";
  version = "1.2.5-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jskeus-release/archive/release/melodic/jskeus/1.2.5-1.tar.gz";
    name = "1.2.5-1.tar.gz";
    sha256 = "09ad2aa44249d07cecf8ebb717ca99194f310e93a836dc4ec4107d2a057e313f";
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
