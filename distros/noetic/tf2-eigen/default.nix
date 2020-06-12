
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, eigen, geometry-msgs, tf2 }:
buildRosPackage {
  pname = "ros-noetic-tf2-eigen";
  version = "0.7.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/geometry2-release/archive/release/noetic/tf2_eigen/0.7.2-1.tar.gz";
    name = "0.7.2-1.tar.gz";
    sha256 = "881e1f89630a4d837b41162e4c0a01380d6e6ed37d07c182b7c42d5997299159";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules ];
  propagatedBuildInputs = [ eigen geometry-msgs tf2 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''tf2_eigen'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
