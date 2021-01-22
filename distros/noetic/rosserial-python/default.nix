
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, python3Packages, rospy, rosserial-msgs }:
buildRosPackage {
  pname = "ros-noetic-rosserial-python";
  version = "0.9.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rosserial-release/archive/release/noetic/rosserial_python/0.9.1-1.tar.gz";
    name = "0.9.1-1.tar.gz";
    sha256 = "2393f56767cc42a0eb64ec4f38a475500dc729ca5244f917209dc60d2c3c371b";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ diagnostic-msgs python3Packages.pyserial rospy rosserial-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A Python-based implementation of the rosserial protocol.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
