
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, readline }:
buildRosPackage {
  pname = "ros-noetic-ypspur";
  version = "1.22.4-r1";

  src = fetchurl {
    url = "https://github.com/openspur/yp-spur-release/archive/release/noetic/ypspur/1.22.4-1.tar.gz";
    name = "1.22.4-1.tar.gz";
    sha256 = "a77770f21cd92f438957fdac8570e0892debb9eb741814b32e7e1eb285c43347";
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
