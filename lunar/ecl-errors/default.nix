
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-license, catkin, ecl-config }:
buildRosPackage {
  pname = "ros-lunar-ecl-errors";
  version = "0.61.6";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/ecl_lite-release/archive/release/lunar/ecl_errors/0.61.6-0.tar.gz;
    sha256 = "9d44d8d9c8a95c217af8cf433645853ffcae81cf8a1e93a89614668ca55aed42";
  };

  buildInputs = [ ecl-license ecl-config ];
  propagatedBuildInputs = [ ecl-license ecl-config ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This library provides lean and mean error mechanisms. 
    It includes c style error functions as well as a few 
    useful macros. For higher level mechanisms, 
    refer to ecl_exceptions.'';
    #license = lib.licenses.BSD;
  };
}
