
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, rosbash, xacro, catkin, rospy, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-cob-description";
  version = "0.6.11";

  src = fetchurl {
    url = https://github.com/ipa320/cob_common-release/archive/release/kinetic/cob_description/0.6.11-0.tar.gz;
    sha256 = "d3ed9d2faa903c875e72632d43988ca0e2a0f81b5196b66736f699d0c9da77f6";
  };

  propagatedBuildInputs = [ gazebo-ros rosbash rospy rosunit xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the description (mechanical, kinematic, visual,
  etc.) of the Care-O-bot robot. The files in this package are parsed and used by
  a variety of other components. Most users will not interact directly
  with this package.'';
    #license = lib.licenses.Apache 2.0;
  };
}
