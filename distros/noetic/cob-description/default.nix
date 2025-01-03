
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gazebo-ros, rosbash, rospy, rosunit, xacro }:
buildRosPackage {
  pname = "ros-noetic-cob-description";
  version = "0.7.11-r1";

  src = fetchurl {
    url = "https://github.com/4am-robotics/cob_common-release/archive/release/noetic/cob_description/0.7.11-1.tar.gz";
    name = "0.7.11-1.tar.gz";
    sha256 = "056923652897d81bc11a0df3ad09c637882321a8fc4eada5d3067558a2e88476";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ gazebo-ros rosbash rospy rosunit xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "This package contains the description (mechanical, kinematic, visual,
  etc.) of the Care-O-bot robot. The files in this package are parsed and used by
  a variety of other components. Most users will not interact directly
  with this package.";
    license = with lib.licenses; [ asl20 ];
  };
}
