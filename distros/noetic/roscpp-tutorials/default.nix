
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, message-generation, message-runtime, rosconsole, roscpp, roscpp-serialization, rostime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-roscpp-tutorials";
  version = "0.10.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_tutorials-release/archive/release/noetic/roscpp_tutorials/0.10.1-1.tar.gz";
    name = "0.10.1-1.tar.gz";
    sha256 = "952a69001736166b632afe3cb871881aa54d73a3446d61b6fa32ca2a37d5774a";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ boost message-runtime rosconsole roscpp roscpp-serialization rostime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package attempts to show the features of ROS step-by-step,
    including using messages, servers, parameters, etc.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
