
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, roscpp, catkin, nodelet }:
buildRosPackage {
  pname = "ros-kinetic-nodelet-tutorial-math";
  version = "0.1.10";

  src = fetchurl {
    url = https://github.com/ros-gbp/common_tutorials-release/archive/release/kinetic/nodelet_tutorial_math/0.1.10-0.tar.gz;
    sha256 = "705f4a7923a1d6456c573006f8108a60b19f92de0cdc2ec167dfd047e8f6b943";
  };

  buildInputs = [ std-msgs nodelet roscpp ];
  propagatedBuildInputs = [ std-msgs nodelet roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package for Nodelet tutorial.'';
    #license = lib.licenses.BSD;
  };
}
