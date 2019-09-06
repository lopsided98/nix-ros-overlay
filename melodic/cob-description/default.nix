
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, rosbash, xacro, catkin, rospy, rosunit }:
buildRosPackage {
  pname = "ros-melodic-cob-description";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_common-release/archive/release/melodic/cob_description/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "282e27c260bdfb7ba5ffb7ae04498f31ea57d2065d907baf88b3bd6be36f83ac";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ gazebo-ros rosbash xacro rospy rosunit ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the description (mechanical, kinematic, visual,
  etc.) of the Care-O-bot robot. The files in this package are parsed and used by
  a variety of other components. Most users will not interact directly
  with this package.'';
    license = with lib.licenses; [ asl20 ];
  };
}
