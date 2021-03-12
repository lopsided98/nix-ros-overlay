
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, readline }:
buildRosPackage {
  pname = "ros-kinetic-ypspur";
  version = "1.20.1-r1";

  src = fetchurl {
    url = "https://github.com/openspur/yp-spur-release/archive/release/kinetic/ypspur/1.20.1-1.tar.gz";
    name = "1.20.1-1.tar.gz";
    sha256 = "8dedf2bc1f1211b4ffc52e40edf7bee227d4f4db1305662b5d2676582957bb12";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ catkin readline ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''YP-Spur is a mobile robot motion control software with coordinate frame based commands.'';
    license = with lib.licenses; [ mit ];
  };
}
