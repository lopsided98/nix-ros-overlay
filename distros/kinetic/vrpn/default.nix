
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake }:
buildRosPackage {
  pname = "ros-kinetic-vrpn";
  version = "7.33.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/vrpn-release/archive/release/kinetic/vrpn/7.33.1-1.tar.gz";
    name = "7.33.1-1.tar.gz";
    sha256 = "26c38a0cb79d3635dd2c9e2fb19d2c340a52875f8a98781151fc2175967d3571";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ catkin ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The VRPN is a library and set of servers that interfaces with virtual-reality systems, such as VICON, OptiTrack, and others.'';
    license = with lib.licenses; [ "BSL1.0" ];
  };
}
