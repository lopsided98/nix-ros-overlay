
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, rosconsole, roscpp, rostest, rosunit }:
buildRosPackage {
  pname = "ros-noetic-message-filters";
  version = "1.15.10-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/noetic/message_filters/1.15.10-1.tar.gz";
    name = "1.15.10-1.tar.gz";
    sha256 = "b2cf74ea82760301f2ec3895743400848c179c3f5693a34f75291d347944ca60";
  };

  buildType = "catkin";
  buildInputs = [ rostest rosunit ];
  propagatedBuildInputs = [ boost rosconsole roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A set of message filters which take in messages and may output those messages at a later time, based on the conditions that filter needs met.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
