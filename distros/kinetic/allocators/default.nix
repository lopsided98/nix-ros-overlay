
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-allocators";
  version = "1.0.25";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_realtime-release/archive/release/kinetic/allocators/1.0.25-0.tar.gz";
    name = "1.0.25-0.tar.gz";
    sha256 = "bb54aa5608354bd602093da24a6a10981c5fa0e3dbc30fe3ff3879bbac80aa41";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Contains aligned allocation functions, as well as an STL-compatible AlignedAllocator class.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
