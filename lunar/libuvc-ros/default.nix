
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, libuvc-camera, catkin }:
buildRosPackage {
  pname = "ros-lunar-libuvc-ros";
  version = "0.0.10-r1";

  src = fetchurl {
    url = https://github.com/ros-drivers-gbp/libuvc_ros-release/archive/release/lunar/libuvc_ros/0.0.10-1.tar.gz;
    sha256 = "4b8fdd6c3faa85fd815428873ef640d02340ab464aaefac545f3dc0b9b80c94f";
  };

  propagatedBuildInputs = [ libuvc-camera ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''libuvc_ros metapackage'';
    #license = lib.licenses.BSD;
  };
}
