
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosconsole, boost, catkin, rostest, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-lunar-message-filters";
  version = "1.13.7";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_comm-release/archive/release/lunar/message_filters/1.13.7-0.tar.gz;
    sha256 = "e57381a24648432bd431a54e076f624b5797f06bc955bc4a956c17015afa5ac9";
  };

  buildInputs = [ rosconsole boost rostest roscpp rosunit ];
  propagatedBuildInputs = [ roscpp rosconsole ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A set of message filters which take in messages and may output those messages at a later time, based on the conditions that filter needs met.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
