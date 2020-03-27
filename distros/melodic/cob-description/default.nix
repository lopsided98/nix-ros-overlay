
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-ros, rosbash, rospy, rosunit, xacro }:
buildRosPackage {
  pname = "ros-melodic-cob-description";
  version = "0.7.2-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_common-release/archive/release/melodic/cob_description/0.7.2-1.tar.gz";
    name = "0.7.2-1.tar.gz";
    sha256 = "d049d97db04bec0aa75d97c08ae7fc65b08be183dc21a75140212b0694e7fb47";
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
