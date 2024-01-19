
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ecl-build, ecl-license }:
buildRosPackage {
  pname = "ros-noetic-ecl-config";
  version = "0.61.6-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_lite-release/archive/release/noetic/ecl_config/0.61.6-1.tar.gz";
    name = "0.61.6-1.tar.gz";
    sha256 = "a9ea24d6890c90bd24d88ad48b5423e9cb07e9d8e682459173c92fb0dc015ec6";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ ecl-build ecl-license ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''These tools inspect and describe your system with macros, types 
     and functions.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
