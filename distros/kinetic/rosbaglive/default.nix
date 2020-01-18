
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosbag, rospy }:
buildRosPackage {
  pname = "ros-kinetic-rosbaglive";
  version = "0.2.4";

  src = fetchurl {
    url = "https://github.com/wu-robotics/wu_ros_tools/archive/release/kinetic/rosbaglive/0.2.4-0.tar.gz";
    name = "0.2.4-0.tar.gz";
    sha256 = "05f114eeab224925fdc550ca9e6181eab2415920984f0eb8fc017de138da44dd";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rosbag rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Plays rosbags as though they were happening NOW.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
