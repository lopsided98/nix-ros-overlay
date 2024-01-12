
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosbag, roslint, rospy }:
buildRosPackage {
  pname = "ros-noetic-rosbaglive";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/wu-robotics/wu_ros_tools/archive/release/noetic/rosbaglive/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "33ca1e07cc82c0bdf15f8ba6ce3789fe61a4f362223624f2f1ae4187a48f9b1e";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslint ];
  propagatedBuildInputs = [ rosbag rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Plays rosbags as though they were happening NOW.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
