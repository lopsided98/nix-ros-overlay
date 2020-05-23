
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, readline }:
buildRosPackage {
  pname = "ros-noetic-ypspur";
  version = "1.18.1-r1";

  src = fetchurl {
    url = "https://github.com/openspur/yp-spur-release/archive/release/noetic/ypspur/1.18.1-1.tar.gz";
    name = "1.18.1-1.tar.gz";
    sha256 = "50e42cb26dcd68a4d691e1f065603a38fd76cbe109b3046e5ce880f5d0080d56";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ catkin readline ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''YP-Spur is a mobile robot motion control software with coordinate frame based commands.'';
    license = with lib.licenses; [ mit ];
  };
}
