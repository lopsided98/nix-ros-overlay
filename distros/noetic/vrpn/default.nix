
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake }:
buildRosPackage {
  pname = "ros-noetic-vrpn";
  version = "7.34.0-r2";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/vrpn-release/archive/release/noetic/vrpn/7.34.0-2.tar.gz";
    name = "7.34.0-2.tar.gz";
    sha256 = "babe397ffaa7b299d71ef36febe6389d952b280e24b64e82b775bfe4dd945bdd";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ catkin ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The VRPN is a library and set of servers that interfaces with virtual-reality systems, such as VICON, OptiTrack, and others.'';
    license = with lib.licenses; [ "BSL-1.0" ];
  };
}
