
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, rostest, catkin, rosunit, roscpp, rosconsole }:
buildRosPackage {
  pname = "ros-melodic-message-filters";
  version = "1.14.3";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/melodic/message_filters/1.14.3-0.tar.gz";
    name = "1.14.3-0.tar.gz";
    sha256 = "3a6ce5214cb6b17a3af6268ddac55c5ac812ef09eb97685e6930da32799a8a3e";
  };

  buildType = "catkin";
  buildInputs = [ boost roscpp rosunit rosconsole rostest ];
  propagatedBuildInputs = [ rosconsole roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A set of message filters which take in messages and may output those messages at a later time, based on the conditions that filter needs met.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
