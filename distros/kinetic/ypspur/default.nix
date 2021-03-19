
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, readline }:
buildRosPackage {
  pname = "ros-kinetic-ypspur";
  version = "1.20.2-r1";

  src = fetchurl {
    url = "https://github.com/openspur/yp-spur-release/archive/release/kinetic/ypspur/1.20.2-1.tar.gz";
    name = "1.20.2-1.tar.gz";
    sha256 = "b2b3dcb74e986b5ff0aea37e64a81eef5f43e7a5ebc2e9f03eb0b17c98bf54aa";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ catkin readline ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''YP-Spur is a mobile robot motion control software with coordinate frame based commands.'';
    license = with lib.licenses; [ mit ];
  };
}
