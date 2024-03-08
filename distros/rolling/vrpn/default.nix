
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cmake }:
buildRosPackage {
  pname = "ros-rolling-vrpn";
  version = "7.35.0-r14";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/vrpn-release/archive/release/rolling/vrpn/7.35.0-14.tar.gz";
    name = "7.35.0-14.tar.gz";
    sha256 = "6bfc84bfbfed270909f8d306427b55f799fda0289be07733de6eecaccb780e9c";
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
