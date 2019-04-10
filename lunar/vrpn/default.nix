
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake }:
buildRosPackage {
  pname = "ros-lunar-vrpn";
  version = "7.33.1-r5";

  src = fetchurl {
    url = https://github.com/ros-drivers-gbp/vrpn-release/archive/release/lunar/vrpn/7.33.1-5.tar.gz;
    sha256 = "303d71e5610c312fc0715a180a0e05e24f77cb4282c1775642a54065fe6e6bf6";
  };

  propagatedBuildInputs = [ catkin ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''The VRPN is a library and set of servers that interfaces with virtual-reality systems, such as VICON, OptiTrack, and others.'';
    #license = lib.licenses.BSL1.0;
  };
}
