
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, euslisp, nlopt }:
buildRosPackage {
  pname = "ros-noetic-eus-nlopt";
  version = "0.1.16-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_control-release/archive/release/noetic/eus_nlopt/0.1.16-1.tar.gz";
    name = "0.1.16-1.tar.gz";
    sha256 = "5186b178134bff35d8064f7552afe8432908468bd21fb4183d9f87ba7d95a3dc";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules ];
  propagatedBuildInputs = [ euslisp nlopt ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''eus_nlopt'';
    license = with lib.licenses; [ asl20 ];
  };
}
