
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-lunar-allocators";
  version = "1.0.25";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_realtime-release/archive/release/lunar/allocators/1.0.25-0.tar.gz;
    sha256 = "a50566f5a3562af577ebca2bc4120e7e7220fd2faa35cc73cc14df59cdb8db86";
  };

  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Contains aligned allocation functions, as well as an STL-compatible AlignedAllocator class.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
