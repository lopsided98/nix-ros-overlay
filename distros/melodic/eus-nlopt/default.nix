
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, euslisp, nlopt }:
buildRosPackage {
  pname = "ros-melodic-eus-nlopt";
  version = "0.1.15-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_control-release/archive/release/melodic/eus_nlopt/0.1.15-1.tar.gz";
    name = "0.1.15-1.tar.gz";
    sha256 = "3f71d652a4f2779134b95542fc5c2618ea625f609d854c8f9f9d7e8a7d4e89aa";
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
