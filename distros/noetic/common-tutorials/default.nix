
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib-tutorials, catkin, nodelet-tutorial-math, pluginlib-tutorials, turtle-actionlib }:
buildRosPackage {
  pname = "ros-noetic-common-tutorials";
  version = "0.1.12-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/common_tutorials-release/archive/release/noetic/common_tutorials/0.1.12-1.tar.gz";
    name = "0.1.12-1.tar.gz";
    sha256 = "734d697a26f0dcb2c51de10bd1af74bc93ee45c6e442ebbb174e8ed99d99c826";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ actionlib-tutorials nodelet-tutorial-math pluginlib-tutorials turtle-actionlib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage that contains common tutorials'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
