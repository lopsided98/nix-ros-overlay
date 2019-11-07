
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, rosbash, xacro, catkin, rospy, rosunit }:
buildRosPackage {
  pname = "ros-kinetic-cob-description";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_common-release/archive/release/kinetic/cob_description/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "164f65e428876b160f02d676aa7dc891bd9f960cb7bf24b580507fec2b73ebd4";
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
