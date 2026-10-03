
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cmake }:
buildRosPackage {
  pname = "ros-kilted-vrpn";
  version = "7.36.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/vrpn-release/archive/release/kilted/vrpn/7.36.0-1.tar.gz";
    name = "7.36.0-1.tar.gz";
    sha256 = "6e89ea8425198787877196a8962d15aae096432118189149b831c53a13b4889b";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ ament-cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "The VRPN is a library and set of servers that interfaces with virtual-reality systems, such as VICON, OptiTrack, and others.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
