
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, readline }:
buildRosPackage {
  pname = "ros-noetic-ypspur";
  version = "1.22.5-r1";

  src = fetchurl {
    url = "https://github.com/openspur/yp-spur-release/archive/release/noetic/ypspur/1.22.5-1.tar.gz";
    name = "1.22.5-1.tar.gz";
    sha256 = "63aa6341ae40361f1c8e3d9efb2c57ec319141c7a4c64ffe2f3cff4a3947362d";
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
