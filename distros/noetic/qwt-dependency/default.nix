
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-qwt-dependency";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/qwt_dependency-release/archive/release/noetic/qwt_dependency/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "1bef3ad78d77bb385cd6981de57d854d8e6dda58ee1a44fc514000c888e5f6bf";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This encapsulates the Qwt dependency for a specific ROS distribution and its Qt version'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
