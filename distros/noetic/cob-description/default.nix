
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-ros, rosbash, rospy, rosunit, xacro }:
buildRosPackage {
  pname = "ros-noetic-cob-description";
  version = "0.7.4-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_common-release/archive/release/noetic/cob_description/0.7.4-1.tar.gz";
    name = "0.7.4-1.tar.gz";
    sha256 = "ddde9202db6ddfa49950d323af70dcd6e62a065a6f10d71d38578a5c468b78ce";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gazebo-ros rosbash rospy rosunit xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the description (mechanical, kinematic, visual,
  etc.) of the Care-O-bot robot. The files in this package are parsed and used by
  a variety of other components. Most users will not interact directly
  with this package.'';
    license = with lib.licenses; [ asl20 ];
  };
}
