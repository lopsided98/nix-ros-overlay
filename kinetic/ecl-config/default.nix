
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-license, catkin, ecl-build }:
buildRosPackage {
  pname = "ros-kinetic-ecl-config";
  version = "0.61.6";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/ecl_lite-release/archive/release/kinetic/ecl_config/0.61.6-0.tar.gz;
    sha256 = "9d9fb8c17748ec4f89cb8d577c173fa622f168e0d64050b6f1dd2c486de4f2ed";
  };

  propagatedBuildInputs = [ ecl-license ecl-build ];
  nativeBuildInputs = [ ecl-license catkin ecl-build ];

  meta = {
    description = ''These tools inspect and describe your system with macros, types 
     and functions.'';
    #license = lib.licenses.BSD;
  };
}
