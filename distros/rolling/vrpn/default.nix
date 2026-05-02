
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cmake }:
buildRosPackage {
  pname = "ros-rolling-vrpn";
  version = "7.35.0-r21";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/vrpn-release/archive/release/rolling/vrpn/7.35.0-21.tar.gz";
    name = "7.35.0-21.tar.gz";
    sha256 = "301afc0d284181a74f4bc5b43c0e8b9ef508090645b1cfdb886aa19a7f998c98";
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
