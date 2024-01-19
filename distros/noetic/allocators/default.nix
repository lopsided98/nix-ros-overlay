
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-allocators";
  version = "1.0.25-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_realtime-release/archive/release/noetic/allocators/1.0.25-1.tar.gz";
    name = "1.0.25-1.tar.gz";
    sha256 = "c633a844f59bc64c53bf03c8f5007a466b79e24d9e405b7fdea0238e727b391c";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Contains aligned allocation functions, as well as an STL-compatible AlignedAllocator class.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
