
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ecl-build, ecl-config, ecl-errors, ecl-license }:
buildRosPackage {
  pname = "ros-kinetic-ecl-time-lite";
  version = "0.61.6";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_lite-release/archive/release/kinetic/ecl_time_lite/0.61.6-0.tar.gz";
    name = "0.61.6-0.tar.gz";
    sha256 = "5990b1818fb3cc2d7921fde37ddbe0ec0ebcea00c279d82c5d79b4723f7ddba9";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ ecl-build ecl-config ecl-errors ecl-license ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides a portable set of time functions that are especially useful for 
     porting other code or being wrapped by higher level c++ classes.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
