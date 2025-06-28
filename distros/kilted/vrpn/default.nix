
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cmake }:
buildRosPackage {
  pname = "ros-kilted-vrpn";
  version = "7.35.0-r21";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/vrpn-release/archive/release/kilted/vrpn/7.35.0-21.tar.gz";
    name = "7.35.0-21.tar.gz";
    sha256 = "63b292c2e484810f447af32c880a893b22e75cb6f7e1a316f9a1cecc525afc29";
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
