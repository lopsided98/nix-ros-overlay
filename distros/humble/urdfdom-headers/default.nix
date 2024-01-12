
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-humble-urdfdom-headers";
  version = "1.0.6-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdfdom_headers-release/archive/release/humble/urdfdom_headers/1.0.6-2.tar.gz";
    name = "1.0.6-2.tar.gz";
    sha256 = "4a57a0e852a257a6fd54183e628b980e5a09db35926df8f8450e728e78f1f6b4";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''C++ headers for URDF.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
