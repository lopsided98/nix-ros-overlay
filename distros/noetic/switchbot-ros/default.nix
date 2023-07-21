
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, catkin, message-generation, message-runtime, python3Packages, rospy }:
buildRosPackage {
  pname = "ros-noetic-switchbot-ros";
  version = "2.1.27-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/switchbot_ros/2.1.27-1.tar.gz";
    name = "2.1.27-1.tar.gz";
    sha256 = "b7cf7f8b05032a6c394d3281fe9c9c12ef93993b432df9a29e1735f0a6aa7580";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation python3Packages.setuptools ];
  propagatedBuildInputs = [ actionlib actionlib-msgs message-runtime python3Packages.requests rospy ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = ''use switchbot with ros'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
