
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cmake }:
buildRosPackage {
  pname = "ros-iron-vrpn";
  version = "7.35.0-r14";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/vrpn-release/archive/release/iron/vrpn/7.35.0-14.tar.gz";
    name = "7.35.0-14.tar.gz";
    sha256 = "090fa7119dd258555ccbd2ff6059c64c54fbb7fdbb48f7e5ec2bc0f0e72eb64f";
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
