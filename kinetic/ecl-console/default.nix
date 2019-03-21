
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-license, catkin, ecl-config, ecl-build }:
buildRosPackage {
  pname = "ros-kinetic-ecl-console";
  version = "0.61.6";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/ecl_lite-release/archive/release/kinetic/ecl_console/0.61.6-0.tar.gz;
    sha256 = "08bd81172e9652083d184b1332fa454187f5f0b28a072df3a04f002c3d8efd58";
  };

  propagatedBuildInputs = [ ecl-license ecl-config ecl-build ];
  nativeBuildInputs = [ ecl-license catkin ecl-config ecl-build ];

  meta = {
    description = ''Color codes for ansii consoles.'';
    #license = lib.licenses.BSD;
  };
}
