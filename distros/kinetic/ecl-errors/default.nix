
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ecl-config, ecl-license }:
buildRosPackage {
  pname = "ros-kinetic-ecl-errors";
  version = "0.61.6";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_lite-release/archive/release/kinetic/ecl_errors/0.61.6-0.tar.gz";
    name = "0.61.6-0.tar.gz";
    sha256 = "359b4f40b84ab9145b0601c720b71216c67bc5505f449344b02f52ce7301aeb9";
  };

  buildType = "catkin";
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
