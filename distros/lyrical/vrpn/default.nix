
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cmake }:
buildRosPackage {
  pname = "ros-lyrical-vrpn";
  version = "7.35.0-r22";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/vrpn-release/archive/release/lyrical/vrpn/7.35.0-22.tar.gz";
    name = "7.35.0-22.tar.gz";
    sha256 = "4aaf3ad6e7aa4e92e13be471a1885a2619562e69a75e69fd58b1a641db049876";
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
