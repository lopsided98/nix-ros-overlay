
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ecl-build, ecl-license }:
buildRosPackage {
  pname = "ros-noetic-ecl-tools";
  version = "0.61.8-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_tools-release/archive/release/noetic/ecl_tools/0.61.8-1.tar.gz";
    name = "0.61.8-1.tar.gz";
    sha256 = "c19172914ff3bcf92704c93a082382294b7b815a145ef5bce9f9a00b05274e96";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ ecl-build ecl-license ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Tools and utilities for ecl development.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
