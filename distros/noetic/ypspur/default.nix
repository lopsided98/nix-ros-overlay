
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, readline }:
buildRosPackage {
  pname = "ros-noetic-ypspur";
  version = "1.22.0-r1";

  src = fetchurl {
    url = "https://github.com/openspur/yp-spur-release/archive/release/noetic/ypspur/1.22.0-1.tar.gz";
    name = "1.22.0-1.tar.gz";
    sha256 = "e21f4016be794ee812912bf881e9ca6c3e3e4b932429e5487837a84bce1e3035";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ catkin readline ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "YP-Spur is a mobile robot motion control software with coordinate frame based commands.";
    license = with lib.licenses; [ mit ];
  };
}
