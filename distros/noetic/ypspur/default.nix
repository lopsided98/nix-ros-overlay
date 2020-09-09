
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, readline }:
buildRosPackage {
  pname = "ros-noetic-ypspur";
  version = "1.19.0-r1";

  src = fetchurl {
    url = "https://github.com/openspur/yp-spur-release/archive/release/noetic/ypspur/1.19.0-1.tar.gz";
    name = "1.19.0-1.tar.gz";
    sha256 = "7d6a7b5a91ef6e9d8bc79f102c5ac5412ec26b7fa486432ae8b78fe03c0e6306";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ catkin readline ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''YP-Spur is a mobile robot motion control software with coordinate frame based commands.'';
    license = with lib.licenses; [ mit ];
  };
}
