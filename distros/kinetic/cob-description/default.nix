
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-ros, rosbash, rospy, rosunit, xacro }:
buildRosPackage {
  pname = "ros-kinetic-cob-description";
  version = "0.7.3-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_common-release/archive/release/kinetic/cob_description/0.7.3-1.tar.gz";
    name = "0.7.3-1.tar.gz";
    sha256 = "820410388c6c06b79b90a0b31b9c1665af3de62d4c96c79312855dd1f7a7d696";
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
