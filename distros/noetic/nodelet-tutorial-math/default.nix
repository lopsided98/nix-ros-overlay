
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, nodelet, roscpp, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-nodelet-tutorial-math";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/common_tutorials-release/archive/release/noetic/nodelet_tutorial_math/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "25a9f22b34a0cfdaded3e8e79ebcacde173689d9e05c4751cd033a759d441089";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ nodelet roscpp std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package for Nodelet tutorial.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
