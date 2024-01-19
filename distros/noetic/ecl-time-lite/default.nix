
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ecl-build, ecl-config, ecl-errors, ecl-license }:
buildRosPackage {
  pname = "ros-noetic-ecl-time-lite";
  version = "0.61.6-r1";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_lite-release/archive/release/noetic/ecl_time_lite/0.61.6-1.tar.gz";
    name = "0.61.6-1.tar.gz";
    sha256 = "bffb469391c6ad528bba012ff940e0a8bc7530ed88b8b65b7dbdab686299626c";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ ecl-build ecl-config ecl-errors ecl-license ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides a portable set of time functions that are especially useful for 
     porting other code or being wrapped by higher level c++ classes.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
