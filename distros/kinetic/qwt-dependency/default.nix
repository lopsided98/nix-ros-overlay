
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-qwt-dependency";
  version = "1.1.0";

  src = fetchurl {
    url = "https://github.com/ros-gbp/qwt_dependency-release/archive/release/kinetic/qwt_dependency/1.1.0-0.tar.gz";
    name = "1.1.0-0.tar.gz";
    sha256 = "963373b1a007e572526e56bc4903c2c623478faa7c93f8e56f91135423c65e28";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This encapsulates the Qwt dependency for a specific ROS distribution and its Qt version'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
