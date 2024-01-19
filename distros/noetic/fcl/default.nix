
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, eigen, libccd, octomap }:
buildRosPackage {
  pname = "ros-noetic-fcl";
  version = "0.6.1-r3";

  src = fetchurl {
    url = "https://github.com/ros-gbp/fcl-release/archive/release/noetic/fcl/0.6.1-3.tar.gz";
    name = "0.6.1-3.tar.gz";
    sha256 = "d2c748d2b918ed3b3aeab5b8b9a840e4c0e5d0e1e6868cbf6a17201e72effb4c";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ catkin eigen libccd octomap ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''FCL: the Flexible Collision Library'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
