
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosbag, roslint, rospy }:
buildRosPackage {
  pname = "ros-noetic-rosbaglive";
  version = "0.3.1-r1";

  src = fetchurl {
    url = "https://github.com/wu-robotics/wu_ros_tools/archive/release/noetic/rosbaglive/0.3.1-1.tar.gz";
    name = "0.3.1-1.tar.gz";
    sha256 = "8baeed6518925c6a4de0fd8f57171b6391f98b5245a8a2eb1a06e0f301b1c378";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslint ];
  propagatedBuildInputs = [ rosbag rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Plays rosbags as though they were happening NOW.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
