
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, rosbash, xacro, catkin, rospy, rosunit }:
buildRosPackage {
  pname = "ros-melodic-cob-description";
  version = "0.6.10";

  src = fetchurl {
    url = https://github.com/ipa320/cob_common-release/archive/release/melodic/cob_description/0.6.10-0.tar.gz;
    sha256 = "256b6a129e52dacbf23b263cf2eed6f1addf9ec7a718a6f658df8eacd6abb189";
  };

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
