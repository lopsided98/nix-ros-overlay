
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, gtest, message-generation, message-runtime, nodelet, python3Packages, roscpp, rospy, rostest, tf, tf2-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-tf2-server";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/peci1/tf2_server-release/archive/release/noetic/tf2_server/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "7b473444ace213203c6d276cdb7ef2f37794da2187901cdfdbb6d68b59746f8a";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  checkInputs = [ gtest rostest tf ];
  propagatedBuildInputs = [ geometry-msgs message-runtime nodelet roscpp rospy tf2-msgs tf2-ros ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''TF2 server that can provide transforms over separate TF topics'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
