
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ecl-config, ecl-errors, ecl-license }:
buildRosPackage {
  pname = "ros-kinetic-ecl-io";
  version = "0.61.6";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/ecl_lite-release/archive/release/kinetic/ecl_io/0.61.6-0.tar.gz";
    name = "0.61.6-0.tar.gz";
    sha256 = "c9cdfe2df091df99b310c88fa72328f06d85893fbdc9d8b8b4b66f859f726323";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ ecl-config ecl-errors ecl-license ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Most implementations (windows, posix, ...) have slightly different api for 
     low level input-output functions. These are gathered here and re-represented 
     with a cross platform set of functions.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
