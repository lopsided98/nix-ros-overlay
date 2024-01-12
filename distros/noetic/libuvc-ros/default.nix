
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, libuvc-camera }:
buildRosPackage {
  pname = "ros-noetic-libuvc-ros";
  version = "0.0.11-r1";

  src = fetchurl {
    url = "https://github.com/ros-drivers-gbp/libuvc_ros-release/archive/release/noetic/libuvc_ros/0.0.11-1.tar.gz";
    name = "0.0.11-1.tar.gz";
    sha256 = "b2da80d64e704f65aa4833edcc0c34868326d9cae3a32ededd99a3202ac9a790";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ libuvc-camera ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''libuvc_ros metapackage'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
