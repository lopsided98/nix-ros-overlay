
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake }:
buildRosPackage {
  pname = "ros-melodic-vrpn";
  version = "7.34.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/vrpn-release/archive/release/melodic/vrpn/7.34.0-1.tar.gz";
    name = "7.34.0-1.tar.gz";
    sha256 = "1dd53934e26a049fba648ddb79d87c96a229181479c14a8c743fde9bddf854c3";
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
