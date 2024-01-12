
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-noetic-qwt-dependency";
  version = "1.1.1-r2";

  src = fetchurl {
    url = "https://github.com/ros-gbp/qwt_dependency-release/archive/release/noetic/qwt_dependency/1.1.1-2.tar.gz";
    name = "1.1.1-2.tar.gz";
    sha256 = "23ee6a845be40f3e9c58aedf44210aa08ef1bcaa20d5b5c37968caa2a4aa03e3";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This encapsulates the Qwt dependency for a specific ROS distribution and its Qt version'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
