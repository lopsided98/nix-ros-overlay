
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, catkin-virtualenv, message-generation, message-runtime, python3Packages, rospy }:
buildRosPackage {
  pname = "ros-noetic-switchbot-ros";
  version = "2.1.31-r3";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/switchbot_ros/2.1.31-3.tar.gz";
    name = "2.1.31-3.tar.gz";
    sha256 = "273e2829504169af4c92f413bf8bcb697e30a9257675d35089e383017b099da2";
  };

  buildType = "catkin";
  buildInputs = [ catkin catkin-virtualenv message-generation python3Packages.setuptools ];
  propagatedBuildInputs = [ actionlib actionlib-msgs message-runtime python3Packages.requests rospy ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = "use switchbot with ros";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
