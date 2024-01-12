
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ecl-license }:
buildRosPackage {
  pname = "ros-noetic-ecl-build";
  version = "0.61.8-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_tools-release/archive/release/noetic/ecl_build/0.61.8-1.tar.gz";
    name = "0.61.8-1.tar.gz";
    sha256 = "fcfb4bd6e729545b04448786a1ab50b1496fc868391ae760d356561a852227e5";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ ecl-license ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Collection of cmake/make build tools primarily for ecl development itself, but also
     contains a few cmake modules useful outside of the ecl.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
