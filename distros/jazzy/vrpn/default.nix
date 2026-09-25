
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cmake }:
buildRosPackage {
  pname = "ros-jazzy-vrpn";
  version = "7.36.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/vrpn-release/archive/release/jazzy/vrpn/7.36.0-1.tar.gz";
    name = "7.36.0-1.tar.gz";
    sha256 = "372108f5e89bf0f068c08299bc930cf450f2d056caafb92d7ca9586c37e7667f";
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
