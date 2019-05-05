
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosbag, catkin, rospy }:
buildRosPackage {
  pname = "ros-lunar-rosbaglive";
  version = "0.2.4";

  src = fetchurl {
    url = https://github.com/wu-robotics/wu_ros_tools/archive/release/lunar/rosbaglive/0.2.4-0.tar.gz;
    sha256 = "1f282af9bf031f34e286775099065d759ac9d1f95144d6ca4e7be41a7e867755";
  };

  buildInputs = [ rosbag rospy ];
  propagatedBuildInputs = [ rosbag rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Plays rosbags as though they were happening NOW.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
