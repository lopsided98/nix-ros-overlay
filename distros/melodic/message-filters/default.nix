
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, rosconsole, roscpp, rostest, rosunit }:
buildRosPackage {
  pname = "ros-melodic-message-filters";
  version = "1.14.13-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ros_comm-release/archive/release/melodic/message_filters/1.14.13-1.tar.gz";
    name = "1.14.13-1.tar.gz";
    sha256 = "240f188ace7c86f7a036d58b14b4214ee63b5c285ab008eea2dacf4f78b6e555";
  };

  buildType = "catkin";
  buildInputs = [ boost catkin rostest rosunit ];
  propagatedBuildInputs = [ rosconsole roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A set of message filters which take in messages and may output those messages at a later time, based on the conditions that filter needs met.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
