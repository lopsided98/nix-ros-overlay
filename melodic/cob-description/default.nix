
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, xacro, catkin, rosunit, rosbash, gazebo-ros, rospy }:
buildRosPackage {
  pname = "ros-melodic-cob-description";
  version = "0.7.1-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_common-release/archive/release/melodic/cob_description/0.7.1-1.tar.gz";
    name = "0.7.1-1.tar.gz";
    sha256 = "9c1bf2a21aecd087d7383deb60102cf6654b3e08832160b3a6fe3e4f3c804d0c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ xacro rosunit rosbash gazebo-ros rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the description (mechanical, kinematic, visual,
  etc.) of the Care-O-bot robot. The files in this package are parsed and used by
  a variety of other components. Most users will not interact directly
  with this package.'';
    license = with lib.licenses; [ asl20 ];
  };
}
