
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cmake }:
buildRosPackage {
  pname = "ros-jazzy-vrpn";
  version = "7.35.0-r18";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/vrpn-release/archive/release/jazzy/vrpn/7.35.0-18.tar.gz";
    name = "7.35.0-18.tar.gz";
    sha256 = "45a2878841c72f7e66cc337d63ce941dcd22fc1f728d7ef671457edfc346da8b";
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
