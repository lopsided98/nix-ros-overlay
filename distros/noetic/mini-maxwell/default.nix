
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, dynamic-reconfigure, roslib }:
buildRosPackage {
  pname = "ros-noetic-mini-maxwell";
  version = "2.1.31-r3";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/mini_maxwell/2.1.31-3.tar.gz";
    name = "2.1.31-3.tar.gz";
    sha256 = "0ad6d2a6419551bd4337714406f91a2ce247c74bae99616996cd052a7050a17f";
  };

  buildType = "catkin";
  buildInputs = [ catkin cmake-modules roslib ];
  propagatedBuildInputs = [ dynamic-reconfigure ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "mini_maxwell";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
