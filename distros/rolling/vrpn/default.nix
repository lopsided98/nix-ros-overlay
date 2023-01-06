
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cmake }:
buildRosPackage {
  pname = "ros-rolling-vrpn";
  version = "7.35.0-r11";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/vrpn-release/archive/release/rolling/vrpn/7.35.0-11.tar.gz";
    name = "7.35.0-11.tar.gz";
    sha256 = "3889148a382191cb13c669d54f56e4355c95c2ba27c0a351785b64e06ff940d2";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ ament-cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The VRPN is a library and set of servers that interfaces with virtual-reality systems, such as VICON, OptiTrack, and others.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
