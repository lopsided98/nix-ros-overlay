
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ecl-config, ecl-license }:
buildRosPackage {
  pname = "ros-noetic-ecl-errors";
  version = "0.61.6-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_lite-release/archive/release/noetic/ecl_errors/0.61.6-1.tar.gz";
    name = "0.61.6-1.tar.gz";
    sha256 = "d653796a07f7e8491cd9426028c9a2e040c8f28eba489fef23c0b06085752d9a";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ ecl-config ecl-license ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This library provides lean and mean error mechanisms. 
    It includes c style error functions as well as a few 
    useful macros. For higher level mechanisms, 
    refer to ecl_exceptions.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
