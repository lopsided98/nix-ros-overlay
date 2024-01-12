
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cmake }:
buildRosPackage {
  pname = "ros-humble-vrpn";
  version = "7.35.0-r11";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/vrpn-release/archive/release/humble/vrpn/7.35.0-11.tar.gz";
    name = "7.35.0-11.tar.gz";
    sha256 = "70327fe398c88fd84af4117ae83f84c60cc6646560c370c5895445c5ec1ce422";
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
