
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cmake }:
buildRosPackage {
  pname = "ros-foxy-vrpn";
  version = "7.35.0-r8";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/vrpn-release/archive/release/foxy/vrpn/7.35.0-8.tar.gz";
    name = "7.35.0-8.tar.gz";
    sha256 = "4d663529646e6697043507eff26ff773a71e01663373dc5c976a5b857bcfd7b1";
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
