
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, rosconsole, roscpp, rostest, rosunit }:
buildRosPackage {
  pname = "ros-noetic-message-filters";
  version = "1.17.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/noetic/message_filters/1.17.1-1.tar.gz";
    name = "1.17.1-1.tar.gz";
    sha256 = "164102994ddcb09c32a4542d5987ef42530d239faa91a09bc1f17817d86f8b85";
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
