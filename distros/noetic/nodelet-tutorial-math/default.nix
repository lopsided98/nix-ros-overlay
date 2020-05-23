
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nodelet, roscpp, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-nodelet-tutorial-math";
  version = "0.1.12-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/common_tutorials-release/archive/release/noetic/nodelet_tutorial_math/0.1.12-1.tar.gz";
    name = "0.1.12-1.tar.gz";
    sha256 = "df013dea7a120a5c6a9c48997232f6d69a153c224c93c516db9330a598bbc6e9";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ nodelet roscpp std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package for Nodelet tutorial.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
