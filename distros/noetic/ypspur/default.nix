
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, readline }:
buildRosPackage {
  pname = "ros-noetic-ypspur";
  version = "1.21.0-r1";

  src = fetchurl {
    url = "https://github.com/openspur/yp-spur-release/archive/release/noetic/ypspur/1.21.0-1.tar.gz";
    name = "1.21.0-1.tar.gz";
    sha256 = "f1a5352bf7a63d0d23a0f2dfa4feaddd0b8131dda8bb9ef1624cd2b58fe66e1a";
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
