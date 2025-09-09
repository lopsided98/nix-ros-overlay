
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, message-generation, message-runtime, rosconsole, roscpp, roscpp-serialization, rostime, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-roscpp-tutorials";
  version = "0.10.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_tutorials-release/archive/release/noetic/roscpp_tutorials/0.10.3-1.tar.gz";
    name = "0.10.3-1.tar.gz";
    sha256 = "30ca51776bffdb20824afe180b4cc32eee79528debc2340c8882a4c46348ec40";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ boost message-runtime rosconsole roscpp roscpp-serialization rostime std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "This package attempts to show the features of ROS step-by-step,
    including using messages, servers, parameters, etc.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
