
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake }:
buildRosPackage {
  pname = "ros-noetic-vrpn";
  version = "7.34.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/vrpn-release/archive/release/noetic/vrpn/7.34.0-1.tar.gz";
    name = "7.34.0-1.tar.gz";
    sha256 = "03b70e511a7231e8f03a910d666c29a48732046e33f3d385287b6ba8b5919143";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ catkin ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The VRPN is a library and set of servers that interfaces with virtual-reality systems, such as VICON, OptiTrack, and others.'';
    license = with lib.licenses; [ "BSL1.0" ];
  };
}
