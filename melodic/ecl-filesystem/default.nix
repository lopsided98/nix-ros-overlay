
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ecl-build, ecl-exceptions, ecl-license, ecl-errors, ecl-config }:
buildRosPackage {
  pname = "ros-melodic-ecl-filesystem";
  version = "0.62.2";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/ecl_core-release/archive/release/melodic/ecl_filesystem/0.62.2-0.tar.gz;
    sha256 = "7cc4e4aa69ad033c120e3642f512750348e6a15ca373c585e9d3e56a2b75973f";
  };

  propagatedBuildInputs = [ ecl-exceptions ecl-license ecl-errors ecl-config ecl-build ];
  nativeBuildInputs = [ ecl-exceptions ecl-license ecl-errors catkin ecl-config ecl-build ];

  meta = {
    description = ''Cross platform filesystem utilities (until c++11 makes its way in).'';
    #license = lib.licenses.BSD;
  };
}
