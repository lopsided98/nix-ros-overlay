
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cmake }:
buildRosPackage {
  pname = "ros-rolling-vrpn";
  version = "7.35.0-r13";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/vrpn-release/archive/release/rolling/vrpn/7.35.0-13.tar.gz";
    name = "7.35.0-13.tar.gz";
    sha256 = "0c7fee9d2a22b5a5162228ac72f32601450bdd80a30b9001597d18d9f7cdf88d";
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
