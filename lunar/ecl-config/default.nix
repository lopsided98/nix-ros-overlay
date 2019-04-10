
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-license, catkin, ecl-build }:
buildRosPackage {
  pname = "ros-lunar-ecl-config";
  version = "0.61.6";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/ecl_lite-release/archive/release/lunar/ecl_config/0.61.6-0.tar.gz;
    sha256 = "b4a68d354a32b3b5a822516c8c5a0b45b79340c1e9581de101a626197ea1b224";
  };

  buildInputs = [ ecl-license ecl-build ];
  propagatedBuildInputs = [ ecl-license ecl-build ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''These tools inspect and describe your system with macros, types 
     and functions.'';
    #license = lib.licenses.BSD;
  };
}
