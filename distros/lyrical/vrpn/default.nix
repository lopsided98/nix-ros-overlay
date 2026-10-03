
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cmake }:
buildRosPackage {
  pname = "ros-lyrical-vrpn";
  version = "7.36.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/vrpn-release/archive/release/lyrical/vrpn/7.36.0-1.tar.gz";
    name = "7.36.0-1.tar.gz";
    sha256 = "9425ad956d6ca5b8ad1230b56b7bf4837dee1bd82da9b712dfdf36000256ce32";
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
