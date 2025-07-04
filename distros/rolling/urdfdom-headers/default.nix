
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-rolling-urdfdom-headers";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/urdfdom_headers-release/archive/release/rolling/urdfdom_headers/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "38f76b766f1f91151df61bc64d577fde20cabebd4bfadd4c6771e0cfaf84a543";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "C++ headers for URDF.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
