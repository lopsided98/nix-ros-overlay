
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, rosconsole, roscpp, rostest, rosunit }:
buildRosPackage {
  pname = "ros-noetic-message-filters";
  version = "1.17.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/noetic/message_filters/1.17.0-1.tar.gz";
    name = "1.17.0-1.tar.gz";
    sha256 = "4f125d0dc081b30eb13297cca905573600b66facec4d825903c04563c0a8611d";
  };

  buildType = "catkin";
  buildInputs = [ catkin rostest rosunit ];
  propagatedBuildInputs = [ boost rosconsole roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "A set of message filters which take in messages and may output those messages at a later time, based on the conditions that filter needs met.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
