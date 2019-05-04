
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-license, catkin, ecl-errors, ecl-config }:
buildRosPackage {
  pname = "ros-kinetic-ecl-io";
  version = "0.61.6";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/ecl_lite-release/archive/release/kinetic/ecl_io/0.61.6-0.tar.gz;
    sha256 = "c9cdfe2df091df99b310c88fa72328f06d85893fbdc9d8b8b4b66f859f726323";
  };

  buildInputs = [ ecl-license ecl-errors ecl-config ];
  propagatedBuildInputs = [ ecl-license ecl-errors ecl-config ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Most implementations (windows, posix, ...) have slightly different api for 
     low level input-output functions. These are gathered here and re-represented 
     with a cross platform set of functions.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
