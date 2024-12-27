
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, euslisp, nlopt }:
buildRosPackage {
  pname = "ros-noetic-eus-nlopt";
  version = "0.1.18-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_control-release/archive/release/noetic/eus_nlopt/0.1.18-1.tar.gz";
    name = "0.1.18-1.tar.gz";
    sha256 = "ae0e2d6ddd75f5d2b4032b3187a5118920badaee4a2f6a1869b32bc0e9e4ead0";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules ];
  propagatedBuildInputs = [ euslisp nlopt ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "eus_nlopt";
    license = with lib.licenses; [ asl20 ];
  };
}
